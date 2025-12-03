@interface IDSTCPLink
- (BOOL)disconnect:(sockaddr_in *)disconnect remoteAddress:(sockaddr_in *)address;
- (IDSLinkDelegate)alternateDelegate;
- (IDSLinkDelegate)delegate;
- (IDSTCPConnection_)_getIDSTCPConnection:(id *)connection;
- (IDSTCPLink)initWithDeviceUniqueID:(id)d cbuuid:(id)cbuuid isSSL:(BOOL)l getPacketLength:(id)length;
- (id)copyLinkStatsDict;
- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link;
- (sockaddr)connect:(int)connect localAddress:(const sockaddr *)address portRange:(unsigned __int16)range remoteAddress:(const sockaddr *)remoteAddress clientUUID:(unsigned __int8)d[16] completionHandler:(id)handler;
- (unint64_t)headerOverhead;
- (unint64_t)sendPacketBufferArray:(id *)array arraySize:(int)size toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)dealloc;
- (void)invalidate;
- (void)processIncomingPacket:(id *)packet;
- (void)setWiFiAssistState:(BOOL)state;
@end

@implementation IDSTCPLink

- (IDSTCPLink)initWithDeviceUniqueID:(id)d cbuuid:(id)cbuuid isSSL:(BOOL)l getPacketLength:(id)length
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  lengthCopy = length;
  v19.receiver = self;
  v19.super_class = IDSTCPLink;
  v14 = [(IDSTCPLink *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_cbuuid, cbuuid);
    objc_storeStrong(&v15->_deviceUniqueID, d);
    v15->_isSSL = l;
    v16 = _Block_copy(lengthCopy);
    getPacketLength = v15->_getPacketLength;
    v15->_getPacketLength = v16;

    v15->_previousReportTime = ids_monotonic_time();
    v15->_addressFamily = 2;
  }

  return v15;
}

- (void)dealloc
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "IDSTCPLink dealloc", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"IDSTCPLink dealloc");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"IDSTCPLink dealloc");
      }
    }
  }

  [(IDSTCPLink *)self invalidate];
  v4.receiver = self;
  v4.super_class = IDSTCPLink;
  [(IDSTCPLink *)&v4 dealloc];
}

- (void)invalidate
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "invalidate", v9, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"invalidate");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"invalidate");
      }
    }
  }

  conns = self->_conns;
  if (conns)
  {
    do
    {
      var12 = conns->var12;
      v6 = conns->var3 - 1;
      conns->var3 = v6;
      if (!v6)
      {
        sub_1A7B448FC(conns);
      }

      conns = var12;
    }

    while (var12);
  }

  self->_conns = 0;
  getPacketLength = self->_getPacketLength;
  if (getPacketLength)
  {
    _Block_release(getPacketLength);
    v8 = self->_getPacketLength;
    self->_getPacketLength = 0;
  }
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_counters._totalBytesReceived];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_counters._totalBytesSent];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_counters._totalPacketsReceived];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_counters._totalPacketsSent];
  v8 = [v3 initWithObjectsAndKeys:{v4, @"bytesReceived", v5, @"bytesSent", v6, @"packetsReceived", v7, @"packetsSent", 0}];

  return v8;
}

- (IDSTCPConnection_)_getIDSTCPConnection:(id *)connection
{
  v28 = *MEMORY[0x1E69E9840];
  conns = self->_conns;
  if (conns)
  {
    while (!IsSameSA(&conns->var6, &connection->var18) || !IsSameSA(&conns->var7, &connection->var19))
    {
      conns = conns->var12;
      if (!conns)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26 = v5;
    v27 = v5;
    v24 = v5;
    v25 = v5;
    v22 = v5;
    v23 = v5;
    *__str = v5;
    v21 = v5;
    *v12 = v5;
    v13 = v5;
    v14 = v5;
    v15 = v5;
    v16 = v5;
    v17 = v5;
    v18 = v5;
    v19 = v5;
    SAToIPPortString(__str, 0x80uLL, &connection->var18);
    SAToIPPortString(v12, 0x80uLL, &connection->var19);
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v9 = __str;
      v10 = 2080;
      v11 = v12;
      _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "no connection from %s to %s", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"no connection from %s to %s");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"no connection from %s to %s");
        }
      }
    }

    return 0;
  }

  return conns;
}

