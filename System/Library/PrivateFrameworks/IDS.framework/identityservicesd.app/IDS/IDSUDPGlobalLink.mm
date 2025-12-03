@interface IDSUDPGlobalLink
- (BOOL)_processStunBindingRequest:(id)request fromDevice:(id)device localIfIndex:(unsigned int)index localAddress:(sockaddr *)address remmoteAddress:(sockaddr *)remmoteAddress arrivalTime:(double)time;
- (BOOL)_processStunBindingResponse:(id)response fromDevice:(id)device localIfIndex:(unsigned int)index localAddress:(sockaddr *)address remmoteAddress:(sockaddr *)remmoteAddress arrivalTime:(double)time;
- (BOOL)_processStunDataIndication:(id)indication fromDevice:(id)device localIfIndex:(unsigned int)index localAddress:(sockaddr *)address remmoteAddress:(sockaddr *)remmoteAddress arrivalTime:(double)time packetBuffer:(id *)buffer fromDeviceUniqueID:(id)self0 cbuuid:(id)self1;
- (BOOL)_processStunEchoRequest:(id)request fromDevice:(id)device localIfIndex:(unsigned int)index localAddress:(sockaddr *)address remmoteAddress:(sockaddr *)remmoteAddress arrivalTime:(double)time;
- (BOOL)_processStunEchoResponse:(id)response fromDevice:(id)device localIfIndex:(unsigned int)index localAddress:(sockaddr *)address remmoteAddress:(sockaddr *)remmoteAddress arrivalTime:(double)time;
- (BOOL)_processStunPacket:(id *)packet fromDevice:(id)device arrivalTime:(double)time fromDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (BOOL)link:(id)link didReceivePacket:(id *)packet fromDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (IDSLinkDelegate)alternateDelegate;
- (IDSLinkDelegate)delegate;
- (IDSUDPGlobalLink)initWithDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (id)copyLinkStatsDict;
- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link;
- (unint64_t)headerOverhead;
- (unint64_t)sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)_createSimpleConnectionData;
- (void)_forwardPacketBuffer:(id *)buffer fromDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)_handleEchoTimer;
- (void)_sendConnectionCheckRequest;
- (void)_sendNominateRequest;
- (void)_startConnectionEcho:(double)echo;
- (void)_startEchoTimer;
- (void)_stopEchoTimer;
- (void)_updateLinkTransportAddress:(unsigned int)address localAddress:(sockaddr *)localAddress remoteAddress:(sockaddr *)remoteAddress;
- (void)createConnectionData:(id)data dataReadyHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)processRemoteConnectionData:(id)data completionHandler:(id)handler;
- (void)startConnectionForDevice:(id)device isInitiator:(BOOL)initiator remotePartyID:(id)d useStunMICheck:(BOOL)check;
@end

@implementation IDSUDPGlobalLink

- (IDSUDPGlobalLink)initWithDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  v20.receiver = self;
  v20.super_class = IDSUDPGlobalLink;
  v9 = [(IDSUDPGlobalLink *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cbuuid, cbuuid);
    objc_storeStrong(&v10->_deviceUniqueID, d);
    v11 = [[IDSUDPLink alloc] initWithDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
    udpLink = v10->_udpLink;
    v10->_udpLink = v11;

    [(IDSUDPLink *)v10->_udpLink setDelegate:v10];
    v21[0] = 0xAAAAAAAAAAAAAAAALL;
    v21[1] = 0xAAAAAAAAAAAAAAAALL;
    v13 = [[NSUUID alloc] initWithUUIDString:v10->_cbuuid];
    [v13 getUUIDBytes:v21];

    v14 = [NSData dataWithBytes:v21 length:16];
    keyData = v10->_keyData;
    v10->_keyData = v14;

    v16 = objc_alloc_init(NSMutableArray);
    remoteAddressArray = v10->_remoteAddressArray;
    v10->_remoteAddressArray = v16;

    sub_1003CF8D4(&v10->_sockAddrPairTable, 16);
    sub_1003D1BBC(&v10->_sockAddrPairTable, [(NSData *)v10->_keyData bytes], [(NSData *)v10->_keyData length]);
    v10->_state = 0;
    ids_monotonic_time();
    v10->_previousReportTime = v18;
  }

  return v10;
}

- (void)dealloc
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc UDPGlobalLink %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  sub_1003CF9D8(&self->_sockAddrPairTable.iNumPair);
  v4.receiver = self;
  v4.super_class = IDSUDPGlobalLink;
  [(IDSUDPGlobalLink *)&v4 dealloc];
}

- (void)invalidate
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidate UDPGlobalLink", v5, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  nominateBlocks = self->_nominateBlocks;
  self->_nominateBlocks = 0;

  [(IDSUDPGlobalLink *)self _stopEchoTimer];
  [(IDSUDPLink *)self->_udpLink invalidate];
  self->_isInvalidated = 1;
}

- (void)createConnectionData:(id)data dataReadyHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = dataCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "createConnectionData - localPartyID=%@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  state = self->_state;
  if (state)
  {
    if (state > 6)
    {
      v10 = "UnexpectedState";
    }

    else
    {
      v10 = _IDSLinkStateStrings[state];
    }

    v13 = [NSString stringWithFormat:@"invalid link state %s", v10];
    v14 = [NSDictionary dictionaryWithObject:v13 forKey:NSLocalizedDescriptionKey];
    v15 = [NSError errorWithDomain:@"UDPGlobalLink" code:8002 userInfo:v14];

    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_state;
      if (v17 > 6)
      {
        v18 = "UnexpectedState";
      }

      else
      {
        v18 = _IDSLinkStateStrings[v17];
      }

      *buf = 136315138;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "invalid link state %s", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    if (handlerCopy)
    {
      v19 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100473024;
      block[3] = &unk_100BD7298;
      v22 = handlerCopy;
      v21 = v15;
      dispatch_async(v19, block);
    }
  }

  else
  {
    [(IDSUDPGlobalLink *)self setLocalPartyID:dataCopy];
    v11 = [handlerCopy copy];
    dataReadyHandler = self->_dataReadyHandler;
    self->_dataReadyHandler = v11;

    [(IDSUDPGlobalLink *)self _createSimpleConnectionData];
    self->_state = 2;
  }
}

