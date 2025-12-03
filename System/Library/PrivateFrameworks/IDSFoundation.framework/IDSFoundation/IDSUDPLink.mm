@interface IDSUDPLink
- (BOOL)_setTrafficClassOnSocket:(int)socket trafficClassValue:(int)value;
- (BOOL)setDestinationAddress:(id)address isFixedDestination:(BOOL)destination fromAddress:(id)fromAddress;
- (BOOL)setDestinationAddress:(id)address localIfIndex:(unsigned int)index isFixedDestination:(BOOL)destination fromAddress:(id)fromAddress;
- (BOOL)setDestinationAddressToDeviceIDMap:(id)map;
- (BOOL)setTrafficClass:(int)class;
- (IDSLinkDelegate)alternateDelegate;
- (IDSLinkDelegate)delegate;
- (IDSUDPLink)initWithDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (id)_createNetworkInterfaceArrayWithIPVersion:(unint64_t)version wantsAWDL:(BOOL)l wantsWiFi:(BOOL)fi wantsCellular:(BOOL)cellular allowsLinkLocal:(BOOL)local useDefaultInterfaceOnly:(BOOL)only defaultPairedDevice:(BOOL)device;
- (id)copyCurrentNetworkInterfaces;
- (id)copyLinkStatsDict;
- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link;
- (id)newSocketWithIPVersion:(unint64_t)version wantsAWDL:(BOOL)l wantsWiFi:(BOOL)fi wantsCellular:(BOOL)cellular;
- (id)newSocketWithIPVersion:(unint64_t)version wantsAWDL:(BOOL)l wantsWiFi:(BOOL)fi wantsCellular:(BOOL)cellular clientUUID:(unsigned __int8)d[16];
- (int)_createNewUDPSocketWithIPVersion:(unint64_t)version localPort:(unsigned __int16 *)port wantsAWDL:(BOOL)l clientUUID:(unsigned __int8)d[16];
- (int)_findSocketForInterfaceIndex:(int)index;
- (unint64_t)_sendBytes:(const void *)bytes length:(unint64_t)length;
- (unint64_t)_sendBytes:(const void *)bytes length:(unint64_t)length destinationAddress:(const sockaddr *)address;
- (unint64_t)_sendBytesArray:(const void *)array lengthArray:(unint64_t *)lengthArray arraySize:(int)size localInterfaceIndex:(int)index localAddress:(const sockaddr *)address destinationAddress:(const sockaddr *)destinationAddress trafficClass:(unsigned __int16)class DSCP:(unsigned __int8)self0;
- (unint64_t)headerOverhead;
- (unint64_t)sendPacketBuffer:(id *)buffer destination:(id)destination toDeviceID:(id)d;
- (unint64_t)sendPacketBuffer:(id *)buffer sourceInterface:(id)interface destination:(id)destination toDeviceID:(id)d;
- (unint64_t)sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (unint64_t)sendPacketBufferArray:(id *)array arraySize:(int)size toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)_processIncomingPacketOnSocket:(int)socket;
- (void)dealloc;
- (void)reconnectWithLocalAddress:(id)address;
- (void)removeSocket;
- (void)setWiFiAssistState:(BOOL)state;
@end

@implementation IDSUDPLink

- (IDSUDPLink)initWithDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  v12.receiver = self;
  v12.super_class = IDSUDPLink;
  v9 = [(IDSUDPLink *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cbuuid, cbuuid);
    objc_storeStrong(&v10->_deviceUniqueID, d);
    *&v10->_socket = -1;
    v10->_state = 0;
    v10->_previousReportTime = ids_monotonic_time();
  }

  return v10;
}

- (void)dealloc
{
  if (!self->_isInvalidated)
  {
    socket = self->_socket;
    cellularSocket = self->_cellularSocket;
    skipTransportThread = self->_skipTransportThread;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A7C92FE0;
    v7[3] = &unk_1E77E28E8;
    v10 = skipTransportThread;
    v8 = socket;
    v9 = cellularSocket;
    IDSTransportThreadAddBlock(v7);
  }

  v6.receiver = self;
  v6.super_class = IDSUDPLink;
  [(IDSUDPLink *)&v6 dealloc];
}

- (id)_createNetworkInterfaceArrayWithIPVersion:(unint64_t)version wantsAWDL:(BOOL)l wantsWiFi:(BOOL)fi wantsCellular:(BOOL)cellular allowsLinkLocal:(BOOL)local useDefaultInterfaceOnly:(BOOL)only defaultPairedDevice:(BOOL)device
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = GLUCreateNetworkInterfaceArrayWithOptions(version, l, fi, cellular, local, only, device, 0, 0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        isCellular = [v15 isCellular];
        address = [v15 address];
        if (isCellular)
        {
          cellularPort = [(IDSUDPLink *)self cellularPort];
        }

        else
        {
          cellularPort = [(IDSUDPLink *)self port];
        }

        [address updateLocalPort:cellularPort];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return v10;
}

