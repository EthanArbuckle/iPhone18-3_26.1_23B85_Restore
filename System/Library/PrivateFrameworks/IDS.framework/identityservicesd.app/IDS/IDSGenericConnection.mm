@interface IDSGenericConnection
- (IDSGenericConnection)initWithAddressPair:(id)pair protocol:(int)protocol;
- (IDSGenericConnection)initWithConnectionID:(id)d protocol:(int)protocol isCloudEnabled:(BOOL)enabled;
- (IDSGenericConnection)initWithConnectionID:(id)d protocol:(int)protocol keyMaterialLength:(int)length isCloudEnabled:(BOOL)enabled;
- (OS_dispatch_queue)completionQueue;
- (id)description;
- (id)flagsString;
- (void)_closeSockets;
- (void)_createStallDetectorWithName:(id)name;
- (void)_triggerStallDetectionLogsForDetector:(id)detector withEvent:(id)event;
- (void)dealloc;
- (void)invalidate;
- (void)reportToAWD:(unint64_t)d connectionType:(int)type error:(int)error;
- (void)setCompletionQueue:(id)queue;
@end

@implementation IDSGenericConnection

- (IDSGenericConnection)initWithConnectionID:(id)d protocol:(int)protocol isCloudEnabled:(BOOL)enabled
{
  dCopy = d;
  v23.receiver = self;
  v23.super_class = IDSGenericConnection;
  v9 = [(IDSGenericConnection *)&v23 init];
  if (v9)
  {
    v10 = +[NSString stringGUID];
    v11 = *(v9 + 1);
    *(v9 + 1) = v10;

    v12 = [dCopy copy];
    v13 = *(v9 + 4);
    *(v9 + 4) = v12;

    *(v9 + 12) = protocol;
    *(v9 + 52) = -1;
    *(v9 + 15) = -1;
    if (qword_100CBF438 != -1)
    {
      sub_10092D8D8();
    }

    *(v9 + 13) = *&qword_100CBF3C0 * mach_continuous_time();
    v14 = objc_alloc_init(IDSHCInfo);
    v15 = *(v9 + 18);
    *(v9 + 18) = v14;

    *(v9 + 19) = 0;
    v9[180] = enabled;
    os_unfair_lock_lock(&unk_100CBF440);
    v16 = qword_100CBF3B0;
    service = [*(v9 + 4) service];
    v18 = [v16 objectForKey:service];

    if (v18)
    {
      *(v9 + 604) = [v18 packetsSent];
      *(v9 + 603) = [v18 packetsReceived];
      *(v9 + 606) = [v18 bytesSent];
      *(v9 + 605) = [v18 bytesReceived];
      v19 = qword_100CBF3B0;
      service2 = [*(v9 + 4) service];
      [v19 removeObjectForKey:service2];

      if (![qword_100CBF3B0 count])
      {
        v21 = qword_100CBF3B0;
        qword_100CBF3B0 = 0;
      }
    }

    if (qword_100CBF438 != -1)
    {
      sub_10092D8D8();
    }

    *(v9 + 607) = *&qword_100CBF3C0 * mach_continuous_time();
    os_unfair_lock_unlock(&unk_100CBF440);
    v9[4956] = 0;
  }

  return v9;
}

- (IDSGenericConnection)initWithConnectionID:(id)d protocol:(int)protocol keyMaterialLength:(int)length isCloudEnabled:(BOOL)enabled
{
  dCopy = d;
  v28.receiver = self;
  v28.super_class = IDSGenericConnection;
  v11 = [(IDSGenericConnection *)&v28 init];
  v12 = v11;
  if (v11)
  {
    *(v11 + 52) = -1;
    *(v11 + 15) = -1;
    v13 = malloc_type_malloc(length, 0x100004077774924uLL);
    *(v12 + 599) = v13;
    *(v12 + 1197) = length;
    if (!v13)
    {
      v26 = 0;
      goto LABEL_14;
    }

    if (SecRandomCopyBytes(kSecRandomDefault, length, v13))
    {
      sub_10092D914();
    }

    v14 = +[NSString stringGUID];
    v15 = *(v12 + 1);
    *(v12 + 1) = v14;

    v16 = [dCopy copy];
    v17 = *(v12 + 4);
    *(v12 + 4) = v16;

    *(v12 + 12) = protocol;
    if (qword_100CBF438 != -1)
    {
      sub_10092D8D8();
    }

    *(v12 + 13) = *&qword_100CBF3C0 * mach_continuous_time();
    v18 = objc_alloc_init(IDSHCInfo);
    v19 = *(v12 + 18);
    *(v12 + 18) = v18;

    *(v12 + 19) = 0;
    *(v12 + 180) = enabled;
    os_unfair_lock_lock(&unk_100CBF440);
    v20 = qword_100CBF3B0;
    service = [*(v12 + 4) service];
    v22 = [v20 objectForKey:service];

    if (v22)
    {
      *(v12 + 604) = [v22 packetsSent];
      *(v12 + 603) = [v22 packetsReceived];
      *(v12 + 606) = [v22 bytesSent];
      *(v12 + 605) = [v22 bytesReceived];
      v23 = qword_100CBF3B0;
      service2 = [*(v12 + 4) service];
      [v23 removeObjectForKey:service2];

      if (![qword_100CBF3B0 count])
      {
        v25 = qword_100CBF3B0;
        qword_100CBF3B0 = 0;
      }
    }

    os_unfair_lock_unlock(&unk_100CBF440);
    if (qword_100CBF438 != -1)
    {
      sub_10092D8D8();
    }

    *(v12 + 607) = *&qword_100CBF3C0 * mach_continuous_time();
    *(v12 + 4956) = 0;
  }

  v26 = v12;
LABEL_14:

  return v26;
}