- (sockaddr)connect:(int)connect localAddress:(const sockaddr *)address portRange:(unsigned __int16)range remoteAddress:(const sockaddr *)remoteAddress clientUUID:(unsigned __int8)d[16] completionHandler:(id)handler
{
  rangeCopy = range;
  v95 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self->_getPacketLength)
  {
    remoteAddressCopy = remoteAddress;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v83 = v13;
    v84 = v13;
    v81 = v13;
    v82 = v13;
    v79 = v13;
    v80 = v13;
    *__str = v13;
    v78 = v13;
    v75 = v13;
    v76 = v13;
    v73 = v13;
    v74 = v13;
    v71 = v13;
    v72 = v13;
    *v69 = v13;
    v70 = v13;
    selfCopy = self;
    aBlock = handlerCopy;
    v67 = 1;
    v14 = malloc_type_calloc(1uLL, 0x150uLL, 0x10A00409F0FFA38uLL);
    v63 = handlerCopy;
    if (v14 && (v15 = sub_1A7C226B4(0x4000, 0), (*(v14 + 2) = v15) != 0) && (v16 = _IDSLinkPacketBufferCreate(), (*(v14 + 35) = v16) != 0))
    {
      if (address->sa_family == 30)
      {
        v17 = 30;
      }

      else
      {
        v17 = 2;
      }

      v18 = socket(v17, 1, 0);
      *v14 = v18;
      if (v18 < 0)
      {
        v33 = *__error();
        IDSAssertNonFatalErrnoWithSource(v33, "TCPLink", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSTCPLink.m", 356);
        v34 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *v89 = 67109120;
          *&v89[4] = v33;
          _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "socket failed: %d", v89, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TCPLink", @"IDS", @"socket failed: %d");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"socket failed: %d");
            }
          }
        }
      }

      else
      {
        IDSCheckFileDescriptorUsageWithSource("IDSTCPLink.m", 361, 0);
        v19 = (v14 + 24);
        __memcpy_chk();
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v93 = v20;
        v94 = v20;
        v91 = v20;
        v92 = v20;
        *&v89[32] = v20;
        v90 = v20;
        *v89 = v20;
        *&v89[16] = v20;
        if (v14[25] == 30)
        {
          *buf = 1;
          setsockopt(*v14, 41, 27, buf, 4u);
        }

        p_counters = &self->_counters;
        v21 = *(v14 + 13);
        v22 = rangeCopy + 1;
LABEL_12:
        v23 = 0;
        v24 = bswap32(v21) >> 16;
        while (1)
        {
          v25 = v14[24];
          v68 = v25;
          *(v14 + 13) = bswap32(v24 + v23) >> 16;
          if (!bind(*v14, (v14 + 24), v25))
          {
            break;
          }

          SAToIPPortString(v89, 0x80uLL, (v14 + 24));
          v26 = *__error();
          v27 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v86 = v89;
            v87 = 1024;
            v88 = v26;
            _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "failed to bind to %s, errno: %d", buf, 0x12u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v56 = v89;
              v57 = v26;
              _IDSLogTransport(@"TCPLink", @"IDS", @"failed to bind to %s, errno: %d");
              if (_IDSShouldLog())
              {
                v56 = v89;
                v57 = v26;
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"failed to bind to %s, errno: %d");
              }
            }
          }

          if (!v21)
          {
            goto LABEL_106;
          }

          if (v22 == ++v23)
          {
            v21 = 0;
            *(v14 + 13) = 0;
            goto LABEL_12;
          }
        }

        if (!v21 && getsockname(*v14, (v14 + 24), &v68) < 0)
        {
          v46 = *__error();
          v47 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v86) = v46;
            _os_log_impl(&dword_1A7AD9000, v47, OS_LOG_TYPE_DEFAULT, "getsockname failed: %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"getsockname failed: %d");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"getsockname failed: %d");
              }
            }
          }