- (void)_processIncomingPacketOnSocket:(int)socket
{
  socketCopy = socket;
  v4 = 0;
  v80 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    v6 = &v70[v4];
    *(v6 + 6) = 0xAAAAAAAAAAAAAAAALL;
    *(v6 + 1) = v5;
    *(v6 + 2) = v5;
    *v6 = v5;
    v4 += 56;
  }

  while (v4 != 560);
  v7 = MEMORY[0x1EEE9AC00](self, a2);
  v8 = v65;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  for (i = 0; i != 20; i += 2)
  {
    v13 = &v58[i + 2];
    *v13 = 0xAAAAAAAAAAAAAAAALL;
    v13[1] = 0xAAAAAAAAAAAAAAAALL;
  }

  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = v46;
  memset(v65, 0, 80);
  bzero(v70, 0x230uLL);
  v15 = 0;
  memset(v64, 0, sizeof(v64));
  v63 = 0u;
  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  memset(v60, 0, sizeof(v60));
  v59 = 0u;
  memset(v46, 0, sizeof(v46));
  memset(v48, 0, sizeof(v48));
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  v51 = 0u;
  memset(v52, 0, sizeof(v52));
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v55 = 0u;
  memset(v56, 0, sizeof(v56));
  v16 = &v71;
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  v67 = v65;
  v47 = 0u;
  do
  {
    v17 = _IDSLinkPacketBufferCreate();
    *v8++ = v17;
    v18 = &v58[v15 + 2];
    v19 = v17[1];
    *v18 = *v17;
    v18[1] = v19;
    *(v16 - 3) = (v17 + 23);
    *(v16 - 4) = 128;
    *(v16 - 1) = &v58[v15 + 2];
    *v16 = 1;
    v16[1] = v14;
    *(v16 + 4) = 32;
    v15 += 2;
    v16 += 7;
    v14 += 2;
  }

  while (v15 != 20);
  v66 = &v58[2];
  v20 = recvmsg_x();
  v21 = v67;
  if (v20 < 0)
  {
LABEL_35:
    v38 = *__error();
    if (*__error() != 35)
    {
      v39 = +[IDSFoundationLog IDSUDPLink];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1F96C();
      }
    }

    if (v38 == 57)
    {
      if (!self->_hasFixedDestination)
      {
        destinationAddress = self->_destinationAddress;
        self->_destinationAddress = 0;

        self->_state = 1;
        [(IDSUDPLink *)self invalidate];
      }
    }

    else if (v38 == 61 && !self->_hasFixedDestination)
    {
      v40 = self->_destinationAddress;
      self->_destinationAddress = 0;

      self->_state = 1;
    }
  }

  else
  {
    v22 = v20;
    v69 = vdupq_n_s64(1uLL);
    while (v22)
    {
      for (j = 0; j != v22; ++j)
      {
        v24 = &v70[56 * j];
        if (*(v24 + 10) < 0xCu || (v24[44] & 0x20) != 0)
        {
          v41 = [IDSFoundationLog IDSUDPLink:v46[0]];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1F8CC();
          }

          goto LABEL_46;
        }

        v25 = *&v21[8 * j];
        *(v25 + 16) = *(v24 + 6);
        v26 = *(v24 + 4);
        if (v26)
        {
          do
          {
            v27 = v26[1];
            if (v27 == 41)
            {
              if (v26[2] == 46)
              {
                *(v25 + 56) = 7708;
                *(v25 + 64) = *(v26 + 3);
                v28 = v26 + 7;
                goto LABEL_20;
              }
            }

            else if (!v27 && v26[2] == 26)
            {
              v28 = v26 + 3;
              *(v25 + 56) = 528;
              *(v25 + 60) = v26[5];
LABEL_20:
              *(v25 + 48) = *v28;
              if ([(IDSUDPLink *)self _isInterfaceIndexCellular:*&v46[0], *(&v46[0] + 1), *&v46[1], *(&v46[1] + 1), *&v46[2], *(&v46[2] + 1), v47, *(&v47 + 1), v48[0], v48[1], v48[2], v48[3], v49, *(&v49 + 1), v50[0], v50[1], v50[2], v50[3], v51, *(&v51 + 1), v52[0], v52[1], v52[2], v52[3], v53, *(&v53 + 1), v54[0], v54[1], v54[2], v54[3], v55, *(&v55 + 1), v56[0], v56[1], v56[2], v56[3], v57, *(&v57 + 1), v58[0], v58[1], v58[2], v58[3], v59, *(&v59 + 1), v60[0], v60[1], v60[2], v60[3], v61, *(&v61 + 1), v62[0], v62[1], v62[2], v62[3], v63, *(&v63 + 1), v64[0], v64[1], v64[2], v64[3]])
              {
                v29 = 58;
              }

              else
              {
                v29 = 56;
              }

              *(v25 + 58) = bswap32(*(&self->super.isa + v29)) >> 16;
            }

            v26 = (v26 + ((*v26 + 3) & 0x1FFFFFFFCLL));
          }

          while ((v26 + 3) <= *(v24 + 4) + *(v24 + 10));
        }

        if (self->_hasFixedDestination && self->_destinationAddressToDeviceIDMap)
        {
          v30 = [IDSSockAddrWrapper wrapperWithSockAddr:v25 + 184];
          v31 = [(NSDictionary *)self->_destinationAddressToDeviceIDMap objectForKey:v30];
          if (!v31)
          {
            v44 = +[IDSFoundationLog IDSUDPLink];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              destinationAddressToDeviceIDMap = self->_destinationAddressToDeviceIDMap;
              *buf = 136315906;
              v73 = "[IDSUDPLink _processIncomingPacketOnSocket:]";
              v74 = 2112;
              v75 = v30;
              v76 = 1024;
              v77 = socketCopy;
              v78 = 2112;
              v79 = destinationAddressToDeviceIDMap;
              _os_log_error_impl(&dword_1A7AD9000, v44, OS_LOG_TYPE_ERROR, "%s found no matching deviceID for %@, socket %d, map = %@", buf, 0x26u);
            }

            goto LABEL_46;
          }

          v32 = v31;
        }

        else
        {
          v32 = self->_cbuuid;
        }

        v33.i64[1] = v69.i64[1];
        v33.i64[0] = *(v25 + 16);
        *&self->_totalBytesReceived = vaddq_s64(*&self->_totalBytesReceived, v33);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained link:self didReceivePacket:v25 fromDeviceUniqueID:self->_deviceUniqueID cbuuid:v32];
      }

      if (v22 != 10)
      {
        break;
      }

      v35 = 0;
      v36 = v66;
      do
      {
        v37 = *&v21[v35];
        IDSLinkPacketBufferResetBufferStart(v37, 15);
        *v36 = *v37;
        v36 += 2;
        v35 += 8;
      }

      while (v35 != 80);
      v22 = recvmsg_x();
      if (v22 < 0)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_46:
  for (k = 0; k != 80; k += 8)
  {
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSUDPLink.m", 262, *&v21[k]);
  }
}