- (id)description
{
  if (self->_protocol == 6)
  {
    v66 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v64 = v3;
    v65 = v3;
    v62 = v3;
    v63 = v3;
    v60 = v3;
    v61 = v3;
    v58 = v3;
    v59 = v3;
    v56 = v3;
    v57 = v3;
    v54 = v3;
    v55 = v3;
    v52 = v3;
    v53 = v3;
    v50 = v3;
    v51 = v3;
    v48 = v3;
    v49 = v3;
    v46 = v3;
    v47 = v3;
    v44 = v3;
    v45 = v3;
    v42[2] = v3;
    v43 = v3;
    v42[0] = v3;
    v42[1] = v3;
    v41 = 424;
    sdCopy = self->_sdCopy;
    if (sdCopy == -1 && (sdCopy = self->_sd, sdCopy == -1) || getsockopt(sdCopy, 6, 512, v42, &v41))
    {
      v5 = 0;
    }

    else
    {
      v5 = [NSString stringWithFormat:@"TCP info (%u) tcpi_snd_nxt:%08x tcpi_rcv_nxt:%08x (connection: in:%08x out:%08x)", LOBYTE(v42[0]), DWORD1(v43), DWORD2(v43), self->_expectedNextIncomingSequenceNumber, self->_expectedNextOutgoingSequenceNumber];
    }

    v40 = v5;
  }

  else
  {
    v40 = 0;
  }

  connectionID = self->_connectionID;
  shortDescription = [(IDSSockAddrWrapperPair *)self->_addressPair shortDescription];
  v37 = *&self->_localConnectionGUID;
  compressionState = self->_compressionState;
  connectError = self->_connectError;
  protocol = self->_protocol;
  clientID = self->_clientID;
  sd = self->_sd;
  v31 = self->_sdCopy;
  sdOriginal = self->_sdOriginal;
  localCID = [(IDSHCInfo *)self->_compressionInfo localCID];
  localContext = [(IDSHCInfo *)self->_compressionInfo localContext];
  remoteCID = [(IDSHCInfo *)self->_compressionInfo remoteCID];
  remoteContext = [(IDSHCInfo *)self->_compressionInfo remoteContext];
  v7 = "opened ";
  stateFlags = self->_stateFlags;
  if ((stateFlags & 1) == 0)
  {
    v7 = "";
  }

  v25 = v7;
  v26 = remoteContext;
  v9 = "handler-called ";
  if ((stateFlags & 2) == 0)
  {
    v9 = "";
  }

  v24 = v9;
  v10 = "control-sent ";
  if ((stateFlags & 4) == 0)
  {
    v10 = "";
  }

  v23 = v10;
  if ((stateFlags & 8) != 0)
  {
    v11 = "control-received ";
  }

  else
  {
    v11 = "";
  }

  if ((stateFlags & 0x10) != 0)
  {
    v12 = "reset-sent ";
  }

  else
  {
    v12 = "";
  }

  if ((stateFlags & 0x20) != 0)
  {
    v13 = "reset-received ";
  }

  else
  {
    v13 = "";
  }

  if ((stateFlags & 0x40) != 0)
  {
    v14 = "sent-pkt ";
  }

  else
  {
    v14 = "";
  }

  if ((stateFlags & 0x80) != 0)
  {
    v15 = "received-pkt ";
  }

  else
  {
    v15 = "";
  }

  if ((stateFlags & 0x100) != 0)
  {
    v16 = "received-data ";
  }

  else
  {
    v16 = "";
  }

  if ((stateFlags & 0x200) != 0)
  {
    v17 = "canceled ";
  }

  else
  {
    v17 = "";
  }

  if (self->_encryptionEnabled)
  {
    v18 = "encryption-enabled ";
  }

  else
  {
    v18 = "";
  }

  creationTime = self->_creationTime;
  v20 = objc_retainBlock(self->_readHandler);
  v21 = [NSString stringWithFormat:@"<IDSGenericConnection: id[%@] ports[%@] localGUID[%@] remoteGUID[%@] clientID[%@] proto[%d] sd[%d, %d, %d] error[%@] comp_state[%d] localContext[%d, %p] remoteContext[%d, %p](%s%s%s%s%s%s%s%s%s%s%s) (CT:%0.6lf) tcp[%@], readHandler: %p>", connectionID, shortDescription, v37, clientID, protocol, sd, v31, sdOriginal, connectError, compressionState, localCID, localContext, remoteCID, v26, v25, v24, v23, v11, v12, v13, v14, v15, v16, v17, v18, *&creationTime, v40, v20];

  return v21;
}