- (void)processRemoteConnectionData:(id)data completionHandler:(id)handler
{
  selfCopy = self;
  dataCopy = data;
  handlerCopy = handler;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v95 = dataCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "processRemoteConnectionData %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v62 = dataCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v62 = dataCopy;
        _IDSLogV();
      }
    }
  }

  v6 = [handlerCopy copy];
  completionHandler = selfCopy->_completionHandler;
  selfCopy->_completionHandler = v6;

  if (dataCopy)
  {
    state = selfCopy->_state;
    if (state == 2)
    {
      v9 = dataCopy;
      bytes = [dataCopy bytes];
      v10 = [dataCopy length];
      if (v10 > 1)
      {
        v24 = *bytes;
        if (v24 < 2)
        {
          v28 = bytes[1];
          copyCurrentNetworkInterfaces = [(IDSUDPLink *)selfCopy->_udpLink copyCurrentNetworkInterfaces];
          v64[1] = v64;
          __chkstk_darwin(copyCurrentNetworkInterfaces);
          v66 = &v62;
          v62 = 0xAAAAAAAAAAAAAAAALL;
          v63 = 0xAAAAAAAAAAAAAAAALL;
          if (v28 < 0x10)
          {
            goto LABEL_104;
          }

          v76 = 0;
          v71 = 0;
          v68 = v28 >> 4;
          *&v29 = 67109890;
          v65 = v29;
          *&v29 = 138412546;
          v73 = v29;
          do
          {
            v30 = *(bytes + 3);
            bytes += 6;
            v31 = bswap32(*(bytes - 1));
            v32 = bswap32(v30) >> 16;
            v33 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = IPv4ToString();
              *buf = v65;
              *v95 = v71 + 1;
              *&v95[4] = 1024;
              *&v95[6] = v68;
              *v96 = 2080;
              *&v96[2] = v34;
              v97 = 1024;
              v98 = v32;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "connection data has IPv4 address (%d/%d) [%s:%u]", buf, 0x1Eu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                IPv4ToString();
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  IPv4ToString();
                  _IDSLogV();
                }
              }
            }

            v93[0] = 0xAAAAAAAAAAAAAAAALL;
            v93[1] = 0xAAAAAAAAAAAAAAAALL;
            v83 = 16;
            IPPortToSA4();
            v75 = [IDSSockAddrWrapper wrapperWithSockAddr:v93, v62, v63];
            [(NSMutableArray *)selfCopy->_remoteAddressArray addObject:v75];
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v35 = copyCurrentNetworkInterfaces;
            v36 = [v35 countByEnumeratingWithState:&v79 objects:v92 count:16];
            if (v36)
            {
              v37 = 0;
              v38 = *v80;
              v41 = HIBYTE(v31) != 10 && (v31 & 0xFFF00000) != -1408237568 && (v31 & 0xFFFF0000) != -1062731776;
              for (i = *v80; ; i = *v80)
              {
                if (i != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v43 = *(*(&v79 + 1) + 8 * v37);
                address = [v43 address];
                v45 = [address sa4];
                v46 = bswap32(*(v45 + 1));
                v47 = HIBYTE(v46) == 10 || (v46 & 0xFFF00000) == -1408237568;
                v48 = v46 & 0xFFFF0000;
                v50 = v47 || v48 == -1062731776;
                if (v41 == v50)
                {
                  v53 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = v73;
                    *v95 = address;
                    *&v95[8] = 2112;
                    *v96 = v75;
                    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "skip address pair [%@-%@].", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      _IDSLogTransport();
                      if (_IDSShouldLog())
                      {
                        _IDSLogV();
                      }
                    }
                  }
                }

                else
                {
                  v51 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = v73;
                    *v95 = address;
                    *&v95[8] = 2112;
                    *v96 = v75;
                    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "add address pair [%@-%@]", buf, 0x16u);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      _IDSLogTransport();
                      if (_IDSShouldLog())
                      {
                        _IDSLogV();
                      }
                    }
                  }

                  index = [v43 index];
                  sub_1003CFAC0(&selfCopy->_sockAddrPairTable.iNumPair, index, v45, v93, 1, 0, 0);
                  ++v76;
                }

                if (++v37 >= v36)
                {
                  v36 = [v35 countByEnumeratingWithState:&v79 objects:v92 count:16];
                  if (!v36)
                  {
                    break;
                  }

                  v37 = 0;
                }
              }
            }

            ++v71;
          }

          while (v71 != v68);
          if (v76)
          {
            [(IDSUDPGlobalLink *)selfCopy _sendConnectionCheckRequest];
            v11 = 0;
            v13 = 0;
          }

          else
          {
LABEL_104:
            v58 = [NSDictionary dictionaryWithObject:@"No addresss pair is on same network forKey:cannot connect.", NSLocalizedDescriptionKey, v62];
            v13 = [NSError errorWithDomain:@"UDPGlobalLink" code:8005 userInfo:v58];

            v59 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "No addresss pair is on same network, cannot connect.", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  _IDSLogV();
                }
              }
            }

            if (selfCopy->_completionHandler)
            {
              v60 = im_primary_queue();
              v77[0] = _NSConcreteStackBlock;
              v77[1] = 3221225472;
              v77[2] = sub_1004741BC;
              v77[3] = &unk_100BD6E40;
              v77[4] = selfCopy;
              v13 = v13;
              v78 = v13;
              dispatch_async(v60, v77);
            }

            v11 = @"No addresss pair is on same network, cannot connect.";
          }
        }

        else
        {
          v11 = [NSString stringWithFormat:@"connection data has unsupported version %d", *bytes];
          v25 = [NSDictionary dictionaryWithObject:v11 forKey:NSLocalizedDescriptionKey];
          v13 = [NSError errorWithDomain:@"UDPGlobalLink" code:8004 userInfo:v25];

          v26 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v95 = v24;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "connection data has unsupported version %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v62 = v24;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v62 = v24;
                _IDSLogV();
              }
            }
          }

          if (selfCopy->_completionHandler)
          {
            v27 = im_primary_queue();
            v84[0] = _NSConcreteStackBlock;
            v84[1] = 3221225472;
            v84[2] = sub_1004741A8;
            v84[3] = &unk_100BD6E40;
            v84[4] = selfCopy;
            v13 = v13;
            v85 = v13;
            dispatch_async(v27, v84);
          }
        }
      }

      else
      {
        v11 = [NSString stringWithFormat:@"invalid remote connection data, %uB", v10];
        v12 = [NSDictionary dictionaryWithObject:v11 forKey:NSLocalizedDescriptionKey];
        v13 = [NSError errorWithDomain:@"UDPGlobalLink" code:8003 userInfo:v12];

        v14 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *v95 = v10;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "invalid remote connection data, %uB", buf, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v62 = v10;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v62 = v10;
              _IDSLogV();
            }
          }
        }

        if (selfCopy->_completionHandler)
        {
          v15 = im_primary_queue();
          v86[0] = _NSConcreteStackBlock;
          v86[1] = 3221225472;
          v86[2] = sub_100474194;
          v86[3] = &unk_100BD6E40;
          v86[4] = selfCopy;
          v13 = v13;
          v87 = v13;
          dispatch_async(v15, v86);
        }
      }
    }

    else
    {
      if (state > 6)
      {
        v19 = "UnexpectedState";
      }

      else
      {
        v19 = _IDSLinkStateStrings[state];
      }

      v11 = [NSString stringWithFormat:@"invalid link state %s", v19];
      v20 = [NSDictionary dictionaryWithObject:v11 forKey:NSLocalizedDescriptionKey];
      v13 = [NSError errorWithDomain:@"UDPGlobalLink" code:8002 userInfo:v20];

      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = selfCopy->_state;
        if (v22 > 6)
        {
          v23 = "UnexpectedState";
        }

        else
        {
          v23 = _IDSLinkStateStrings[v22];
        }

        *buf = 136315138;
        *v95 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "invalid link state %s", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v54 = selfCopy->_state;
        v55 = v54 > 6 ? "UnexpectedState" : _IDSLinkStateStrings[v54];
        v62 = v55;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v56 = selfCopy->_state;
          if (v56 > 6)
          {
            v57 = "UnexpectedState";
          }

          else
          {
            v57 = _IDSLinkStateStrings[v56];
          }

          v62 = v57;
          _IDSLogV();
        }
      }

      if (selfCopy->_completionHandler)
      {
        v61 = im_primary_queue();
        v88[0] = _NSConcreteStackBlock;
        v88[1] = 3221225472;
        v88[2] = sub_100474180;
        v88[3] = &unk_100BD6E40;
        v88[4] = selfCopy;
        v13 = v13;
        v89 = v13;
        dispatch_async(v61, v88);
      }
    }
  }

  else
  {
    v16 = [NSDictionary dictionaryWithObject:@"invalid remote connection data" forKey:NSLocalizedDescriptionKey];
    v13 = [NSError errorWithDomain:@"UDPGlobalLink" code:8003 userInfo:v16];

    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "invalid remote connection data", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    if (selfCopy->_completionHandler)
    {
      v18 = im_primary_queue();
      v90[0] = _NSConcreteStackBlock;
      v90[1] = 3221225472;
      v90[2] = sub_10047416C;
      v90[3] = &unk_100BD6E40;
      v90[4] = selfCopy;
      v13 = v13;
      v91 = v13;
      dispatch_async(v18, v90);
    }

    v11 = @"invalid remote connection data";
  }
}