- (unint64_t)_sendBytes:(const void *)bytes length:(unint64_t)length
{
  v34 = *MEMORY[0x1E69E9840];
  socket = self->_socket;
  if (socket == -1)
  {
    return 7;
  }

  if (self->_hasFixedDestination)
  {
    v8 = [(IDSSockAddrWrapper *)self->_destinationAddress sa];

    return [(IDSUDPLink *)self _sendBytes:bytes length:length destinationAddress:v8];
  }

  else
  {
    if (self->_needToConnect)
    {
      destinationAddress = self->_destinationAddress;
      if (destinationAddress)
      {
        if (connect(socket, [(IDSSockAddrWrapper *)destinationAddress sa], *[(IDSSockAddrWrapper *)self->_destinationAddress sa]) < 0)
        {
          v14 = *__error();
          v15 = +[IDSFoundationLog IDSUDPLink];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v22 = self->_destinationAddress;
            v23 = self->_socket;
            v26 = 136315906;
            v27 = "[IDSUDPLink _sendBytes:length:]";
            v28 = 2112;
            *v29 = v22;
            *&v29[8] = 1024;
            *&v29[10] = v23;
            v30 = 1024;
            v31 = v14;
            _os_log_error_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_ERROR, "%s connect(%@) on socket %d failed errno=%d", &v26, 0x22u);
          }
        }

        else
        {
          v11 = +[IDSFoundationLog IDSUDPLink];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = self->_destinationAddress;
            v13 = self->_socket;
            v26 = 136315650;
            v27 = "[IDSUDPLink _sendBytes:length:]";
            v28 = 2112;
            *v29 = v12;
            *&v29[8] = 1024;
            *&v29[10] = v13;
            _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_INFO, "%s connect(%@) on socket %d succeeded. Reset _needToConnect", &v26, 0x1Cu);
          }

          self->_needToConnect = 0;
        }
      }
    }

    v16 = send(self->_socket, bytes, length, 0);
    if (v16 < 0)
    {
      v19 = *__error();
      result = sub_1A7C93B48();
      switch(result)
      {
        case 3uLL:
          v21 = +[IDSFoundationLog IDSUDPLink];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v25 = self->_socket;
            v26 = 136316162;
            v27 = "[IDSUDPLink _sendBytes:length:]";
            v28 = 1024;
            *v29 = 309;
            *&v29[4] = 2048;
            *&v29[6] = length;
            v30 = 1024;
            v31 = v25;
            v32 = 1024;
            v33 = v19;
            _os_log_error_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_ERROR, "%s:%d send(%zu B) on socket %d failed errno=%d", &v26, 0x28u);
          }

          self->_hasTemporaryError = 1;
          return 3;
        case 0xBuLL:
          v20 = +[IDSFoundationLog IDSUDPLink];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v24 = self->_socket;
            v26 = 136316162;
            v27 = "[IDSUDPLink _sendBytes:length:]";
            v28 = 1024;
            *v29 = 307;
            *&v29[4] = 2048;
            *&v29[6] = length;
            v30 = 1024;
            v31 = v24;
            v32 = 1024;
            v33 = v19;
            _os_log_error_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_ERROR, "%s:%d send(%zu B) on socket %d failed errno=%d", &v26, 0x28u);
          }

          return 11;
        case 6uLL:
          self->_needToConnect = 1;
          break;
      }
    }

    else
    {
      v17 = v16;
      result = 0;
      self->_hasTemporaryError = 0;
      v18 = vdupq_n_s64(1uLL);
      v18.i64[0] = v17;
      *&self->_totalBytesSent = vaddq_s64(*&self->_totalBytesSent, v18);
    }
  }

  return result;
}

- (unint64_t)_sendBytes:(const void *)bytes length:(unint64_t)length destinationAddress:(const sockaddr *)address
{
  v25 = *MEMORY[0x1E69E9840];
  socket = self->_socket;
  if (socket == -1)
  {
    return 7;
  }

  if (self->_destinationAddress && !self->_hasFixedDestination)
  {
    if (address && address->sa_family)
    {
      return 5;
    }

    else
    {

      return [(IDSUDPLink *)self _sendBytes:bytes length:?];
    }
  }

  else
  {
    v8 = sendto(socket, bytes, length, 0, address, address->sa_len);
    if (v8 < 0)
    {
      v12 = *__error();
      result = sub_1A7C93B48();
      if (result == 3)
      {
        self->_hasTemporaryError = 1;
      }

      else if (result == 11)
      {
        v13 = +[IDSFoundationLog IDSUDPLink];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = self->_socket;
          v15 = 136316162;
          v16 = "[IDSUDPLink _sendBytes:length:destinationAddress:]";
          v17 = 1024;
          v18 = 339;
          v19 = 2048;
          lengthCopy = length;
          v21 = 1024;
          v22 = v14;
          v23 = 1024;
          v24 = v12;
          _os_log_error_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_ERROR, "%s:%d sendto(%zuB) on socket %d failed errno=%d", &v15, 0x28u);
        }

        return 11;
      }
    }

    else
    {
      v9 = v8;
      result = 0;
      self->_hasTemporaryError = 0;
      v11 = vdupq_n_s64(1uLL);
      v11.i64[0] = v9;
      *&self->_totalBytesSent = vaddq_s64(*&self->_totalBytesSent, v11);
    }
  }

  return result;
}

