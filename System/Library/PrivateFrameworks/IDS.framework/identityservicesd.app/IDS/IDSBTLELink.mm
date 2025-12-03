@interface IDSBTLELink
- (IDSBTLELink)initWithWPLinkManager:(id)manager withIdentifier:(id)identifier;
- (IDSLinkDelegate)alternateDelegate;
- (IDSLinkDelegate)delegate;
- (id)copyLinkStatsDict;
- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link;
- (unint64_t)sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)_didReceiveData:(id)data;
- (void)dealloc;
- (void)didReceiveData:(id)data;
- (void)start;
@end

@implementation IDSBTLELink

- (IDSBTLELink)initWithWPLinkManager:(id)manager withIdentifier:(id)identifier
{
  managerCopy = manager;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = IDSBTLELink;
  v9 = [(IDSBTLELink *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_wpLinkManager, manager);
    v11 = [identifierCopy copy];
    linkID = v10->_linkID;
    v10->_linkID = v11;

    v13 = [[NSUUID alloc] initWithUUIDString:v10->_linkID];
    peerID = v10->_peerID;
    v10->_peerID = v13;

    objc_storeStrong(&v10->_cbuuid, v10->_linkID);
    v10->_state = 0;
    if (qword_100CBD230 != -1)
    {
      sub_10091D21C();
    }

    v10->_previousReportTime = *&qword_100CBD238 * mach_continuous_time();
  }

  return v10;
}

- (void)dealloc
{
  if (self->_incomingPacketBuffer)
  {
    _IDSLinkPacketBufferRelease();
  }

  v3.receiver = self;
  v3.super_class = IDSBTLELink;
  [(IDSBTLELink *)&v3 dealloc];
}

- (void)start
{
  if (self->_state <= 5)
  {
    self->_hasSpaceAvailable = 1;
    self->_state = 4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained link:self didConnectForDeviceUniqueID:0 cbuuid:self->_cbuuid];
  }
}

- (id)copyLinkStatsDict
{
  v3 = [NSDictionary alloc];
  v4 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesReceived];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesSent];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsReceived];
  v7 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsSent];
  v8 = [v3 initWithObjectsAndKeys:{v4, @"bytesReceived", v5, @"bytesSent", v6, @"packetsReceived", v7, @"packetsSent", 0}];

  return v8;
}

- (unint64_t)sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  v10 = cbuuidCopy;
  if (cbuuidCopy && ([cbuuidCopy isEqualToString:self->_cbuuid] & 1) == 0)
  {
    _IDSLinkPacketBufferRelease();
    v11 = 10;
  }

  else if (self->_state == 4)
  {
    if (self->_outgoingData)
    {
      _IDSLinkPacketBufferRelease();
      v11 = 1;
      self->_shouldSendHasSpaceAvailable = 1;
    }

    else if (buffer->var2 <= 0)
    {
      _IDSLinkPacketBufferRelease();
      v11 = 15;
    }

    else
    {
      if (*buffer->var0 < 0)
      {
        v12 = *buffer->var0;
        v13 = bufferChecksum();
        IDSLinkPacketBufferAddBufferStart();
        *buffer->var0 = v12;
        buffer->var0[1] = HIBYTE(v13);
        buffer->var0[2] = v13;
      }

      if (self->_hasSpaceAvailable)
      {
        v14 = vdupq_n_s64(1uLL);
        v14.i64[0] = buffer->var2;
        *&self->_totalBytesSent = vaddq_s64(*&self->_totalBytesSent, v14);
        self->_hasSpaceAvailable = 0;
        v15 = objc_autoreleasePoolPush();
        v16 = [NSData dataWithBytesNoCopy:buffer->var0 length:buffer->var2 freeWhenDone:0];
        v11 = [(IDSWPPacketSendingProtocol *)self->_wpLinkManager sendData:v16 peerID:self->_peerID];

        objc_autoreleasePoolPop(v15);
      }

      else
      {
        v17 = [[NSData alloc] initWithBytes:buffer->var0 length:buffer->var2];
        outgoingData = self->_outgoingData;
        self->_outgoingData = v17;

        self->_shouldSendHasSpaceAvailable = 1;
        v11 = 13;
      }

      _IDSLinkPacketBufferRelease();
    }
  }

  else
  {
    _IDSLinkPacketBufferRelease();
    v11 = 6;
  }

  return v11;
}

- (void)didReceiveData:(id)data
{
  dataCopy = data;
  v3 = dataCopy;
  IDSTransportThreadAddBlock();
}