LABEL_106:
          v48 = *__error();
          v49 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *v89 = 67109120;
            *&v89[4] = v48;
            _os_log_impl(&dword_1A7AD9000, v49, OS_LOG_TYPE_DEFAULT, "bind failed: %d", v89, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"bind failed: %d");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"bind failed: %d");
              }
            }
          }

          goto LABEL_30;
        }

        SAToIPPortString(v89, 0x80uLL, (v14 + 24));
        v35 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v86 = v89;
          _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "bind to %s", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v56 = v89;
            _IDSLogTransport(@"TCPLink", @"IDS", @"bind to %s");
            if (_IDSShouldLog())
            {
              v56 = v89;
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"bind to %s");
            }
          }
        }

        if (setsockopt(*v14, 0xFFFF, 4130, &v67, 4u) < 0)
        {
          v36 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *v89 = 0;
            _os_log_impl(&dword_1A7AD9000, v36, OS_LOG_TYPE_DEFAULT, "failed to turn on SO_NOSIGPIPE", v89, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"failed to turn on SO_NOSIGPIPE");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"failed to turn on SO_NOSIGPIPE");
              }
            }
          }
        }

        if (aBlock)
        {
          *(v14 + 41) = _Block_copy(aBlock);
        }

        *(v14 + 2) = 1;
        *(v14 + 40) = selfCopy;
        *(v14 + 37) = p_counters;
        *(v14 + 3) = [(IDSTCPLink *)selfCopy isSSL:v56];
        __memcpy_chk();
        *(v14 + 76) = connect;
        v37 = *(v14 + 35);
        v37[12] = connect;
        memcpy(v37 + 14, v14 + 24, v14[24]);
        memcpy(v37 + 46, remoteAddressCopy, remoteAddressCopy->sa_len);
        if (!uuid_is_null(d))
        {
          *&v89[29] = 0xAAAAAAAAAAAAAAAALL;
          *&v43 = 0xAAAAAAAAAAAAAAAALL;
          *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v89 = v43;
          *&v89[16] = v43;
          uuid_unparse(d, v89);
          if (setsockopt(*v14, 0xFFFF, 4360, d, 0x10u))
          {
            v44 = *__error();
            v45 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v86 = v89;
              v87 = 1024;
              v88 = v44;
              _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, "setsockopt SO_DELEGATED_UUID failed for %s, errno: %d", buf, 0x12u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v58 = v44;
                _IDSLogTransport(@"TCPLink", @"IDS", @"setsockopt SO_DELEGATED_UUID failed for %s, errno: %d");
                if (_IDSShouldLog())
                {
                  v58 = v44;
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"setsockopt SO_DELEGATED_UUID failed for %s, errno: %d");
                }
              }
            }
          }

          else
          {
            v54 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v86 = v89;
              _os_log_impl(&dword_1A7AD9000, v54, OS_LOG_TYPE_DEFAULT, "setsockopt SO_DELEGATED_UUID for %s", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"TCPLink", @"IDS", @"setsockopt SO_DELEGATED_UUID for %s");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"setsockopt SO_DELEGATED_UUID for %s");
                }
              }
            }
          }
        }

        v38 = fcntl(*v14, 3, 0, v58);
        if (v38 < 0 || fcntl(*v14, 4, v38 | 4u) < 0)
        {
          v41 = *__error();
          v42 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *v89 = 67109120;
            *&v89[4] = v41;
            _os_log_impl(&dword_1A7AD9000, v42, OS_LOG_TYPE_DEFAULT, "fcntl failed: %d", v89, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"fcntl failed: %d");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"fcntl failed: %d");
              }
            }
          }
        }

        else
        {
          if ((connect(*v14, remoteAddressCopy, remoteAddressCopy->sa_len) & 0x80000000) == 0)
          {
            v39 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *v89 = 0;
              _os_log_impl(&dword_1A7AD9000, v39, OS_LOG_TYPE_DEFAULT, "asynchronous connect succeeded synchronously", v89, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"TCPLink", @"IDS", @"asynchronous connect succeeded synchronously");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"asynchronous connect succeeded synchronously");
                }
              }
            }

            sub_1A7B44E80(v14);