- (unint64_t)_sendBytesArray:(const void *)array lengthArray:(unint64_t *)lengthArray arraySize:(int)size localInterfaceIndex:(int)index localAddress:(const sockaddr *)address destinationAddress:(const sockaddr *)destinationAddress trafficClass:(unsigned __int16)class DSCP:(unsigned __int8)self0
{
  v59 = *MEMORY[0x1E69E9840];
  if (self->_socket == -1)
  {
    return 7;
  }

  if (address && address->sa_family)
  {
    if (self->_destinationAddress)
    {
      if (destinationAddress && destinationAddress->sa_family)
      {
        return 5;
      }

      if (size == 1)
      {
        v15 = *array;
        v16 = *lengthArray;

        return [(IDSUDPLink *)self _sendBytes:v15 length:v16];
      }

      return 12;
    }

    if (!destinationAddress || !destinationAddress->sa_family)
    {
      return 6;
    }

    if (!index)
    {
      v26 = [IDSFoundationLog IDSUDPLink:array];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1FBA4();
      }

      goto LABEL_28;
    }

    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v57 = v17;
    v58 = v17;
    v55 = v17;
    v56 = v17;
    v53 = v17;
    v54 = v17;
    v51 = v17;
    v52 = v17;
    v49 = v17;
    v50 = v17;
    *&v48[16] = v17;
    *&v25 = MEMORY[0x1EEE9AC00](self, a2);
    v47 = v25;
    *v48 = v25;
    *v46 = v25;
    *&v46[16] = v25;
    if (size > 8)
    {
      v26 = [IDSFoundationLog IDSUDPLink:*v46];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1FB14();
      }

LABEL_28:

      return 9;
    }

    if (size >= 1)
    {
      v27 = 0;
      sizeCopy = size;
      v29 = &v51 + 1;
      do
      {
        v31 = *v18++;
        v30 = v31;
        v32 = *v19++;
        *(v29 - 1) = v30;
        *v29 = v32;
        v27 += v32;
        v29 += 2;
        --sizeCopy;
      }

      while (sizeCopy);
    }

    *&v48[16] = v22;
    *&v48[24] = *v22;
    *&v49 = &v51;
    DWORD2(v49) = size;
    HIDWORD(v50) = 0;
    v33 = *(v21 + 1);
    if (v33 == 2)
    {
      v35 = 0;
      *&v50 = v46;
      DWORD2(v50) = 64;
      *v46 = 24;
      *&v46[8] = 26;
      *&v46[12] = v20;
      v39 = 3;
      *&v46[16] = *(v21 + 4);
      v36 = 32;
      v34 = 28;
      v37 = 36;
      v38 = 24;
LABEL_36:
      v40 = &v46[v38];
      *&v46[v34] = v35;
      *v40 = 16;
      *&v46[v36] = v39;
      *&v46[v37] = v24;
      if (v23)
      {
        *(v40 + 2) = 0xFFFF00000010;
        *(v40 + 6) = 4230;
        *(v40 + 7) = v23;
      }

      else
      {
        DWORD2(v50) = 48;
      }

      v42 = sendmsg([(IDSUDPLink *)self _findSocketForInterfaceIndex:v20, v19, *v46, *&v46[8], *&v46[16], *&v46[24], v47, *(&v47 + 1), *v48, *&v48[8], *&v48[16], *&v48[24], v49, *(&v49 + 1), v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56, v57, v58], &v48[16], 0);
      if (v42 < 0)
      {
        __error();
        result = sub_1A7C93B48();
        if (result == 3)
        {
          self->_hasTemporaryError = 1;
        }

        else if (result == 11)
        {
          v45 = +[IDSFoundationLog IDSUDPLink];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            sub_1A7E1F9F4();
          }

          return 11;
        }
      }

      else
      {
        v43 = v42;
        result = 0;
        self->_hasTemporaryError = 0;
        v44 = vdupq_n_s64(1uLL);
        v44.i64[0] = v43;
        *&self->_totalBytesSent = vaddq_s64(*&self->_totalBytesSent, v44);
      }

      return result;
    }

    if (v33 == 30)
    {
      *&v50 = v46;
      DWORD2(v50) = 64;
      *v46 = 0x2900000020;
      *&v46[8] = 46;
      *&v46[28] = v20;
      v34 = 36;
      v35 = 41;
      *&v46[12] = *(v21 + 8);
      v36 = 40;
      v37 = 44;
      v38 = 32;
      v39 = 36;
      goto LABEL_36;
    }

    v41 = [IDSFoundationLog IDSUDPLink:v18];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1FA8C();
    }

    return 8;
  }

  else
  {
    if (size != 1)
    {
      return 12;
    }

    v13 = *array;
    v14 = *lengthArray;

    return [(IDSUDPLink *)self _sendBytes:v13 length:v14 destinationAddress:destinationAddress, *&index];
  }
}

- (int)_createNewUDPSocketWithIPVersion:(unint64_t)version localPort:(unsigned __int16 *)port wantsAWDL:(BOOL)l clientUUID:(unsigned __int8)d[16]
{
  lCopy = l;
  v38 = *MEMORY[0x1E69E9840];
  memset(v37, 0, sizeof(v37));
  if (version == 1)
  {
    v10 = 0;
    *&v37[0].sa_len = 7708;
    *&v37[0].sa_data[6] = *MEMORY[0x1E69E99B8];
    v9 = 30;
    v11 = 28;
  }

  else
  {
    if (version)
    {
      v17 = +[IDSFoundationLog IDSUDPLink];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1A7E1FDC8();
      }

      goto LABEL_12;
    }

    *&v37[0].sa_len = 528;
    v9 = 2;
    v10 = 1;
    v11 = 16;
  }

  *v37[0].sa_data = bswap32(*port) >> 16;
  v12 = socket(v9, 2, 17);
  if (v12 == -1)
  {
    v18 = __error();
    IDSAssertNonFatalErrnoWithSource(*v18, "UDPLink", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSUDPLink.m", 513);
    v17 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1FD44();
    }

LABEL_12:

    return -1;
  }

  v13 = v12;
  IDSCheckFileDescriptorUsageWithSource("IDSUDPLink.m", 518, 0);
  v27 = 1;
  v14 = v13;
  if (v10)
  {
    v15 = 0;
    v16 = 26;
  }

  else
  {
    setsockopt(v13, 41, 27, &v27, 4u);
    v14 = v13;
    v15 = 41;
    v16 = 61;
  }

  setsockopt(v14, v15, v16, &v27, 4u);
  if (lCopy)
  {
    setsockopt(v13, 0xFFFF, 4356, &v27, 4u);
  }

  setsockopt(v13, 0xFFFF, 4130, &v27, 4u);
  v26 = 0x80000;
  setsockopt(v13, 0xFFFF, 4098, &v26, 4u);
  v19 = fcntl(v13, 3, 0);
  if (v19 != -1)
  {
    fcntl(v13, 4, v19 | 4u);
  }

  if (bind(v13, v37, v11) == -1)
  {
    __error();
    close(v13);
    v23 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1FCB8();
    }

    goto LABEL_28;
  }

  v25 = 128;
  if (getsockname(v13, v37, &v25) == -1)
  {
    __error();
    close(v13);
    v23 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1FC2C();
    }