- (void)startConnectionForDevice:(id)device isInitiator:(BOOL)initiator remotePartyID:(id)d useStunMICheck:(BOOL)check
{
  checkCopy = check;
  initiatorCopy = initiator;
  deviceCopy = device;
  v36 = deviceCopy;
  dCopy = d;
  if (deviceCopy)
  {
    selfCopy = self;
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      *buf = 138413058;
      *&buf[4] = deviceCopy;
      if (initiatorCopy)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      *&buf[14] = v13;
      *&buf[12] = 2112;
      if (checkCopy)
      {
        v12 = @"YES";
      }

      *&buf[22] = 2112;
      *&buf[24] = dCopy;
      LOWORD(v47) = 2112;
      *(&v47 + 2) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "startConnectionForDevice - deviceID=%@ isInitiator=%@ remotePartyID=%@ stunMICheck=%@", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v14 = initiatorCopy ? @"YES" : @"NO";
      v15 = checkCopy ? @"YES" : @"NO";
      v33 = dCopy;
      v34 = v15;
      v31 = v36;
      v32 = v14;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v33 = dCopy;
        v34 = v15;
        v31 = v36;
        v32 = v14;
        _IDSLogV();
      }
    }

    self->_useStunMICheck = checkCopy;
    if (!initiatorCopy)
    {
      [(IDSUDPGlobalLink *)self _sendNominateRequest];
      goto LABEL_49;
    }

    if (dCopy)
    {
      [(IDSUDPGlobalLink *)self setRemotePartyID:?];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = self->_nominateBlocks;
      v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (v17)
      {
        v18 = *v40;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v40 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v39 + 1) + 8 * i);
            v21 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = objc_retainBlock(v20);
              *buf = 134217984;
              *&buf[4] = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "process delayed nomination request block %p.", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v31 = objc_retainBlock(v20);
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  v31 = objc_retainBlock(v20);
                  _IDSLogV();
                }
              }
            }

            v20[2](v20);
          }

          v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v39 objects:v53 count:16];
        }

        while (v17);
      }

      nominateBlocks = selfCopy->_nominateBlocks;
      selfCopy->_nominateBlocks = 0;

      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v51 = v24;
      v52 = v24;
      v49 = v24;
      v50 = v24;
      v47 = v24;
      v48 = v24;
      *buf = v24;
      *&buf[16] = v24;
      v45[6] = v24;
      v45[7] = v24;
      v45[4] = v24;
      v45[5] = v24;
      v45[3] = v24;
      v45[1] = v24;
      v45[2] = v24;
      v45[0] = v24;
      v38 = 0;
      v25 = dCopy;
      uTF8String = [dCopy UTF8String];
      v27 = strlen(uTF8String);
      if (sub_1003D0C28(&selfCopy->_sockAddrPairTable, uTF8String, v27, &v38, buf, v45))
      {
        v28 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 136315138;
          v44 = uTF8String;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Nominated connection matches remotePartyID %s.", v43, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v31 = uTF8String;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v31 = uTF8String;
              _IDSLogV();
            }
          }
        }

        [(IDSUDPGlobalLink *)selfCopy _updateLinkTransportAddress:v38 localAddress:buf remoteAddress:v45, v31, v32, v33, v34];
      }

      goto LABEL_49;
    }

    v30 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "startConnectionForDevice failed due to invalid remotePartyID=%@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
LABEL_47:
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    v29 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "startConnectionForDevice failed due to invalid deviceID=%@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          goto LABEL_47;
        }
      }
    }
  }

LABEL_49:
}

- (void)_createSimpleConnectionData
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[29] = v2;
  *v37 = v2;
  v36[27] = v2;
  v36[28] = v2;
  v36[25] = v2;
  v36[26] = v2;
  v36[23] = v2;
  v36[24] = v2;
  v36[21] = v2;
  v36[22] = v2;
  v36[19] = v2;
  v36[20] = v2;
  v36[17] = v2;
  v36[18] = v2;
  v36[16] = v2;
  *&v37[15] = v2;
  v36[15] = v2;
  v36[14] = v2;
  v36[13] = v2;
  v36[12] = v2;
  v36[11] = v2;
  v36[10] = v2;
  v36[9] = v2;
  v36[8] = v2;
  v36[7] = v2;
  v36[6] = v2;
  v36[5] = v2;
  v36[4] = v2;
  v36[3] = v2;
  v36[2] = v2;
  v36[1] = v2;
  v36[0] = v2;
  v35 = 1;
  v3 = [(IDSUDPLink *)self->_udpLink newSocketWithIPVersion:0 wantsAWDL:0 wantsWiFi:1 wantsCellular:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = v36 + 1;
    v7 = *v29;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        address = [*(*(&v28 + 1) + 8 * i) address];
        if (address)
        {
          v10 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v33 = address;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "add local adress %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v21 = address;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v21 = address;
                _IDSLogV();
              }
            }
          }

          v11 = [address sa4];
          if ((v6 - &v35 - 513) >= -6)
          {
            v12 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v33 = v6 - &v35;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "connection blob size (%dB) is too big, skip remaining.", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v21 = (v6 - &v35);
              _IDSLogV();
            }

            goto LABEL_30;
          }

          if (v5 >= 15)
          {
            v13 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v33 = v5;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#IPv4 address (%d) reaches max allowed, skip remaining.", buf, 8u);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v21 = v5;
              _IDSLogV();
            }

LABEL_30:

            goto LABEL_31;
          }

          *v6 = v11[1];
          *(v6 + 2) = *(v11 + 1);
          v6 += 6;
          v5 = (v5 + 1);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }

LABEL_31:

    LOBYTE(v36[0]) = 16 * v5;
    if (v5)
    {
      v14 = [NSData dataWithBytes:&v35 length:(v6 - &v35)];
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v33 = v5;
        *&v33[4] = 1024;
        *&v33[6] = v6 - &v35;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "createConnectionData - done (#ipv4: %d, length: %dB).", buf, 0xEu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      if (self->_dataReadyHandler)
      {
        v16 = im_primary_queue();
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100475054;
        v24[3] = &unk_100BD6E40;
        v24[4] = self;
        v17 = &v25;
        v14 = v14;
        v25 = v14;
        v18 = v24;
LABEL_48:
        dispatch_async(v16, v18);

        goto LABEL_49;
      }

      goto LABEL_49;
    }
  }

  else
  {

    LOBYTE(v36[0]) = 0;
  }

  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "failed to create connection data", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v20 = [NSDictionary dictionaryWithObject:@"failed to create connection data" forKey:NSLocalizedDescriptionKey, v21];
  v14 = [NSError errorWithDomain:@"UDPGlobalLink" code:8001 userInfo:v20];

  if (self->_dataReadyHandler)
  {
    v16 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10047503C;
    block[3] = &unk_100BD6E40;
    block[4] = self;
    v17 = &v27;
    v14 = v14;
    v27 = v14;
    v18 = block;
    goto LABEL_48;
  }

LABEL_49:
}

- (void)_sendConnectionCheckRequest
{
  if (self->_isInvalidated)
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Link is invalidated, stop sending connection check request", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_6:
      _IDSLogV();
    }
  }

  else
  {
    ids_monotonic_time();
    v5 = v4;
    if (self->_connectionRequestStartTime == 0.0)
    {
      self->_connectionRequestStartTime = v4;
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Start connection check.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    if (sub_1003D0B60(&self->_sockAddrPairTable))
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Connection check is done.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            goto LABEL_6;
          }
        }
      }
    }

    else if (v5 - self->_connectionRequestStartTime >= 5.0)
    {
      nSLocalizedDescriptionKey = [NSDictionary dictionaryWithObject:@"Connection check is timed out forKey:cannot connect to remote party.", NSLocalizedDescriptionKey];
      v11 = [NSError errorWithDomain:@"UDPGlobalLink" code:8005 userInfo:nSLocalizedDescriptionKey];

      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Connection check is timed out, cannot connect to remote party.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      if (self->_completionHandler && !self->_notifyReachableDone)
      {
        self->_notifyReachableDone = 1;
        v13 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100475554;
        block[3] = &unk_100BD6E40;
        block[4] = self;
        v15 = v11;
        dispatch_async(v13, block);
      }
    }

    else
    {
      ids_monotonic_time();
      v9 = v8;
      if (qword_100CBD420 != -1)
      {
        sub_100920914();
      }

      sub_1003D03D4(&self->_sockAddrPairTable, self->_udpLink, self->_cbuuid, (qword_100CBD418 + v9 * 4294967300.0) >> 22);
      IDSTransportThreadAddBlockAfter();
    }
  }
}