LABEL_80:

            SAToIPPortString(__str, 0x80uLL, (v14 + 24));
            SAToIPPortString(v69, 0x80uLL, (v14 + 152));
            v40 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *v89 = 136315394;
              *&v89[4] = __str;
              *&v89[12] = 2080;
              *&v89[14] = v69;
              _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "opening TCP connection from %s to %s", v89, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"TCPLink", @"IDS", @"opening TCP connection from %s to %s");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"opening TCP connection from %s to %s");
                }
              }
            }

            v30 = v63;
            *(v14 + 39) = selfCopy->_conns;
            selfCopy->_conns = v14;
            goto LABEL_45;
          }

          v50 = *__error();
          if (v50 == 36)
          {
            v51 = *v14;
            v66[0] = MEMORY[0x1E69E9820];
            v66[1] = 3221225472;
            v66[2] = sub_1A7B44BA0;
            v66[3] = &unk_1E77DD328;
            v66[4] = v14;
            IDSTransportThreadAddSocket(v51, 0, v66);
            v52 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = *v14;
              *v89 = 67109120;
              *&v89[4] = v53;
              _os_log_impl(&dword_1A7AD9000, v52, OS_LOG_TYPE_DEFAULT, "connect in progress for fd: %d", v89, 8u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport(@"TCPLink", @"IDS", @"connect in progress for fd: %d");
                if (_IDSShouldLog())
                {
                  _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"connect in progress for fd: %d");
                }
              }
            }

            goto LABEL_80;
          }

          v55 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *v89 = 67109120;
            *&v89[4] = v50;
            _os_log_impl(&dword_1A7AD9000, v55, OS_LOG_TYPE_DEFAULT, "connect failed: %d", v89, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TCPLink", @"IDS", @"connect failed: %d");
              if (_IDSShouldLog())
              {
                _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"connect failed: %d");
              }
            }
          }
        }
      }
    }

    else
    {
      v28 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v89 = 0;
        _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "out of memory", v89, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TCPLink", @"IDS", @"out of memory");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"out of memory");
          }
        }
      }

      if (!v14)
      {
        goto LABEL_31;
      }
    }

LABEL_30:
    sub_1A7B448FC(v14);
LABEL_31:

    v29 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v89 = 0;
      _os_log_impl(&dword_1A7AD9000, v29, OS_LOG_TYPE_DEFAULT, "failed to create connection", v89, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"failed to create connection");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"failed to create connection");
        }
      }
    }

    v19 = 0;
    v30 = v63;
    goto LABEL_45;
  }

  v31 = OSLogHandleForTransportCategory();
  v30 = handlerCopy;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *v89 = 0;
    _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEFAULT, "link invalidated", v89, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TCPLink", @"IDS", @"link invalidated");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"link invalidated");
      }
    }
  }

  v19 = 0;
LABEL_45:

  return v19;
}

- (BOOL)disconnect:(sockaddr_in *)disconnect remoteAddress:(sockaddr_in *)address
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self->_getPacketLength)
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "link invalidated", v20, 2u);
    }

    v13 = os_log_shim_legacy_logging_enabled();
    if (!v13)
    {
      return v13;
    }

    v13 = _IDSShouldLogTransport();
    if (!v13)
    {
      return v13;
    }

    _IDSLogTransport(@"TCPLink", @"IDS", @"link invalidated");
    v13 = _IDSShouldLog();
    if (!v13)
    {
      return v13;
    }

    _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"link invalidated");