LABEL_28:

    return -1;
  }

  *port = bswap32(*v37[0].sa_data) >> 16;
  if (!uuid_is_null(d))
  {
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v20;
    *&out[16] = v20;
    uuid_unparse(d, out);
    if (setsockopt(v13, 0xFFFF, 4360, d, 0x10u))
    {
      v21 = *__error();
      v22 = +[IDSFoundationLog IDSUDPLink];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *v29 = "[IDSUDPLink _createNewUDPSocketWithIPVersion:localPort:wantsAWDL:clientUUID:]";
        *&v29[8] = 1024;
        *&v29[10] = 579;
        v30 = 1024;
        v31 = v13;
        v32 = 2080;
        v33 = out;
        v34 = 1024;
        v35 = v21;
        _os_log_error_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_ERROR, "%s:%d setsockopt on socket %d SO_DELEGATED_UUID failed for %s, errno: %d", buf, 0x28u);
      }
    }

    else
    {
      v22 = +[IDSFoundationLog IDSUDPLink];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v29 = v13;
        *&v29[4] = 2080;
        *&v29[6] = out;
        _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_INFO, "setsockopt on socket %d SO_DELEGATED_UUID for %s", buf, 0x12u);
      }
    }
  }

  return v13;
}

- (int)_findSocketForInterfaceIndex:(int)index
{
  v4 = [(IDSUDPLink *)self _isInterfaceIndexCellular:*&index];
  v5 = 8;
  if (v4)
  {
    v5 = 12;
  }

  return *(&self->super.isa + v5);
}

- (BOOL)_setTrafficClassOnSocket:(int)socket trafficClassValue:(int)value
{
  v19 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v5 = setsockopt(socket, 0xFFFF, 4230, &valueCopy, 4u);
  if (v5)
  {
    v6 = *__error();
    v7 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *v11 = "[IDSUDPLink _setTrafficClassOnSocket:trafficClassValue:]";
      *&v11[8] = 1024;
      v12 = 608;
      v13 = 1024;
      v14 = valueCopy;
      v15 = 1024;
      socketCopy = socket;
      v17 = 1024;
      v18 = v6;
      _os_log_error_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_ERROR, "%s:%d traffic class (%d) failed to set for socket (%d), error (%d).", buf, 0x24u);
    }
  }

  else
  {
    v7 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *v11 = valueCopy;
      *&v11[4] = 1024;
      *&v11[6] = socket;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_INFO, "traffic class (%d) is set for socket (%d).", buf, 0xEu);
    }
  }

  return v5 == 0;
}

- (unint64_t)headerOverhead
{
  addressFamily = self->_addressFamily;
  v3 = 255;
  if (addressFamily == 30)
  {
    v3 = 48;
  }

  if (addressFamily == 2)
  {
    return 28;
  }

  else
  {
    return v3;
  }
}

- (id)copyLinkStatsDict
{
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalBytesReceived];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalBytesSent];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalPacketsReceived];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_totalPacketsSent];
  v8 = [v3 initWithObjectsAndKeys:{v4, @"bytesReceived", v5, @"bytesSent", v6, @"packetsReceived", v7, @"packetsSent", 0}];

  return v8;
}

- (void)removeSocket
{
  socket = self->_socket;
  if (socket != -1)
  {
    if (!self->_skipTransportThread)
    {
      IDSTransportThreadRemoveSocket(socket);
      socket = self->_socket;
    }

    close(socket);
    self->_socket = -1;
  }

  cellularSocket = self->_cellularSocket;
  if (cellularSocket != -1)
  {
    if (!self->_skipTransportThread)
    {
      IDSTransportThreadRemoveSocket(cellularSocket);
      cellularSocket = self->_cellularSocket;
    }

    close(cellularSocket);
    self->_cellularSocket = -1;
  }
}

- (BOOL)setDestinationAddress:(id)address isFixedDestination:(BOOL)destination fromAddress:(id)fromAddress
{
  v31 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  fromAddressCopy = fromAddress;
  v10 = fromAddressCopy;
  if (self->_socket == -1)
  {
    self->_state = 0;
    WeakRetained = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1FEF0();
    }

    goto LABEL_13;
  }

  if (fromAddressCopy && ![(IDSSockAddrWrapper *)addressCopy isEqualToWrapper:fromAddressCopy])
  {
    WeakRetained = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1FE58();
    }

LABEL_13:
    v12 = 0;
    goto LABEL_25;
  }

  if (![(IDSSockAddrWrapper *)addressCopy isEqual:self->_destinationAddress]&& !destination)
  {
    if (addressCopy)
    {
      if (connect(self->_socket, [(IDSSockAddrWrapper *)addressCopy sa], *[(IDSSockAddrWrapper *)addressCopy sa]) < 0)
      {
        v15 = *__error();
        v16 = +[IDSFoundationLog IDSUDPLink];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          socket = self->_socket;
          *v24 = 136316162;
          *&v24[4] = "[IDSUDPLink setDestinationAddress:isFixedDestination:fromAddress:]";
          *&v24[12] = 1024;
          *&v24[14] = 677;
          v25 = 2112;
          v26 = addressCopy;
          v27 = 1024;
          v28 = socket;
          v29 = 1024;
          v30 = v15;
          _os_log_error_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_ERROR, "%s:%d connect(%@) on socket %d failed errno=%d", v24, 0x28u);
        }

        self->_needToConnect = 1;
      }

      else
      {
        self->_needToConnect = 0;
      }
    }

    else
    {
      v13 = +[IDSFoundationLog IDSUDPLink];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        destinationAddress = self->_destinationAddress;
        *v24 = 138412290;
        *&v24[4] = destinationAddress;
        _os_log_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_DEFAULT, "dissolving old association with %@", v24, 0xCu);
      }

      *&v24[8] = 0;
      *&v24[2] = 0;
      *v24 = 16;
      connect(self->_socket, v24, 0x10u);
    }
  }

  v17 = [(IDSSockAddrWrapper *)addressCopy copy];
  v18 = self->_destinationAddress;
  self->_destinationAddress = v17;

  self->_hasFixedDestination = destination;
  self->_lastDestinationReceived = ids_monotonic_time();
  v19 = +[IDSFoundationLog IDSUDPLink];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_destinationAddress;
    *v24 = 136315650;
    *&v24[4] = "[IDSUDPLink setDestinationAddress:isFixedDestination:fromAddress:]";
    *&v24[12] = 1024;
    *&v24[14] = 696;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "%s:%d new destination set to %@", v24, 0x1Cu);
  }

  v21 = 4;
  if (!addressCopy)
  {
    v21 = 1;
  }

  self->_state = v21;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained link:self didConnectForDeviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];
  v12 = 1;