- (void)_sendNominateRequest
{
  if (self->_isInvalidated)
  {
    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Link is invalidated, stop sending nominate request", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
LABEL_37:
      _IDSLogV();
    }
  }

  else if (self->_localPartyID)
  {
    ids_monotonic_time();
    v5 = v4;
    if (self->_nominateRequestStartTime == 0.0)
    {
      self->_nominateRequestStartTime = v4;
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Start nominate request.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }
    }

    if (sub_1003D0BA8(&self->_sockAddrPairTable))
    {
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Nominate request is done.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            goto LABEL_37;
          }
        }
      }
    }

    else if (v5 - self->_nominateRequestStartTime >= 5.0)
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Nominate request timed out, cannot connect to remote party.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            goto LABEL_37;
          }
        }
      }
    }

    else
    {
      uTF8String = [(NSString *)self->_localPartyID UTF8String];
      v11 = strlen(uTF8String);
      ids_monotonic_time();
      v13 = v12;
      if (qword_100CBD420 != -1)
      {
        sub_100920914();
      }

      sub_1003D0CF8(&self->_sockAddrPairTable, self->_udpLink, self->_cbuuid, uTF8String, v11, (qword_100CBD418 + v13 * 4294967300.0) >> 22);
      IDSTransportThreadAddBlockAfter();
    }
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      localPartyID = self->_localPartyID;
      *buf = 138412290;
      v16 = localPartyID;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_sendNominateRequest failed due to invalid localPartyID %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          goto LABEL_37;
        }
      }
    }
  }
}

- (void)_startConnectionEcho:(double)echo
{
  if (sub_1003D0BE8(&self->_sockAddrPairTable))
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connection echo is done.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
LABEL_17:
          _IDSLogV();
        }
      }
    }
  }

  else
  {
    ids_monotonic_time();
    if (v6 - echo >= 5.0)
    {
      v8 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connection echo timed out.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      ids_monotonic_time();
      if (qword_100CBD420 != -1)
      {
        v9 = v7;
        sub_10092093C();
        v7 = v9;
      }

      sub_1003D13B8(&self->_sockAddrPairTable.iNumPair, self->_udpLink, self->_cbuuid, &self->_sourceAddress, &self->_destinationAddress, (qword_100CBD418 + v7 * 4294967300.0) >> 22);
      IDSTransportThreadAddBlockAfter();
    }
  }
}

- (unint64_t)headerOverhead
{
  ss_family = self->_sourceAddress.ss_family;
  v3 = 255;
  if (ss_family == 30)
  {
    v3 = 48;
  }

  if (ss_family == 2)
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
  v3 = [NSDictionary alloc];
  v4 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesReceived];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesSent];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsReceived];
  v7 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsSent];
  v8 = [v3 initWithObjectsAndKeys:{v4, @"bytesReceived", v5, @"bytesSent", v6, @"packetsReceived", v7, @"packetsSent", 0}];

  return v8;
}

- (void)_handleEchoTimer
{
  ids_monotonic_time();
  v4 = v3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    echoTimer = self->_echoTimer;
    *buf = 134218240;
    v11 = echoTimer;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "echo timer %p fired (%.6f).", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v9 = v4;
      v8 = self->_echoTimer;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v9 = v4;
        v8 = self->_echoTimer;
        _IDSLogV();
      }
    }
  }

  if (self->_isInvalidated)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "link is invalidated, stop echo timer.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    [(IDSUDPGlobalLink *)self _stopEchoTimer:v8];
  }

  sub_1003D1C14(&self->_sockAddrPairTable);
  [(IDSUDPGlobalLink *)self _startConnectionEcho:v4];
}

- (void)_startEchoTimer
{
  echoTimer = self->_echoTimer;
  if (echoTimer)
  {
    dispatch_source_cancel(echoTimer);
  }

  v4 = im_primary_queue();
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4);
  v6 = self->_echoTimer;
  self->_echoTimer = v5;

  v7 = self->_echoTimer;
  v8 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v7, v8, 0x2540BE400uLL, 0x5F5E100uLL);
  v9 = self->_echoTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1004762C8;
  handler[3] = &unk_100BD6ED0;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_echoTimer);
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_echoTimer;
    *buf = 134217984;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "start echo timer %p.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_stopEchoTimer
{
  echoTimer = self->_echoTimer;
  if (echoTimer)
  {
    dispatch_source_cancel(echoTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_echoTimer;
      *buf = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "stop echo timer %p.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v6 = self->_echoTimer;
    self->_echoTimer = 0;
  }
}

- (void)_updateLinkTransportAddress:(unsigned int)address localAddress:(sockaddr *)localAddress remoteAddress:(sockaddr *)remoteAddress
{
  v7 = *&address;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v9;
  v30 = v9;
  v31 = v9;
  v32 = v9;
  v33 = v9;
  v34 = v9;
  v35 = v9;
  v36 = v9;
  v21 = v9;
  v22 = v9;
  v23 = v9;
  v24 = v9;
  v25 = v9;
  v26 = v9;
  v27 = v9;
  v28 = v9;
  if (!IsValidSA() || !IsValidSA())
  {
    self->_sourceInterfaceIndex = v7;
    memcpy(&self->_sourceAddress, localAddress, localAddress->sa_len);
    memcpy(&self->_destinationAddress, remoteAddress, remoteAddress->sa_len);
    self->_state = 4;
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v38 = SAToIPPortString();
      v39 = 2080;
      v40 = SAToIPPortString();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "add result: src[%s], dst[%s].", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v19 = SAToIPPortString();
        v20 = SAToIPPortString();
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v19 = SAToIPPortString();
          v20 = SAToIPPortString();
          _IDSLogV();
        }
      }
    }

    v11 = [IDSSockAddrWrapper wrapperWithSockAddr:&self->_destinationAddress, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36];
    [(IDSUDPLink *)self->_udpLink setDestinationAddress:v11 localIfIndex:v7 isFixedDestination:0 fromAddress:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained link:self didConnectForDeviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];

    v14 = IMGetDomainValueForKey();
    v15 = v14;
    if (v14)
    {
      unsignedIntValue = [v14 unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 800;
    }

    [(IDSUDPLink *)self->_udpLink setTrafficClass:unsignedIntValue];
    v17 = +[IMLockdownManager sharedInstance];
    isInternalInstall = [v17 isInternalInstall];

    if (isInternalInstall)
    {
      [(IDSUDPGlobalLink *)self _startEchoTimer];
    }

    goto LABEL_24;
  }

  if (sub_100476950(&self->_sourceAddress, localAddress) || sub_100476950(&self->_destinationAddress, remoteAddress))
  {
    self->_sourceInterfaceIndex = v7;
    memcpy(&self->_sourceAddress, localAddress, localAddress->sa_len);
    memcpy(&self->_destinationAddress, remoteAddress, remoteAddress->sa_len);
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v38 = SAToIPPortString();
      v39 = 2080;
      v40 = SAToIPPortString();
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "update result: src[%s], dst[%s].", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v19 = SAToIPPortString();
      v20 = SAToIPPortString();
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v19 = SAToIPPortString();
        v20 = SAToIPPortString();
        _IDSLogV();
      }
    }

    v11 = [IDSSockAddrWrapper wrapperWithSockAddr:&self->_destinationAddress, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36];
    [(IDSUDPLink *)self->_udpLink setDestinationAddress:v11 localIfIndex:v7 isFixedDestination:0 fromAddress:0];