- (id)flagsString
{
  stateFlags = self->_stateFlags;
  v3 = "opened ";
  if ((stateFlags & 1) == 0)
  {
    v3 = "";
  }

  v4 = "handler-called ";
  if ((stateFlags & 2) == 0)
  {
    v4 = "";
  }

  v5 = "control-sent ";
  if ((stateFlags & 4) == 0)
  {
    v5 = "";
  }

  v6 = "control-received ";
  if ((stateFlags & 8) == 0)
  {
    v6 = "";
  }

  v7 = "reset-sent ";
  if ((stateFlags & 0x10) == 0)
  {
    v7 = "";
  }

  if ((stateFlags & 0x20) != 0)
  {
    v8 = "reset-received ";
  }

  else
  {
    v8 = "";
  }

  return [NSString stringWithFormat:@"( %s%s%s%s%s%s)", v3, v4, v5, v6, v7, v8];
}

- (IDSGenericConnection)initWithAddressPair:(id)pair protocol:(int)protocol
{
  pairCopy = pair;
  v15.receiver = self;
  v15.super_class = IDSGenericConnection;
  v7 = [(IDSGenericConnection *)&v15 init];
  if (v7)
  {
    v8 = +[NSString stringGUID];
    v9 = *(v7 + 1);
    *(v7 + 1) = v8;

    v10 = [pairCopy copy];
    v11 = *(v7 + 5);
    *(v7 + 5) = v10;

    *(v7 + 12) = protocol;
    *(v7 + 52) = -1;
    *(v7 + 15) = -1;
    if (qword_100CBF438 != -1)
    {
      sub_10092D8D8();
    }

    *(v7 + 13) = *&qword_100CBF3C0 * mach_continuous_time();
    v12 = objc_alloc_init(IDSHCInfo);
    v13 = *(v7 + 18);
    *(v7 + 18) = v12;

    *(v7 + 19) = 0;
    *(v7 + 90) = 257;
    v7[4956] = 0;
  }

  return v7;
}

- (void)setCompletionQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    sub_10092D940();
  }

  completionQueue = self->_completionQueue;
  self->_completionQueue = queueCopy;

  _objc_release_x1(queueCopy, completionQueue);
}

- (OS_dispatch_queue)completionQueue
{
  completionQueue = self->_completionQueue;
  if (completionQueue)
  {
    v3 = completionQueue;
  }

  else
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "problem: %@ is going to use the main queue.", buf, 0xCu);
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

    v3 = im_primary_queue();
  }

  return v3;
}