LABEL_26:
    LOBYTE(v13) = 0;
    return v13;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v4;
  v27 = v4;
  v24 = v4;
  v25 = v4;
  v22 = v4;
  v23 = v4;
  *v20 = v4;
  v21 = v4;
  conns = self->_conns;
  p_conns = &self->_conns;
  v6 = conns;
  if (!conns)
  {
LABEL_14:
    SAToIPPortString(v20, 0x80uLL, address);
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = v20;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "no connection for %s", buf, 0xCu);
    }

    v13 = os_log_shim_legacy_logging_enabled();
    if (!v13)
    {
      return v13;
    }

    v13 = _IDSShouldLogTransport();
    if (!v13)
    {
      return v13;
    }

    _IDSLogTransport(@"TCPLink", @"IDS", @"no connection for %s");
    v13 = _IDSShouldLog();
    if (!v13)
    {
      return v13;
    }

    _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"no connection for %s");
    goto LABEL_26;
  }

  v8 = 0;
  while (1)
  {
    v9 = v6;
    if (*&v6->var6.ss_len == *&disconnect->sin_len && v6->var6.__ss_align == *disconnect->sin_zero && *&v6->var7.ss_len == *&address->sin_len && v6->var7.__ss_align == *address->sin_zero)
    {
      break;
    }

    v6 = v6->var12;
    v8 = v9;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  if (v8)
  {
    p_var12 = &v8->var12;
  }

  else
  {
    p_var12 = p_conns;
  }

  *p_var12 = v6->var12;
  v16 = v6->var3 - 1;
  v6->var3 = v16;
  if (!v16)
  {
    sub_1A7B448FC(v6);
  }

  LOBYTE(v13) = 1;
  return v13;
}

- (void)processIncomingPacket:(id *)packet
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained link:self didReceivePacket:packet fromDeviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];
}

- (unint64_t)sendPacketBufferArray:(id *)array arraySize:(int)size toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  cbuuidCopy = cbuuid;
  v12 = cbuuidCopy;
  if (!self->_getPacketLength)
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "link invalidated", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"link invalidated");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"link invalidated");
        }
      }
    }

    v16 = 6;
    goto LABEL_28;
  }

  if (cbuuidCopy && ([cbuuidCopy isEqualToString:self->_cbuuid] & 1) == 0)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      cbuuid = self->_cbuuid;
      *buf = 138412546;
      v29 = v12;
      v30 = 2112;
      cbuuidCopy2 = cbuuid;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "wrong device: %@ %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"wrong device: %@ %@");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"wrong device: %@ %@");
        }
      }
    }

    v16 = 10;
    goto LABEL_28;
  }

  if (size < 1)
  {
    v16 = 11;
    goto LABEL_43;
  }

  v13 = [(IDSTCPLink *)self _getIDSTCPConnection:*array];
  if (!v13)
  {
    v16 = 11;
    goto LABEL_41;
  }

  v14 = v13;
  if ((v13->var0 & 0x80000000) == 0)
  {
    if (v13->var9)
    {
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "drop packet", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TCPLink", @"IDS", @"drop packet");
        v16 = 0;
        if ((_IDSShouldLog() & 1) == 0)
        {
          goto LABEL_41;
        }

        v17 = @"drop packet";
LABEL_38:
        _IDSLogV(0, @"IDSFoundation", @"TCPLink", v17);
        goto LABEL_41;
      }

      v16 = 0;
      goto LABEL_41;
    }

    if (v13->var4)
    {
      sizeCopy = size;
      arrayCopy = array;
      do
      {
        v26 = *arrayCopy++;
        v27 = bswap32(*(v26 + 16) + 3) >> 16;
        IDSLinkPacketBufferAddBufferStart(v26, -8);
        **v26 = 66327;
        *(*v26 + 3) = v27;
        --sizeCopy;
      }

      while (sizeCopy);
    }

    v16 = sub_1A7B43CA4(v14, array);
    if (v16 == 14)
    {
      if (*(v14 + 5))
      {
        v16 = 14;
      }

      else
      {
        v16 = 0;
      }
    }