LABEL_24:
  }
}

- (BOOL)_processStunBindingRequest:(id)request fromDevice:(id)device localIfIndex:(unsigned int)index localAddress:(sockaddr *)address remmoteAddress:(sockaddr *)remmoteAddress arrivalTime:(double)time
{
  v8 = __chkstk_darwin(self);
  v10 = v9;
  v12 = v11;
  __src = v13;
  v15 = v14;
  v17 = v16;
  v18 = v8;
  v20 = v19;
  v85 = &v80;
  v86 = v17;
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v102 = v21;
  v103 = v21;
  v100 = v21;
  v101 = v21;
  v98 = v21;
  v99 = v21;
  v96 = v21;
  v97 = v21;
  v88 = v21;
  v89 = v21;
  v90 = v21;
  v91 = v21;
  v92 = v21;
  v93 = v21;
  v94 = v21;
  v95 = v21;
  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = SAToIPPortString();
    v24 = SAToIPPortString();
    *buf = 138413058;
    *&buf[4] = v20;
    *&buf[12] = 2080;
    *&buf[14] = v23;
    *&buf[22] = 1024;
    *&buf[24] = v15;
    *&buf[28] = 2080;
    *&buf[30] = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "receive binding request %@ for [%s(%u)-%s].", buf, 0x26u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v25 = SAToIPPortString();
      v26 = SAToIPPortString();
      v82 = v15;
      v83 = v26;
      v80 = v20;
      v81 = v25;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v27 = SAToIPPortString();
        v28 = SAToIPPortString();
        v82 = v15;
        v83 = v28;
        v80 = v20;
        v81 = v27;
        _IDSLogV();
      }
    }
  }

  memset(buf, 170, 0x5D0uLL);
  memset(__b, 170, sizeof(__b));
  if (![v20 getAttribute:37 attribute:buf] || !objc_msgSend(v20, "getAttribute:attribute:", 6, __b))
  {
    v84 = 0;
    goto LABEL_21;
  }

  v29 = *(v18 + 1856);
  if (!v29)
  {
    v60 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "process nomination request before Accept, this should NOT happen.", v112, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          goto LABEL_19;
        }
      }
    }

    goto LABEL_94;
  }

  v84 = *&buf[8];
  v30 = __b[2];
  uTF8String = [v29 UTF8String];
  v32 = strlen(uTF8String);
  if (v84 >= 1 && v30 >= 1 && v32 == v30 && !memcmp(&__b[3], uTF8String, v32))
  {
    v75 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      *v112 = 136315138;
      *&v112[4] = &__b[3];
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "receive nominate binding request with remotePartyID %s.", v112, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v80 = &__b[3];
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v80 = &__b[3];
          _IDSLogV();
        }
      }
    }

    sub_1003CFAC0((v18 + 56), v15, __src, v12, 5, &__b[3], v30);
    uTF8String2 = [*(v18 + 1856) UTF8String];
    v77 = strlen(uTF8String2);
    if (!memcmp(&__b[3], uTF8String2, v77))
    {
      v78 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *v112 = 67109378;
        *&v112[4] = v84;
        *&v112[8] = 2080;
        *&v112[10] = uTF8String2;
        _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "nominate request with count(%d) matches remoteID %s", v112, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v80 = v84;
          v81 = uTF8String2;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v80 = v84;
            v81 = uTF8String2;
            _IDSLogV();
          }
        }
      }

      [v18 _updateLinkTransportAddress:v15 localAddress:__src remoteAddress:v12];
    }

LABEL_21:
    v34 = _IDSLinkPacketBufferCreate();
    v35 = v34;
    if (*(v18 + 1896) != 4)
    {
      *(v34 + 48) = v15;
      memcpy((v34 + 56), __src, *__src);
      memcpy((v35 + 184), v12, *v12);
      goto LABEL_28;
    }

    v36 = *(v18 + 1689);
    if (v36 == v12[1])
    {
      if (v36 == 30)
      {
        if (*(v18 + 1690) == *(v12 + 1))
        {
          v37 = *(v18 + 1696) == *(v12 + 1) && *(v18 + 1704) == *(v12 + 2);
          goto LABEL_59;
        }
      }

      else if (v36 == 2 && *(v18 + 1690) == *(v12 + 1))
      {
        v37 = *(v18 + 1692) == *(v12 + 1);
LABEL_59:
        v62 = v37;
        v63 = (v18 + 1552);
        if (*(v18 + 1552) != v15 || (v62 & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_28:
        memset(v112, 170, sizeof(v112));
        if ([v20 getAttribute:32773 attribute:v112])
        {
          v38 = *&v112[12];
          ids_monotonic_time();
          v40 = v39;
          if (qword_100CBD420 != -1)
          {
            sub_100920914();
          }

          v41 = bswap32(v38) >> 16;
          v42 = ((qword_100CBD418 + v40 * 4294967300.0) >> 22) - ((qword_100CBD418 + v10 * 4294967300.0) >> 22);
        }

        else
        {
          v41 = 0;
          v42 = 0;
        }

        v43 = [[IDSStunMessage alloc] initWithType:257];
        v44 = *v35;
        transactionID = [v20 transactionID];
        v46 = *(v35 + 8);
        v80 = *(v18 + 1840);
        [v43 stunResponseToBuffer:v44 outputLength:v35 + 16 transactionID:transactionID reqCount:v84 echoTime:v41 delay:v42 keyData:v80 remainingLength:v46];

        v47 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = SAToIPPortString();
          v49 = *(v35 + 48);
          v50 = SAToIPPortString();
          *v104 = 138413058;
          v105 = v43;
          v106 = 2080;
          v107 = v48;
          v108 = 1024;
          v109 = v49;
          v110 = 2080;
          v111 = v50;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "send binding response %@ for [%s(%u)-%s].", v104, 0x26u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v51 = SAToIPPortString();
            v52 = *(v35 + 48);
            v53 = SAToIPPortString();
            v82 = v52;
            v83 = v53;
            v80 = v43;
            v81 = v51;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v54 = SAToIPPortString();
              v55 = *(v35 + 48);
              v56 = SAToIPPortString();
              v82 = v55;
              v83 = v56;
              v80 = v43;
              v81 = v54;
              _IDSLogV();
            }
          }
        }

        v57 = [*(v18 + 8) sendPacketBuffer:v35 toDeviceUniqueID:*(v18 + 1888) cbuuid:v86];
        if (v57)
        {
          v58 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            if (v57 > 0xF)
            {
              v59 = "UnexpectedSendResult";
            }

            else
            {
              v59 = _IDSLinkSendResultStrings[v57];
            }

            *v104 = 136315138;
            v105 = v59;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "send binding response failed with %s", v104, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            v61 = v57 > 0xF ? "UnexpectedSendResult" : _IDSLinkSendResultStrings[v57];
            v80 = v61;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              if (v57 > 0xF)
              {
                v74 = "UnexpectedSendResult";
              }

              else
              {
                v74 = _IDSLinkSendResultStrings[v57];
              }

              v80 = v74;
              _IDSLogV();
            }
          }
        }

        goto LABEL_94;
      }
    }

    v63 = (v18 + 1552);
LABEL_66:
    v64 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = SAToIPPortString();
      v66 = *v63;
      v67 = SAToIPPortString();
      *v112 = 136315650;
      *&v112[4] = v65;
      *&v112[12] = 1024;
      *&v112[14] = v66;
      *&v112[18] = 2080;
      *&v112[20] = v67;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "skip binding response to %s, socket on if_index %d is already connected to %s.", v112, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v68 = SAToIPPortString();
        v69 = *v63;
        v70 = SAToIPPortString();
        v81 = v69;
        v82 = v70;
        v80 = v68;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v71 = SAToIPPortString();
          v72 = *v63;
          v73 = SAToIPPortString();
          v81 = v72;
          v82 = v73;
          v80 = v71;
          _IDSLogV();
        }
      }
    }

    _IDSLinkPacketBufferRelease();
    goto LABEL_94;
  }

  v33 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *v112 = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "receive nomination request with invalid remotePartyID, ignore.", v112, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