- (void)_closeSockets
{
  connectionID = [(IDSGenericConnection *)self connectionID];
  v4 = connectionID;
  if (connectionID)
  {
    serviceConnectorServiceForAccount = [connectionID serviceConnectorServiceForAccount];
  }

  else
  {
    serviceConnectorServiceForAccount = 0;
  }

  if (self->_serviceConnector && self->_defaultPairedDeviceEndpoint && serviceConnectorServiceForAccount)
  {
    [serviceConnectorServiceForAccount UTF8String];
    v14 = v4;
    nw_service_connector_cancel_active_connection();
  }

  else
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      serviceConnector = self->_serviceConnector;
      defaultPairedDeviceEndpoint = self->_defaultPairedDeviceEndpoint;
      *buf = 138413058;
      selfCopy = self;
      v17 = 2112;
      v18 = serviceConnector;
      v19 = 2112;
      v20 = defaultPairedDeviceEndpoint;
      v21 = 2112;
      v22 = serviceConnectorServiceForAccount;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ cannot cancel service connector for connection._serviceConnector=%@;_defaultPairedDeviceEndpoint=%@;serviceConnectionServiceString=%@", buf, 0x2Au);
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

  serviceConnection = self->_serviceConnection;
  if (serviceConnection)
  {
    nw_connection_cancel(serviceConnection);
    v10 = self->_serviceConnection;
    self->_serviceConnection = 0;
  }

  sd = self->_sd;
  if (sd != -1)
  {
    close(sd);
    self->_sd = -1;
  }

  sdCopy = self->_sdCopy;
  if (sdCopy != -1)
  {
    close(sdCopy);
    self->_sdCopy = -1;
  }

  sdOriginal = self->_sdOriginal;
  if (sdOriginal != -1)
  {
    close(sdOriginal);
    self->_sdOriginal = -1;
  }
}

- (void)dealloc
{
  if (![(IDSGenericConnection *)self didInvalidate])
  {
    v3 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_10092D958(v3);
    }
  }

  v4.receiver = self;
  v4.super_class = IDSGenericConnection;
  [(IDSGenericConnection *)&v4 dealloc];
}

- (void)invalidate
{
  if (![(IDSGenericConnection *)self didInvalidate])
  {
    [(IDSGenericConnection *)self setDidInvalidate:1];
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating IDSGenericConnection %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        selfCopy3 = self;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          selfCopy3 = self;
          _IDSLogV();
        }
      }
    }

    if (self->_shouldStopBTDatagramLink)
    {
      v4 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        service = [(IDSGenericConnectionID *)self->_connectionID service];
        *buf = 138412290;
        selfCopy = service;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "genericConnection for %@ using BT datagram link - stop", buf, 0xCu);
      }

      IDSTransportThreadAddBlock();
    }

    if (self->_connectionID)
    {
      os_unfair_lock_lock(&unk_100CBF440);
      v6 = qword_100CBF3B0;
      if (!qword_100CBF3B0)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v8 = qword_100CBF3B0;
        qword_100CBF3B0 = Mutable;

        v6 = qword_100CBF3B0;
      }

      service2 = [(IDSGenericConnectionID *)self->_connectionID service];
      v10 = [v6 objectForKey:service2];

      if (!v10)
      {
        v10 = objc_alloc_init(IDSServiceStatistics);
        v11 = qword_100CBF3B0;
        service3 = [(IDSGenericConnectionID *)self->_connectionID service];
        [v11 setObject:v10 forKey:service3];
      }

      [(IDSServiceStatistics *)v10 setPacketsSent:[(IDSServiceStatistics *)v10 packetsSent]+ self->_packetsSent];
      [(IDSServiceStatistics *)v10 setPacketsReceived:[(IDSServiceStatistics *)v10 packetsReceived]+ self->_packetsReceived];
      [(IDSServiceStatistics *)v10 setBytesSent:[(IDSServiceStatistics *)v10 bytesSent]+ self->_bytesSent];
      [(IDSServiceStatistics *)v10 setBytesReceived:[(IDSServiceStatistics *)v10 bytesReceived]+ self->_bytesReceived];
      os_unfair_lock_unlock(&unk_100CBF440);
    }

    keyMaterialLength = self->_keyMaterialLength;
    if (keyMaterialLength)
    {
      memset_s(self->_localKeyMaterial, keyMaterialLength, 0, self->_keyMaterialLength);
      free(self->_localKeyMaterial);
      sub_10050CB5C(&self->_encryptionState);
      self->_localKeyMaterial = 0;
      self->_keyMaterialLength = 0;
    }

    if (self->_openSocketCompletionHandler)
    {
      v14 = [(IDSGenericConnection *)self description];
      v15 = [NSString stringWithFormat:@"Cleanup: %@", v14];

      v16 = [NSDictionary dictionaryWithObject:v15 forKey:NSLocalizedDescriptionKey];
      v17 = [NSError errorWithDomain:@"IDSUTun" code:5101 userInfo:v16];

      v18 = objc_retainBlock(self->_openSocketCompletionHandler);
      openSocketCompletionHandler = self->_openSocketCompletionHandler;
      self->_openSocketCompletionHandler = 0;

      completionQueue = [(IDSGenericConnection *)self completionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1006223D0;
      block[3] = &unk_100BD7298;
      v26 = v17;
      v27 = v18;
      v21 = v17;
      v22 = v18;
      dispatch_async(completionQueue, block);
    }

    [(IDSGenericConnection *)self _closeSockets];
    [(IDSHCInfo *)self->_compressionInfo invalidate];
    completionQueue = self->_completionQueue;
    self->_completionQueue = 0;
  }
}