LABEL_25:

  return v12;
}

- (BOOL)setDestinationAddress:(id)address localIfIndex:(unsigned int)index isFixedDestination:(BOOL)destination fromAddress:(id)fromAddress
{
  destinationCopy = destination;
  v29 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  indexCopy = index;
  fromAddressCopy = fromAddress;
  v12 = +[IDSFoundationLog IDSUDPLink];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    socket = self->_socket;
    *buf = 67109376;
    *v21 = socket;
    *&v21[4] = 1024;
    *&v21[6] = index;
    _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "setting local interface index on socket %d to %u", buf, 0xEu);
  }

  if (setsockopt(self->_socket, 0, 25, &indexCopy, 4u) < 0)
  {
    v14 = *__error();
    v15 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = self->_socket;
      *buf = 136316162;
      *v21 = "[IDSUDPLink setDestinationAddress:localIfIndex:isFixedDestination:fromAddress:]";
      *&v21[8] = 1024;
      v22 = 720;
      v23 = 1024;
      v24 = indexCopy;
      v25 = 1024;
      v26 = v18;
      v27 = 1024;
      v28 = v14;
      _os_log_error_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_ERROR, "%s:%d setsockopt(IP_BOUND_IF,%u) on socket %d failed errno=%d", buf, 0x24u);
    }
  }

  v16 = [(IDSUDPLink *)self setDestinationAddress:addressCopy isFixedDestination:destinationCopy fromAddress:fromAddressCopy];

  return v16;
}

- (BOOL)setDestinationAddressToDeviceIDMap:(id)map
{
  objc_storeStrong(&self->_destinationAddressToDeviceIDMap, map);
  mapCopy = map;
  self->_hasFixedDestination = 1;
  self->_state = 4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained link:self didConnectForDeviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];

  return 1;
}

- (void)reconnectWithLocalAddress:(id)address
{
  v24 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  destinationAddress = self->_destinationAddress;
  if (!destinationAddress || self->_hasFixedDestination)
  {
    goto LABEL_19;
  }

  if (connect(self->_socket, [(IDSSockAddrWrapper *)destinationAddress sa], *[(IDSSockAddrWrapper *)self->_destinationAddress sa]) < 0)
  {
    v12 = *__error();
    v13 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_destinationAddress;
      socket = self->_socket;
      *v18 = 136316162;
      *&v18[4] = "[IDSUDPLink reconnectWithLocalAddress:]";
      *&v18[12] = 1024;
      *&v18[14] = 742;
      *&v18[18] = 2112;
      *&v18[20] = v14;
      *&v18[28] = 1024;
      *&v18[30] = socket;
      *&v18[34] = 1024;
      *&v18[36] = v12;
      _os_log_error_impl(&dword_1A7AD9000, v13, OS_LOG_TYPE_ERROR, "%s:%d connect(%@) on socket %d failed errno=%d", v18, 0x28u);
    }

    goto LABEL_14;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v6;
  v23 = v6;
  v20 = v6;
  v21 = v6;
  *&v18[32] = v6;
  v19 = v6;
  *v18 = v6;
  *&v18[16] = v6;
  v17 = 128;
  if (getsockname(self->_socket, v18, &v17) == -1)
  {
    v13 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1FFF8(v13);
    }

LABEL_14:

    self->_needToConnect = 1;
    goto LABEL_19;
  }

  v7 = [[IDSSockAddrWrapper alloc] initWithSockAddr:v18];
  ipString = [addressCopy ipString];
  ipString2 = [(IDSSockAddrWrapper *)v7 ipString];
  if (ipString && ![ipString isEqualToString:ipString2])
  {
    v10 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E1FF78();
    }

    v11 = 1;
  }

  else
  {
    v10 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "reconnectWithLocalAddress succeeded", v16, 2u);
    }

    v11 = 0;
  }

  self->_needToConnect = v11;
LABEL_19:
}

- (id)newSocketWithIPVersion:(unint64_t)version wantsAWDL:(BOOL)l wantsWiFi:(BOOL)fi wantsCellular:(BOOL)cellular clientUUID:(unsigned __int8)d[16]
{
  cellularCopy = cellular;
  fiCopy = fi;
  lCopy = l;
  v38 = *MEMORY[0x1E69E9840];
  if (version)
  {
    v13 = 30;
  }

  else
  {
    v13 = 2;
  }

  self->_addressFamily = v13;
  self->_wantsAWDL = l;
  self->_wantsWiFi = fi;
  self->_wantsCellular = cellular;
  v14 = [IDSUDPLink _createNewUDPSocketWithIPVersion:"_createNewUDPSocketWithIPVersion:localPort:wantsAWDL:clientUUID:" localPort:? wantsAWDL:? clientUUID:?];
  self->_socket = v14;
  if (v14 == -1)
  {
    v24 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E20130();
    }

    goto LABEL_18;
  }

  if (!self->_skipTransportThread)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A7C9554C;
    v27[3] = &unk_1E77E0818;
    v27[4] = self;
    IDSTransportThreadAddSocket(v14, v27, 0);
  }

  v15 = [(IDSUDPLink *)self _createNewUDPSocketWithIPVersion:version localPort:&self->_cellularPort wantsAWDL:lCopy clientUUID:d];
  self->_cellularSocket = v15;
  if (v15 == -1)
  {
    [(IDSUDPLink *)self removeSocket];
    v24 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E200A8();
    }