- (void)_didReceiveData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "didReceiveData length %luB", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v23 = v5;
    _IDSLogV();
  }

  v7 = vdupq_n_s64(1uLL);
  v7.i64[0] = v5;
  *&self->_totalBytesReceived = vaddq_s64(*&self->_totalBytesReceived, v7);
  if ([dataCopy length] < 0x7D1)
  {
    if (![dataCopy length])
    {
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received zero-length data - rejecting", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      goto LABEL_44;
    }

    incomingPacketBuffer = self->_incomingPacketBuffer;
    if (!incomingPacketBuffer)
    {
      incomingPacketBuffer = _IDSLinkPacketBufferCreate();
    }

    [dataCopy getBytes:incomingPacketBuffer->var0 length:v5];
    incomingPacketBuffer->var2 = v5;
    v11 = *incomingPacketBuffer->var0;
    if (v11 < 0)
    {
      if ([dataCopy length] <= 2)
      {
        v16 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [dataCopy length];
          *buf = 134217984;
          *&v29 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received data too small (%lu) - rejecting", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          goto LABEL_11;
        }

        goto LABEL_44;
      }

      v18 = v11;
      v19 = *(incomingPacketBuffer->var0 + 1);
      v20 = bufferChecksum();
      v21 = __rev16(v19);
      if (v21 != v20)
      {
        v22 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109890;
          LODWORD(v29) = v21;
          WORD2(v29) = 1024;
          *(&v29 + 6) = v20;
          WORD5(v29) = 1024;
          HIDWORD(v29) = v5;
          v30 = 2112;
          v31 = dataCopy;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Data corruption! Checksum check failed (old:%04x new:%04x) data(%d): %@", buf, 0x1Eu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v26 = v5;
            v27 = dataCopy;
            v24 = v21;
            v25 = v20;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v26 = v5;
              v27 = dataCopy;
              v24 = v21;
              v25 = v20;
              _IDSLogV();
            }
          }
        }

        goto LABEL_42;
      }

      IDSLinkPacketBufferAddBufferStart();
      *incomingPacketBuffer->var0 = v18;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = [WeakRetained link:self didReceivePacket:incomingPacketBuffer fromDeviceUniqueID:0 cbuuid:self->_cbuuid];

    if (v13)
    {
LABEL_43:
      IDSLinkPacketBufferResetBufferStart();
      self->_incomingPacketBuffer = incomingPacketBuffer;
      goto LABEL_44;
    }

    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      LODWORD(v29) = v5;
      WORD2(v29) = 2112;
      *(&v29 + 6) = dataCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Data corruption! This data did not decode(%d): %@", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v24 = v5;
        v25 = dataCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
          [(IDSBTLELink *)self _localDetectedCorruption:v5];
          goto LABEL_43;
        }
      }
    }

LABEL_42:
    [(IDSBTLELink *)self _localDetectedCorruption:v24];
    goto LABEL_43;
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [dataCopy length];
    *buf = 134217984;
    *&v29 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received data too big (%lu) - rejecting", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
LABEL_11:
    [dataCopy length];
    _IDSLogV();
  }

LABEL_44:
}

- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link
{
  if (self->_previousReportTime == 0.0)
  {
    v9 = 0;
  }

  else
  {
    state = self->_state;
    if (link)
    {
      v7 = 42;
    }

    else
    {
      v7 = 32;
    }

    v23 = v7;
    if (state > 6)
    {
      v8 = "UnexpectedState";
    }

    else
    {
      v8 = _IDSLinkStateStrings[state];
    }

    v22 = v8;
    v21 = self->_totalPacketsSent - self->_previousPacketsSent;
    v10 = formattedBytes();
    v11 = formattedSpeed();
    totalPacketsSent = self->_totalPacketsSent;
    v13 = formattedBytes();
    v14 = self->_totalPacketsReceived - self->_previousPacketsReceived;
    v15 = formattedBytes();
    v16 = formattedSpeed();
    totalPacketsReceived = self->_totalPacketsReceived;
    v18 = formattedBytes();
    v9 = [NSString stringWithFormat:@"%c BTLE      (%s) Tx %6llu pkts %@B %@bps     %6llu pkts %@B\n                        Rx %6llu pkts %@B %@bps     %6llu pkts %@B\n", v23, v22, v21, v10, v11, totalPacketsSent, v13, v14, v15, v16, totalPacketsReceived, v18];
  }

  self->_previousReportTime = report;
  v19 = *&self->_totalBytesReceived;
  *&self->_previousBytesSent = *&self->_totalBytesSent;
  *&self->_previousBytesReceived = v19;

  return v9;
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