- (void)reportToAWD:(unint64_t)d connectionType:(int)type error:(int)error
{
  if (!self->_sentAWDReport)
  {
    v5 = *&error;
    v6 = *&type;
    v9 = +[IDSAWDLogging sharedInstance];
    if (v5)
    {
      v10 = [NSNumber numberWithInt:v6];
      v11 = [NSNumber numberWithInt:v5];
      [v9 IDSGenericConnectionForLink:d connectionSetupStartTime:&off_100C3CE20 firstPacketReceiveTime:&off_100C3CE20 connectionType:v10 success:0 errorCode:v11];
    }

    else
    {
      v10 = [NSNumber numberWithDouble:self->_connectionSetupStartTime];
      v11 = [NSNumber numberWithDouble:self->_firstPacketReceiveTime];
      v12 = [NSNumber numberWithInt:v6];
      [v9 IDSGenericConnectionForLink:d connectionSetupStartTime:v10 firstPacketReceiveTime:v11 connectionType:v12 success:1 errorCode:&off_100C3CE20];
    }

    self->_sentAWDReport = 1;
  }
}

- (void)_triggerStallDetectionLogsForDetector:(id)detector withEvent:(id)event
{
  detectorCopy = detector;
  eventCopy = event;
  if (qword_100CBF438 != -1)
  {
    sub_10092D900();
  }

  v8 = mach_continuous_time();
  v9 = *&qword_100CBF3C0;
  [detectorCopy UTF8String];
  if (IMGetDomainBoolForKey())
  {
    IDSNetworkingLogDump();
    eventCopy = [NSString stringWithFormat:@"%p %@ Stall detected [%@].", self, detectorCopy, eventCopy];
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = eventCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v18 = eventCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v18 = eventCopy;
          _IDSLogV();
        }
      }
    }

    v12 = [NSString stringWithFormat:@"IDS detected the single UTun socket stall. Please file a bug Transport|all, and attach a sysdiagnose and the contents of /Library/Logs/CrashReporter from both devices.", v18];
    IDSInternalAlertSimple();

    goto LABEL_27;
  }

  v13 = v9 * v8;
  v14 = *&qword_100CBF3B8;
  if (*&qword_100CBF3B8 != 0.0)
  {
    goto LABEL_15;
  }

  if (arc4random() <= 0x33333333)
  {
    v14 = *&qword_100CBF3B8;
LABEL_15:
    v15 = @"%p %@ Stall detected [%@] - netdiagnose & simulate crash";
    if (v14 != 0.0 && v13 - v14 <= 172800.0)
    {
      eventCopy = 0;
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v15 = @"%p %@ Stall detected [%@] - only netdiagnose";
LABEL_18:
  qword_100CBF3B8 = *&v13;
  IDSNetworkingLogDump();
  eventCopy = [NSString stringWithFormat:v15, self, detectorCopy, eventCopy];
  if (eventCopy)
  {
    lastStallDetectLogTime = self->_lastStallDetectLogTime;
    if (lastStallDetectLogTime == 0.0 || v13 - lastStallDetectLogTime > 4.0)
    {
      self->_lastStallDetectLogTime = v13;
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = eventCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
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
  }

LABEL_27:
}

- (void)_createStallDetectorWithName:(id)name
{
  nameCopy = name;
  outgoingStallDetector = self->_outgoingStallDetector;
  if (outgoingStallDetector)
  {
    [(IDSStallDetector *)outgoingStallDetector reset];
    self->_lastStallDetectLogTime = 0.0;
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100622B90;
    v14[3] = &unk_100BE2A40;
    v14[4] = self;
    v6 = nameCopy;
    v15 = v6;
    v7 = objc_retainBlock(v14);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100622C50;
    v12[3] = &unk_100BE2A40;
    v12[4] = self;
    v8 = v6;
    v13 = v8;
    v9 = objc_retainBlock(v12);
    v10 = [IDSStallDetector newDetectorWithName:v8 stallDetectedBlock:v7 stallWarningBlock:v9];
    [v10 setByteMovementDelayThreshold:30.0];
    [v10 setVerboseLogging:1];
    objc_storeStrong(&self->_outgoingStallDetector, v10);
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%p Created the stall detector %@", buf, 0x16u);
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
}

@end