LABEL_19:
        _IDSLogV();
      }
    }
  }

LABEL_94:

  return 1;
}

- (BOOL)_processStunBindingResponse:(id)response fromDevice:(id)device localIfIndex:(unsigned int)index localAddress:(sockaddr *)address remmoteAddress:(sockaddr *)remmoteAddress arrivalTime:(double)time
{
  v11 = *&index;
  responseCopy = response;
  deviceCopy = device;
  v36 = &v31;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39[6] = v16;
  v39[7] = v16;
  v39[4] = v16;
  v39[5] = v16;
  v39[2] = v16;
  v39[3] = v16;
  v39[0] = v16;
  v39[1] = v16;
  v38[0] = v16;
  v38[1] = v16;
  v38[2] = v16;
  v38[3] = v16;
  v38[4] = v16;
  v38[5] = v16;
  v38[6] = v16;
  v38[7] = v16;
  memset(__b, 170, sizeof(__b));
  v17 = 0.0;
  if ([responseCopy getAttribute:32773 attribute:__b])
  {
    v18 = LOBYTE(__b[3]);
    v19 = BYTE1(__b[3]);
    v20 = BYTE2(__b[3]);
    v21 = HIBYTE(__b[3]);
    if (qword_100CBD420 != -1)
    {
      sub_100920914();
    }

    v17 = vcvtd_n_f64_u32((-256 * v20 - v21 + -256 * v18 - v19 + ((qword_100CBD418 + time * 4294967300.0) >> 22)), 0xAuLL) * 1000.0;
  }

  SAToIPPortString();
  SAToIPPortString();
  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v41 = responseCopy;
    v42 = 2080;
    v43 = v39;
    v44 = 1024;
    v45 = v11;
    v46 = 2080;
    v47 = v38;
    v48 = 2048;
    v49 = v17;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "receive binding response %@ for [%s(%u)-%s], RTT(%.3f ms)", buf, 0x30u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v35 = v17;
      v33 = v11;
      v34 = v38;
      v31 = responseCopy;
      v32 = v39;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v35 = v17;
        v33 = v11;
        v34 = v38;
        v31 = responseCopy;
        v32 = v39;
        _IDSLogV();
      }
    }
  }

  transactionID = [responseCopy transactionID];
  v24 = transactionID;
  bytes = [transactionID bytes];

  if ([responseCopy getAttribute:37 attribute:__b])
  {
    v26 = __b[2];
    if (__b[2] >= 1)
    {
      sub_1003D0050(&self->_sockAddrPairTable, bytes, 5);
      v27 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v41) = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Nominated connection(%d) is accepted by remoteParty.", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v31 = v26;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v31 = v26;
            _IDSLogV();
          }
        }
      }

      [(IDSUDPGlobalLink *)self _updateLinkTransportAddress:v11 localAddress:address remoteAddress:remmoteAddress];
    }
  }

  else if (sub_1003D0050(&self->_sockAddrPairTable, bytes, 3) && self->_completionHandler && !self->_notifyReachableDone)
  {
    self->_notifyReachableDone = 1;
    v28 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Notifying remote party is reachable for ACCEPT.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v29 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100477C28;
    block[3] = &unk_100BD6ED0;
    block[4] = self;
    dispatch_async(v29, block);
  }

  return 1;
}

- (BOOL)_processStunEchoRequest:(id)request fromDevice:(id)device localIfIndex:(unsigned int)index localAddress:(sockaddr *)address remmoteAddress:(sockaddr *)remmoteAddress arrivalTime:(double)time
{
  remmoteAddressCopy = remmoteAddress;
  addressCopy = address;
  v9 = *&index;
  requestCopy = request;
  deviceCopy = device;
  v53 = &keyData;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71 = v13;
  v72 = v13;
  v69 = v13;
  v70 = v13;
  v67 = v13;
  v68 = v13;
  v65 = v13;
  v66 = v13;
  v57 = v13;
  v58 = v13;
  v59 = v13;
  v60 = v13;
  v61 = v13;
  v62 = v13;
  v63 = v13;
  v64 = v13;
  memset(__b, 170, sizeof(__b));
  if ([requestCopy getAttribute:37 attribute:__b])
  {
    v14 = __b[2];
    if ((__b[2] & 0x80000000) != 0)
    {
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "receive echo request with invalid count(%d), ignore.", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          keyData = v14;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            keyData = v14;
            _IDSLogV();
          }
        }
      }

      goto LABEL_44;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = SAToIPPortString();
    v18 = SAToIPPortString();
    *buf = 67109890;
    *&buf[4] = v14;
    *&buf[8] = 2080;
    *&buf[10] = v17;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    *&buf[24] = 2080;
    *&buf[26] = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "receive echo request (count:%04x) for %s(%u)-%s.", buf, 0x22u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v19 = SAToIPPortString();
      v20 = SAToIPPortString();
      v51 = v9;
      v52 = v20;
      keyData = v14;
      v50 = v19;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v21 = SAToIPPortString();
        v22 = SAToIPPortString();
        v51 = v9;
        v52 = v22;
        keyData = v14;
        v50 = v21;
        _IDSLogV();
      }
    }
  }

  v23 = _IDSLinkPacketBufferCreate();
  memset(buf, 170, 0x5D0uLL);
  if ([requestCopy getAttribute:32773 attribute:buf])
  {
    v24 = *&buf[12];
    ids_monotonic_time();
    v26 = v25;
    if (qword_100CBD420 != -1)
    {
      sub_100920914();
    }

    v27 = bswap32(v24) >> 16;
    v28 = ((qword_100CBD418 + v26 * 4294967300.0) >> 22) - ((qword_100CBD418 + time * 4294967300.0) >> 22);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v29 = [[IDSStunMessage alloc] initWithType:4067];
  v30 = *v23;
  transactionID = [requestCopy transactionID];
  v32 = *(v23 + 8);
  keyData = self->_keyData;
  [v29 stunResponseToBuffer:v30 outputLength:v23 + 16 transactionID:transactionID reqCount:v14 echoTime:v27 delay:v28 keyData:keyData remainingLength:v32];

  v33 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = SAToIPPortString();
    v35 = *(v23 + 48);
    v36 = SAToIPPortString();
    *v73 = 67109890;
    *v74 = v14;
    *&v74[4] = 2080;
    *&v74[6] = v34;
    v75 = 1024;
    v76 = v35;
    v77 = 2080;
    v78 = v36;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "send echo response (count:%04x) for %s(%u)-%s.", v73, 0x22u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v37 = SAToIPPortString();
      v38 = *(v23 + 48);
      v39 = SAToIPPortString();
      v51 = v38;
      v52 = v39;
      keyData = v14;
      v50 = v37;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v40 = SAToIPPortString();
        v41 = *(v23 + 48);
        v42 = SAToIPPortString();
        v51 = v41;
        v52 = v42;
        keyData = v14;
        v50 = v40;
        _IDSLogV();
      }
    }
  }

  v43 = [(IDSUDPLink *)self->_udpLink sendPacketBuffer:v23 toDeviceUniqueID:self->_deviceUniqueID cbuuid:deviceCopy];
  if (v43)
  {
    v44 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      if (v43 > 0xF)
      {
        v45 = "UnexpectedSendResult";
      }

      else
      {
        v45 = _IDSLinkSendResultStrings[v43];
      }

      *v73 = 136315138;
      *v74 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "send echo response failed with %s", v73, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v46 = v43 > 0xF ? "UnexpectedSendResult" : _IDSLinkSendResultStrings[v43];
      keyData = v46;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if (v43 > 0xF)
        {
          v47 = "UnexpectedSendResult";
        }

        else
        {
          v47 = _IDSLinkSendResultStrings[v43];
        }

        keyData = v47;
        _IDSLogV();
      }
    }
  }