LABEL_18:

    return 0;
  }

  if (!self->_skipTransportThread)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1A7C95554;
    v26[3] = &unk_1E77E0818;
    v26[4] = self;
    IDSTransportThreadAddSocket(v15, v26, 0);
  }

  v16 = +[IDSFoundationLog IDSUDPLink];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    port = self->_port;
    socket = self->_socket;
    cellularSocket = self->_cellularSocket;
    cellularPort = self->_cellularPort;
    *buf = 136316162;
    v29 = "[IDSUDPLink newSocketWithIPVersion:wantsAWDL:wantsWiFi:wantsCellular:clientUUID:]";
    v30 = 1024;
    v31 = socket;
    v32 = 1024;
    v33 = port;
    v34 = 1024;
    v35 = cellularSocket;
    v36 = 1024;
    v37 = cellularPort;
    _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "%s created UDP sockets. default %d port %d cellular %d cellularPort %d", buf, 0x24u);
  }

  allowsLinkLocal = self->_allowsLinkLocal;
  useDefaultInterfaceOnly = self->_useDefaultInterfaceOnly;
  LOBYTE(v25) = [(NSString *)self->_cbuuid isEqualToString:@"12345678-7654-DADA-DADA-DADADADADADA"];
  result = [(IDSUDPLink *)self _createNetworkInterfaceArrayWithIPVersion:version wantsAWDL:lCopy wantsWiFi:fiCopy wantsCellular:cellularCopy allowsLinkLocal:allowsLinkLocal useDefaultInterfaceOnly:useDefaultInterfaceOnly defaultPairedDevice:v25];
  if (!result)
  {
    self->_state = 1;
  }

  return result;
}

- (id)newSocketWithIPVersion:(unint64_t)version wantsAWDL:(BOOL)l wantsWiFi:(BOOL)fi wantsCellular:(BOOL)cellular
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  return [(IDSUDPLink *)self newSocketWithIPVersion:version wantsAWDL:l wantsWiFi:fi wantsCellular:cellular clientUUID:v7];
}

- (id)copyCurrentNetworkInterfaces
{
  v3 = self->_addressFamily != 2;
  wantsAWDL = self->_wantsAWDL;
  wantsWiFi = self->_wantsWiFi;
  wantsCellular = self->_wantsCellular;
  allowsLinkLocal = self->_allowsLinkLocal;
  useDefaultInterfaceOnly = self->_useDefaultInterfaceOnly;
  LOBYTE(v10) = [(NSString *)self->_cbuuid isEqualToString:@"12345678-7654-DADA-DADA-DADADADADADA"];
  [(IDSUDPLink *)self _createNetworkInterfaceArrayWithIPVersion:v3 wantsAWDL:wantsAWDL wantsWiFi:wantsWiFi wantsCellular:wantsCellular allowsLinkLocal:allowsLinkLocal useDefaultInterfaceOnly:useDefaultInterfaceOnly defaultPairedDevice:v10];
  return objc_claimAutoreleasedReturnValue();
}

- (unint64_t)sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  v18[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  cbuuidCopy = cbuuid;
  v10 = cbuuidCopy;
  if (cbuuidCopy && ([cbuuidCopy isEqualToString:self->_cbuuid] & 1) == 0)
  {
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSUDPLink.m", 819, buffer);
    v14 = 10;
  }

  else
  {
    var0 = buffer->var0;
    var2 = buffer->var2;
    v18[0] = var0;
    if (buffer->var19.ss_family)
    {
      if (buffer->var18.ss_family && (var17 = buffer->var17, var17))
      {
        BYTE2(v16) = buffer->var22;
        LOWORD(v16) = buffer->var21;
        v13 = [(IDSUDPLink *)self _sendBytesArray:v18 lengthArray:&var2 arraySize:1 localInterfaceIndex:var17 localAddress:&buffer->var18 destinationAddress:&buffer->var19 trafficClass:v16 DSCP:?];
      }

      else
      {
        v13 = [IDSUDPLink _sendBytes:"_sendBytes:length:destinationAddress:" length:? destinationAddress:?];
      }
    }

    else
    {
      v13 = [IDSUDPLink _sendBytes:"_sendBytes:length:" length:?];
    }

    v14 = v13;
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSUDPLink.m", 847, buffer);
  }

  return v14;
}

- (unint64_t)sendPacketBuffer:(id *)buffer destination:(id)destination toDeviceID:(id)d
{
  destinationCopy = destination;
  dCopy = d;
  v10 = dCopy;
  if (dCopy && ([dCopy isEqualToString:self->_cbuuid] & 1) == 0)
  {
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSUDPLink.m", 853, buffer);
    v11 = 10;
  }

  else
  {
    v11 = -[IDSUDPLink _sendBytes:length:destinationAddress:](self, "_sendBytes:length:destinationAddress:", buffer->var0, buffer->var2, [destinationCopy sa]);
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSUDPLink.m", 861, buffer);
  }

  return v11;
}

- (unint64_t)sendPacketBuffer:(id *)buffer sourceInterface:(id)interface destination:(id)destination toDeviceID:(id)d
{
  v23[1] = *MEMORY[0x1E69E9840];
  interfaceCopy = interface;
  destinationCopy = destination;
  dCopy = d;
  v13 = dCopy;
  if (dCopy && ([dCopy isEqualToString:self->_cbuuid] & 1) == 0)
  {
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSUDPLink.m", 867, buffer);
    v19 = 10;
  }

  else
  {
    var0 = buffer->var0;
    var2 = buffer->var2;
    v23[0] = var0;
    index = [interfaceCopy index];
    address = [interfaceCopy address];
    v17 = [address sa];
    v18 = [destinationCopy sa];
    BYTE2(v21) = buffer->var22;
    LOWORD(v21) = buffer->var21;
    v19 = [(IDSUDPLink *)self _sendBytesArray:v23 lengthArray:&var2 arraySize:1 localInterfaceIndex:index localAddress:v17 destinationAddress:v18 trafficClass:v21 DSCP:?];

    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSUDPLink.m", 883, buffer);
  }

  return v19;
}