LABEL_28:
    if (size <= 0)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "connection closed", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport(@"TCPLink", @"IDS", @"connection closed");
    v16 = 6;
    if ((_IDSShouldLog() & 1) == 0)
    {
      goto LABEL_41;
    }

    v17 = @"connection closed";
    goto LABEL_38;
  }

  v16 = 6;
LABEL_41:
  sizeCopy2 = size;
  do
  {
    _IDSLinkPacketBufferRelease("/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSTCPLink.m", 1045, *array++);
    --sizeCopy2;
  }

  while (sizeCopy2);
LABEL_43:

  return v16;
}

- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link
{
  previousReportTime = self->_previousReportTime;
  if (previousReportTime == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v7 = report - previousReportTime;
    v8 = self->_counters._totalBytesSent - self->_previousCounters._totalBytesSent;
    v9 = self->_counters._totalBytesReceived - self->_previousCounters._totalBytesReceived;
    v24 = self->_counters._totalPacketsSent - self->_previousCounters._totalPacketsSent;
    v25 = MEMORY[0x1E696AEC0];
    linkCopy = link;
    v10 = formattedBytes(v8);
    v11 = formattedSpeed(((8 * v8) / v7 + 0.5));
    totalPacketsSent = self->_counters._totalPacketsSent;
    v13 = formattedBytes(self->_counters._totalBytesSent);
    v14 = self->_counters._totalPacketsReceived - self->_previousCounters._totalPacketsReceived;
    v15 = formattedBytes(v9);
    v16 = formattedSpeed(((8 * v9) / v7 + 0.5));
    totalPacketsReceived = self->_counters._totalPacketsReceived;
    v18 = formattedBytes(self->_counters._totalBytesReceived);
    v19 = 32;
    if (linkCopy)
    {
      v19 = 42;
    }

    v20 = [v25 stringWithFormat:@"%c Tx %6llu pkts %@B %@bps     %6llu pkts %@B\n                        Rx %6llu pkts %@B %@bps     %6llu pkts %@B\n", v19, v24, v10, v11, totalPacketsSent, v13, v14, v15, v16, totalPacketsReceived, v18];
  }

  self->_previousReportTime = report;
  v21 = *&self->_counters._totalBytesReceived;
  *&self->_previousCounters._totalBytesSent = *&self->_counters._totalBytesSent;
  *&self->_previousCounters._totalBytesReceived = v21;

  return v20;
}

- (void)setWiFiAssistState:(BOOL)state
{
  v22 = *MEMORY[0x1E69E9840];
  conns = self->_conns;
  if (conns)
  {
    stateCopy = state;
    if (state)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    do
    {
      if ([(NSIndexSet *)self->_cellularInterfaceIndices containsIndex:conns->var11, v11, v12, v13])
      {
        var0 = conns->var0;
        v14 = v6;
        v15 = stateCopy;
        v8 = setsockopt(var0, 0xFFFF, 4387, &v14, 8u);
        if (!v8)
        {
          v8 = setsockopt(var0, 0xFFFF, 4373, &v15, 4u);
        }

        if (v8 == -1)
        {
          v9 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *__error();
            *buf = 136315650;
            v17 = "[IDSTCPLink setWiFiAssistState:]";
            v18 = 1024;
            v19 = 1094;
            v20 = 1024;
            v21 = v10;
            _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d setsockopt failed %d", buf, 0x18u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            v12 = 1094;
            v13 = *__error();
            v11 = "[IDSTCPLink setWiFiAssistState:]";
            _IDSLogTransport(@"TCPLink", @"IDS", @"%s:%d setsockopt failed %d");
            if (_IDSShouldLog())
            {
              v12 = 1094;
              v13 = *__error();
              v11 = "[IDSTCPLink setWiFiAssistState:]";
              _IDSLogV(0, @"IDSFoundation", @"TCPLink", @"%s:%d setsockopt failed %d");
            }
          }
        }

        else
        {
          self->_wifiAssistEnabled = stateCopy;
        }
      }

      conns = conns->var12;
    }

    while (conns);
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