LABEL_44:
  return 1;
}

- (BOOL)_processStunEchoResponse:(id)response fromDevice:(id)device localIfIndex:(unsigned int)index localAddress:(sockaddr *)address remmoteAddress:(sockaddr *)remmoteAddress arrivalTime:(double)time
{
  v9 = *&index;
  responseCopy = response;
  v33 = &v28;
  deviceCopy = device;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[6] = v13;
  v36[7] = v13;
  v36[4] = v13;
  v36[5] = v13;
  v36[2] = v13;
  v36[3] = v13;
  v36[0] = v13;
  v36[1] = v13;
  v35[0] = v13;
  v35[1] = v13;
  v35[2] = v13;
  v35[3] = v13;
  v35[4] = v13;
  v35[5] = v13;
  v35[6] = v13;
  v35[7] = v13;
  memset(__b, 170, sizeof(__b));
  if ([responseCopy getAttribute:37 attribute:__b])
  {
    v14 = __b[2];
    v15 = sub_1003D1C08(&self->_sockAddrPairTable);
    if (v14 < 1 || v14 < v15)
    {
      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v38 = v14;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "receive old echo response (%d), ignore.", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v28 = v14;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v28 = v14;
            _IDSLogV();
          }
        }
      }
    }

    else
    {
      if ([responseCopy getAttribute:32773 attribute:__b])
      {
        v16 = LOBYTE(__b[3]);
        v17 = BYTE1(__b[3]);
        v18 = BYTE2(__b[3]);
        v19 = HIBYTE(__b[3]);
        if (qword_100CBD420 != -1)
        {
          sub_100920914();
        }

        v20 = (vcvtd_n_f64_u32((-256 * v18 - v19 + -256 * v16 - v17 + ((qword_100CBD418 + time * 4294967300.0) >> 22)), 0xAuLL) * 1000.0);
      }

      else
      {
        v20 = 0;
      }

      SAToIPPortString();
      SAToIPPortString();
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110146;
        v38 = v14;
        v39 = 1024;
        v40 = v20;
        v41 = 2080;
        v42 = v36;
        v43 = 1024;
        v44 = v9;
        v45 = 2080;
        v46 = v35;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "receive echo response (count:%04x, rtt:%4d ms) for %s(%u)-%s.", buf, 0x28u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v31 = v9;
          v32 = v35;
          v29 = v20;
          v30 = v36;
          v28 = v14;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v32 = v35;
            v30 = v36;
            v31 = v9;
            v28 = v14;
            v29 = v20;
            _IDSLogV();
          }
        }
      }

      transactionID = [responseCopy transactionID];
      v25 = transactionID;
      bytes = [transactionID bytes];

      sub_1003D0050(&self->_sockAddrPairTable, bytes, 7);
    }
  }

  else
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "receive invalid echo resopnse.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  return 1;
}

- (BOOL)_processStunDataIndication:(id)indication fromDevice:(id)device localIfIndex:(unsigned int)index localAddress:(sockaddr *)address remmoteAddress:(sockaddr *)remmoteAddress arrivalTime:(double)time packetBuffer:(id *)buffer fromDeviceUniqueID:(id)self0 cbuuid:(id)self1
{
  v12 = *&index;
  indicationCopy = indication;
  deviceCopy = device;
  dCopy = d;
  cbuuidCopy = cbuuid;
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[6] = v19;
  v41[7] = v19;
  v41[4] = v19;
  v41[5] = v19;
  v41[2] = v19;
  v41[3] = v19;
  v41[0] = v19;
  v41[1] = v19;
  v40[7] = v19;
  v40[6] = v19;
  v40[5] = v19;
  v40[4] = v19;
  v40[3] = v19;
  v40[2] = v19;
  v40[1] = v19;
  v40[0] = v19;
  bzero(v38, 0x5D0uLL);
  if (([indicationCopy getAttribute:19 attribute:v38] & 1) == 0)
  {
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "receive invalid data indication.", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_22;
    }

    if (!_IDSShouldLogTransport())
    {
      goto LABEL_22;
    }

    _IDSLogTransport();
    if (!_IDSShouldLog())
    {
      goto LABEL_22;
    }

LABEL_21:
    _IDSLogV();
LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

  if (v39 <= 0)
  {
    v24 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v31) = v39;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "invalid data attr length (%dB).", buf, 8u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_22;
    }

    if (!_IDSShouldLogTransport())
    {
      goto LABEL_22;
    }

    _IDSLogTransport();
    if (!_IDSShouldLog())
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  SAToIPPortString();
  SAToIPPortString();
  IDSLinkPacketBufferAddBufferStart();
  buffer->var2 = v39;
  v20 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    var2 = buffer->var2;
    *buf = 134218754;
    v31 = var2;
    v32 = 2080;
    v33 = v41;
    v34 = 1024;
    v35 = v12;
    v36 = 2080;
    v37 = v40;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "receive indication data (%zdB) for [%s(%u)-%s].", buf, 0x26u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v28 = v12;
      v29 = v40;
      v26 = buffer->var2;
      v27 = v41;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v28 = v12;
        v29 = v40;
        v26 = buffer->var2;
        v27 = v41;
        _IDSLogV();
      }
    }
  }

  [(IDSUDPGlobalLink *)self _forwardPacketBuffer:buffer fromDeviceUniqueID:dCopy cbuuid:cbuuidCopy, v26, v27, v28, v29];
  v22 = 1;
LABEL_23:

  return v22;
}

- (BOOL)_processStunPacket:(id *)packet fromDevice:(id)device arrivalTime:(double)time fromDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  deviceCopy = device;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v15 = [[IDSStunMessage alloc] initWithType:0];
  if (([v15 read:packet->var0 inputLength:SLODWORD(packet->var2)] & 1) == 0)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_processStunPacket failed.", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLog())
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  type = [v15 type];
  if (!self->_useStunMICheck)
  {
    goto LABEL_9;
  }

  if ([v15 verifyMessageIntegrityWithKey:self->_keyData inputBuffer:packet->var0 inputLength:LODWORD(packet->var2)])
  {
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = type;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "### stun packet type %04x passed MI check.", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v42 = type;
      _IDSLogV();
    }