- (unint64_t)sendPacketBufferArray:(id *)array arraySize:(int)size toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  v7 = *&size;
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  cbuuidCopy = cbuuid;
  v12 = cbuuidCopy;
  if (cbuuidCopy && ([cbuuidCopy isEqualToString:self->_cbuuid] & 1) == 0)
  {
    if (v7 < 1)
    {
      v23 = 10;
    }

    else
    {
      v21 = v7;
      v23 = 10;
      do
      {
        v22 = *array++;
        _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSUDPLink.m", 890, v22);
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29[2] = v13;
    v29[3] = v13;
    v29[0] = v13;
    v29[1] = v13;
    v28[2] = v13;
    v28[3] = v13;
    v28[0] = v13;
    v28[1] = v13;
    if (v7 >= 1)
    {
      v14 = v28;
      v15 = v29;
      arrayCopy = array;
      v17 = v7;
      do
      {
        v18 = *arrayCopy++;
        *v15++ = *v18;
        *v14++ = v18[2];
        --v17;
      }

      while (v17);
    }

    v19 = *array;
    if (!*(*array + 185) || (*(v19 + 57) ? (v20 = *(v19 + 12) == 0) : (v20 = 1), v20))
    {
      v23 = 12;
    }

    else
    {
      BYTE2(v27) = *(v19 + 442);
      LOWORD(v27) = *(v19 + 220);
      v23 = [IDSUDPLink _sendBytesArray:"_sendBytesArray:lengthArray:arraySize:localInterfaceIndex:localAddress:destinationAddress:trafficClass:DSCP:" lengthArray:v29 arraySize:v28 localInterfaceIndex:v7 localAddress:v27 destinationAddress:? trafficClass:? DSCP:?];
    }

    if (v7 >= 1)
    {
      v24 = v7;
      do
      {
        v25 = *array++;
        _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSUDPLink.m", 922, v25);
        --v24;
      }

      while (v24);
    }
  }

  return v23;
}

- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link
{
  previousReportTime = self->_previousReportTime;
  if (previousReportTime == 0.0)
  {
    v12 = 0;
  }

  else
  {
    v7 = report - previousReportTime;
    v8 = self->_totalBytesSent - self->_previousBytesSent;
    v9 = self->_totalBytesReceived - self->_previousBytesReceived;
    if (link)
    {
      v10 = 42;
    }

    else
    {
      v10 = 32;
    }

    v27 = v10;
    v28 = MEMORY[0x1E696AEC0];
    if (self->_hasTemporaryError)
    {
      v11 = " HostDown";
    }

    else
    {
      state = self->_state;
      if (state > 6)
      {
        v11 = "UnexpectedState";
      }

      else
      {
        v11 = _IDSLinkStateStrings[state];
      }
    }

    v26 = v11;
    v25 = self->_totalPacketsSent - self->_previousPacketsSent;
    v14 = formattedBytes(v8);
    v15 = formattedSpeed(((8 * v8) / v7 + 0.5));
    totalPacketsSent = self->_totalPacketsSent;
    v17 = formattedBytes(self->_totalBytesSent);
    v18 = self->_totalPacketsReceived - self->_previousPacketsReceived;
    v19 = formattedBytes(v9);
    v20 = formattedSpeed(((8 * v9) / v7 + 0.5));
    totalPacketsReceived = self->_totalPacketsReceived;
    v22 = formattedBytes(self->_totalBytesReceived);
    v12 = [v28 stringWithFormat:@"%c InfraWiFi (%s) Tx %6llu pkts %@B %@bps     %6llu pkts %@B\n                        Rx %6llu pkts %@B %@bps     %6llu pkts %@B\n", v27, v26, v25, v14, v15, totalPacketsSent, v17, v18, v19, v20, totalPacketsReceived, v22];
  }

  self->_previousReportTime = report;
  v23 = *&self->_totalBytesReceived;
  *&self->_previousBytesSent = *&self->_totalBytesSent;
  *&self->_previousBytesReceived = v23;

  return v12;
}

- (BOOL)setTrafficClass:(int)class
{
  v3 = *&class;
  socket = self->_socket;
  if (socket == -1)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [(IDSUDPLink *)self _setTrafficClassOnSocket:socket trafficClassValue:v3];
    if (v6)
    {
      if (self->_cellularSocket == -1)
      {
        LOBYTE(v6) = 1;
      }

      else
      {

        LOBYTE(v6) = [IDSUDPLink _setTrafficClassOnSocket:"_setTrafficClassOnSocket:trafficClassValue:" trafficClassValue:?];
      }
    }
  }

  return v6;
}

- (void)setWiFiAssistState:(BOOL)state
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = 1;
  if (!state)
  {
    v5 = 2;
  }

  v9 = v5;
  stateCopy = state;
  if (setsockopt(self->_cellularSocket, 0xFFFF, 4387, &v9, 8u) == -1 || setsockopt(self->_cellularSocket, 0xFFFF, 4373, &stateCopy, 4u) == -1)
  {
    v6 = +[IDSFoundationLog IDSUDPLink];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *__error();
      *buf = 136315650;
      v11 = "[IDSUDPLink setWiFiAssistState:]";
      v12 = 1024;
      v13 = 983;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d setsockopt failed, errno: %d", buf, 0x18u);
    }
  }

  else
  {
    self->_wifiAssistEnabled = state;
  }
}

- (IDSLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IDSLinkDelegate)alternateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alternateDelegate);

  return WeakRetained;
}

@end