LABEL_9:
    if (type <= 0x100u)
    {
      if (type == 1)
      {
        memset(buf, 170, 0x5D0uLL);
        memset(__b, 170, sizeof(__b));
        v21 = *&packet->var18.__ss_pad2[64];
        v77 = *&packet->var18.__ss_pad2[48];
        v78 = v21;
        v22 = *&packet->var18.__ss_pad2[96];
        v79 = *&packet->var18.__ss_pad2[80];
        v80 = v22;
        v23 = *packet->var18.__ss_pad2;
        v73 = *&packet->var18.ss_len;
        v74 = v23;
        v24 = *&packet->var18.__ss_pad2[32];
        v75 = *&packet->var18.__ss_pad2[16];
        v76 = v24;
        v25 = *&packet->var19.__ss_pad2[64];
        v26 = *&packet->var19.__ss_pad2[80];
        v69 = *&packet->var19.__ss_pad2[48];
        v70 = v25;
        v27 = *&packet->var19.__ss_pad2[96];
        v71 = v26;
        v72 = v27;
        v28 = *packet->var19.__ss_pad2;
        v65 = *&packet->var19.ss_len;
        v66 = v28;
        v29 = *&packet->var19.__ss_pad2[32];
        v67 = *&packet->var19.__ss_pad2[16];
        v68 = v29;
        var17 = packet->var17;
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10047945C;
        v44[3] = &unk_100BDD078;
        v44[4] = self;
        v31 = v15;
        v45 = v31;
        v51 = v77;
        v52 = v78;
        v53 = v79;
        v54 = v80;
        v47 = v73;
        v48 = v74;
        v49 = v75;
        v50 = v76;
        v61 = v71;
        v62 = v72;
        v60 = v70;
        v59 = v69;
        v58 = v68;
        v57 = v67;
        v56 = v66;
        v46 = deviceCopy;
        v64 = var17;
        v55 = v65;
        timeCopy = time;
        v32 = objc_retainBlock(v44);
        if ([v31 getAttribute:37 attribute:buf] && objc_msgSend(v31, "getAttribute:attribute:", 6, __b) && !self->_remotePartyID)
        {
          v35 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *v43 = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "delay nomination request before Accept.", v43, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                _IDSLogV();
              }
            }
          }

          if (self->_nominateBlocks || (v36 = objc_alloc_init(NSMutableArray), v37 = self->_nominateBlocks, self->_nominateBlocks = v36, v37, self->_nominateBlocks))
          {
            v38 = [v32 copy];
            v39 = v38 == 0;

            if (!v39)
            {
              nominateBlocks = self->_nominateBlocks;
              v41 = [v32 copy];
              CFArrayAppendValue(nominateBlocks, v41);
            }
          }
        }

        else
        {
          (v32[2])(v32);
        }

        goto LABEL_42;
      }

      if (type == 23)
      {
        [(IDSUDPGlobalLink *)self _processStunDataIndication:v15 fromDevice:deviceCopy localIfIndex:packet->var17 localAddress:&packet->var18 remmoteAddress:&packet->var19 arrivalTime:packet packetBuffer:time fromDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
        goto LABEL_42;
      }
    }

    else
    {
      switch(type)
      {
        case 0x101u:
          [(IDSUDPGlobalLink *)self _processStunBindingResponse:v15 fromDevice:deviceCopy localIfIndex:packet->var17 localAddress:&packet->var18 remmoteAddress:&packet->var19 arrivalTime:time];
          goto LABEL_42;
        case 0xEE3u:
          [(IDSUDPGlobalLink *)self _processStunEchoRequest:v15 fromDevice:deviceCopy localIfIndex:packet->var17 localAddress:&packet->var18 remmoteAddress:&packet->var19 arrivalTime:time];
          goto LABEL_42;
        case 0xFE3u:
          [(IDSUDPGlobalLink *)self _processStunEchoResponse:v15 fromDevice:deviceCopy localIfIndex:packet->var17 localAddress:&packet->var18 remmoteAddress:&packet->var19 arrivalTime:time];
LABEL_42:
          v20 = 1;
          goto LABEL_43;
      }
    }

    v33 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = type;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "_processStunPacket - receive invalid STUN message, type (%04X)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    goto LABEL_42;
  }

  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = type;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "failed to verify message intergrity for stun packet type %04x.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
LABEL_27:
        _IDSLogV();
      }
    }
  }

LABEL_28:
  v20 = 0;
LABEL_43:

  return v20;
}

- (unint64_t)sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  if (__rev16(*buffer->var0) == 57344 || !self->_useStunMICheck)
  {
    var2 = buffer->var2;
    v16 = [(IDSUDPLink *)self->_udpLink sendPacketBuffer:buffer toDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
    if (v16)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  v10 = _IDSLinkPacketBufferCreate();
  v11 = [[IDSStunMessage alloc] initWithType:23];
  [v11 dataIndicationToBuffer:*v10 outputLength:v10 + 2 data:buffer->var0 dataLen:LODWORD(buffer->var2) keyData:self->_keyData remainingLength:v10[1]];
  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = buffer->var2;
    v14 = v10[2];
    *buf = 134218240;
    v24 = v13;
    v25 = 2048;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "send stun data indication (new:%zdB old:%zdB).", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v21 = buffer->var2;
      v22 = v10[2];
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v21 = buffer->var2;
        v22 = v10[2];
        _IDSLogV();
      }
    }
  }

  var2 = v10[2];
  v16 = [(IDSUDPLink *)self->_udpLink sendPacketBuffer:v10 toDeviceUniqueID:dCopy cbuuid:cbuuidCopy, v21, v22];
  _IDSLinkPacketBufferRelease();

  if (!v16)
  {
LABEL_14:
    v19 = vdupq_n_s64(1uLL);
    v19.i64[0] = var2;
    *&self->_totalBytesSent = vaddq_s64(*&self->_totalBytesSent, v19);
  }

LABEL_10:
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (v16 > 0xF)
    {
      v18 = "UnexpectedSendResult";
    }

    else
    {
      v18 = _IDSLinkSendResultStrings[v16];
    }

    *buf = 134218242;
    v24 = var2;
    v25 = 2080;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "sending a packet (%zdB) = %s", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  return v16;
}

- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link
{
  if (self->_previousReportTime == 0.0)
  {
    v9 = 0;
  }

  else
  {
    if (link)
    {
      v6 = 42;
    }

    else
    {
      v6 = 32;
    }

    v22 = v6;
    state = self->_state;
    if (state > 6)
    {
      v8 = "UnexpectedState";
    }

    else
    {
      v8 = _IDSLinkStateStrings[state];
    }

    v21 = v8;
    v20 = self->_totalPacketsSent - self->_previousPacketsSent;
    v10 = formattedBytes();
    v11 = formattedSpeed();
    totalPacketsSent = self->_totalPacketsSent;
    v13 = formattedBytes();
    v14 = self->_totalPacketsReceived - self->_previousPacketsReceived;
    v15 = formattedBytes();
    v16 = formattedSpeed();
    totalPacketsReceived = self->_totalPacketsReceived;
    v18 = formattedBytes();
    v9 = [NSString stringWithFormat:@"%c Global    (%s) Tx %6llu pkts %@B %@bps     %6llu pkts %@B\n                        Rx %6llu pkts %@B %@bps     %6llu pkts %@B\n", v22, v21, v20, v10, v11, totalPacketsSent, v13, v14, v15, v16, totalPacketsReceived, v18];
  }

  self->_previousReportTime = report;
  self->_previousBytesSent = self->_totalBytesSent;
  *&self->_previousPacketsSent = *&self->_totalPacketsSent;
  self->_previousPacketsReceived = self->_totalPacketsReceived;

  return v9;
}

- (void)_forwardPacketBuffer:(id *)buffer fromDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  cbuuidCopy = cbuuid;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained link:self didReceivePacket:buffer fromDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
}

- (BOOL)link:(id)link didReceivePacket:(id *)packet fromDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  if (packet)
  {
    if (packet->var2)
    {
      ids_monotonic_time();
      v14 = v13;
      var2 = packet->var2;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = var2;
      *&self->_totalBytesReceived = vaddq_s64(*&self->_totalBytesReceived, v16);
      if (*packet->var0 == 15)
      {
        if (var2 < 21)
        {
          v22 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = packet->var2;
            *buf = 134217984;
            v28 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "didReceivePacket - unknown packet (%zdB)", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }
        }

        else
        {
          v17 = bswap32(*(packet->var0 + 1)) >> 16;
          if ((v17 & 0xC000) == 0)
          {
            v18 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
            v19 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v20 = packet->var2;
              *buf = 134218498;
              v28 = v20;
              v29 = 1024;
              v30 = v17;
              v31 = 2112;
              v32 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "didReceivePacket - STUN packet (%zdB) [type:%04X %@]", buf, 0x1Cu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
            {
              v25 = v17;
              v26 = v18;
              v24 = packet->var2;
              _IDSLogV();
            }

            [(IDSUDPGlobalLink *)self _processStunPacket:packet fromDevice:cbuuidCopy arrivalTime:dCopy fromDeviceUniqueID:cbuuidCopy cbuuid:v14, v24, v25, v26];
          }
        }
      }

      else
      {
        [(IDSUDPGlobalLink *)self _forwardPacketBuffer:packet fromDeviceUniqueID:dCopy cbuuid:cbuuidCopy];
      }

      LOBYTE(packet) = 1;
    }

    else
    {
      LOBYTE(packet) = 0;
    }
  }

  return packet;
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