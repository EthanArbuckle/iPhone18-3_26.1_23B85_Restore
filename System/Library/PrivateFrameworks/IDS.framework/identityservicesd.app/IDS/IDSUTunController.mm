@interface IDSUTunController
+ (IDSUTunController)sharedInstance;
- (BOOL)handleIncomingPacket:(id *)packet fromDeviceToken:(id)token;
- (BOOL)isConnected:(id)connected deviceConnectionInfo:(id)info;
- (BOOL)peerSupportsASQUIC:(id)c;
- (BOOL)setupIPsecLinkForDeviceConnectionInfo:(id)info;
- (BOOL)setupUTunForDeviceConnectionInfo:(id)info;
- (IDSUTunController)init;
- (id)_prepareConnectionInfoWithCBUUID:(id)d deviceUniqueID:(id)iD shouldUseServiceConnector:(BOOL)connector identityPair:(id)pair remoteDeviceEncryptionInfo:(id)info;
- (id)controlChannelVersionForCbuuid:(id)cbuuid;
- (id)copyLinkStatsDict;
- (id)defaultPairedDeviceIdentityPair;
- (id)onTransportThread_PerServiceDataTransferredForDevice:(id)device services:(id)services;
- (id)perServiceDataReceivedForDevice:(id)device services:(id)services;
- (id)perServiceDataSentForDevice:(id)device services:(id)services;
- (id)perServiceDataTransferredForDevice:(id)device services:(id)services;
- (id)setupNewDeviceConnectionInfoForCbuuid:(id)cbuuid deviceUniqueID:(id)d identityPair:(id)pair remoteDeviceEncryptionInfo:(id)info shouldUseServiceConnector:(BOOL)connector;
- (int)processCompressionRequest:(id)request fromDeviceConnectionInfo:(id)info;
- (int)processCompressionResponse:(id)response fromDeviceConnectionInfo:(id)info;
- (unint64_t)onTransportThread_SendWithConnectionContext:(id)context packetBuffer:(id *)buffer;
- (unint64_t)totalPacketsReceivedForDevice:(id)device services:(id)services;
- (unint64_t)totalPacketsSentForDevice:(id)device services:(id)services;
- (unsigned)handleUtunChannelWrite:(id)write source:(sockaddr *)source destination:(sockaddr *)destination upperProtocol:(unsigned __int8)protocol bytes:(const void *)bytes bytesLen:(unint64_t)len;
- (void)_getStallDetectorForConnection:(id)connection deviceConnecionInfo:(id)info;
- (void)_reloadSettings;
- (void)addPairedDevice:(id)device shouldPairDirectlyOverIPsec:(BOOL)psec;
- (void)checkSuspendTrafficForDevice:(id)device wait:(BOOL)wait;
- (void)cleanupSocketsForClient:(id)client;
- (void)clearStats;
- (void)closeDataConnectionWithDeviceConnectionInfo:(id)info options:(id)options;
- (void)closeSocketWithOptions:(id)options queue:(id)queue completionHandler:(id)handler;
- (void)connectGlobalLinkForDevice:(id)device sessionInfo:(id)info connectReadyHandler:(id)handler withLocalInterfacePreference:(int)preference;
- (void)connectPairedDevice:(id)device;
- (void)createConnectionDataForDevice:(id)device localPartyID:(id)d dataReadyHandler:(id)handler;
- (void)deletePairedDevice:(id)device;
- (void)didConnectControlChannelForDeviceConnectionInfo:(id)info connection:(id)connection error:(id)error;
- (void)didUpdatePairedDevice:(id)device;
- (void)disconnectGlobalLinkForDevice:(id)device isReinitiating:(BOOL)reinitiating completionHandler:(id)handler;
- (void)doCheckSuspendTrafficForDevice:(id)device;
- (void)getLinkInformationForDevice:(id)device completionHandler:(id)handler;
- (void)handleAllocateRequestFailureForDevice:(id)device requestID:(id)d errorCode:(int)code;
- (void)handleIPPayload:(const void *)payload bytesLength:(unint64_t)length source:(sockaddr *)source destination:(sockaddr *)destination upperProtocol:(unsigned __int8)protocol forDeviceConnectionInfo:(id)info flush:(BOOL)flush callerShouldStop:(BOOL *)self0;
- (void)handleUtunChannelRead:(id)read limit:(unsigned int)limit;
- (void)internalOpenSocketWithDestination:(id)destination localSA:(id)a remoteSA:(id)sA protocol:(int)protocol trafficClass:(int)class completionHandler:(id)handler;
- (void)internalStartConnectionWithEndpoint:(id)endpoint service:(const char *)service parameters:(id)parameters serviceConnector:(id)connector trafficClass:(int)class completionHandler:(id)handler;
- (void)link:(id)link didConnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)link:(id)link didDisconnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)link:(id)link hasSpaceAvailable:(BOOL)available deviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)obliterateConnectionInfoForCBUUID:(id)d;
- (void)obliterateConnectionInfoForCBUUID:(id)d completionBlock:(id)block completionQueue:(id)queue;
- (void)openSocketWithOptions:(id)options queue:(id)queue completionHandler:(id)handler;
- (void)prepareControlChannelForDeviceConnectionInfo:(id)info genericConnection:(id)connection;
- (void)prepareDefaultPairedConnectionInfoWithDeviceUniqueID:(id)d shouldUseServiceConnector:(BOOL)connector;
- (void)processRemoteConnectionDataForDevice:(id)device remoteConnectionData:(id)data completionHandler:(id)handler;
- (void)receiveControlChannelMessage:(id)message fromCbuuid:(id)cbuuid deviceUniqueID:(id)d;
- (void)releasePortIfNecessary:(IDSPortMap *)necessary port:(unsigned __int16)port;
- (void)removeConnection:(id)connection fromDeviceConnectionInfo:(id)info removeCode:(int64_t)code removeReason:(id)reason;
- (void)resetAllConnectionsForDevice:(id)device;
- (void)resetIPsecTCPConnection:(id)connection forDeviceConnectionInfo:(id)info;
- (void)resetTCPConnection:(id)connection forDeviceConnectionInfo:(id)info;
- (void)resetUTunTCPConnection:(id)connection forDeviceConnectionInfo:(id)info;
- (void)resumeSocketWithOptions:(id)options shouldLogCall:(BOOL)call;
- (void)sendOTRNegotiationMessage:(id)message negotiationCount:(unsigned int)count negotiationData:(id)data;
- (void)sendSuspendOTRNegotiationMessage:(id)message;
- (void)setLinkPreferences:(id)preferences;
- (void)setupDataConnectionWithDeviceConnectionInfo:(id)info options:(id)options;
- (void)startCompressionForConnection:(id)connection deviceConnectionInfo:(id)info;
- (void)startConnectionForDevice:(id)device isInitiator:(BOOL)initiator remotePartyID:(id)d useStunMICheck:(BOOL)check;
- (void)startControlChannelWithDevice:(id)device;
- (void)startDataChannelWithDevice:(id)device genericConnection:(id)connection serviceConnectorService:(id)service;
- (void)startGlobalLinkForDevice:(id)device;
- (void)startUDPGlobalLinkForDevice:(id)device;
- (void)stopGlobalLinkForDevice:(id)device;
- (void)stopUDPGlobalLinkForDevice:(id)device;
- (void)suspendSocketWithOptions:(id)options;
@end

@implementation IDSUTunController

+ (IDSUTunController)sharedInstance
{
  if (qword_100CBF3C8 != -1)
  {
    sub_10092D99C();
  }

  v3 = qword_100CBF3D0;

  return v3;
}

- (void)_reloadSettings
{
  IMSyncronizeAppPreferences();
  self->_logPackets = IMGetDomainBoolForKey();
  v3 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v3 isInternalInstall];

  if (isInternalInstall)
  {
    self->_encryptionEnabled = IMGetDomainBoolForKeyWithDefaultValue();
    self->_encryptionEnabled = IMGetDomainBoolForKeyWithDefaultValue() ^ 1;
    self->_controlChannelEncryptionDisabled = IMGetDomainBoolForKeyWithDefaultValue();
    self->_vifShouldReadMultiple = IMGetDomainBoolForKeyWithDefaultValue();
    v5 = IMGetDomainValueForKey();
    unsignedIntValue = [v5 unsignedIntValue];
    if (unsignedIntValue)
    {
      v7 = unsignedIntValue;
    }

    else
    {
      v7 = 16;
    }

    self->_vifMaxPendingPackets = v7;

    if (self->_vifMaxPendingPackets >= 0x41)
    {
      self->_vifMaxPendingPackets = 64;
    }

    v8 = +[IMUserDefaults fixedInterface];
    if (v8)
    {
      v9 = +[IMUserDefaults fixedInterfaceDestination];
      self->_hasFixedDestination = v9 != 0;
    }

    else
    {
      self->_hasFixedDestination = 0;
    }

    self->_ignoreUTunChannelWriteSignal = IMGetDomainBoolForKeyWithDefaultValue();
  }

  else
  {
    *&self->_encryptionEnabled = 1;
  }

  self->_vifUseChannel = IMGetDomainBoolForKey() ^ 1;
  v10 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    logPackets = self->_logPackets;
    encryptionEnabled = self->_encryptionEnabled;
    controlChannelEncryptionDisabled = self->_controlChannelEncryptionDisabled;
    vifUseChannel = self->_vifUseChannel;
    vifShouldReadMultiple = self->_vifShouldReadMultiple;
    vifMaxPendingPackets = self->_vifMaxPendingPackets;
    v17 = @"NO";
    if (self->_ignoreUTunChannelWriteSignal)
    {
      v17 = @"YES";
    }

    elementCount = self->_deviceConnectionInfoTableByCbuuid.elementCount;
    *buf = 67110914;
    v21 = logPackets;
    v22 = 1024;
    v23 = encryptionEnabled;
    v24 = 1024;
    v25 = controlChannelEncryptionDisabled;
    v26 = 1024;
    v27 = vifUseChannel;
    v28 = 1024;
    v29 = vifShouldReadMultiple;
    v30 = 1024;
    v31 = vifMaxPendingPackets;
    v32 = 2112;
    v33 = v17;
    v34 = 1024;
    v35 = elementCount;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Loaded settings: utunLogPackets:%d dataChannelEncryptionEnabled:%d controlChannelEncryptionDisabled:%d utunChannel:%d readmultiple:%d/%d ignoreUTunChannelWriteSignal:%@ (devices:%d)", buf, 0x36u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1006255A0;
  v19[3] = &unk_100BE2AA8;
  v19[4] = self;
  sub_10000C18C(&self->_deviceConnectionInfoTableByCbuuid, v19);
}

- (void)_getStallDetectorForConnection:(id)connection deviceConnecionInfo:(id)info
{
  connectionCopy = connection;
  cbuuid = [info cbuuid];
  v8 = [cbuuid isEqualToString:kIDSDefaultPairedDeviceID];

  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v9 isInternalInstall];

  if (!isInternalInstall)
  {
    goto LABEL_18;
  }

  connectionID = [connectionCopy connectionID];

  if (connectionID)
  {
    connectionID2 = [connectionCopy connectionID];
    service = [connectionID2 service];
    v14 = [service isEqualToString:@"localdelivery"];

    if (!v14)
    {
      goto LABEL_18;
    }

    connectionID3 = [connectionCopy connectionID];
    name = [connectionID3 name];
    v17 = [name isEqualToString:@"UTunDelivery-Default-Urgent"];

    if (v17)
    {
      v18 = @"kUTunConnectionDefaultUrgentOutgoingDetectorName";
    }

    else
    {
      connectionID4 = [connectionCopy connectionID];
      name2 = [connectionID4 name];
      v26 = [name2 isEqualToString:@"UTunDelivery-Default-Default"];

      if (!v26)
      {
        goto LABEL_14;
      }

      v18 = @"kUTunConnectionDefaultDefaultOutgoingDetectorName";
    }
  }

  else
  {
    addressPair = [connectionCopy addressPair];
    localAddress = [addressPair localAddress];
    if ([localAddress saPortHostOrder] != 1024)
    {

      goto LABEL_14;
    }

    addressPair2 = [connectionCopy addressPair];
    remoteAddress = [addressPair2 remoteAddress];
    saPortHostOrder = [remoteAddress saPortHostOrder];

    if (!saPortHostOrder)
    {
      goto LABEL_14;
    }

    v18 = @"kUTunConnectionControlChannelOutgoingDetectorName";
  }

  [connectionCopy setOutgoingStallDetectorName:v18];
  [connectionCopy _createStallDetectorWithName:v18];
LABEL_14:
  outgoingStallDetectorName = [connectionCopy outgoingStallDetectorName];

  if (outgoingStallDetectorName)
  {
    v28 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      outgoingStallDetectorName2 = [connectionCopy outgoingStallDetectorName];
      v30 = 138412546;
      selfCopy = self;
      v32 = 2112;
      v33 = outgoingStallDetectorName2;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: created the stall detector for %@", &v30, 0x16u);
    }
  }

LABEL_18:
}

- (void)handleIPPayload:(const void *)payload bytesLength:(unint64_t)length source:(sockaddr *)source destination:(sockaddr *)destination upperProtocol:(unsigned __int8)protocol forDeviceConnectionInfo:(id)info flush:(BOOL)flush callerShouldStop:(BOOL *)self0
{
  protocolCopy = protocol;
  infoCopy = info;
  if (stop)
  {
    *stop = 0;
  }

  if (protocolCopy == 17)
  {
    kdebug_trace();
  }

  selfCopy = self;
  if (length > 7)
  {
    if (protocolCopy != 6 && protocolCopy != 17)
    {
      v22 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        vifName = [infoCopy vifName];
        v24 = [NSData dataWithBytesNoCopy:payload length:length freeWhenDone:0];
        LODWORD(buf[0]) = 138412802;
        *(buf + 4) = vifName;
        WORD6(buf[0]) = 1024;
        *(buf + 14) = protocolCopy;
        WORD1(buf[1]) = 2112;
        *(&buf[1] + 4) = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@: dropping unknown proto[%u] packet [%@]", buf, 0x1Cu);
      }

      if (flush)
      {
        goto LABEL_64;
      }

      goto LABEL_238;
    }

    if (self->_logPackets && protocolCopy == 17 && byte_100CBF3D8)
    {
      if (qword_100CBF438 != -1)
      {
        sub_10092D900();
      }

      v18 = mach_continuous_time();
      if (length <= 0x27)
      {
        v19 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          vifName2 = [infoCopy vifName];
          v21 = [NSData dataWithBytesNoCopy:payload length:length freeWhenDone:0];
          LODWORD(buf[0]) = 138412802;
          *(buf + 4) = vifName2;
          WORD6(buf[0]) = 2112;
          *(buf + 14) = v21;
          WORD3(buf[1]) = 2048;
          *(&buf[1] + 1) = length;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: dropping packet %@ of length %zu", buf, 0x20u);
        }

        if (flush)
        {
          goto LABEL_64;
        }

        goto LABEL_238;
      }

      if (xmmword_100CBF3E8 == *(payload + 1) && *(&xmmword_100CBF3E8 + 1) == *(payload + 2) && qword_100CBF3F8 == *(payload + 3) && unk_100CBF400 == *(payload + 4))
      {
        byte_100CBF3D8 = 0;
        *&qword_100CBF3E0 = *&qword_100CBF3C0 * v18;
        v45 = qword_100CD3D68;
        v46 = [IDSUTunTimingLogger kernelTestEventWithTimestamp:"kernelTestEventWithTimestamp:kernelTime:bytes:" kernelTime:length - 8 bytes:?];
        [v45 addEvent:v46];

        goto LABEL_238;
      }

      if (*&qword_100CBF3C0 * v18 - qword_100CBF408 > 5.0)
      {
        byte_100CBF3D8 = 0;
        *&qword_100CBF3E0 = *&qword_100CBF3C0 * v18;
        v28 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "udp timing test: kernel test timed out", buf, 2u);
        }

        self = selfCopy;
      }
    }

    if (protocolCopy == 17 && self->_logPackets)
    {
      qword_100CBF418 = mach_continuous_time();
      qword_100CBF410 = qword_100CBF418;
      self = selfCopy;
    }

    if (protocolCopy == 6)
    {
      if (length <= 0x13)
      {
        v29 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          vifName3 = [infoCopy vifName];
          v31 = [NSData dataWithBytesNoCopy:payload length:length & 0x1F freeWhenDone:0];
          LODWORD(buf[0]) = 138412802;
          *(buf + 4) = vifName3;
          WORD6(buf[0]) = 2112;
          *(buf + 14) = v31;
          WORD3(buf[1]) = 1024;
          DWORD2(buf[1]) = length;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@: dropping packet %@ of length %u", buf, 0x1Cu);
        }

        if (flush)
        {
          goto LABEL_64;
        }

        goto LABEL_238;
      }

      v172 = (*(payload + 12) >> 2) & 0x3C;
      LODWORD(v173) = bswap32(*(payload + 1));
      HIDWORD(v173) = *(payload + 13);
    }

    else
    {
      v173 = 0;
      v172 = 0;
    }

    v174 = __rev16(*(payload + 1));
    v175 = __rev16(*payload);
    if (self->_logPackets)
    {
      v32 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        if (length >= 0x28)
        {
          lengthCopy = 40;
        }

        else
        {
          lengthCopy = length;
        }

        vifName4 = [infoCopy vifName];
        v35 = [NSData dataWithBytesNoCopy:payload length:lengthCopy freeWhenDone:0];
        v36 = v35;
        LODWORD(buf[0]) = 138413826;
        v37 = " ...";
        *(buf + 4) = vifName4;
        if (length < 0x29)
        {
          v37 = "";
        }

        WORD6(buf[0]) = 1024;
        *(buf + 14) = v175;
        WORD1(buf[1]) = 1024;
        DWORD1(buf[1]) = v174;
        WORD4(buf[1]) = 1024;
        *(&buf[1] + 10) = protocolCopy;
        HIWORD(buf[1]) = 2048;
        *&buf[2] = length;
        WORD4(buf[2]) = 2112;
        *(&buf[2] + 10) = v35;
        WORD1(buf[3]) = 2080;
        *(&buf[3] + 4) = v37;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@: Payload Handler! %u => %u proto:%d (len=%ld)\n\t\t=> data[%@%s]", buf, 0x3Cu);
      }
    }

    if ([infoCopy suspendTraffic])
    {
      v38 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        vifName5 = [infoCopy vifName];
        v40 = infoCopy[1];
        LODWORD(buf[0]) = 138412546;
        *(buf + 4) = vifName5;
        WORD6(buf[0]) = 2112;
        *(buf + 14) = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@: device %@ is suspending traffic", buf, 0x16u);
      }

      if (flush)
      {
        goto LABEL_64;
      }

      goto LABEL_238;
    }

    v177 = sub_1006C2FC8([infoCopy connectionsTableByLocalRemotePortKey], v174 | (v175 << 16));
    if (v177)
    {
      v44 = 0;
      if (protocolCopy == 17 && selfCopy->_logPackets)
      {
        v44 = mach_continuous_time();
      }
    }

    else
    {
      if (protocolCopy != 6 || (v173 & 0x400000000) == 0)
      {
        v58 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          vifName6 = [infoCopy vifName];
          LODWORD(buf[0]) = 138413058;
          *(buf + 4) = vifName6;
          WORD6(buf[0]) = 1024;
          *(buf + 14) = v175;
          WORD1(buf[1]) = 1024;
          DWORD1(buf[1]) = v174;
          WORD4(buf[1]) = 2112;
          *(&buf[1] + 10) = infoCopy;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@: cannot find connection for outgoing packet [%u => %u] in [%@]", buf, 0x22u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          vifName7 = [infoCopy vifName];
          _IDSLogV();
        }

        if (protocolCopy == 6)
        {
          memset(__n_4, 170, sizeof(__n_4));
          v60 = *(payload + 2);
          v61 = +[IDSFoundationLog utunController];
          v62 = bswap32(v60);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf[0]) = 67109376;
            DWORD1(buf[0]) = v173;
            WORD4(buf[0]) = 1024;
            *(buf + 10) = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "reset TCP using seq:%08x ack:%08x", buf, 0xEu);
          }

          sub_10062704C(__n_4, v174, v175, v62, (((HIDWORD(v173) >> 1) & 1) == 0) + v173);
          remoteSA = [infoCopy remoteSA];
          v64 = [remoteSA sa6];
          localSA = [infoCopy localSA];
          tcp6checksum((v64 + 8), ([localSA sa6] + 8), __n_4, 0x14uLL);

          if (infoCopy[2079])
          {
            remoteSA2 = [infoCopy remoteSA];
            v67 = [remoteSA2 sa];
            localSA2 = [infoCopy localSA];
            v69 = -[IDSUTunController handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:](selfCopy, "handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:", infoCopy, v67, [localSA2 sa], 6, __n_4, 20);
          }

          else
          {
            [infoCopy vifRef];
            remoteSA2 = [infoCopy remoteSA];
            [remoteSA2 sa];
            localSA2 = [infoCopy localSA];
            [localSA2 sa];
            v69 = NEVirtualInterfaceWriteIPPayload();
          }

          v155 = v69;

          v156 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
          {
            vifName8 = [infoCopy vifName];
            localSA3 = [infoCopy localSA];
            remoteSA3 = [infoCopy remoteSA];
            v160 = [NSData dataWithBytesNoCopy:__n_4 length:20 freeWhenDone:0];
            LODWORD(buf[0]) = 138413314;
            *(buf + 4) = vifName8;
            WORD6(buf[0]) = 2112;
            *(buf + 14) = localSA3;
            WORD3(buf[1]) = 2112;
            *(&buf[1] + 1) = remoteSA3;
            LOWORD(buf[2]) = 1024;
            *(&buf[2] + 2) = v155;
            WORD3(buf[2]) = 2112;
            *(&buf[2] + 1) = v160;
            _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "%@: write generated reset %@ <= %@ neRet=%d\n\t\t<= data[%@]", buf, 0x30u);
          }
        }

        if (flush)
        {
          linkManager = selfCopy->_linkManager;
          deviceUniqueID = [infoCopy deviceUniqueID];
          cbuuid = [infoCopy cbuuid];
          [(IDSLinkManager *)linkManager flushBuffer:0 toDeviceUniqueID:deviceUniqueID cbuuid:cbuuid];
        }

        goto LABEL_237;
      }

      v44 = 0;
    }

    compressionInfo = [v177 compressionInfo];
    if ([compressionInfo state] <= 1)
    {
    }

    else
    {
      compressionInfo2 = [v177 compressionInfo];
      v49 = [compressionInfo2 localContext] == 0;

      if (!v49)
      {
        compressionInfo3 = [v177 compressionInfo];
        localCID = [compressionInfo3 localCID];

        *__n_4 = payload;
        compressionInfo4 = [v177 compressionInfo];
        [compressionInfo4 localContext];
        v52 = IDSHC_Compress();

        if (v52)
        {
          v53 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            vifName9 = [infoCopy vifName];
            LODWORD(buf[0]) = 138412546;
            *(buf + 4) = vifName9;
            WORD6(buf[0]) = 2048;
            *(buf + 14) = v52;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@: IDSHC_Compress failed (%lu), revert back to un-compressed", buf, 0x16u);
          }
        }

        v55 = *__n_4;
        if (localCID < 0x10)
        {
          --*__n_4;
          __n = length + 1;
          if (protocolCopy == 6)
          {
            v70 = -96;
          }

          else
          {
            v70 = 0x80;
          }

          *(v55 - 1) = localCID | v70;
        }

        else
        {
          *__n_4 -= 3;
          __n = length + 3;
          if (protocolCopy == 6)
          {
            v56 = -80;
          }

          else
          {
            v56 = -112;
          }

          *(v55 - 3) = v56;
          *(*__n_4 + 1) = BYTE1(localCID);
          *(*__n_4 + 2) = localCID;
        }

        v71 = v52 == 0;
        v72 = _IDSLinkPacketBufferCreate();
        memcpy(*v72, *__n_4, __n);
        v72[2] = __n;
        if (v71)
        {
          v74 = 1;
          goto LABEL_106;
        }

        v57 = localCID;
LABEL_102:
        localCID = v57;
        if (protocolCopy == 6)
        {
          tcp6checksum(0, 0, payload, length);
          v73 = 32;
        }

        else
        {
          udp6checksum(0, 0, payload, length);
          v73 = 0;
        }

        v72 = _IDSLinkPacketBufferCreate();
        **v72 = v73;
        memcpy((*v72 + 1), payload, length);
        v74 = 0;
        v72[2] = length + 1;
LABEL_106:
        logPackets = selfCopy->_logPackets;
        if (protocolCopy == 17 && logPackets)
        {
          qword_100CBF428 = mach_continuous_time() - v44;
          logPackets = selfCopy->_logPackets;
        }

        if ((v74 & logPackets) == 1)
        {
          v76 = v72[2];
          v77 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            if (v76 >= 0x14)
            {
              v78 = 20;
            }

            else
            {
              v78 = v76;
            }

            vifName10 = [infoCopy vifName];
            v80 = [NSData dataWithBytesNoCopy:*v72 length:v78 freeWhenDone:0];
            v81 = v80;
            LODWORD(buf[0]) = 138414338;
            v82 = " ...";
            *(buf + 4) = vifName10;
            *(buf + 14) = 1;
            WORD6(buf[0]) = 1024;
            if (v76 < 0x15)
            {
              v82 = "";
            }

            WORD1(buf[1]) = 1024;
            DWORD1(buf[1]) = protocolCopy == 6;
            WORD4(buf[1]) = 1024;
            *(&buf[1] + 10) = localCID;
            HIWORD(buf[1]) = 1024;
            LODWORD(buf[2]) = v175;
            WORD2(buf[2]) = 1024;
            *(&buf[2] + 6) = v174;
            WORD5(buf[2]) = 2048;
            *(&buf[2] + 12) = v76;
            WORD2(buf[3]) = 2112;
            *(&buf[3] + 6) = v80;
            HIWORD(buf[3]) = 2080;
            *&buf[4] = v82;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "%@: outgoing header (compressed_bit:%d protocol_bit:%d local_cid:%d s_port:%u d_port:%u)\n\t\t=> c(%luB): [%@%s]", buf, 0x48u);
          }
        }

        if (selfCopy->_encryptionEnabled && [v177 encryptionEnabled])
        {
          seqSend = [v177 seqSend];
          v84 = sub_10050CB8C([v177 encryptionState], seqSend, *v72, v72[2], 1);
          if (v84)
          {
            portMap = [infoCopy portMap];
            addressPair = [v177 addressPair];
            localAddress = [addressPair localAddress];
            -[IDSUTunController releasePortIfNecessary:port:](selfCopy, "releasePortIfNecessary:port:", portMap, [localAddress saPortHostOrder]);

            v88 = [NSString stringWithFormat:@"Encryption failure: %u", v84];
            [(IDSUTunController *)selfCopy removeConnection:v177 fromDeviceConnectionInfo:infoCopy removeCode:5301 removeReason:v88];

            _IDSLinkPacketBufferRelease();
            if (flush)
            {
              v89 = selfCopy->_linkManager;
              deviceUniqueID2 = [infoCopy deviceUniqueID];
              cbuuid2 = [infoCopy cbuuid];
              [(IDSLinkManager *)v89 flushBuffer:0 toDeviceUniqueID:deviceUniqueID2 cbuuid:cbuuid2];
            }

            goto LABEL_237;
          }

          IDSLinkPacketBufferAddBufferStart();
          v92 = *v72;
          v93 = *v72;
          **v72 = 224;
          seqSend2 = [v177 seqSend];
          v93[2] = HIBYTE(seqSend2);
          v92[3] = seqSend2;
          sSRCSend = [v177 SSRCSend];
          v92[4] = HIBYTE(sSRCSend);
          v92[5] = BYTE2(sSRCSend);
          v92[6] = BYTE1(sSRCSend);
          v92[7] = sSRCSend;
          [v177 setSeqSend:(seqSend + 1)];
        }

        *(v72 + 38) = [v177 isCloudEnabled];
        *(v72 + 39) = [v177 isControlChannel];
        *(v72 + 41) = [v177 isDefaultPairedDevice];
        if (v72[2] > 675)
        {
          isRealTime = 0;
        }

        else
        {
          isRealTime = [v177 isRealTime];
        }

        *(v72 + 42) = isRealTime;
        if (*(v72 + 39) == 1)
        {
          v97 = 99;
          goto LABEL_130;
        }

        *(v72 + 305) = [v177 sdNumberNoClose];
        priority = [v177 priority];
        if (priority <= 299)
        {
          if (!priority)
          {
            v97 = 45;
            goto LABEL_130;
          }

          if (priority != 100)
          {
            if (priority == 200)
            {
              v97 = 100;
              goto LABEL_130;
            }

            goto LABEL_222;
          }

          v97 = 115;
        }

        else if (priority > 699)
        {
          if (priority != 700)
          {
            if (priority == 800)
            {
              v97 = 97;
              goto LABEL_130;
            }

            goto LABEL_222;
          }

          v97 = 118;
        }

        else
        {
          if (priority != 300)
          {
            if (priority == 600)
            {
              v97 = 114;
              goto LABEL_130;
            }

LABEL_222:
            v97 = 63;
            goto LABEL_130;
          }

          v97 = 117;
        }

LABEL_130:
        *(v72 + 1217) = v97;
        if (qword_100CBF438 != -1)
        {
          sub_10092D8D8();
        }

        v98 = mach_continuous_time();
        v99 = *&qword_100CBF3C0;
        addressPair2 = [v177 addressPair];
        localAddress2 = [addressPair2 localAddress];
        v102 = v99 * v98;
        if ([localAddress2 saPortHostOrder] == 1024)
        {
        }

        else
        {
          addressPair3 = [v177 addressPair];
          remoteAddress = [addressPair3 remoteAddress];
          v106 = [remoteAddress saPortHostOrder] == 1024;

          if (!v106 && [v177 priority] != 300)
          {
            highPriorityConnectionSendingSet = [infoCopy highPriorityConnectionSendingSet];
            v108 = [highPriorityConnectionSendingSet count] == 0;

            if (!v108)
            {
              [v177 lastSuccessfulSentTime];
              v110 = protocolCopy != 6;
              if (v102 - v109 > 0.5)
              {
                v110 = 1;
              }

              if (!v110)
              {
                if (v172 == length)
                {
                  if (!selfCopy->_logPackets)
                  {
                    goto LABEL_150;
                  }

                  v111 = +[IDSFoundationLog utunController];
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                  {
                    vifName11 = [infoCopy vifName];
                    localConnectionGUID = [v177 localConnectionGUID];
                    highPriorityConnectionSendingSet2 = [infoCopy highPriorityConnectionSendingSet];
                    LODWORD(buf[0]) = 138412802;
                    *(buf + 4) = vifName11;
                    WORD6(buf[0]) = 2112;
                    *(buf + 14) = localConnectionGUID;
                    WORD3(buf[1]) = 2112;
                    *(&buf[1] + 1) = highPriorityConnectionSendingSet2;
                    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%@: passing through low priority ack for [%@] - current busy high priority set(%@)", buf, 0x20u);
                  }
                }

                else
                {
                  if (!selfCopy->_logPackets)
                  {
                    goto LABEL_150;
                  }

                  v111 = +[IDSFoundationLog utunController];
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                  {
                    vifName12 = [infoCopy vifName];
                    localConnectionGUID2 = [v177 localConnectionGUID];
                    highPriorityConnectionSendingSet3 = [infoCopy highPriorityConnectionSendingSet];
                    LODWORD(buf[0]) = 138412802;
                    *(buf + 4) = vifName12;
                    WORD6(buf[0]) = 2112;
                    *(buf + 14) = localConnectionGUID2;
                    WORD3(buf[1]) = 2112;
                    *(&buf[1] + 1) = highPriorityConnectionSendingSet3;
                    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%@: cannot send low priority [%@] - current busy high priority set(%@)", buf, 0x20u);
                  }
                }

LABEL_150:
                stateFlags = [v177 stateFlags];
                v116 = BYTE4(v173) & 2;
                v117 = v173 + length - v172 + (v116 >> 1);
                if ((stateFlags & 0x40) != 0)
                {
                  if (v117 - [v177 expectedNextOutgoingSequenceNumber] <= 0x3FFFFFFE)
                  {
                    [v177 setExpectedNextOutgoingSequenceNumber:v117];
                  }
                }

                else
                {
                  [v177 setStateFlags:stateFlags | 0x40];
                  [v177 setExpectedNextOutgoingSequenceNumber:v117];
                  [v177 setConnectionSetupStartTime:sub_10062118C()];
                  v118 = +[IDSFoundationLog utunController];
                  if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf[0]) = 138412290;
                    *(buf + 4) = v177;
                    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "First packet for connection %@", buf, 0xCu);
                  }
                }

                v120 = selfCopy;
                if (selfCopy->_logPackets)
                {
                  v121 = +[IDSFoundationLog utunController];
                  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
                  {
                    v122 = v116 == 0;
                    vifName13 = [infoCopy vifName];
                    v124 = "S";
                    if (v122)
                    {
                      v124 = "";
                    }

                    v176 = v124;
                    if ((v173 & 0x400000000) != 0)
                    {
                      v125 = "R";
                    }

                    else
                    {
                      v125 = "";
                    }

                    if ((v173 & 0x800000000) != 0)
                    {
                      v126 = "P";
                    }

                    else
                    {
                      v126 = "";
                    }

                    if ((v173 & 0x1000000000) != 0)
                    {
                      v127 = ".";
                    }

                    else
                    {
                      v127 = "";
                    }

                    expectedNextOutgoingSequenceNumber = [v177 expectedNextOutgoingSequenceNumber];
                    LODWORD(buf[0]) = 138414082;
                    *(buf + 4) = vifName13;
                    WORD6(buf[0]) = 1024;
                    *(buf + 14) = length;
                    WORD1(buf[1]) = 1024;
                    DWORD1(buf[1]) = HIDWORD(v173);
                    WORD4(buf[1]) = 2080;
                    *(&buf[1] + 10) = v176;
                    WORD1(buf[2]) = 2080;
                    *(&buf[2] + 4) = v125;
                    WORD6(buf[2]) = 2080;
                    *(&buf[2] + 14) = v126;
                    WORD3(buf[3]) = 2080;
                    *(&buf[3] + 1) = v127;
                    LOWORD(buf[4]) = 1024;
                    *(&buf[4] + 2) = expectedNextOutgoingSequenceNumber;
                    _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "%@: Sending TCP %uB (flags[%02X] [%s%s%s%s])) noseq:%08x", buf, 0x46u);
                  }

                  v120 = selfCopy;
                }

                if (!v120->_isSimulateResetLoopTest && (BYTE4(v173) & 0x12) == 2)
                {
                  controlChannel = [infoCopy controlChannel];
                  didReceiveReestablishmentRequest = [controlChannel didReceiveReestablishmentRequest];

                  if (didReceiveReestablishmentRequest)
                  {
                    v131 = sub_10062118C();
                    controlChannel2 = [infoCopy controlChannel];
                    [controlChannel2 reestablishmentRequestReceiveTime];
                    v134 = v131 - v133 < 30.0;

                    if (v134)
                    {
                      v135 = +[IDSFoundationLog utunController];
                      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
                      {
                        LODWORD(buf[0]) = 138412290;
                        *(buf + 4) = v177;
                        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "Dropped SYN and wait for outgoing SYNACK for connection %@", buf, 0xCu);
                      }

                      _IDSLinkPacketBufferRelease();
                      goto LABEL_237;
                    }

                    controlChannel3 = [infoCopy controlChannel];
                    [controlChannel3 setDidReceiveReestablishmentRequest:0];

                    v137 = +[IDSFoundationLog utunController];
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                    {
                      LODWORD(buf[0]) = 138412290;
                      *(buf + 4) = v177;
                      _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Reset control channel didReceiveReestablishmentRequest for connection %@", buf, 0xCu);
                    }
                  }
                }

LABEL_190:
                [v177 setPacketsSent:{objc_msgSend(v177, "packetsSent") + 1}];
                [v177 setBytesSent:{objc_msgSend(v177, "bytesSent") + v72[2]}];
                if (protocolCopy == 17)
                {
                  kdebug_trace();
                }

                *(v72 + 40) = flush;
                v138 = [(IDSLinkManager *)selfCopy->_linkManager sendPacketBuffer:v72 toDeviceUniqueID:infoCopy[2] cbuuid:infoCopy[1]];
                v139 = v138;
                if (selfCopy->_isSimulateResetLoopTest && (BYTE4(v173) & 0x12) == 2)
                {
                  v140 = sub_10000FAC0(&selfCopy->_deviceConnectionInfoTableByCbuuid, kIDSDefaultPairedDeviceID);
                  v141 = sub_1006C2FC8([infoCopy connectionsTableByLocalRemotePortKey], 67109888);
                  v142 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(buf[0]) = 0;
                    _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "Custom Test 3 - reset one more time", buf, 2u);
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

                  [(IDSUTunController *)selfCopy resetTCPConnection:v141 forDeviceConnectionInfo:v140];
                  selfCopy->_isSimulateResetLoopTest = 0;

                  goto LABEL_237;
                }

                if (v138 <= 5)
                {
                  if (!v138)
                  {
                    [v177 setLastSuccessfulSentTime:v102];
                    outgoingStallDetector = [v177 outgoingStallDetector];

                    if (outgoingStallDetector)
                    {
                      outgoingStallDetector2 = [v177 outgoingStallDetector];
                      [outgoingStallDetector2 consumeBytes:length];
                    }

                    if (protocolCopy == 17 && selfCopy->_logPackets)
                    {
                      v150 = sub_10062118C();
                      v151 = qword_100CD3D68;
                      v152 = length - 8;
                      v153 = [IDSUTunTimingLogger outgoingEventWithTimestamp:length - 8 duration:v150 processTime:v150 - qword_100CBF410 * *&qword_100CBF3C0 compressionTime:*&qword_100CBF3C0 * qword_100CBF420 sendTime:*&qword_100CBF3C0 * qword_100CBF428 bytes:v150 - qword_100CBF418 * *&qword_100CBF3C0];
                      [v151 addEvent:v153];

                      if (sub_10062118C() - *&qword_100CBF3E0 > 0.5)
                      {
                        memset(&buf[2], 170, 0x558uLL);
                        uuid_generate(&xmmword_100CBF3E8);
                        uuid_generate(&qword_100CBF3F8);
                        buf[0] = xmmword_100CBF3E8;
                        buf[1] = *&qword_100CBF3F8;
                        if (v152 < 0x21)
                        {
                          v152 = 32;
                        }

                        else
                        {
                          arc4random_buf(&buf[2], v152);
                        }

                        qword_100CBF408 = sub_10062118C();
                        v167 = send([v177 sdCopy], buf, v152, 0);
                        if (v167 == v152)
                        {
                          byte_100CBF3D8 = 1;
                        }

                        else
                        {
                          v168 = *__error();
                          v169 = +[IDSFoundationLog utunController];
                          if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
                          {
                            *__n_4 = 134218496;
                            *&__n_4[4] = v167;
                            *&__n_4[12] = 1024;
                            *&__n_4[14] = v152;
                            *&__n_4[18] = 1024;
                            v181 = v168;
                            _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "cannot inject timing test packet (%zd != %d) (%d)", __n_4, 0x18u);
                          }
                        }
                      }
                    }

                    goto LABEL_237;
                  }

                  if (v138 != 1)
                  {
                    goto LABEL_237;
                  }
                }

                else
                {
                  if (v138 == 6)
                  {
LABEL_205:
                    v143 = +[IDSFoundationLog utunController];
                    if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                    {
                      utunSocket = [infoCopy utunSocket];
                      LODWORD(buf[0]) = 67109376;
                      DWORD1(buf[0]) = v139;
                      WORD4(buf[0]) = 1024;
                      *(buf + 10) = utunSocket;
                      _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "[throughput] sendPacketBuffer error %u (s: %d)", buf, 0xEu);
                    }

                    goto LABEL_237;
                  }

                  if (v138 != 13)
                  {
                    if (v138 == 10)
                    {
                      goto LABEL_205;
                    }

LABEL_237:

                    goto LABEL_238;
                  }
                }

                v145 = infoCopy[2079] == 0;
                v146 = +[IDSFoundationLog utunController];
                v147 = os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT);
                if (v145)
                {
                  if (v147)
                  {
                    utunSocket2 = [infoCopy utunSocket];
                    LODWORD(buf[0]) = 67109120;
                    DWORD1(buf[0]) = utunSocket2;
                    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "[throughput] link throttling (s: %d)", buf, 8u);
                  }

                  [infoCopy utunSocket];
                }

                else
                {
                  if (v147)
                  {
                    LOWORD(buf[0]) = 0;
                    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "[throughput] link throttling", buf, 2u);
                  }

                  os_channel_get_fd();
                }

                IDSTransportThreadSuspendSocket();
                if (stop)
                {
                  *stop = 1;
                }

                goto LABEL_237;
              }
            }
          }
        }

        if (protocolCopy != 6)
        {
          if (selfCopy->_logPackets)
          {
            v119 = mach_continuous_time();
            qword_100CBF420 = v119 - qword_100CBF418;
            qword_100CBF418 = v119;
          }

          goto LABEL_190;
        }

        goto LABEL_150;
      }
    }

    v57 = 0;
    goto LABEL_102;
  }

  v15 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    vifName14 = [infoCopy vifName];
    v17 = [NSData dataWithBytesNoCopy:payload length:length freeWhenDone:0];
    LODWORD(buf[0]) = 138412802;
    *(buf + 4) = vifName14;
    WORD6(buf[0]) = 2112;
    *(buf + 14) = v17;
    WORD3(buf[1]) = 2048;
    *(&buf[1] + 1) = length;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: dropping packet %@ of length %zu", buf, 0x20u);
  }

  if (flush)
  {
LABEL_64:
    v41 = selfCopy->_linkManager;
    deviceUniqueID3 = [infoCopy deviceUniqueID];
    cbuuid3 = [infoCopy cbuuid];
    [(IDSLinkManager *)v41 flushBuffer:0 toDeviceUniqueID:deviceUniqueID3 cbuuid:cbuuid3];
  }

LABEL_238:
}

- (void)handleUtunChannelRead:(id)read limit:(unsigned int)limit
{
  readCopy = read;
  [readCopy utunChannel];
  [readCopy utunChannelRxRing];
  v7 = os_channel_available_slot_count();
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = v8;
  v20 = v8;
  v17 = v8;
  v18 = v8;
  v16 = 0;
  if (v7)
  {
    v9 = v7;
    if (limit)
    {
      limitCopy = limit;
    }

    else
    {
      limitCopy = -1;
    }

    if (v7 >= limitCopy)
    {
      v11 = limitCopy;
    }

    else
    {
      v11 = v7;
    }

    if (!os_channel_get_next_slot())
    {
      sub_10092DA08();
    }

    v12 = 1;
    do
    {
      ++readCopy[4166];
      if (WORD1(v17) >= 4uLL && *v18 == 503316480)
      {
        LOBYTE(v15) = v11 == v12;
        [(IDSUTunController *)self handleIPPayload:v18 + 44 bytesLength:WORD1(v17) - 44 source:0 destination:0 upperProtocol:*(v18 + 10) forDeviceConnectionInfo:readCopy flush:v15 callerShouldStop:&v16];
      }

      if (!os_channel_get_next_slot())
      {
        break;
      }

      if (v12 >= v11)
      {
        break;
      }

      ++v12;
    }

    while ((v16 & 1) == 0);
    os_channel_advance_slot();
    if (v16)
    {
      goto LABEL_17;
    }

    utunChannelRxCount = [readCopy utunChannelRxCount];
    v14 = [readCopy utunChannelRxRingSize] >> 1;
    if (v11 < v14)
    {
      v14 = v11;
    }

    if (v9 == 1 || utunChannelRxCount >= v14)
    {
LABEL_17:
      [readCopy setUtunChannelRxCount:0];
      os_channel_sync();
    }
  }
}

- (unsigned)handleUtunChannelWrite:(id)write source:(sockaddr *)source destination:(sockaddr *)destination upperProtocol:(unsigned __int8)protocol bytes:(const void *)bytes bytesLen:(unint64_t)len
{
  writeCopy = write;
  [writeCopy utunChannel];
  [writeCopy utunChannelTxRing];
  v15 = os_channel_available_slot_count();
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v16;
  if (!v15)
  {
    if (writeCopy[2084] == 0.0)
    {
      ignoreUTunChannelWriteSignal = self->_ignoreUTunChannelWriteSignal;
      v17 = +[IDSFoundationLog utunController];
      v24 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (!ignoreUTunChannelWriteSignal)
      {
        if (v24)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "handleUtunChannelWrite: utun has no slots", buf, 2u);
        }

        if (qword_100CBF438 != -1)
        {
          sub_10092D8D8();
        }

        writeCopy[2084] = *&qword_100CBF3C0 * mach_continuous_time();
        os_channel_get_fd();
        IDSTransportThreadResumeSocket();
        goto LABEL_33;
      }

      if (v24)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "handleUtunChannelWrite: utun has no slots but do not arm write signal for testing", buf, 2u);
      }
    }

    else
    {
      if (qword_100CBF438 != -1)
      {
        sub_10092D900();
      }

      v20 = mach_continuous_time();
      v21 = *&qword_100CBF3C0;
      v22 = writeCopy[2084];
      v17 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v29 = v21 * v20 - v22;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "handleUtunChannelWrite: utun has no slots for %0.6lfs", buf, 0xCu);
      }
    }

    goto LABEL_26;
  }

  if (source->sa_family != 30 || destination->sa_family != 30)
  {
    v18 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "problem: handleUtunChannelWrite: address is incorrect - aborting in 1 second", buf, 2u);
    }

    v19 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "problem: handleUtunChannelWrite: address is incorrect - aborting in 1 second", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    sleep(1u);
    if (!isRunningTests())
    {
      abort();
    }

    throwsIDSAbortException();
    goto LABEL_33;
  }

  if (!os_channel_get_next_slot())
  {
    sub_10092DA34();
  }

  MEMORY[0xAAAAAAAAAAAAAAAA] = 503316480;
  MEMORY[0xAAAAAAAAAAAAAAAE] = 0u;
  MEMORY[0xAAAAAAAAAAAAAABE] = 0u;
  MEMORY[0xAAAAAAAAAAAAAACE] = 0;
  MEMORY[0xAAAAAAAAAAAAAAB6] = *&source->sa_data[6];
  MEMORY[0xAAAAAAAAAAAAAAC6] = *&destination->sa_data[6];
  MEMORY[0xAAAAAAAAAAAAAAB2] = bswap32(len) >> 16;
  MEMORY[0xAAAAAAAAAAAAAAB4] = protocol;
  MEMORY[0xAAAAAAAAAAAAAAAE] = 96;
  if (len + 44 > [writeCopy utunChannelMaxSlotSize])
  {
    v17 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&v29 = (len + 44);
      v30 = 2048;
      utunChannelMaxSlotSize = [writeCopy utunChannelMaxSlotSize];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "problem: handleUtunChannelWrite: packet too large %lu > %lu", buf, 0x16u);
    }

LABEL_26:

LABEL_33:
    v25 = 0;
    goto LABEL_34;
  }

  memmove(0xAAAAAAAAAAAAAAD6, bytes, len);
  os_channel_set_slot_properties();
  os_channel_advance_slot();
  os_channel_sync();
  v25 = 1;
LABEL_34:

  return v25;
}

- (BOOL)setupUTunForDeviceConnectionInfo:(id)info
{
  infoCopy = info;
  memset(v116, 170, 20);
  v115 = 0xAAAAAAAAAAAAAAAALL;
  v4 = NEVirtualInterfaceCreate();
  if (v4)
  {
LABEL_7:
    oslog = NEVirtualInterfaceCopyName();
    [infoCopy setVifName:oslog];
    [infoCopy setVifRef:v4];
    LODWORD(v116[2]) = 0;
    v116[1] = 0;
    v115 = 7708;
    v116[0] = 33022;
    arc4random_buf(&v116[1], 8uLL);
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v126 + 14) = v8;
    *v125 = v8;
    v126[0] = v8;
    inet_ntop(30, v116, v125, 0x1Cu);
    v9 = [NSString stringWithUTF8String:v125];
    v10 = [v9 stringByAppendingString:@"%"];
    v11 = [v10 stringByAppendingString:oslog];

    v12 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      vifName = [infoCopy vifName];
      v14 = [IDSSockAddrWrapper wrapperWithSockAddr:&v115];
      *buf = 138412802;
      *&buf[4] = vifName;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      *v118 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: generated [%@] => [%@]", buf, 0x20u);
    }

    v15 = NEVirtualInterfaceDupSocket();
    if ((v15 & 0x80000000) == 0)
    {
      [infoCopy setUtunSocket:v15];
      v16 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        cbuuid = [infoCopy cbuuid];
        *buf = 67109378;
        *&buf[4] = v15;
        *&buf[8] = 2112;
        *&buf[10] = cbuuid;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Get raw socket %d for device %@", buf, 0x12u);
      }

      NEVirtualInterfaceSetReadAutomatically();
      selfCopy2 = self;
      if (!self->_vifUseChannel)
      {
        goto LABEL_35;
      }

      memset(buf, 170, 16);
      v99[0] = 16;
      v114 = 1;
      if (setsockopt(v15, 2, 17, &v114, 4u) != -1)
      {
        if (getsockopt(v15, 2, 18, buf, v99) != -1)
        {
          if (os_channel_attr_create())
          {
            extended = os_channel_create_extended();
            if (extended)
            {
              *&v100.ai_flags = 0;
              *out = 0;
              os_channel_attr_get();
              if (*&v100.ai_flags <= 0x5DCuLL)
              {
                sub_10092DA8C();
              }

              os_channel_attr_get();
              if (!*out)
              {
                sub_10092DA60();
              }

              v20 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *v113 = 0;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "use skywalk channel for utun", v113, 2u);
              }

              [infoCopy setUtunNexusUUID:buf];
              [infoCopy setUtunChannel:extended];
              [infoCopy setUtunChannelMaxSlotSize:v100.ai_flags];
              os_channel_ring_id();
              [infoCopy setUtunChannelTxRing:os_channel_tx_ring()];
              os_channel_ring_id();
              [infoCopy setUtunChannelRxRing:os_channel_rx_ring()];
              [infoCopy setUtunChannelRxRingSize:*out];
              os_channel_attr_destroy();
LABEL_53:
              v43 = NEVirtualInterfaceSetMTU();
              v44 = *__error();
              v45 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                vifName2 = [infoCopy vifName];
                v47 = vifName2;
                if (v43)
                {
                  v48 = 0;
                }

                else
                {
                  v48 = v44;
                }

                *buf = 138413058;
                *&buf[4] = vifName2;
                *&buf[12] = 1024;
                *&buf[14] = 1380;
                *&buf[18] = 1024;
                *&buf[20] = v43;
                *v118 = 1024;
                *&v118[2] = v48;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%@: set mtu=%d %d (%d)", buf, 0x1Eu);
              }

              v49 = NEVirtualInterfaceAddAddress();
              v50 = *__error();
              v51 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
              {
                vifName3 = [infoCopy vifName];
                v53 = vifName3;
                if (v49)
                {
                  v54 = 0;
                }

                else
                {
                  v54 = v50;
                }

                *buf = 138413058;
                *&buf[4] = vifName3;
                *&buf[12] = 2112;
                *&buf[14] = v11;
                *&buf[22] = 1024;
                *v118 = v49;
                *&v118[4] = 1024;
                *&v118[6] = v54;
                _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%@: addaddress [%@] %d (%d)", buf, 0x22u);
              }

              v55 = NEVirtualInterfaceSetRankNever();
              v56 = *__error();
              v57 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                vifName4 = [infoCopy vifName];
                v59 = vifName4;
                if (v55)
                {
                  v60 = 0;
                }

                else
                {
                  v60 = v56;
                }

                *buf = 138412802;
                *&buf[4] = vifName4;
                *&buf[12] = 1024;
                *&buf[14] = v55;
                *&buf[18] = 1024;
                *&buf[20] = v60;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%@: set rank never %d (%d)", buf, 0x18u);
              }

              updated = NEVirtualInterfaceUpdateAdHocService();
              v62 = *__error();
              v63 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                vifName5 = [infoCopy vifName];
                v65 = vifName5;
                if (updated)
                {
                  v66 = 0;
                }

                else
                {
                  v66 = v62;
                }

                *buf = 138412802;
                *&buf[4] = vifName5;
                *&buf[12] = 1024;
                *&buf[14] = updated;
                *&buf[18] = 1024;
                *&buf[20] = v66;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%@: update adhoc service %d (%d)", buf, 0x18u);
              }

              memset(&v100, 0, sizeof(v100));
              *v99 = 0xAAAAAAAAAAAAAAAALL;
              v100.ai_flags = 4;
              v67 = v11;
              v68 = getaddrinfo([v11 UTF8String], 0, &v100, v99);
              v23 = v68 == 0;
              if (v68)
              {
                v69 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  vifName6 = [infoCopy vifName];
                  *buf = 138412290;
                  *&buf[4] = vifName6;
                  _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%@: getaddrinfo failed!!", buf, 0xCu);
                }

                NEVirtualInterfaceInvalidate();
                close(v15);
                CFRelease(v4);
              }

              else
              {
                v71 = [IDSSockAddrWrapper wrapperWithSockAddr:*(*v99 + 32)];
                [infoCopy setLocalSA:v71];

                freeaddrinfo(*v99);
                v72 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  vifName7 = [infoCopy vifName];
                  localSA = [infoCopy localSA];
                  localSA2 = [infoCopy localSA];
                  v76 = *([localSA2 sa6] + 6);
                  *buf = 138412802;
                  *&buf[4] = vifName7;
                  *&buf[12] = 2112;
                  *&buf[14] = localSA;
                  *&buf[22] = 1024;
                  *v118 = v76;
                  _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%@: result localSA: [%@ @ %u]", buf, 0x1Cu);
                }

                localSA3 = [infoCopy localSA];
                v78 = [localSA3 sa6];
                LODWORD(v116[2]) = 0;
                v116[1] = 0;
                v115 = 7708;
                v116[0] = 33022;
                if (v78)
                {
                  LODWORD(v116[2]) = v78[6];
                }

                arc4random_buf(&v116[1], 8uLL);

                v79 = [IDSSockAddrWrapper wrapperWithSockAddr:&v115];
                [infoCopy setRemoteSA:v79];

                *&out[29] = 0xAAAAAAAAAAAAAAAALL;
                *&v80 = 0xAAAAAAAAAAAAAAAALL;
                *(&v80 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *out = v80;
                *&out[16] = v80;
                uuid_unparse_upper([infoCopy selfInstanceID], out);
                v81 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  vifName8 = [infoCopy vifName];
                  cbuuid2 = [infoCopy cbuuid];
                  deviceUniqueID = [infoCopy deviceUniqueID];
                  remoteSA = [infoCopy remoteSA];
                  *buf = 138413570;
                  *&buf[4] = vifName8;
                  *&buf[12] = 2112;
                  *&buf[14] = cbuuid2;
                  *&buf[22] = 2112;
                  *v118 = deviceUniqueID;
                  *&v118[8] = 2112;
                  v119 = remoteSA;
                  v120 = 2080;
                  v121 = out;
                  v122 = 2112;
                  v123 = infoCopy;
                  _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%@: created mapping [%@ / %@] <=> [%@] (selfInstanceID[%s] %@)", buf, 0x3Eu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    vifName9 = [infoCopy vifName];
                    cbuuid3 = [infoCopy cbuuid];
                    deviceUniqueID2 = [infoCopy deviceUniqueID];
                    remoteSA2 = [infoCopy remoteSA];
                    _IDSLogTransport();

                    if (_IDSShouldLog())
                    {
                      vifName10 = [infoCopy vifName];
                      cbuuid4 = [infoCopy cbuuid];
                      deviceUniqueID3 = [infoCopy deviceUniqueID];
                      remoteSA3 = [infoCopy remoteSA];
                      _IDSLogV();
                    }
                  }
                }

                if (infoCopy[2079])
                {
                  os_channel_get_fd();
                }

                v98 = infoCopy;
                v97 = v98;
                IDSTransportThreadAddSocket();
                [v97 setLinkLayerConnected:{-[IDSLinkManager isConnectedToDeviceID:](self->_linkManager, "isConnectedToDeviceID:", v97[1])}];
              }

              goto LABEL_90;
            }

            v114 = 0;
            setsockopt(v15, 2, 17, &v114, 4u);
            self->_vifUseChannel = 0;
            os_channel_attr_destroy();
            goto LABEL_34;
          }

          v25 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v100.ai_flags) = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "setupUTunForDeviceConnectionInfo: os_channel_attr_create failed", &v100, 2u);
          }

LABEL_25:
          v23 = 0;
LABEL_90:

          goto LABEL_91;
        }

        v114 = 0;
        setsockopt(v15, 2, 17, &v114, 4u);
        self->_vifUseChannel = 0;
      }

LABEL_34:
      selfCopy2 = self;
LABEL_35:
      if (selfCopy2->_vifShouldReadMultiple)
      {
        v107 = _NSConcreteStackBlock;
        v108 = 3221225472;
        v109 = sub_10062A7CC;
        v110 = &unk_100BE2AD0;
        v111 = selfCopy2;
        v26 = infoCopy;
        v112 = v26;
        MultipleIPPayloadsHandler = NEVirtualInterfaceSetReadMultipleIPPayloadsHandler();
        v28 = *__error();
        v29 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v26[1];
          if (MultipleIPPayloadsHandler)
          {
            v31 = 0;
          }

          else
          {
            v31 = v28;
          }

          *buf = 138412802;
          *&buf[4] = v30;
          *&buf[12] = 1024;
          *&buf[14] = MultipleIPPayloadsHandler;
          *&buf[18] = 1024;
          *&buf[20] = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@: SetReadMultipleIPPayloadHandler %d (%d)", buf, 0x18u);
        }

        v32 = NEVirtualInterfaceSetMaxPendingPackets();
        v33 = *__error();
        v34 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = v26[1];
          if (v32)
          {
            v36 = 0;
          }

          else
          {
            v36 = v33;
          }

          *buf = 138412802;
          *&buf[4] = v35;
          *&buf[12] = 1024;
          *&buf[14] = v32;
          *&buf[18] = 1024;
          *&buf[20] = v36;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@: SetMaxPendingPackets %d (%d)", buf, 0x18u);
        }
      }

      else
      {
        v101 = _NSConcreteStackBlock;
        v102 = 3221225472;
        v103 = sub_10062A860;
        v104 = &unk_100BE2AF8;
        v105 = selfCopy2;
        v37 = infoCopy;
        v106 = v37;
        IPPayloadHandler = NEVirtualInterfaceSetReadIPPayloadHandler();
        v39 = *__error();
        v40 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v37[1];
          if (IPPayloadHandler)
          {
            v42 = 0;
          }

          else
          {
            v42 = v39;
          }

          *buf = 138412802;
          *&buf[4] = v41;
          *&buf[12] = 1024;
          *&buf[14] = IPPayloadHandler;
          *&buf[18] = 1024;
          *&buf[20] = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@: SetReadIPPayloadHandler %d (%d)", buf, 0x18u);
        }
      }

      goto LABEL_53;
    }

    v21 = *__error();
    v22 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "NEVirtualInterfaceDupSocket failed with error(%d)", buf, 8u);
    }

    goto LABEL_25;
  }

  v5 = 1;
  while (1)
  {
    v6 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      cbuuid5 = [infoCopy cbuuid];
      *buf = 138412546;
      *&buf[4] = cbuuid5;
      *&buf[12] = 1024;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NEVICreate failed for %@! - %d try", buf, 0x12u);
    }

    if (v5 == 3)
    {
      break;
    }

    usleep(0x1F4u);
    v4 = NEVirtualInterfaceCreate();
    ++v5;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  oslog = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    cbuuid6 = [infoCopy cbuuid];
    *buf = 138412546;
    *&buf[4] = cbuuid6;
    *&buf[12] = 1024;
    *&buf[14] = 3;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "NEVICreate failed for %@! after %d tries", buf, 0x12u);
  }

  v23 = 0;
LABEL_91:

  return v23;
}

- (void)startDataChannelWithDevice:(id)device genericConnection:(id)connection serviceConnectorService:(id)service
{
  deviceCopy = device;
  connectionCopy = connection;
  serviceCopy = service;
  v10 = [(IDSUTunController *)self stringComponentsForServiceConnectorService:serviceCopy];
  if ([v10 count] <= 2)
  {
    v11 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      vifName = [deviceCopy vifName];
      *buf = 138412546;
      *&buf[4] = vifName;
      *&buf[12] = 2112;
      *&buf[14] = serviceCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: service string %@ needs to have 3 components", buf, 0x16u);
    }
  }

  v13 = [v10 objectAtIndex:0];
  v14 = [v10 objectAtIndex:1];
  v15 = [v10 objectAtIndex:2];
  if ([v14 isEqualToString:@"localdelivery"])
  {
    v16 = 2;
  }

  else
  {
    v16 = 4;
  }

  v139 = v16;
  v17 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    vifName2 = [deviceCopy vifName];
    serviceConnectionCache = [deviceCopy serviceConnectionCache];
    *buf = 138413058;
    *&buf[4] = vifName2;
    *&buf[12] = 2112;
    *&buf[14] = connectionCopy;
    v162 = 2112;
    v163 = serviceCopy;
    v164 = 2112;
    v165 = serviceConnectionCache;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: startDataChannelWithDevice called with generic connection %@ for service %@ connection-cache %@", buf, 0x2Au);
  }

  if ([v14 isEqualToString:@"localdelivery"])
  {
    v20 = [v15 containsString:@"Cloud"];
  }

  else
  {
    v20 = 0;
  }

  v144 = v13;
  v145 = serviceCopy;
  v129 = v20;
  if (![deviceCopy shouldUseServiceConnector])
  {
    v124 = 0;
    v146 = 0;
    v143 = 0;
    v136 = 4;
    v22 = serviceCopy;
    v23 = v13;
    goto LABEL_36;
  }

  if ([v14 isEqualToString:@"localdelivery"] && (objc_msgSend(v15, "containsString:", @"-C") & 1) != 0)
  {
    v21 = 3;
  }

  else
  {
    v21 = 4;
  }

  v136 = v21;
  if (_IDSSupportsDirectMessaging() && [connectionCopy isDirectMsgChannel])
  {
    if ([connectionCopy dataProtectionClass] == 2)
    {
      v136 = 4;
    }

    else
    {
      dataProtectionClass = [connectionCopy dataProtectionClass];
      v25 = v136;
      if (!dataProtectionClass)
      {
        v25 = 3;
      }

      v136 = v25;
    }
  }

  v146 = [NSString stringWithUTF8String:"61314"];
  serviceConnector = [deviceCopy serviceConnector];
  if (v20)
  {
    v27 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      vifName3 = [deviceCopy vifName];
      *buf = 138412546;
      *&buf[4] = vifName3;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@: calling internalStartConnectionWithEndpoint with cloud option for service %@", buf, 0x16u);
    }

    v29 = [NSString stringWithUTF8String:"61315"];

    cloudServiceConnector = [deviceCopy cloudServiceConnector];

    v146 = v29;
    serviceConnector = cloudServiceConnector;
  }

  v31 = [NSUUID alloc];
  v32 = +[IDSPairingManager sharedInstance];
  pairedDeviceUUIDString = [v32 pairedDeviceUUIDString];
  v34 = [v31 initWithUUIDString:pairedDeviceUUIDString];

  if (v34)
  {
    selfCopy = self;
    v143 = serviceConnector;
    v126 = v15;
    v36 = v14;
    v37 = connectionCopy;
    v38 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v34];
    v39 = [[NREndpoint alloc] initWithDeviceIdentifier:v38 portString:v146 dataProtectionClass:v136 service:v145];
    usesASQUIC = [v39 usesASQUIC];
    v41 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = @"NO";
      if (usesASQUIC)
      {
        v42 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v145;
      *&buf[12] = 2112;
      *&buf[14] = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "startDataChannelWithDevice:service %@, usesASQUIC: %@", buf, 0x16u);
    }

    v124 = usesASQUIC;

    copyEndpoint = [v39 copyEndpoint];
    v146 = copyEndpoint;
    connectionCopy = v37;
    v22 = v145;
    v23 = v144;
    v14 = v36;
    v15 = v126;
    self = selfCopy;
LABEL_36:
    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_10062BC60;
    v150[3] = &unk_100BE2B98;
    v44 = deviceCopy;
    v151 = v44;
    v45 = connectionCopy;
    v152 = v45;
    v153 = v23;
    v154 = v14;
    v158 = v139;
    v140 = v15;
    v155 = v140;
    selfCopy2 = self;
    v46 = v22;
    v157 = v46;
    v47 = objc_retainBlock(v150);
    v135 = v14;
    selfCopy3 = self;
    if ([v44 shouldUseServiceConnector])
    {
      v123 = connectionCopy;
      if (v45)
      {
        serviceConnectionCache2 = [v44 serviceConnectionCache];
        v49 = v46;
        v50 = [serviceConnectionCache2 objectForKey:v46];

        v122 = v50;
        if (v50)
        {
          v51 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            vifName4 = [v44 vifName];
            *buf = 138412802;
            *&buf[4] = vifName4;
            *&buf[12] = 2112;
            *&buf[14] = v122;
            v162 = 2112;
            v163 = v49;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%@: found service connection %@ in cache for service %@", buf, 0x20u);
          }

          addressPair3 = v122;
          [v45 setServiceConnection:v122];
          serviceConnectionCache3 = [v44 serviceConnectionCache];
          [serviceConnectionCache3 removeObjectForKey:v49];

          [v45 socketTrafficClass];
          v55 = TrafficClassForIDSOpenSocketPriorityLevel();
          (v47[2])(v47, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, v122, v55, 0);
          connectionCopy = v123;
          serviceConnector = v143;
          v56 = v144;
          goto LABEL_64;
        }

        v46 = v49;
        if ([v45 protocol] == 17)
        {
          v127 = v15;
          v121 = v47;
          if (v124)
          {
            v69 = [IDSGenericConnectionID idWithAccount:@"idstest" service:@"localdelivery" name:@"UTunDelivery-Default-Urgent-D-Relay"];
            connectionsByID = [v44 connectionsByID];
            v137 = v69;
            v71 = [connectionsByID objectForKey:v69];

            v142 = v71;
            serviceConnection = [v71 serviceConnection];
            if (serviceConnection)
            {
              selfCopy3->_isocPipeAssertedForRelayConnection = 1;
              v73 = im_primary_queue();
              dispatch_async(v73, &stru_100BE2BB8);

              v74 = nw_connection_copy_parameters(serviceConnection);
              v75 = nw_protocol_copy_quic_definition();
              v76 = nw_parameters_copy_protocol_options_for_definition();

              nw_quic_stream_set_is_datagram();
              v77 = +[IDSFoundationLog utunController];
              serviceConnector = v143;
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "IDSUTunController:startDataChannelWithDevice:nw_quic_set_phone_call_relay_optimization", buf, 2u);
              }

              v132 = v76;
              nw_quic_set_phone_call_relay_optimization();
              v78 = +[IDSFoundationLog utunController];
              connectionCopy = v123;
              if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "IDSUTunController:startDataChannelWithDevice:nw_connection_create_with_connection", buf, 2u);
              }

              v79 = nw_connection_create_with_connection();
              v80 = 0;
            }

            else
            {
              v74 = [NSString stringWithFormat:@"relay connection doesn't exist for %@", v49];
              v132 = [NSDictionary dictionaryWithObject:v74 forKey:NSLocalizedDescriptionKey];
              v80 = [NSError errorWithDomain:@"IDSUTun" code:5071 userInfo:?];
              v79 = 0;
              connectionCopy = v123;
              serviceConnector = v143;
            }
          }

          else
          {
            v134 = v10;
            addressPair = [v45 addressPair];
            remoteAddress = [addressPair remoteAddress];
            v103 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", [remoteAddress saPortHostOrder]);

            v130 = v45;
            addressPair2 = [v45 addressPair];
            localAddress = [addressPair2 localAddress];
            v106 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", [localAddress saPortHostOrder]);

            v107 = [NSUUID alloc];
            v108 = +[IDSPairingManager sharedInstance];
            pairedDeviceUUIDString2 = [v108 pairedDeviceUUIDString];
            v110 = [v107 initWithUUIDString:pairedDeviceUUIDString2];

            v125 = v110;
            v74 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v110];
            v137 = v103;
            v111 = [[NREndpoint alloc] initWithDeviceIdentifier:v74 portString:v103 dataProtectionClass:4];
            v142 = v106;
            v112 = [[NRParametersPhoneCallRelay alloc] initWithLocalPort:v106];
            copyParameters = [v112 copyParameters];
            v132 = v111;
            copyEndpoint2 = [v111 copyEndpoint];
            v79 = nw_connection_create(copyEndpoint2, copyParameters);
            v115 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              vifName5 = [v44 vifName];
              *buf = 138413570;
              *&buf[4] = vifName5;
              *&buf[12] = 2112;
              *&buf[14] = v79;
              v162 = 2112;
              v163 = v49;
              v164 = 2112;
              v165 = copyEndpoint2;
              v166 = 2112;
              v167 = v142;
              v168 = 2112;
              v169 = v137;
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%@: create udp connection %@ for service %@ endpoint %@ localPort %@ remotePort %@", buf, 0x3Eu);
            }

            v80 = 0;
            connectionCopy = v123;
            serviceConnection = v125;
            v10 = v134;
            serviceConnector = v143;
            v45 = v130;
          }

          if (!v79)
          {
            v117 = [NSString stringWithFormat:@"failed to create udp connection for %@", v49];
            v118 = [NSDictionary dictionaryWithObject:v117 forKey:NSLocalizedDescriptionKey];
            v119 = [NSError errorWithDomain:@"IDSUTun" code:5071 userInfo:v118];

            serviceConnector = v143;
            v80 = v119;
            connectionCopy = v123;
          }

          [v45 socketTrafficClass];
          v120 = TrafficClassForIDSOpenSocketPriorityLevel();
          v47 = v121;
          (v121[2])(v121, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, v79, v120, v80);

          v15 = v127;
          addressPair3 = 0;
          v56 = v144;
          goto LABEL_64;
        }
      }

      v133 = v10;
      v128 = v15;
      [v45 setServiceConnector:v143];
      [v45 setDefaultPairedDeviceEndpoint:v146];
      v81 = [NSUUID alloc];
      v82 = +[IDSPairingManager sharedInstance];
      pairedDeviceUUIDString3 = [v82 pairedDeviceUUIDString];
      v84 = [v81 initWithUUIDString:pairedDeviceUUIDString3];

      v85 = v84;
      v86 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v84];
      v87 = [NRParametersServiceConnection alloc];
      v159 = NRParametersOptionAllowsQR;
      v88 = [NSNumber numberWithBool:v129];
      v160 = v88;
      v89 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
      v90 = [v87 initWithDeviceIdentifier:v86 dataProtectionClass:v136 options:v89];
      v91 = v45;
      v92 = v90;

      copyParameters2 = [v92 copyParameters];
      if (v124)
      {
        if ([v140 containsString:@"Relay"])
        {
          v138 = v46;
          v94 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v140;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "IDSUTunController:startDataChannelWithDevice: nw_parameters_set_attach_protocol_listener for %@", buf, 0xCu);
          }

          nw_parameters_set_attach_protocol_listener();
          v95 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v140;
            _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "IDSUTunController:startDataChannelWithDevice: nw_quic_connection_set_max_datagram_frame_size for %@", buf, 0xCu);
          }

          v96 = nw_parameters_copy_default_protocol_stack(copyParameters2);
          iterate_block[0] = _NSConcreteStackBlock;
          iterate_block[1] = 3221225472;
          iterate_block[2] = sub_10062D70C;
          iterate_block[3] = &unk_100BE2BE0;
          v149 = v140;
          nw_protocol_stack_iterate_application_protocols(v96, iterate_block);

          v46 = v138;
        }

        if ([v91 shouldSetAllowlistUUIDForStreamingSocket])
        {
          v97 = [NSUUID alloc];
          v98 = v46;
          v99 = [v97 initWithUUIDString:NRParametersWhitelistedAppUUIDString];
          *buf = 0;
          *&buf[8] = 0;
          [v99 getUUIDBytes:buf];
          nw_parameters_set_e_proc_uuid();

          v46 = v98;
        }
      }

      nw_parameters_set_traffic_class();
      uTF8String = [v46 UTF8String];
      [v91 socketTrafficClass];
      serviceConnector = v143;
      [(IDSUTunController *)self internalStartConnectionWithEndpoint:v146 service:uTF8String parameters:copyParameters2 serviceConnector:v143 trafficClass:TrafficClassForIDSOpenSocketPriorityLevel() completionHandler:v47];

      connectionCopy = v123;
      v56 = v144;
      v15 = v128;
      v10 = v133;
      addressPair3 = v85;
      goto LABEL_64;
    }

    isa = v44[1].isa;
    addressPair3 = [v45 addressPair];
    localAddress2 = [addressPair3 localAddress];
    [v45 addressPair];
    v59 = v58 = connectionCopy;
    remoteAddress2 = [v59 remoteAddress];
    v61 = v47;
    v62 = v10;
    v63 = v15;
    protocol = [v45 protocol];
    [v45 priority];
    v65 = TrafficClassForIDSOpenSocketPriorityLevel();
    v66 = protocol;
    v15 = v63;
    v10 = v62;
    v47 = v61;
    [(IDSUTunController *)selfCopy3 internalOpenSocketWithDestination:isa localSA:localAddress2 remoteSA:remoteAddress2 protocol:v66 trafficClass:v65 completionHandler:v61];

    connectionCopy = v58;
    v56 = v144;

    serviceConnector = v143;
LABEL_64:

    v67 = v151;
    v14 = v135;
    goto LABEL_65;
  }

  v67 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    vifName6 = [deviceCopy vifName];
    *buf = 138412290;
    *&buf[4] = vifName6;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%@: Asked to set up a connection when we dont have a paired device!  Aborting...", buf, 0xCu);
  }

  v56 = v13;
LABEL_65:
}

- (BOOL)setupIPsecLinkForDeviceConnectionInfo:(id)info
{
  infoCopy = info;
  [infoCopy setShouldUseServiceConnector:1];
  [infoCopy setVifName:@"IPsecLink"];
  v11 = 7708;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v15 = 0;
  v4 = [IDSSockAddrWrapper wrapperWithSockAddr:&v11];
  [infoCopy setLocalSA:v4];

  v5 = [IDSSockAddrWrapper wrapperWithSockAddr:&v11];
  [infoCopy setRemoteSA:v5];

  v6 = nw_parameters_create();
  nw_parameters_set_required_interface_subtype();
  v7 = nw_service_connector_create();
  [infoCopy setServiceConnector:v7];
  v8 = nw_service_connector_create();
  [infoCopy setCloudServiceConnector:v8];
  nw_service_connector_start();
  nw_service_connector_start();
  v9 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setupIPsecLinkForDeviceConnectionInfo serviceConnector %@ cloudServiceConnector %@", buf, 0x16u);
  }

  [infoCopy setLinkLayerConnected:1];
  return 1;
}

- (id)setupNewDeviceConnectionInfoForCbuuid:(id)cbuuid deviceUniqueID:(id)d identityPair:(id)pair remoteDeviceEncryptionInfo:(id)info shouldUseServiceConnector:(BOOL)connector
{
  connectorCopy = connector;
  cbuuidCopy = cbuuid;
  dCopy = d;
  pairCopy = pair;
  infoCopy = info;
  v16 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    *buf = 138412802;
    v36 = cbuuidCopy;
    v37 = 2112;
    if (connectorCopy)
    {
      v17 = @"YES";
    }

    v38 = dCopy;
    v39 = 2112;
    v40 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "setupNewDeviceConnectionInfoForCbuuid %@ deviceUniqueID %@ shouldUseServiceConnector %@", buf, 0x20u);
  }

  v18 = objc_alloc_init(IDSDeviceConnectionInfo);
  [(IDSDeviceConnectionInfo *)v18 setCbuuid:cbuuidCopy];
  [(IDSDeviceConnectionInfo *)v18 setDeviceUniqueID:dCopy];
  if (connectorCopy)
  {
    [(IDSDeviceConnectionInfo *)v18 setLinkLayerConnected:1];
  }

  else
  {
    linkManager = [(IDSUTunController *)self linkManager];
    -[IDSDeviceConnectionInfo setLinkLayerConnected:](v18, "setLinkLayerConnected:", [linkManager isConnectedToDeviceID:cbuuidCopy]);
  }

  pthread_mutex_lock(&self->_deviceConnectionInfoTableByCbuuidLock);
  sub_1006C3304(&self->_deviceConnectionInfoTableByCbuuid.tableSize, cbuuidCopy, v18);
  pthread_mutex_unlock(&self->_deviceConnectionInfoTableByCbuuidLock);
  v20 = [cbuuidCopy isEqualToString:kIDSDefaultPairedDeviceID];
  [(IDSDeviceConnectionInfo *)v18 setShouldUseServiceConnector:connectorCopy];
  if (connectorCopy)
  {
    v21 = [(IDSUTunController *)self setupIPsecLinkForDeviceConnectionInfo:v18];
  }

  else
  {
    v21 = [(IDSUTunController *)self setupUTunForDeviceConnectionInfo:v18];
  }

  if (v21)
  {
    v22 = [IDSUTunControlChannel alloc];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10062DE00;
    v30[3] = &unk_100BE2C30;
    v34 = v20;
    v30[4] = self;
    v31 = cbuuidCopy;
    v23 = v18;
    v32 = v23;
    v33 = dCopy;
    v24 = [(IDSUTunControlChannel *)v22 initWithDeviceUniqueID:v33 cbuuid:v31 shouldUseServiceConnector:connectorCopy receiveHandler:v30];
    [(IDSUTunControlChannel *)v24 setRemoteDeviceEncryptionInfo:infoCopy];
    [(IDSUTunControlChannel *)v24 setDisableEncryption:self->_controlChannelEncryptionDisabled];
    if (pairCopy && !connectorCopy)
    {
      [(IDSUTunControlChannel *)v24 setIdentityPair:pairCopy];
      [(IDSUTunControlChannel *)v24 encryptControlChannelForStoredIdentities];
    }

    [(IDSDeviceConnectionInfo *)v23 setControlChannel:v24];
    if ([(IDSDeviceConnectionInfo *)v23 linkLayerConnected])
    {
      [(IDSUTunController *)self startControlChannelWithDevice:v23];
    }

    else
    {
      v26 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Add a block for initial control channel setup on link connects.", buf, 2u);
      }

      objc_initWeak(buf, v23);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10062E600;
      v28[3] = &unk_100BE2C08;
      objc_copyWeak(&v29, buf);
      v28[4] = self;
      [(IDSDeviceConnectionInfo *)v23 addBlocksOnLinkConnect:v28];
      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    v25 = v23;
  }

  else
  {
    [(IDSDeviceConnectionInfo *)v18 utunSocket];
    IDSTransportThreadRemoveSocket();
    [(IDSDeviceConnectionInfo *)v18 cancelBlocksOnLinkConnect];
    [(IDSDeviceConnectionInfo *)v18 invalidate];
    sub_1006C361C(&self->_deviceConnectionInfoTableByCbuuid, cbuuidCopy);
    v25 = 0;
  }

  return v25;
}

- (IDSUTunController)init
{
  v25.receiver = self;
  v25.super_class = IDSUTunController;
  v2 = [(IDSUTunController *)&v25 init];
  if (!v2)
  {
LABEL_11:
    v15 = v2;
    goto LABEL_15;
  }

  if (IDSTransportThreadInit())
  {
    v3 = objc_alloc_init(IDSUTunTimingLogger);
    v4 = qword_100CD3D68;
    qword_100CD3D68 = v3;

    sub_1006C32C0(&v2->_deviceConnectionInfoTableByCbuuid, 32);
    pthread_mutex_init(&v2->_deviceConnectionInfoTableByCbuuidLock, 0);
    defaultPairedDeviceIdentityPair = [(IDSUTunController *)v2 defaultPairedDeviceIdentityPair];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10062E954;
    v22 = &unk_100BD9BE0;
    v6 = v2;
    v23 = v6;
    v24 = defaultPairedDeviceIdentityPair == 0;
    IDSTransportThreadAddSyncBlock();
    [(IDSUTunController *)v6 _reloadSettings];
    if (!v6->_controlChannelVersionCache)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      controlChannelVersionCache = v6->_controlChannelVersionCache;
      v6->_controlChannelVersionCache = Mutable;
    }

    v6->_controlChannelVersionCacheLock._os_unfair_lock_opaque = 0;
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("ids multiplex ipsec queue", v10);
    serviceConnectorQueue = v6->_serviceConnectorQueue;
    v6->_serviceConnectorQueue = v11;

    v6->_isocPipeAssertedForRelayConnection = 0;
    if (IMGetDomainBoolForKey())
    {
      v18 = 1;
      if (sysctlbyname("kern.skywalk.ring_stat_enable", 0, 0, &v18, 4uLL))
      {
        v13 = *__error();
        v14 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v27 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sysctl for kern.skywalk.ring_stat_enable failed %d", buf, 8u);
        }
      }
    }

    goto LABEL_11;
  }

  v16 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "TransportThread initialization failed", buf, 2u);
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (void)internalStartConnectionWithEndpoint:(id)endpoint service:(const char *)service parameters:(id)parameters serviceConnector:(id)connector trafficClass:(int)class completionHandler:(id)handler
{
  endpointCopy = endpoint;
  parametersCopy = parameters;
  connectorCopy = connector;
  v15 = objc_retainBlock(handler);
  CFAbsoluteTimeGetCurrent();
  v16 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    serviceCopy = service;
    v20 = 2112;
    v21 = endpointCopy;
    v22 = 2112;
    v23 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IPsecLink: starting service connector for %s on %@ with parameters %@", buf, 0x20u);
  }

  v17 = v15;
  nw_service_connector_start_request();
}

- (void)prepareControlChannelForDeviceConnectionInfo:(id)info genericConnection:(id)connection
{
  infoCopy = info;
  connectionCopy = connection;
  [connectionCopy setUint32Key:67109888];
  [connectionCopy setIsCloudEnabled:1];
  [connectionCopy setIsControlChannel:1];
  cbuuid = [infoCopy cbuuid];
  [connectionCopy setIsDefaultPairedDevice:{objc_msgSend(cbuuid, "isEqualToString:", kIDSDefaultPairedDeviceID)}];

  v7 = sub_1006C2FC8([infoCopy connectionsTableByLocalRemotePortKey], objc_msgSend(connectionCopy, "uint32Key"));
  v8 = v7;
  if (v7)
  {
    [v7 invalidate];
  }

  sub_1006C2CB0([infoCopy connectionsTableByLocalRemotePortKey], objc_msgSend(connectionCopy, "uint32Key"), connectionCopy);
}

- (void)didConnectControlChannelForDeviceConnectionInfo:(id)info connection:(id)connection error:(id)error
{
  infoCopy = info;
  connectionCopy = connection;
  errorCopy = error;
  v11 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = connectionCopy;
    *&buf[12] = 2112;
    *&buf[14] = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "control channel: didConnectControlChannelForDeviceConnectionInfo called: connection %@ error %@", buf, 0x16u);
  }

  if (!errorCopy)
  {
    dword_100CB2100 = 4;
    qword_100CBF430 = 0;
    v18 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = connectionCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice: finished with [%@]", buf, 0xCu);
    }

    cbuuid = [infoCopy cbuuid];
    v20 = kIDSDefaultPairedDeviceID;
    v21 = [cbuuid isEqualToString:kIDSDefaultPairedDeviceID];

    if (v21)
    {
      v22 = [NSUUID alloc];
      v23 = +[IDSCurrentDevice sharedInstance];
      deviceIdentifier = [v23 deviceIdentifier];
      v71 = [v22 initWithUUIDString:deviceIdentifier];
    }

    else
    {
      memset(buf, 170, 16);
      uuid_clear(buf);
      v71 = [[NSUUID alloc] initWithUUIDBytes:buf];
    }

    selfCopy = self;
    v31 = +[IMDeviceSupport sharedInstance];
    productName = [v31 productName];

    v33 = +[IMDeviceSupport sharedInstance];
    productVersion = [v33 productVersion];

    v34 = +[IMDeviceSupport sharedInstance];
    productBuildVersion = [v34 productBuildVersion];

    v35 = +[IMDeviceSupport sharedInstance];
    model = [v35 model];

    v73 = -1431655766;
    v74 = -1431655766;
    v72 = -1431655766;
    [IDSPairingManager devicePairingProtocolVersion:&v74 minCompatibilityVersion:&v73 maxCompatibilityVersion:&v72];
    v36 = +[IDSPairingManager sharedInstance];
    v37 = [v36 activePairedDeviceHasPairingType:1];

    if (v37)
    {
      v38 = 2047;
    }

    else
    {
      v38 = 1023;
    }

    if (_IDSSupportsDirectMessaging())
    {
      cbuuid2 = [infoCopy cbuuid];
      v40 = [cbuuid2 isEqualToString:v20];

      if (v40)
      {
        v41 = 2048;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = objc_alloc_init(IDSUTunControlMessage_Hello);
    [(IDSUTunControlMessage_Hello *)v42 setControlChannelVersion:@"5"];
    v67 = productName;
    [(IDSUTunControlMessage_Hello *)v42 setProductName:productName];
    [(IDSUTunControlMessage_Hello *)v42 setProductVersion:productVersion];
    [(IDSUTunControlMessage_Hello *)v42 setProductBuildVersion:productBuildVersion];
    [(IDSUTunControlMessage_Hello *)v42 setModel:model];
    v43 = [NSNumber numberWithUnsignedInt:v74];
    [(IDSUTunControlMessage_Hello *)v42 setPairingProtocolVersion:v43];

    v44 = [NSNumber numberWithUnsignedInt:v73];
    [(IDSUTunControlMessage_Hello *)v42 setMinCompatibilityVersion:v44];

    v45 = [NSNumber numberWithUnsignedInt:v72];
    [(IDSUTunControlMessage_Hello *)v42 setMaxCompatibilityVersion:v45];

    v46 = [NSNumber numberWithUnsignedLongLong:v41 | v38];
    [(IDSUTunControlMessage_Hello *)v42 setCapabilityFlags:v46];

    [(IDSUTunControlMessage_Hello *)v42 setServiceMinCompatibilityVersion:&off_100C3CE50];
    [(IDSUTunControlMessage_Hello *)v42 setDeviceUniqueID:v71];
    v47 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(infoCopy, "selfInstanceID")}];
    [(IDSUTunControlMessage_Hello *)v42 setInstanceID:v47];
    data = [(IDSUTunControlMessage_Hello *)v42 data];
    v49 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [data length];
      *buf = 134217984;
      *&buf[4] = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice: sending hello message of size = %lu", buf, 0xCu);
    }

    controlChannel = [infoCopy controlChannel];
    [controlChannel setConnecting:0];

    controlChannel2 = [infoCopy controlChannel];
    [controlChannel2 useConnection:connectionCopy withFirstMessage:data];

    controlChannel3 = [infoCopy controlChannel];
    isReadyForEncrypting = [controlChannel3 isReadyForEncrypting];

    if (isReadyForEncrypting)
    {
      [(IDSLinkManager *)selfCopy->_linkManager setRequireBT:0];
    }

    if (_IDSSupportsDirectMessaging())
    {
      cbuuid3 = [infoCopy cbuuid];
      v56 = [cbuuid3 isEqualToString:v20];

      if (v56)
      {
        v81 = 14;
        v57 = +[IDSDaemon sharedInstance];
        copyDirectMessagingInfo = [v57 copyDirectMessagingInfo];

        if ([copyDirectMessagingInfo length] > 8)
        {
          v60 = objc_alloc_init(NSMutableData);
          [v60 appendBytes:&v81 length:1];
          [v60 appendData:copyDirectMessagingInfo];
          v59 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "sending control message: direct msg info", buf, 2u);
          }
        }

        else
        {
          v59 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "sending control message: invalid info length", buf, 2u);
          }

          v60 = 0;
        }

        controlChannel4 = [infoCopy controlChannel];
        [controlChannel4 sendMessage:v60];
      }
    }

    v64 = v71;
    goto LABEL_57;
  }

  controlChannel5 = [infoCopy controlChannel];
  [controlChannel5 setConnecting:0];

  controlChannel6 = [infoCopy controlChannel];
  connected = [controlChannel6 connected];

  v15 = +[IDSFoundationLog utunController];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!connected)
  {
    if (v16)
    {
      v25 = infoCopy[1];
      *buf = 138412546;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = errorCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice: error creating control channel with [%@] [%@]", buf, 0x16u);
    }

    v26 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = infoCopy[1];
      *buf = 138412546;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = errorCopy;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "UTunController control channel for [%@] creation failed: %@", buf, 0x16u);
    }

    if (self->_hasFixedDestination)
    {
      v28 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "For the fixedInterface case, obliterate the connection.", buf, 2u);
      }

      [(IDSUTunController *)self obliterateConnectionInfoForCBUUID:infoCopy[1] completionBlock:0 completionQueue:0];
    }

    cbuuid4 = [infoCopy cbuuid];
    v30 = [cbuuid4 isEqualToString:kIDSDefaultPairedDeviceID];

    if (v30)
    {
      if (*&qword_100CBF430 == 0.0)
      {
        if (qword_100CBF438 != -1)
        {
          sub_10092D8D8();
        }

        *&qword_100CBF430 = *&qword_100CBF3C0 * mach_continuous_time();
      }

      else
      {
        if (qword_100CBF438 != -1)
        {
          sub_10092D8D8();
        }

        v61 = *&qword_100CBF3C0 * mach_continuous_time() - *&qword_100CBF430;
        if (v61 > 30.0)
        {
          v62 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v61;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "UTunController control channel for default paired device could not be started for %0.3lf seconds", buf, 0xCu);
          }
        }
      }
    }

    v75 = _NSConcreteStackBlock;
    v76 = 3221225472;
    v77 = sub_10062F924;
    v78 = &unk_100BD9AA8;
    selfCopy2 = self;
    v80 = infoCopy;
    IDSTransportThreadAddBlockAfter();
    v63 = dword_100CB2100 + dword_100CB2100 / 2;
    if (v63 >= 60)
    {
      v63 = 60;
    }

    dword_100CB2100 = v63;
    v64 = v80;
LABEL_57:

    goto LABEL_58;
  }

  if (v16)
  {
    vifName = [infoCopy vifName];
    *buf = 138412546;
    *&buf[4] = vifName;
    *&buf[12] = 2112;
    *&buf[14] = errorCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: start_request returns error but control channel fine - assuming connected via available block. Error %@", buf, 0x16u);
  }

LABEL_58:
}

- (void)startControlChannelWithDevice:(id)device
{
  deviceCopy = device;
  controlChannel = [deviceCopy controlChannel];
  if ([controlChannel connecting])
  {
  }

  else
  {
    controlChannel2 = [deviceCopy controlChannel];
    connected = [controlChannel2 connected];

    if (!connected)
    {
LABEL_8:
      controlChannel3 = [deviceCopy controlChannel];
      [controlChannel3 setConnecting:1];

      localSA = [deviceCopy localSA];
      v9 = [IDSSockAddrWrapper wrapperWithWrapper:localSA andPortHostOrder:1024];

      remoteSA = [deviceCopy remoteSA];
      v15 = [IDSSockAddrWrapper wrapperWithWrapper:remoteSA andPortHostOrder:1024];

      v16 = [IDSSockAddrWrapperPair wrapperPairWithLocalAddress:v9 remoteAddress:v15];
      v17 = [[IDSGenericConnection alloc] initWithAddressPair:v16 protocol:6];
      LODWORD(localSA) = [deviceCopy shouldUseServiceConnector];
      v18 = +[IDSFoundationLog utunController];
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (localSA)
      {
        v57 = v17;
        v59 = v16;
        v61 = v15;
        if (v19)
        {
          cbuuid = [deviceCopy cbuuid];
          *buf = 138412290;
          v71 = cbuuid;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice over ipsec path for %@", buf, 0xCu);
        }

        v21 = [NSUUID alloc];
        v22 = +[IDSPairingManager sharedInstance];
        pairedDeviceUUIDString = [v22 pairedDeviceUUIDString];
        v24 = [v21 initWithUUIDString:pairedDeviceUUIDString];

        if (v24)
        {
          v25 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v24];
          v26 = [NREndpoint alloc];
          v27 = [NSString stringWithUTF8String:"61315"];
          v55 = [v26 initWithDeviceIdentifier:v25 portString:v27 dataProtectionClass:4 service:@"ids-control-channel"];

          copyEndpoint = [v55 copyEndpoint];
          v29 = [NRParametersServiceConnection alloc];
          v76 = NRParametersOptionAllowsQR;
          v77 = &__kCFBooleanTrue;
          v30 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v31 = [v29 initWithDeviceIdentifier:v25 dataProtectionClass:4 options:v30];

          copyParameters = [v31 copyParameters];
          nw_parameters_set_traffic_class();
          cloudServiceConnector = [deviceCopy cloudServiceConnector];
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_1006303BC;
          v67[3] = &unk_100BE2CE0;
          v67[4] = self;
          v68 = deviceCopy;
          v17 = v57;
          v69 = v57;
          [(IDSUTunController *)self internalStartConnectionWithEndpoint:copyEndpoint service:"ids-control-channel" parameters:copyParameters serviceConnector:cloudServiceConnector trafficClass:900 completionHandler:v67];
        }

        else
        {
          v47 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice called but pairedDeviceUUIDString is nil.", buf, 2u);
          }

          v17 = v57;
          [(IDSGenericConnection *)v57 invalidate];
        }

        v16 = v59;
        v15 = v61;
      }

      else
      {
        if (v19)
        {
          cbuuid2 = [deviceCopy cbuuid];
          *buf = 138412290;
          v71 = cbuuid2;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice over utun/bt path for %@", buf, 0xCu);
        }

        v36 = deviceCopy[1];
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_10063044C;
        v63[3] = &unk_100BE2CE0;
        v37 = deviceCopy;
        v64 = v37;
        v38 = v17;
        v65 = v38;
        selfCopy = self;
        [(IDSUTunController *)self internalOpenSocketWithDestination:v36 localSA:v9 remoteSA:v15 protocol:6 trafficClass:900 completionHandler:v63];
        controlChannelCachedSYN = [v37 controlChannelCachedSYN];

        if (controlChannelCachedSYN)
        {
          selfCopy2 = self;
          v58 = v17;
          v62 = v15;
          v60 = v16;
          if (v37[2079])
          {
            remoteAddress = [v16 remoteAddress];
            v40 = [remoteAddress sa];
            localAddress = [v16 localAddress];
            v42 = [localAddress sa];
            controlChannelCachedSYN2 = [v37 controlChannelCachedSYN];
            bytes = [controlChannelCachedSYN2 bytes];
            controlChannelCachedSYN3 = [v37 controlChannelCachedSYN];
            v46 = -[IDSUTunController handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:](selfCopy2, "handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:", v37, v40, v42, 6, bytes, [controlChannelCachedSYN3 length]);
          }

          else
          {
            [v37 vifRef];
            remoteAddress = [v16 remoteAddress];
            [remoteAddress sa];
            localAddress = [v16 localAddress];
            [localAddress sa];
            controlChannelCachedSYN2 = [v37 controlChannelCachedSYN];
            [controlChannelCachedSYN2 bytes];
            controlChannelCachedSYN3 = [v37 controlChannelCachedSYN];
            [controlChannelCachedSYN3 length];
            v46 = NEVirtualInterfaceWriteIPPayload();
          }

          v48 = v46;

          v49 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            vifName = [v37 vifName];
            controlChannelCachedSYN4 = [v37 controlChannelCachedSYN];
            *buf = 138412802;
            v71 = vifName;
            v72 = 1024;
            v73 = v48;
            v74 = 2112;
            v75 = controlChannelCachedSYN4;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%@: write cached control channel syn neRet=%d\n\t\t<= data[%@]", buf, 0x1Cu);
          }

          controlChannelCachedSYN5 = [v37 controlChannelCachedSYN];
          bytes2 = [controlChannelCachedSYN5 bytes];

          [(IDSGenericConnection *)v38 setFirstIncomingSYNSequenceNumber:bswap32(bytes2[1])];
          [v37 setControlChannelCachedSYN:0];
          [(IDSGenericConnection *)v38 setStateFlags:128];
          v16 = v60;
          v15 = v62;
          if (qword_100CBF438 != -1)
          {
            sub_10092D8D8();
          }

          v17 = v58;
          [(IDSGenericConnection *)v38 setFirstPacketReceiveTime:*&qword_100CBF3C0 * mach_continuous_time()];
          [(IDSGenericConnection *)v38 reportToAWD:[(IDSLinkManager *)selfCopy2->_linkManager currentLinkType:v37[1]] connectionType:1 error:0];
        }

        v24 = v64;
      }

      goto LABEL_32;
    }
  }

  v8 = IMGetDomainBoolForKey();
  v9 = +[IDSFoundationLog utunController];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      cbuuid3 = [deviceCopy cbuuid];
      *buf = 138412290;
      v71 = cbuuid3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice called but already connecting/connected - force continue %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (v10)
  {
    cbuuid4 = [deviceCopy cbuuid];
    *buf = 138412290;
    v71 = cbuuid4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice called but already connecting/connected - returning %@", buf, 0xCu);
  }

LABEL_32:
}

- (void)resetTCPConnection:(id)connection forDeviceConnectionInfo:(id)info
{
  connectionCopy = connection;
  infoCopy = info;
  v8 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reset TCP for genericConnection %@", &v9, 0xCu);
  }

  if ([infoCopy shouldUseServiceConnector])
  {
    [(IDSUTunController *)self resetIPsecTCPConnection:connectionCopy forDeviceConnectionInfo:infoCopy];
  }

  else
  {
    [(IDSUTunController *)self resetUTunTCPConnection:connectionCopy forDeviceConnectionInfo:infoCopy];
  }
}

- (void)resetIPsecTCPConnection:(id)connection forDeviceConnectionInfo:(id)info
{
  connectionCopy = connection;
  v5 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    serviceConnection = [connectionCopy serviceConnection];
    v7 = 138412546;
    v8 = connectionCopy;
    v9 = 2112;
    v10 = serviceConnection;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "reset TCP for genericConnection %@ serviceConnection %@", &v7, 0x16u);
  }

  [connectionCopy _closeSockets];
  [connectionCopy setStateFlags:{objc_msgSend(connectionCopy, "stateFlags") | 0x200}];
}

- (void)resetUTunTCPConnection:(id)connection forDeviceConnectionInfo:(id)info
{
  connectionCopy = connection;
  infoCopy = info;
  memset(v76, 170, sizeof(v76));
  expectedNextIncomingSequenceNumber = [connectionCopy expectedNextIncomingSequenceNumber];
  expectedNextOutgoingSequenceNumber = [connectionCopy expectedNextOutgoingSequenceNumber];
  v9 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = connectionCopy;
    *&buf[12] = 1024;
    *&buf[14] = expectedNextIncomingSequenceNumber;
    *&buf[18] = 1024;
    *&buf[20] = expectedNextOutgoingSequenceNumber;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "reset TCP for genericConnection %@ using seq:%08x ack:%08x", buf, 0x18u);
  }

  addressPair = [connectionCopy addressPair];
  remoteAddress = [addressPair remoteAddress];
  saPortHostOrder = [remoteAddress saPortHostOrder];
  addressPair2 = [connectionCopy addressPair];
  localAddress = [addressPair2 localAddress];
  sub_10062704C(v76, saPortHostOrder, [localAddress saPortHostOrder], expectedNextIncomingSequenceNumber, expectedNextOutgoingSequenceNumber);

  v15 = connectionCopy;
  sdCopy = [v15 sdCopy];
  if (sdCopy != -1)
  {
    v101 = 0xAAAAAAAAAAAAAAAALL;
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v99 = v17;
    v100 = v17;
    v97 = v17;
    v98 = v17;
    v95 = v17;
    v96 = v17;
    v93 = v17;
    v94 = v17;
    v91 = v17;
    v92 = v17;
    v89 = v17;
    v90 = v17;
    v87 = v17;
    v88 = v17;
    v85 = v17;
    v86 = v17;
    v83 = v17;
    v84 = v17;
    v81 = v17;
    v82 = v17;
    v79 = v17;
    v80 = v17;
    *&buf[32] = v17;
    v78 = v17;
    *buf = v17;
    *&buf[16] = v17;
    v70 = 424;
    if (!getsockopt(sdCopy, 6, 512, buf, &v70))
    {
      v18 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = buf[0];
        v20 = DWORD1(v78);
        v21 = DWORD2(v78);
        expectedNextIncomingSequenceNumber2 = [v15 expectedNextIncomingSequenceNumber];
        expectedNextOutgoingSequenceNumber2 = [v15 expectedNextOutgoingSequenceNumber];
        *v71 = 67110144;
        *v72 = v19;
        *&v72[4] = 1024;
        *&v72[6] = v20;
        LOWORD(v73) = 1024;
        *(&v73 + 2) = v21;
        HIWORD(v73) = 1024;
        *v74 = expectedNextIncomingSequenceNumber2;
        *&v74[4] = 1024;
        v75[0] = expectedNextOutgoingSequenceNumber2;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "TCP info (%u) tcpi_snd_nxt:%08x tcpi_rcv_nxt:%08x (connection: in:%08x out:%08x)", v71, 0x20u);
      }
    }
  }

  addressPair3 = [v15 addressPair];
  remoteAddress2 = [addressPair3 remoteAddress];
  v26 = [remoteAddress2 sa6];
  addressPair4 = [v15 addressPair];
  localAddress2 = [addressPair4 localAddress];
  tcp6checksum((v26 + 8), ([localAddress2 sa6] + 8), v76, 0x14uLL);

  if (infoCopy[2079])
  {
    addressPair5 = [v15 addressPair];
    remoteAddress3 = [addressPair5 remoteAddress];
    v31 = [remoteAddress3 sa];
    addressPair6 = [v15 addressPair];
    localAddress3 = [addressPair6 localAddress];
    v34 = -[IDSUTunController handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:](self, "handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:", infoCopy, v31, [localAddress3 sa], 6, v76, 20);
  }

  else
  {
    [infoCopy vifRef];
    addressPair5 = [v15 addressPair];
    remoteAddress3 = [addressPair5 remoteAddress];
    [remoteAddress3 sa];
    addressPair6 = [v15 addressPair];
    localAddress3 = [addressPair6 localAddress];
    [localAddress3 sa];
    v34 = NEVirtualInterfaceWriteIPPayload();
  }

  v35 = v34;

  v36 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    vifName = [infoCopy vifName];
    addressPair7 = [v15 addressPair];
    shortDescription = [addressPair7 shortDescription];
    v40 = [NSData dataWithBytesNoCopy:v76 length:20 freeWhenDone:0];
    *buf = 138413058;
    *&buf[4] = vifName;
    *&buf[12] = 2112;
    *&buf[14] = shortDescription;
    *&buf[22] = 1024;
    *&buf[24] = v35;
    *&buf[28] = 2112;
    *&buf[30] = v40;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@: write generated reset ports[%@] neRet=%d\n\t\t<= data[%@]", buf, 0x26u);
  }

  sdCopy2 = [v15 sdCopy];
  if (sdCopy2 == -1 && (sdCopy2 = [v15 sdOriginal], sdCopy2 == -1) && (sdCopy2 = objc_msgSend(v15, "sd"), sdCopy2 == -1))
  {
    serviceConnection = [v15 serviceConnection];
    if (!serviceConnection)
    {
      goto LABEL_24;
    }

    v68 = serviceConnection;
    connected_socket = nw_connection_get_connected_socket();

    if (connected_socket == -1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    connected_socket = sdCopy2;
  }

  v101 = 0xAAAAAAAAAAAAAAAALL;
  *&v43 = 0xAAAAAAAAAAAAAAAALL;
  *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v99 = v43;
  v100 = v43;
  v97 = v43;
  v98 = v43;
  v95 = v43;
  v96 = v43;
  v93 = v43;
  v94 = v43;
  v91 = v43;
  v92 = v43;
  v89 = v43;
  v90 = v43;
  v87 = v43;
  v88 = v43;
  v85 = v43;
  v86 = v43;
  v83 = v43;
  v84 = v43;
  v81 = v43;
  v82 = v43;
  v79 = v43;
  v80 = v43;
  *&buf[32] = v43;
  v78 = v43;
  *buf = v43;
  *&buf[16] = v43;
  v70 = 424;
  if (!getsockopt(connected_socket, 6, 512, buf, &v70))
  {
    addressPair8 = [v15 addressPair];
    remoteAddress4 = [addressPair8 remoteAddress];
    saPortHostOrder2 = [remoteAddress4 saPortHostOrder];
    addressPair9 = [v15 addressPair];
    localAddress4 = [addressPair9 localAddress];
    saPortHostOrder3 = [localAddress4 saPortHostOrder];
    sub_10062704C(v76, saPortHostOrder2, saPortHostOrder3, SDWORD2(v78), SDWORD1(v78));

    addressPair10 = [v15 addressPair];
    remoteAddress5 = [addressPair10 remoteAddress];
    v52 = [remoteAddress5 sa6];
    addressPair11 = [v15 addressPair];
    localAddress5 = [addressPair11 localAddress];
    tcp6checksum((v52 + 8), ([localAddress5 sa6] + 8), v76, 0x14uLL);

    if (infoCopy[2079])
    {
      addressPair12 = [v15 addressPair];
      remoteAddress6 = [addressPair12 remoteAddress];
      v57 = [remoteAddress6 sa];
      addressPair13 = [v15 addressPair];
      localAddress6 = [addressPair13 localAddress];
      v60 = -[IDSUTunController handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:](self, "handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:", infoCopy, v57, [localAddress6 sa], 6, v76, 20);
    }

    else
    {
      [infoCopy vifRef];
      addressPair12 = [v15 addressPair];
      remoteAddress6 = [addressPair12 remoteAddress];
      [remoteAddress6 sa];
      addressPair13 = [v15 addressPair];
      localAddress6 = [addressPair13 localAddress];
      [localAddress6 sa];
      v60 = NEVirtualInterfaceWriteIPPayload();
    }

    v61 = v60;

    v62 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      vifName2 = [infoCopy vifName];
      addressPair14 = [v15 addressPair];
      shortDescription2 = [addressPair14 shortDescription];
      v66 = [NSData dataWithBytesNoCopy:v76 length:20 freeWhenDone:0];
      *v71 = 138413058;
      *v72 = vifName2;
      *&v72[8] = 2112;
      v73 = shortDescription2;
      *v74 = 1024;
      *&v74[2] = v61;
      LOWORD(v75[0]) = 2112;
      *(v75 + 2) = v66;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%@: write generated reset ports[%@] neRet=%d\n\t\t<= data[%@]", v71, 0x26u);
    }
  }

LABEL_24:
  [v15 setStateFlags:{objc_msgSend(v15, "stateFlags", self) | 0x20}];
}

- (void)removeConnection:(id)connection fromDeviceConnectionInfo:(id)info removeCode:(int64_t)code removeReason:(id)reason
{
  connectionCopy = connection;
  infoCopy = info;
  reasonCopy = reason;
  if (connectionCopy)
  {
    v13 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = reasonCopy;
      v42 = 2112;
      v43 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: closing connection %@", buf, 0x16u);
    }

    if ([connectionCopy protocol] == 6)
    {
      [(IDSUTunController *)self resetTCPConnection:connectionCopy forDeviceConnectionInfo:infoCopy];
    }

    if ([connectionCopy protocol] == 17 && self->_isocPipeAssertedForRelayConnection)
    {
      v14 = im_primary_queue();
      dispatch_async(v14, &stru_100BE2D00);

      self->_isocPipeAssertedForRelayConnection = 0;
    }

    [(IDSUTunController *)self resetIPsecTCPConnection:connectionCopy forDeviceConnectionInfo:infoCopy];
    if ([connectionCopy priority] == 300)
    {
      highPriorityConnectionSendingSet = [infoCopy highPriorityConnectionSendingSet];
      localConnectionGUID = [connectionCopy localConnectionGUID];
      [highPriorityConnectionSendingSet removeObject:localConnectionGUID];
    }

    compressionInfo = [connectionCopy compressionInfo];
    state = [compressionInfo state];

    if (state >= 1)
    {
      compressionInfo2 = [connectionCopy compressionInfo];
      [infoCopy clearLocalCID:{objc_msgSend(compressionInfo2, "localCID")}];
    }

    connectionID = [connectionCopy connectionID];

    if (connectionID)
    {
      connectionsByID = [infoCopy connectionsByID];
      connectionID2 = [connectionCopy connectionID];
      [connectionsByID removeObjectForKey:connectionID2];
    }

    if (([connectionCopy stateFlags] & 2) == 0)
    {
      openSocketCompletionHandler = [connectionCopy openSocketCompletionHandler];

      if (openSocketCompletionHandler)
      {
        [connectionCopy setStateFlags:{objc_msgSend(connectionCopy, "stateFlags") | 2}];
        openSocketCompletionHandler2 = [connectionCopy openSocketCompletionHandler];
        [connectionCopy setOpenSocketCompletionHandler:0];
        v25 = [NSDictionary dictionaryWithObject:reasonCopy forKey:NSLocalizedDescriptionKey];
        v26 = [NSError errorWithDomain:@"IDSUTun" code:code userInfo:v25];

        completionQueue = [connectionCopy completionQueue];
        v34 = _NSConcreteStackBlock;
        v35 = 3221225472;
        v36 = sub_1006318E8;
        v37 = &unk_100BD7298;
        v38 = v26;
        v39 = openSocketCompletionHandler2;
        v28 = v26;
        v29 = openSocketCompletionHandler2;
        dispatch_async(completionQueue, &v34);
      }
    }

    addressPair = [connectionCopy addressPair];

    if (addressPair)
    {
      sub_1006C30B8([infoCopy connectionsTableByLocalRemotePortKey], objc_msgSend(connectionCopy, "uint32Key"));
    }

    if ([connectionCopy encryptionEnabled])
    {
      sub_1006C30B8([infoCopy outgoingEncryptionTableBySSRC], objc_msgSend(connectionCopy, "SSRCSend"));
      sub_1006C30B8([infoCopy incomingEncryptionTableBySSRC], objc_msgSend(connectionCopy, "SSRCRecv"));
    }

    [connectionCopy invalidate];
    if ([connectionCopy shouldStopBTDatagramLink])
    {
      [connectionCopy setShouldStopBTDatagramLink:0];
      v31 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        connectionID3 = [connectionCopy connectionID];
        service = [connectionID3 service];
        *buf = 138412290;
        v41 = service;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "closeSocket for %@ using BT datagram link - stop", buf, 0xCu);
      }

      [(IDSLinkManager *)self->_linkManager stopBTDatagramLinkForDeviceUniqueID:IDSDeviceDefaultPairedDeviceUniqueID cbuuid:kIDSDefaultPairedDeviceID];
    }
  }
}

- (void)resetAllConnectionsForDevice:(id)device
{
  deviceCopy = device;
  connectionsByID = [deviceCopy connectionsByID];
  allValues = [connectionsByID allValues];
  _copyForEnumerating = [allValues _copyForEnumerating];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = _copyForEnumerating;
  v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        portMap = [deviceCopy portMap];
        addressPair = [v12 addressPair];
        localAddress = [addressPair localAddress];
        -[IDSUTunController releasePortIfNecessary:port:](self, "releasePortIfNecessary:port:", portMap, [localAddress saPortHostOrder]);

        [(IDSUTunController *)self removeConnection:v12 fromDeviceConnectionInfo:deviceCopy removeCode:5031 removeReason:@"resetting all connections"];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(IDSUTunController *)self checkSuspendTrafficForDevice:deviceCopy wait:1];
}

- (BOOL)handleIncomingPacket:(id *)packet fromDeviceToken:(id)token
{
  tokenCopy = token;
  logPackets = self->_logPackets;
  if (logPackets)
  {
    v173 = mach_continuous_time();
  }

  else
  {
    v173 = 0xAAAAAAAAAAAAAAAALL;
  }

  testDeviceConnectionInfo = self->_testDeviceConnectionInfo;
  if (testDeviceConnectionInfo)
  {
    v8 = testDeviceConnectionInfo;
  }

  else
  {
    v8 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, tokenCopy);
    if (!v8)
    {
      v8 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = tokenCopy;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: waiting for first openSocket", buf, 0xCu);
      }

      v13 = 1;
      goto LABEL_237;
    }
  }

  var2 = packet->var2;
  if (var2)
  {
    var0 = packet->var0;
    if (self->_encryptionEnabled && (v11 = *var0, v11 >= 0xE0))
    {
      if (var2 <= 7)
      {
        v12 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = tokenCopy;
          *&buf[12] = 1024;
          *&buf[14] = var2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: incoming packet not enough bytes for encryption header %d", buf, 0x12u);
        }

LABEL_52:

        v25 = 0;
        v13 = 0;
LABEL_236:

        goto LABEL_237;
      }

      if (v11 != 224 || var0[1])
      {
        v12 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = tokenCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: encryption expects 0xe000 - packet is corrupt", buf, 0xCu);
        }

        goto LABEL_52;
      }

      v79 = *(var0 + 1);
      v80 = bswap32(*(var0 + 1));
      v81 = sub_1006C2FC8([v8 incomingEncryptionTableBySSRC], v80);
      v174 = v81;
      v25 = v81;
      if (!v81)
      {
        v126 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          if (var2 >= 0x28)
          {
            v127 = 40;
          }

          else
          {
            v127 = var2;
          }

          v128 = [NSData dataWithBytesNoCopy:var0 length:v127 freeWhenDone:0];
          v129 = v128;
          v130 = " ...";
          *buf = 138413058;
          *&buf[4] = tokenCopy;
          *&buf[12] = 1024;
          if (var2 < 0x29)
          {
            v130 = "";
          }

          *&buf[14] = v80;
          *&buf[18] = 2112;
          *&buf[20] = v128;
          *&buf[28] = 2080;
          *&buf[30] = v130;
          _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "%@: unable to find decryption context for ssrc:%08x data:[%@%s]", buf, 0x26u);
        }

        v25 = 0;
        v13 = 1;
        goto LABEL_236;
      }

      if ([v81 didInvalidate])
      {
        v82 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = tokenCopy;
          *&buf[12] = 2112;
          *&buf[14] = v174;
          *&buf[22] = 1024;
          *&buf[24] = v80;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "%@: connection %@ is already invalidated for ssrc:%08x - dropping this incoming packet", buf, 0x1Cu);
        }

        v13 = 1;
        goto LABEL_235;
      }

      var0 += 8;
      var2 -= 8;
      v133 = sub_10050CB8C([v25 encryptionState], bswap32(v79) >> 16, var0, var2, 0);
      v13 = 1;
      if (v133)
      {
        v134 = v133;
        if (v133 != 4)
        {
          portMap = [v8 portMap];
          addressPair = [v25 addressPair];
          localAddress = [addressPair localAddress];
          -[IDSUTunController releasePortIfNecessary:port:](self, "releasePortIfNecessary:port:", portMap, [localAddress saPortHostOrder]);

          v134 = [NSString stringWithFormat:@"Decryption failure: %u", v134];
          v25 = v174;
          [(IDSUTunController *)self removeConnection:v174 fromDeviceConnectionInfo:v8 removeCode:5301 removeReason:v134];
        }

        goto LABEL_236;
      }
    }

    else
    {
      v13 = 0;
      v174 = 0;
    }

    v179 = 0xAAAAAAAAAAAAAAAALL;
    v178 = -1431655766;
    v14 = *var0;
    v15 = (v14 >> 5) & 3;
    if (v15)
    {
      if (v15 != 1)
      {
        encryptionEnabled = [v174 encryptionEnabled];
        oslog = +[IDSFoundationLog utunController];
        v20 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
        if (!encryptionEnabled)
        {
          if (v20)
          {
            v26 = [NSData dataWithBytesNoCopy:var0 length:var2 freeWhenDone:0];
            *buf = 138412802;
            *&buf[4] = tokenCopy;
            *&buf[12] = 1024;
            *&buf[14] = (v14 >> 5) & 3;
            *&buf[18] = 2112;
            *&buf[20] = v26;
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@: dropping unknown proto[0x%01x] packet [%@]", buf, 0x1Cu);
          }

          goto LABEL_151;
        }

        if (v20)
        {
          v21 = [NSData dataWithBytesNoCopy:var0 length:var2 freeWhenDone:0];
          *buf = 138412802;
          *&buf[4] = tokenCopy;
          *&buf[12] = 1024;
          *&buf[14] = (v14 >> 5) & 3;
          *&buf[18] = 2112;
          *&buf[20] = v21;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "%@: dropping unknown proto[0x%01x] packet (encrypted) [%@]", buf, 0x1Cu);
        }

LABEL_233:
        v13 = 1;
        goto LABEL_234;
      }

      v16 = 6;
    }

    else
    {
      v16 = 17;
    }

    v170 = v16;
    if ((v14 & 0x80) == 0)
    {
      oslog = 0;
      v179 = (var0 + 1);
      v178 = var2 - 1;
      saPortHostOrder = bswap32(*(var0 + 1)) >> 16;
      saPortHostOrder2 = __rev16(*(var0 + 3));
      v167 = 0xAAAAAAAAAAAAAAAALL;
      v171 = 43690;
      goto LABEL_24;
    }

    if (logPackets)
    {
      if (var2 >= 0x14)
      {
        v22 = 20;
      }

      else
      {
        v22 = var2;
      }

      oslog = [NSData dataWithBytes:var0 length:v22];
      v23 = var2;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      oslog = 0;
      v23 = 0xAAAAAAAAAAAAAAAALL;
      if ((v14 & 0x10) != 0)
      {
LABEL_40:
        if (var2 <= 2)
        {
          v24 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = tokenCopy;
            *&buf[12] = 1024;
            *&buf[14] = var2;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: incoming packet not enough bytes for largeCID %d", buf, 0x12u);
          }

          goto LABEL_151;
        }

        v167 = v23;
        v171 = bswap32(*(var0 + 1)) >> 16;
        v27 = -3;
        v28 = 3;
        goto LABEL_67;
      }
    }

    v167 = v23;
    v171 = *var0 & 0xF;
    v27 = -1;
    v28 = 1;
LABEL_67:
    v179 = &var0[v28];
    v178 = v27 + var2;
    if (v174)
    {
      compressionInfo = [v174 compressionInfo];
      remoteCID = [compressionInfo remoteCID];

      if (remoteCID != v171)
      {
        v32 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          vifName = [v8 vifName];
          compressionInfo2 = [v174 compressionInfo];
          *buf = 138412802;
          *&buf[4] = vifName;
          *&buf[12] = 1024;
          *&buf[14] = [compressionInfo2 remoteCID];
          *&buf[18] = 1024;
          *&buf[20] = v171;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@: found connection with mismatched (remoteCID 0x%04x != remoteCID 0x%04x)", buf, 0x18u);
        }

        goto LABEL_233;
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = sub_10000AAB4;
      *&buf[32] = sub_10000BCCC;
      *&buf[40] = 0;
      v176[0] = _NSConcreteStackBlock;
      v176[1] = 3221225472;
      v176[2] = sub_10063376C;
      v176[3] = &unk_100BE2D28;
      v177 = v171;
      v176[4] = buf;
      sub_10000C280([v8 connectionsTableByLocalRemotePortKey], v176);
      v35 = *(*&buf[8] + 40);
      v174 = v35;
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v84 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          vifName2 = [v8 vifName];
          *v188 = 138412546;
          v189 = vifName2;
          v190 = 1024;
          v191 = v171;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "%@: failed to resolve connection for remoteCID 0x%04x", v188, 0x12u);
        }

        v35 = 0;
      }

      _Block_object_dispose(buf, 8);

      if (!v35)
      {
        goto LABEL_158;
      }
    }

    compressionInfo3 = [v174 compressionInfo];
    v87 = [compressionInfo3 remoteContext] == 0;

    if (v87)
    {
      v58 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        vifName3 = [v8 vifName];
        compressionInfo4 = [v174 compressionInfo];
        remoteCID2 = [compressionInfo4 remoteCID];
        *buf = 138412546;
        *&buf[4] = vifName3;
        *&buf[12] = 1024;
        *&buf[14] = remoteCID2;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@: remoteContext is nil for remoteCID %d, decompression failed.", buf, 0x12u);
      }

      goto LABEL_112;
    }

    compressionInfo5 = [v174 compressionInfo];
    [compressionInfo5 remoteContext];
    v89 = IDSHC_DecompressSimple();

    if (v89)
    {
      v18 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        vifName4 = [v8 vifName];
        *buf = 138412546;
        *&buf[4] = vifName4;
        *&buf[12] = 2048;
        *&buf[14] = v89;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: IDSHC_DecompressSimple failed (%lu)", buf, 0x16u);
      }

      goto LABEL_150;
    }

    addressPair2 = [v174 addressPair];
    remoteAddress = [addressPair2 remoteAddress];
    saPortHostOrder = [remoteAddress saPortHostOrder];

    addressPair3 = [v174 addressPair];
    localAddress2 = [addressPair3 localAddress];
    saPortHostOrder2 = [localAddress2 saPortHostOrder];

LABEL_24:
    if (v15)
    {
      if (v178 <= 19)
      {
        v18 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = tokenCopy;
          *&buf[12] = 1024;
          *&buf[14] = v178;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: incoming packet not enough bytes for TCP header %d", buf, 0x12u);
        }

LABEL_150:

LABEL_151:
        v13 = 0;
LABEL_234:

LABEL_235:
        v25 = v174;
        goto LABEL_236;
      }
    }

    else
    {
      if (v178 <= 7)
      {
        v18 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = tokenCopy;
          *&buf[12] = 1024;
          *&buf[14] = v178;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: incoming packet not enough bytes for UDP header %d", buf, 0x12u);
        }

        goto LABEL_150;
      }

      if (logPackets)
      {
        v29 = (mach_continuous_time() - v173);
        v166 = 1;
        goto LABEL_60;
      }
    }

    v166 = 0;
    v29 = 1.22978294e19;
LABEL_60:
    if (!v174)
    {
      v174 = sub_1006C2FC8([v8 connectionsTableByLocalRemotePortKey], saPortHostOrder | (saPortHostOrder2 << 16));
    }

    if ((v14 & 0x80) != 0)
    {
      goto LABEL_76;
    }

    if (v15)
    {
      if (!tcp6checksum(0, 0, v179, v178))
      {
        goto LABEL_76;
      }
    }

    else if (!udp6checksum(0, 0, v179, v178))
    {
LABEL_76:
      if (v15)
      {
        if (logPackets)
        {
          v37 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            vifName5 = [v8 vifName];
            v163 = v178;
            v38 = v179->u8[13];
            if ((v38 & 2) != 0)
            {
              v39 = "S";
            }

            else
            {
              v39 = "";
            }

            v40 = "R";
            if ((v38 & 4) == 0)
            {
              v40 = "";
            }

            v161 = v40;
            v162 = v39;
            if ((v38 & 8) != 0)
            {
              v41 = "P";
            }

            else
            {
              v41 = "";
            }

            v42 = ".";
            if ((v38 & 0x10) == 0)
            {
              v42 = "";
            }

            v159 = v42;
            v160 = v41;
            flagsString = [v174 flagsString];
            *buf = 138414850;
            *&buf[4] = vifName5;
            *&buf[12] = 1024;
            *&buf[14] = v163;
            *&buf[18] = 1024;
            *&buf[20] = v38;
            *&buf[24] = 2080;
            *&buf[26] = v162;
            *&buf[34] = 2080;
            *&buf[36] = v161;
            *&buf[44] = 2080;
            *&buf[46] = v160;
            *v181 = 2080;
            *&v181[2] = v159;
            LOWORD(v182) = 1024;
            *(&v182 + 2) = saPortHostOrder2;
            HIWORD(v182) = 1024;
            v183 = saPortHostOrder;
            v184 = 2112;
            v185 = flagsString;
            v186 = 2048;
            v187 = v174;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@: Got TCP %dB (flags[%02X] [%s%s%s%s])) for %u <= %u (connection %@ (%p))", buf, 0x60u);
          }
        }

        if (v174)
        {
          connectionID = [v174 connectionID];
          service = [connectionID service];
          if ([service isEqualToString:@"localdelivery"])
          {
            v46 = 2;
          }

          else
          {
            v46 = 4;
          }

          v165 = v46;

          remoteSA = [v8 remoteSA];
          v48 = [remoteSA sa6];
          localSA = [v8 localSA];
          v50 = [localSA sa6];
          tcp6checksum((v48 + 8), (v50 + 8), v179, v178);

          v51 = v178;
          v52 = v179->u32[1];
          v53 = (v179->u8[12] >> 2) & 0x3C;
          if (v53 && self->_encryptionEnabled && !v13 && (*(v174 + 4784) & 1) != 0)
          {
            v115 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              vifName6 = [v8 vifName];
              *buf = 138412290;
              *&buf[4] = vifName6;
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%@: dropping TCP (unencrypted) - expect to be encrypted", buf, 0xCu);
            }
          }

          else
          {
            stateFlags = [v174 stateFlags];
            v55 = stateFlags;
            v56 = bswap32(v52);
            v57 = (v56 + v51 - v53);
            if ((v179->i8[13] & 2) == 0)
            {
              if ((stateFlags & 0x80) == 0)
              {
                v58 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  vifName7 = [v8 vifName];
                  v60 = vifName7;
                  v61 = v179->u8[13];
                  v62 = "S";
                  if ((v61 & 2) == 0)
                  {
                    v62 = "";
                  }

                  v63 = "R";
                  *buf = 138414338;
                  if ((v61 & 4) == 0)
                  {
                    v63 = "";
                  }

                  *&buf[4] = vifName7;
                  *&buf[12] = 1024;
                  *&buf[14] = v178;
                  if ((v61 & 8) != 0)
                  {
                    v64 = "P";
                  }

                  else
                  {
                    v64 = "";
                  }

                  *&buf[18] = 1024;
                  *&buf[20] = v61;
                  if ((v61 & 0x10) != 0)
                  {
                    v65 = ".";
                  }

                  else
                  {
                    v65 = "";
                  }

                  *&buf[24] = 2080;
                  *&buf[26] = v62;
                  *&buf[34] = 2080;
                  *&buf[36] = v63;
                  *&buf[44] = 2080;
                  *&buf[46] = v64;
                  *v181 = 2080;
                  *&v181[2] = v65;
                  LOWORD(v182) = 1024;
                  *(&v182 + 2) = saPortHostOrder2;
                  HIWORD(v182) = 1024;
                  v183 = saPortHostOrder;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@: dropping TCP (unexpected - no first packet) %dB (flags[%02X] [%s%s%s%s])) for %u <= %u", buf, 0x4Cu);
                }

LABEL_112:

                goto LABEL_233;
              }

              if (v57 - [v174 expectedNextIncomingSequenceNumber] <= 0x3FFFFFFE)
              {
                [v174 setExpectedNextIncomingSequenceNumber:v57];
              }

              if ((v55 & 0x100) != 0)
              {
                goto LABEL_186;
              }

              [v174 setStateFlags:v55 | 0x100];
              v99 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = v174;
                _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "Received the first data packet for %@", buf, 0xCu);
              }

              v100 = sub_10062118C();
              *(v174 + 4872) = v100;
              if (v100 != 0.0)
              {
                idsDeviceConnectionUUID = [v174 idsDeviceConnectionUUID];
                v102 = idsDeviceConnectionUUID == 0;

                if (!v102)
                {
                  v103 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
                  v104 = *(v174 + 4872);
                  idsDeviceConnectionUUID2 = [v174 idsDeviceConnectionUUID];
                  [v103 setFirstPacketReceiveTime:idsDeviceConnectionUUID2 forConnectionUUID:v104];
                }
              }

              if (([v8 shouldUseServiceConnector]& 1) == 0)
              {
                goto LABEL_169;
              }

              goto LABEL_141;
            }

            if ((stateFlags & 0x80) == 0)
            {
              [v174 setStateFlags:stateFlags | 0x80];
              [v174 setFirstPacketReceiveTime:sub_10062118C()];
              [v174 setFirstIncomingSYNSequenceNumber:v56];
              [v174 setExpectedNextIncomingSequenceNumber:(v57 + 1)];
              if (([v8 shouldUseServiceConnector]& 1) == 0)
              {
LABEL_169:
                v83 = [(IDSLinkManager *)self->_linkManager currentLinkType:v8[1].isa];
                goto LABEL_170;
              }

LABEL_141:
              v83 = 5;
LABEL_170:
              [v174 reportToAWD:v83 connectionType:v165 error:0];
LABEL_186:
              v119 = 1.22978294e19;
              if ((v179->i8[13] & 4) != 0)
              {
                v120 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v174;
                  _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "Got reset for connection %@", buf, 0xCu);
                }

                [v174 setStateFlags:{objc_msgSend(v174, "stateFlags") | 0x20}];
              }

              v121 = v173;
              goto LABEL_212;
            }

            if (saPortHostOrder2 != 1024 || v56 == [v174 firstIncomingSYNSequenceNumber] || (v179->i8[13] & 0x10) != 0)
            {
              goto LABEL_186;
            }

            v106 = v178;
            v107 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
            {
              if (v106 >= 40)
              {
                v106 = 40;
              }

              isa = v8[1].isa;
              v109 = [NSData dataWithBytesNoCopy:v179 length:v106 freeWhenDone:0];
              v110 = v109;
              *buf = 138412802;
              if (v106 == v178)
              {
                v111 = "";
              }

              else
              {
                v111 = " ...";
              }

              *&buf[4] = isa;
              *&buf[12] = 2112;
              *&buf[14] = v109;
              *&buf[22] = 2080;
              *&buf[24] = v111;
              _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "Control channel reestablishment request from [%@]\n\t\t<= data[%@%s]", buf, 0x20u);
            }

            [(IDSUTunController *)self resetTCPConnection:v174 forDeviceConnectionInfo:v8];
            v112 = [NSData dataWithBytes:v179 length:v178];
            [v8 setControlChannelCachedSYN:v112];

            controlChannel = [v8 controlChannel];
            [controlChannel setDidReceiveReestablishmentRequest:1];

            controlChannel2 = [v8 controlChannel];
            [controlChannel2 setReestablishmentRequestReceiveTime:sub_10062118C()];

            v115 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              controlChannel3 = [v8 controlChannel];
              didReceiveReestablishmentRequest = [controlChannel3 didReceiveReestablishmentRequest];
              v118 = @"NO";
              if (didReceiveReestablishmentRequest)
              {
                v118 = @"YES";
              }

              *buf = 138412290;
              *&buf[4] = v118;
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "Control channel setDidReceiveReestablishment %@ after reestablishment request", buf, 0xCu);
            }
          }

LABEL_206:

          goto LABEL_233;
        }

        v71 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          vifName8 = [v8 vifName];
          v73 = vifName8;
          v74 = v179->u8[13];
          v75 = "S";
          if ((v74 & 2) == 0)
          {
            v75 = "";
          }

          v76 = "R";
          *buf = 138414338;
          if ((v74 & 4) == 0)
          {
            v76 = "";
          }

          *&buf[4] = vifName8;
          *&buf[12] = 1024;
          *&buf[14] = v178;
          if ((v74 & 8) != 0)
          {
            v77 = "P";
          }

          else
          {
            v77 = "";
          }

          *&buf[18] = 1024;
          *&buf[20] = v74;
          if ((v74 & 0x10) != 0)
          {
            v78 = ".";
          }

          else
          {
            v78 = "";
          }

          *&buf[24] = 2080;
          *&buf[26] = v75;
          *&buf[34] = 2080;
          *&buf[36] = v76;
          *&buf[44] = 2080;
          *&buf[46] = v77;
          *v181 = 2080;
          *&v181[2] = v78;
          LOWORD(v182) = 1024;
          *(&v182 + 2) = saPortHostOrder2;
          HIWORD(v182) = 1024;
          v183 = saPortHostOrder;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%@: dropping TCP (no connection) %dB (flags[%02X] [%s%s%s%s])) for %u <= %u", buf, 0x4Cu);
        }
      }

      else
      {
        if (v174)
        {
          if (!self->_encryptionEnabled || v13 || (*(v174 + 4784) & 1) == 0)
          {
            readHandler = [v174 readHandler];

            if (readHandler)
            {
              v67 = &v179->i8[8];
              v68 = v178 - 8;
              packet->var1 = v68;
              packet->var2 = v68;
              packet->var0 = v67;
              readHandler2 = [v174 readHandler];
              (readHandler2)[2](readHandler2, packet);

              goto LABEL_233;
            }

            remoteSA2 = [v8 remoteSA];
            v123 = [remoteSA2 sa6];
            localSA2 = [v8 localSA];
            v125 = [localSA2 sa6];
            udp6checksum(v123 + 8, v125 + 8, v179, v178);

            if (logPackets)
            {
              v121 = mach_continuous_time();
              v119 = (v121 - v173);
            }

            else
            {
              v119 = 1.22978294e19;
              v121 = v173;
            }

            kdebug_trace();
LABEL_212:
            if (v8[2079].isa)
            {
              remoteSA3 = [v8 remoteSA];
              v140 = [remoteSA3 sa];
              localSA3 = [v8 localSA];
              v142 = [localSA3 sa];
              v143 = [(IDSUTunController *)self handleUtunChannelWrite:v8 source:v140 destination:v142 upperProtocol:v170 bytes:v179 bytesLen:v178];
            }

            else
            {
              [v8 vifRef];
              remoteSA3 = [v8 remoteSA];
              [remoteSA3 sa];
              localSA3 = [v8 localSA];
              [localSA3 sa];
              v143 = NEVirtualInterfaceWriteIPPayload();
            }

            v144 = v143;

            if (v166)
            {
              v145 = mach_continuous_time();
              v146 = qword_100CD3D68;
              v147 = [IDSUTunTimingLogger incomingEventWithTimestamp:var2 - 8 duration:*&qword_100CBF3C0 * v145 processTime:*&qword_100CBF3C0 * (v145 - v173) compressionTime:v119 * *&qword_100CBF3C0 kernelTime:v29 * *&qword_100CBF3C0 bytes:*&qword_100CBF3C0 * (v145 - v121)];
              [v146 addEvent:v147];
            }

            if (logPackets)
            {
              if ((v14 & 0x80) != 0)
              {
                v148 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                {
                  vifName9 = [v8 vifName];
                  v150 = " ...";
                  *buf = 138414338;
                  *&buf[4] = vifName9;
                  *&buf[12] = 1024;
                  if (v167 < 0x15)
                  {
                    v150 = "";
                  }

                  *&buf[14] = 1;
                  *&buf[18] = 1024;
                  *&buf[20] = v171;
                  *&buf[24] = 1024;
                  *&buf[26] = v170;
                  *&buf[30] = 1024;
                  *&buf[32] = saPortHostOrder;
                  *&buf[36] = 1024;
                  *&buf[38] = saPortHostOrder2;
                  *&buf[42] = 2048;
                  *&buf[44] = v167;
                  *&buf[52] = 2112;
                  *v181 = oslog;
                  *&v181[8] = 2080;
                  v182 = v150;
                  _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "%@: incoming data - compressed: %d(cid:%u) protocol:%d s_port:%u d_port:%u.\n\t\t<= c(%luB): [%@%s]", buf, 0x48u);
                }
              }

              v151 = v178;
              v152 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
              {
                if (v151 >= 40)
                {
                  v151 = 40;
                }

                vifName10 = [v8 vifName];
                expectedNextIncomingSequenceNumber = [v174 expectedNextIncomingSequenceNumber];
                v155 = [NSData dataWithBytesNoCopy:v179 length:v151 freeWhenDone:0];
                v156 = v155;
                *buf = 138414082;
                if (v151 == v178)
                {
                  v157 = "";
                }

                else
                {
                  v157 = " ...";
                }

                *&buf[4] = vifName10;
                *&buf[12] = 1024;
                *&buf[14] = v170;
                *&buf[18] = 1024;
                *&buf[20] = saPortHostOrder2;
                *&buf[24] = 1024;
                *&buf[26] = saPortHostOrder;
                *&buf[30] = 1024;
                *&buf[32] = v144;
                *&buf[36] = 1024;
                *&buf[38] = expectedNextIncomingSequenceNumber;
                *&buf[42] = 2112;
                *&buf[44] = v155;
                *&buf[52] = 2080;
                *v181 = v157;
                _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "%@: write ippayload (proto=%u) %u <= %u neRet=%d niseq:%08x\n\t\t<= data[%@%s]", buf, 0x3Eu);
              }
            }

            [v174 setPacketsReceived:{objc_msgSend(v174, "packetsReceived") + 1}];
            [v174 setBytesReceived:{objc_msgSend(v174, "bytesReceived") + packet->var2}];
            goto LABEL_233;
          }

          v115 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
          {
            vifName11 = [v8 vifName];
            *buf = 138413058;
            *&buf[4] = vifName11;
            *&buf[12] = 1024;
            *&buf[14] = v178;
            *&buf[18] = 1024;
            *&buf[20] = saPortHostOrder2;
            *&buf[24] = 1024;
            *&buf[26] = saPortHostOrder;
            _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%@: dropping UDP (unencrypted) %dB for %u <= %u", buf, 0x1Eu);
          }

          goto LABEL_206;
        }

        v71 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          vifName12 = [v8 vifName];
          *buf = 138413058;
          *&buf[4] = vifName12;
          *&buf[12] = 1024;
          *&buf[14] = v178;
          *&buf[18] = 1024;
          *&buf[20] = saPortHostOrder2;
          *&buf[24] = 1024;
          *&buf[26] = saPortHostOrder;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%@: dropping UDP (no connection) %dB for %u <= %u", buf, 0x1Eu);
        }
      }

LABEL_158:
      v174 = 0;
      goto LABEL_233;
    }

    [v174 setChecksumFailed:1];
    if (([v8 capabilityFlags]& 0x80) != 0)
    {
      v18 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        vifName13 = [v8 vifName];
        *buf = 138412546;
        *&buf[4] = vifName13;
        *&buf[12] = 2112;
        *&buf[14] = v174;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: checksum failed for connection %@", buf, 0x16u);
      }

      goto LABEL_150;
    }

    goto LABEL_76;
  }

  v17 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = tokenCopy;
    *&buf[12] = 1024;
    *&buf[14] = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: incoming packet not enough bytes to parse %d", buf, 0x12u);
  }

  v13 = 0;
LABEL_237:

  return v13;
}

- (void)internalOpenSocketWithDestination:(id)destination localSA:(id)a remoteSA:(id)sA protocol:(int)protocol trafficClass:(int)class completionHandler:(id)handler
{
  destinationCopy = destination;
  aCopy = a;
  sACopy = sA;
  handlerCopy = handler;
  if (protocol == 17)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = socket(30, v17, 0);
  if (v18 == -1)
  {
    v21 = __error();
    v22 = [NSString stringWithFormat:@"device %@: socket() failed: errno=%d: %s", destinationCopy, *v21, strerror(*v21)];
    v23 = [NSDictionary dictionaryWithObject:v22 forKey:NSLocalizedDescriptionKey];
    v24 = [NSError errorWithDomain:@"IDSUTun" code:5001 userInfo:v23];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, class, v24);
    IDSAssertNonFatalErrnoWithSource();

    goto LABEL_25;
  }

  v19 = v18;
  IDSCheckFileDescriptorUsageWithSource();
  v20 = fcntl(v19, 3, 0);
  fcntl(v19, 4, v20 | 4u);
  v45 = 1;
  setsockopt(v19, 0xFFFF, 4130, &v45, 4u);
  v44 = 1;
  setsockopt(v19, 0xFFFF, 4, &v44, 4u);
  v43 = 1;
  setsockopt(v19, 0xFFFF, 512, &v43, 4u);
  if (protocol == 6)
  {
    *buf = 1;
    setsockopt(v19, 6, 521, buf, 4u);
    if (class <= 699)
    {
      if (class != 500 && class != 600)
      {
        goto LABEL_15;
      }
    }

    else if (class != 700 && class != 900 && class != 800)
    {
      goto LABEL_15;
    }

    v42 = 1;
    setsockopt(v19, 6, 1, &v42, 4u);
  }

LABEL_15:
  sub_10062CDEC(v19, class);
  v25 = bind(v19, [aCopy sa], 0x1Cu);
  v26 = *__error();
  v27 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = sACopy;
    v29 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [aCopy sa6] + 8, 16);
    v30 = *([aCopy sa6] + 6);
    *buf = 138413570;
    v47 = destinationCopy;
    v48 = 2112;
    *v49 = aCopy;
    *&v49[8] = 2112;
    v50 = v29;
    v51 = 1024;
    v52 = v30;
    v53 = 1024;
    v54 = v25;
    v55 = 1024;
    v56 = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "for device %@: binding to [%@ [%@] @ scopeid=%d] iRet=%d (errno=%d)", buf, 0x32u);

    sACopy = v28;
  }

  if (v25)
  {
    close(v19);
    v31 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"device %@: can't bind to [%@ @ scopeid=%d]: errno=%d: %s", destinationCopy, aCopy, *([aCopy sa6] + 6), v26, strerror(v26));
    v32 = [NSDictionary dictionaryWithObject:v31 forKey:NSLocalizedDescriptionKey];
    v33 = [NSError errorWithDomain:@"IDSUTun" code:5002 userInfo:v32];

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, class, v33);
  }

  else
  {
    v34 = connect(v19, [sACopy sa], 0x1Cu);
    v35 = *__error();
    v36 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = +[IDSSockAddrWrapper wrapperWithSockAddr:](IDSSockAddrWrapper, "wrapperWithSockAddr:", [sACopy sa]);
      v38 = *([sACopy sa6] + 6);
      *buf = 138413058;
      v47 = v37;
      v48 = 1024;
      *v49 = v38;
      *&v49[4] = 1024;
      *&v49[6] = v34;
      LOWORD(v50) = 1024;
      *(&v50 + 2) = v35;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "connecting to [%@ @ scope=%u] %d (%d)", buf, 0x1Eu);
    }

    if (!v34 || v35 == 36)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, v19, 0, 0, -1, 0);
    }

    else
    {
      close(v19);
      v39 = [NSString stringWithFormat:@"device %@: can't connect to %@: errno=%d: %s", destinationCopy, sACopy, v35, strerror(v35)];
      v40 = [NSDictionary dictionaryWithObject:v39 forKey:NSLocalizedDescriptionKey];
      v41 = [NSError errorWithDomain:@"IDSUTun" code:5003 userInfo:v40];

      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, -1, v41);
    }
  }

LABEL_25:
}

- (int)processCompressionRequest:(id)request fromDeviceConnectionInfo:(id)info
{
  requestCopy = request;
  infoCopy = info;
  v7 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    vifName = [infoCopy vifName];
    *buf = 138412546;
    v76 = vifName;
    v77 = 2112;
    *v78 = requestCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: got control message: compression_req %@", buf, 0x16u);
  }

  v9 = [requestCopy length];
  bytes = [requestCopy bytes];
  if (v9 > 0xA)
  {
    v16 = bytes;
    v74 = infoCopy;
    v17 = bswap32(*(bytes + 1)) >> 16;
    v18 = bswap32(*(bytes + 3)) >> 16;
    v19 = bswap32(*(bytes + 5)) >> 16;
    v20 = bswap32(*(bytes + 7)) >> 16;
    v21 = bswap32(*(bytes + 9)) >> 16;
    v22 = v17 + v18 + v19 + v20 + v21 + 23;
    if (v9 != v22)
    {
      v11 = +[IDSFoundationLog utunController];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v57 = 1;
        infoCopy = v74;
        goto LABEL_52;
      }

      infoCopy = v74;
      vifName2 = [v74 vifName];
      *buf = 138412802;
      v76 = vifName2;
      v77 = 1024;
      *v78 = v9;
      *&v78[4] = 2048;
      *&v78[6] = v22;
      v13 = "%@: invalid message size for UTCMType_CompressionRequest (%u != %lu)";
      v14 = v11;
      v15 = 28;
      goto LABEL_24;
    }

    v23 = bytes + 23;
    v11 = [[NSString alloc] initWithBytes:bytes + 23 length:v17 encoding:4];
    if (!v11)
    {
      v25 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        infoCopy = v74;
        vifName3 = [v74 vifName];
        *buf = 138412290;
        v76 = vifName3;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionRequest cannot decode remoteConnectionGUID", buf, 0xCu);

        v57 = 2;
      }

      else
      {
        v57 = 2;
        infoCopy = v74;
      }

      goto LABEL_51;
    }

    v24 = &v23[v17];
    v25 = [[NSString alloc] initWithBytes:v24 length:v18 encoding:4];
    if (!v25)
    {
      v29 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        infoCopy = v74;
        vifName4 = [v74 vifName];
        *buf = 138412290;
        v76 = vifName4;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionRequest cannot decode localConnectionGUID", buf, 0xCu);

        v57 = 2;
      }

      else
      {
        v57 = 2;
        infoCopy = v74;
      }

      goto LABEL_50;
    }

    v72 = bswap32(*(v16 + 11)) >> 16;
    v73 = bswap32(*(v16 + 13)) >> 16;
    v70 = bswap32(*(v16 + 19));
    v71 = bswap32(*(v16 + 15));
    v26 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      vifName5 = [v74 vifName];
      *buf = 138413314;
      v76 = vifName5;
      v77 = 1024;
      *v78 = v72;
      *&v78[4] = 1024;
      *&v78[6] = v73;
      *&v78[10] = 1024;
      *&v78[12] = v71;
      *&v78[16] = 1024;
      v79 = v70;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%@: recv compression_req (#:%u remoteCID:%u seq:%u ack:%u)", buf, 0x24u);
    }

    v28 = &v24[v18];
    v29 = [[NSString alloc] initWithBytes:&v24[v18] length:v19 encoding:4];
    if (!v29)
    {
      v31 = +[IDSFoundationLog utunController];
      infoCopy = v74;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        vifName6 = [v74 vifName];
        *buf = 138412290;
        v76 = vifName6;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionRequest cannot decode account", buf, 0xCu);
      }

      v57 = 2;
      goto LABEL_49;
    }

    v30 = &v28[v19];
    v31 = [[NSString alloc] initWithBytes:v30 length:v20 encoding:4];
    infoCopy = v74;
    if (!v31)
    {
      v32 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        vifName7 = [v74 vifName];
        *buf = 138412290;
        v76 = vifName7;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionRequest cannot decode service", buf, 0xCu);
      }

      v57 = 2;
      goto LABEL_48;
    }

    v32 = [[NSString alloc] initWithBytes:v30 + v20 length:v21 encoding:4];
    if (!v32)
    {
      v58 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        vifName8 = [v74 vifName];
        *buf = 138412290;
        v76 = vifName8;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionRequest cannot decode name", buf, 0xCu);
      }

      v57 = 2;
      goto LABEL_47;
    }

    v33 = [IDSGenericConnectionID idWithAccount:v29 service:v31 name:v32];
    connectionsByID = [v74 connectionsByID];
    v69 = v33;
    v35 = [connectionsByID objectForKey:v33];

    v36 = v35;
    if (v35)
    {
      localConnectionGUID = [v35 localConnectionGUID];
      if ([localConnectionGUID isEqualToString:v25])
      {
        [v36 remoteConnectionGUID];
        v38 = v68 = v36;
        v39 = [v38 isEqualToString:v11];

        v36 = v68;
        if (v39)
        {
          v40 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            vifName9 = [v74 vifName];
            addressPair = [v68 addressPair];
            shortDescription = [addressPair shortDescription];
            *buf = 138412546;
            v76 = vifName9;
            v77 = 2112;
            *v78 = shortDescription;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@: processCompressionRequest resolved connection ports[%@]", buf, 0x16u);

            v36 = v68;
          }

          [v36 compressionInfo];
          v45 = v44 = v36;
          [v45 setRemoteCID:v73];

          [v44 protocol];
          addressPair2 = [v44 addressPair];
          remoteAddress = [addressPair2 remoteAddress];
          [remoteAddress saPortHostOrder];

          addressPair3 = [v44 addressPair];
          localAddress = [addressPair3 localAddress];
          [localAddress saPortHostOrder];

          IDSHC_CreateContext();
          compressionInfo = [v44 compressionInfo];
          [compressionInfo setRemoteContext:0];

          localConnectionGUID2 = [v44 localConnectionGUID];
          remoteConnectionGUID = [v44 remoteConnectionGUID];
          v53 = sub_100634894(v72, localConnectionGUID2, remoteConnectionGUID, v29, v31, v32);

          infoCopy = v74;
          controlChannel = [v74 controlChannel];
          [controlChannel sendMessage:v53];

          v55 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            vifName10 = [v74 vifName];
            *buf = 138412546;
            v76 = vifName10;
            v77 = 2112;
            *v78 = v53;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%@: sending control message: compression_resp %@", buf, 0x16u);
          }

          v57 = 0;
          v36 = v68;
          v58 = v69;
LABEL_46:

LABEL_47:
LABEL_48:

LABEL_49:
LABEL_50:

LABEL_51:
          goto LABEL_52;
        }
      }

      else
      {
      }
    }

    v64 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      [v74 vifName];
      v66 = v65 = v36;
      *buf = 138412802;
      v76 = v66;
      v77 = 2112;
      *v78 = v25;
      *&v78[8] = 2112;
      *&v78[10] = v11;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionRequest found connection mismatch! (localGUID:%@ remoteGUID:%@)", buf, 0x20u);

      v36 = v65;
    }

    v57 = 2;
    v58 = v69;
    goto LABEL_46;
  }

  v11 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    vifName2 = [infoCopy vifName];
    *buf = 138412546;
    v76 = vifName2;
    v77 = 2048;
    *v78 = v9;
    v13 = "%@: UTCMType_CompressionRequest has invalid header length (%lu)";
    v14 = v11;
    v15 = 22;
LABEL_24:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
  }

  v57 = 1;
LABEL_52:

  return v57;
}

- (int)processCompressionResponse:(id)response fromDeviceConnectionInfo:(id)info
{
  responseCopy = response;
  infoCopy = info;
  v7 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    vifName = [infoCopy vifName];
    *buf = 138412546;
    *&buf[4] = vifName;
    v77 = 2112;
    *v78 = responseCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: got control message: compression_resp %@", buf, 0x16u);
  }

  v9 = [responseCopy length];
  bytes = [responseCopy bytes];
  if (v9 > 0xA)
  {
    v14 = bytes;
    v75 = infoCopy;
    v15 = bswap32(*(bytes + 1)) >> 16;
    v16 = bswap32(*(bytes + 3)) >> 16;
    v17 = bswap32(*(bytes + 5)) >> 16;
    v18 = bswap32(*(bytes + 7)) >> 16;
    v19 = bswap32(*(bytes + 9)) >> 16;
    v20 = v15 + v16 + v17 + v18 + v19 + 13;
    if (v9 != v20)
    {
      v56 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        infoCopy = v75;
        vifName2 = [v75 vifName];
        *buf = 138412802;
        *&buf[4] = vifName2;
        v77 = 1024;
        *v78 = v9;
        *&v78[4] = 2048;
        *&v78[6] = v20;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%@: invalid message size for UTCMType_CompressionResponse (%u != %lu)", buf, 0x1Cu);

        v13 = 1;
      }

      else
      {
        v13 = 1;
        infoCopy = v75;
      }

      v11 = v56;
      goto LABEL_55;
    }

    v21 = bytes + 13;
    v22 = [[NSString alloc] initWithBytes:bytes + 13 length:v15 encoding:4];
    if (!v22)
    {
      v24 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        infoCopy = v75;
        vifName3 = [v75 vifName];
        *buf = 138412290;
        *&buf[4] = vifName3;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionResponse cannot decode remoteConnectionGUID", buf, 0xCu);

        v13 = 2;
      }

      else
      {
        v13 = 2;
        infoCopy = v75;
      }

      v11 = 0;
      goto LABEL_54;
    }

    v23 = &v21[v15];
    v24 = [[NSString alloc] initWithBytes:v23 length:v16 encoding:4];
    if (!v24)
    {
      v28 = +[IDSFoundationLog utunController];
      v11 = v22;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        infoCopy = v75;
        vifName4 = [v75 vifName];
        *buf = 138412290;
        *&buf[4] = vifName4;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionResponse cannot decode localConnectionGUID", buf, 0xCu);

        v13 = 2;
      }

      else
      {
        v13 = 2;
        infoCopy = v75;
      }

      goto LABEL_53;
    }

    v72 = bswap32(*(v14 + 11)) >> 16;
    v25 = +[IDSFoundationLog utunController];
    v11 = v22;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      [v75 vifName];
      v26 = v73 = v24;
      *buf = 138412546;
      *&buf[4] = v26;
      v77 = 1024;
      *v78 = v72;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: recv compression_resp (#:%u)", buf, 0x12u);

      v24 = v73;
    }

    v27 = &v23[v16];
    v28 = [[NSString alloc] initWithBytes:v27 length:v17 encoding:4];
    if (!v28)
    {
      v30 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        infoCopy = v75;
        [v75 vifName];
        v61 = v60 = v24;
        *buf = 138412290;
        *&buf[4] = v61;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionResponse cannot decode account", buf, 0xCu);

        v24 = v60;
        v13 = 2;
      }

      else
      {
        v13 = 2;
        infoCopy = v75;
      }

      goto LABEL_52;
    }

    v29 = &v27[v17];
    v30 = [[NSString alloc] initWithBytes:v29 length:v18 encoding:4];
    if (!v30)
    {
      v31 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        infoCopy = v75;
        [v75 vifName];
        v63 = v62 = v24;
        *buf = 138412290;
        *&buf[4] = v63;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionResponse cannot decode service", buf, 0xCu);

        v24 = v62;
        v13 = 2;
      }

      else
      {
        v13 = 2;
        infoCopy = v75;
      }

      goto LABEL_51;
    }

    v31 = [[NSString alloc] initWithBytes:v29 + v18 length:v19 encoding:4];
    if (!v31)
    {
      v64 = +[IDSFoundationLog utunController];
      infoCopy = v75;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        [v75 vifName];
        v66 = v65 = v24;
        *buf = 138412290;
        *&buf[4] = v66;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionResponse cannot decode name", buf, 0xCu);

        v24 = v65;
      }

      v13 = 2;
      goto LABEL_50;
    }

    v74 = v24;
    v32 = [IDSGenericConnectionID idWithAccount:v28 service:v30 name:v31];
    connectionsByID = [v75 connectionsByID];
    v71 = v32;
    v34 = [connectionsByID objectForKey:v32];

    if (v34)
    {
      localConnectionGUID = [v34 localConnectionGUID];
      if ([localConnectionGUID isEqualToString:v74])
      {
        remoteConnectionGUID = [v34 remoteConnectionGUID];
        v37 = [remoteConnectionGUID isEqualToString:v22];

        if (v37)
        {
          v38 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            [v75 vifName];
            v39 = log = v38;
            addressPair = [v34 addressPair];
            shortDescription = [addressPair shortDescription];
            *buf = 138412546;
            *&buf[4] = v39;
            v77 = 2112;
            *v78 = shortDescription;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@: processCompressionResponse resolved connection ports[%@]", buf, 0x16u);

            v38 = log;
          }

          compressionInfo = [v34 compressionInfo];
          reqCount = [compressionInfo reqCount];

          if (reqCount <= v72)
          {
            v44 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              vifName5 = [v75 vifName];
              *buf = 138412546;
              *&buf[4] = vifName5;
              v77 = 1024;
              *v78 = v72;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%@: compression_req (%u) acknowledged!", buf, 0x12u);
            }

            compressionInfo2 = [v34 compressionInfo];
            [compressionInfo2 setReqCount:v72];
          }

          *buf = 0;
          [v34 protocol];
          compressionInfo3 = [v34 compressionInfo];
          [compressionInfo3 localCID];

          addressPair2 = [v34 addressPair];
          localAddress = [addressPair2 localAddress];
          [localAddress saPortHostOrder];

          addressPair3 = [v34 addressPair];
          remoteAddress = [addressPair3 remoteAddress];
          [remoteAddress saPortHostOrder];

          compressionInfo4 = [v34 compressionInfo];
          [compressionInfo4 lastSentSeq];

          compressionInfo5 = [v34 compressionInfo];
          [compressionInfo5 lastSentAck];

          IDSHC_CreateContext();
          compressionInfo6 = [v34 compressionInfo];
          [compressionInfo6 setLocalContext:*buf];

          compressionInfo7 = [v34 compressionInfo];
          [compressionInfo7 setState:2];

          v13 = 0;
          infoCopy = v75;
LABEL_49:

          v24 = v74;
          v64 = v71;
LABEL_50:

LABEL_51:
LABEL_52:

LABEL_53:
LABEL_54:

          goto LABEL_55;
        }
      }

      else
      {
      }
    }

    v67 = +[IDSFoundationLog utunController];
    infoCopy = v75;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      vifName6 = [v75 vifName];
      *buf = 138412802;
      *&buf[4] = vifName6;
      v77 = 2112;
      *v78 = v74;
      *&v78[8] = 2112;
      *&v78[10] = v22;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionResponse found connection mismatch! (localGUID:%@ remoteGUID:%@)", buf, 0x20u);
    }

    v13 = 2;
    goto LABEL_49;
  }

  v11 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    vifName7 = [infoCopy vifName];
    *buf = 138412546;
    *&buf[4] = vifName7;
    v77 = 2048;
    *v78 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionResponse has invalid header length (%lu)", buf, 0x16u);
  }

  v13 = 1;
LABEL_55:

  return v13;
}

- (void)startCompressionForConnection:(id)connection deviceConnectionInfo:(id)info
{
  connectionCopy = connection;
  infoCopy = info;
  v7 = +[IDSFoundationLog utunController];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (connectionCopy && infoCopy)
  {
    if (v8)
    {
      addressPair = [connectionCopy addressPair];
      shortDescription = [addressPair shortDescription];
      *buf = 138412290;
      v51 = shortDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startCompressionForConnection ports[%@]", buf, 0xCu);
    }

    nextAvailableLocalCID = [infoCopy nextAvailableLocalCID];
    v7 = +[IDSFoundationLog utunController];
    v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (nextAvailableLocalCID == 0xFFFF)
    {
      if (v12)
      {
        vifName = [infoCopy vifName];
        *buf = 138412290;
        v51 = vifName;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: failed to get local CID", buf, 0xCu);
      }
    }

    else
    {
      if (v12)
      {
        vifName2 = [infoCopy vifName];
        *buf = 138412546;
        v51 = vifName2;
        v52 = 1024;
        LODWORD(v53) = nextAvailableLocalCID;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: resolved next available localCID 0x%04x", buf, 0x12u);
      }

      compressionInfo = [connectionCopy compressionInfo];
      [compressionInfo setLocalCID:nextAvailableLocalCID];

      compressionInfo2 = [connectionCopy compressionInfo];
      [compressionInfo2 setReqCount:{(objc_msgSend(compressionInfo2, "reqCount") + 1)}];

      [connectionCopy setCompressionState:1];
      compressionInfo3 = [connectionCopy compressionInfo];
      reqCount = [compressionInfo3 reqCount];

      compressionInfo4 = [connectionCopy compressionInfo];
      HIDWORD(v45) = [compressionInfo4 lastSentSeq];

      compressionInfo5 = [connectionCopy compressionInfo];
      LODWORD(v45) = [compressionInfo5 lastSentAck];

      connectionID = [connectionCopy connectionID];
      account = [connectionID account];

      connectionID2 = [connectionCopy connectionID];
      service = [connectionID2 service];

      connectionID3 = [connectionCopy connectionID];
      [connectionID3 name];
      v24 = v49 = infoCopy;

      localConnectionGUID = [connectionCopy localConnectionGUID];
      remoteConnectionGUID = [connectionCopy remoteConnectionGUID];
      v44 = localConnectionGUID;
      v27 = localConnectionGUID;
      v7 = account;
      v28 = service;
      v39 = nextAvailableLocalCID;
      v29 = v24;
      uTF8String = [localConnectionGUID UTF8String];
      LODWORD(v24) = strlen(uTF8String);
      v43 = remoteConnectionGUID;
      uTF8String2 = [remoteConnectionGUID UTF8String];
      LODWORD(localConnectionGUID) = strlen(uTF8String2);
      uTF8String3 = [v7 UTF8String];

      v30 = strlen(uTF8String3);
      uTF8String4 = [v28 UTF8String];
      v48 = v28;

      LODWORD(service) = strlen(uTF8String4);
      uTF8String5 = [v29 UTF8String];
      v47 = v29;

      v33 = strlen(uTF8String5);
      LOWORD(v28) = v33;
      v54 = 4;
      v55 = bswap32(v24) >> 16;
      v56 = bswap32(localConnectionGUID) >> 16;
      v57 = bswap32(v30) >> 16;
      v58 = bswap32(service) >> 16;
      v59 = bswap32(v33) >> 16;
      *buf = __rev16(reqCount);
      *&buf[2] = __rev16(v39);
      v51 = _byteswap_uint64(v45);
      v34 = objc_alloc_init(NSMutableData);
      [v34 appendBytes:&v54 length:11];
      [v34 appendBytes:buf length:12];
      [v34 appendBytes:uTF8String length:v24];
      [v34 appendBytes:uTF8String2 length:localConnectionGUID];
      infoCopy = v49;
      [v34 appendBytes:uTF8String3 length:v30];
      [v34 appendBytes:uTF8String4 length:service];
      [v34 appendBytes:uTF8String5 length:v28];

      controlChannel = [v49 controlChannel];
      [controlChannel sendMessage:v34];

      v36 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        vifName3 = [v49 vifName];
        *buf = 138412546;
        v51 = vifName3;
        v52 = 2112;
        v53 = v34;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@: sending control message: compression_req (%@)", buf, 0x16u);
      }
    }
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startCompressionForConnection failed due to invalid parameters", buf, 2u);
  }
}

- (void)receiveControlChannelMessage:(id)message fromCbuuid:(id)cbuuid deviceUniqueID:(id)d
{
  messageCopy = message;
  cbuuidCopy = cbuuid;
  selfCopy = self;
  dCopy = d;
  v324 = cbuuidCopy;
  v325 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, cbuuidCopy);
  v10 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    vifName = [v325 vifName];
    *buf = 138412290;
    v332 = vifName;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: control message parsing..", buf, 0xCu);
  }

  v12 = messageCopy;
  bytes = [messageCopy bytes];
  v14 = [messageCopy length];
  if (!v14)
  {
    v17 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      vifName2 = [v325 vifName];
      *buf = 138412290;
      v332 = vifName2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: control message too small", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v15 = *bytes;
  v16 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v332) = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "receiveControlChannelMessage: type = %u", buf, 8u);
  }

  switch(v15)
  {
    case 1:
      v23 = [IDSUTunControlMessage_Hello alloc];
      vifName3 = [v325 vifName];
      v25 = [(IDSUTunControlMessage_Hello *)v23 initWithBytes:bytes length:v14 loggingPrefixString:vifName3];

      controlChannelVersion = [(IDSUTunControlMessage_Hello *)v25 controlChannelVersion];
      LODWORD(vifName3) = controlChannelVersion == 0;

      if (vifName3)
      {
        v90 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          vifName4 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName4;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%@: control message: hello control channel version is nil", buf, 0xCu);
        }
      }

      else
      {
        instanceID = [(IDSUTunControlMessage_Hello *)v25 instanceID];
        [instanceID getUUIDBytes:{objc_msgSend(v325, "instanceID")}];

        capabilityFlags = [(IDSUTunControlMessage_Hello *)v25 capabilityFlags];
        [v325 setCapabilityFlags:{objc_msgSend(capabilityFlags, "unsignedLongLongValue")}];

        serviceMinCompatibilityVersion = [(IDSUTunControlMessage_Hello *)v25 serviceMinCompatibilityVersion];
        [v325 setServiceMinCompatibilityVersion:{objc_msgSend(serviceMinCompatibilityVersion, "unsignedIntValue")}];

        v30 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          vifName5 = [v325 vifName];
          *buf = 138412546;
          v332 = vifName5;
          v333 = 2112;
          *v334 = v25;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@: got control message: %@", buf, 0x16u);
        }

        if (([v325 capabilityFlags] & 0x80) != 0)
        {
          v32 = sub_1006C2FC8([v325 connectionsTableByLocalRemotePortKey], 67109888);
          if ([v32 checksumFailed])
          {
            v33 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v332 = v32;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Control channel checksum failed while receiving Hello. Resetting connection %@", buf, 0xCu);
            }

            [(IDSLinkManager *)self->_linkManager triggerBTCorruptionRecoveryForCBUUID:v324];
            [(IDSUTunController *)self resetTCPConnection:v32 forDeviceConnectionInfo:v325];

            goto LABEL_115;
          }

          controlChannel = [v325 controlChannel];
          [controlChannel setChecksumEnabled:1];
        }

        controlChannelVersion2 = [(IDSUTunControlMessage_Hello *)v25 controlChannelVersion];
        [v325 setControlChannelVersion:controlChannelVersion2];

        os_unfair_lock_lock(&self->_controlChannelVersionCacheLock);
        controlChannelVersionCache = self->_controlChannelVersionCache;
        controlChannelVersion3 = [(IDSUTunControlMessage_Hello *)v25 controlChannelVersion];
        [(NSMutableDictionary *)controlChannelVersionCache setObject:controlChannelVersion3 forKey:v324];

        os_unfair_lock_unlock(&self->_controlChannelVersionCacheLock);
        if ([v324 isEqualToString:kIDSDefaultPairedDeviceID])
        {
          v100 = im_primary_queue();
          v328[0] = _NSConcreteStackBlock;
          v328[1] = 3221225472;
          v328[2] = sub_100639B78;
          v328[3] = &unk_100BD6E40;
          v329 = v325;
          v330 = v25;
          dispatch_async(v100, v328);
        }

        controlChannel2 = [v325 controlChannel];
        didReceiveReestablishmentRequest = [controlChannel2 didReceiveReestablishmentRequest];

        if (didReceiveReestablishmentRequest)
        {
          controlChannel3 = [v325 controlChannel];
          [controlChannel3 setDidReceiveReestablishmentRequest:0];

          v104 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v332 = v325;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%@: reset control channel didReceiveReestablishmentRequest NO", buf, 0xCu);
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

LABEL_115:

      goto LABEL_14;
    case 2:
    case 13:
      if (v14 > 0xF)
      {
        log = bytes[1];
        v307 = *(bytes + 1);
        v309 = *(bytes + 2);
        v36 = *(bytes + 3);
        oslog = *(bytes + 4);
        v37 = *(bytes + 5);
        v38 = *(bytes + 6);
        v39 = *(bytes + 7);
        v40 = _IDSSupportsDirectMessaging();
        if (v15 == 13)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v315 = v41;
        if (v41 == 1)
        {
          v42 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            vifName6 = [v325 vifName];
            *buf = 138412290;
            v332 = vifName6;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannelForDirectMsg processing request", buf, 0xCu);
          }

          v44 = 8;
        }

        else
        {
          v44 = 0;
        }

        v78 = __rev16(v36);
        v79 = __rev16(v37);
        v80 = __rev16(v38);
        v81 = __rev16(v39);
        if (!v78 || !v79 || !v80 || !v81)
        {
          v88 = v81;
          v17 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            vifName7 = [v325 vifName];
            *buf = 138413314;
            v332 = vifName7;
            v333 = 1024;
            *v334 = v78;
            *&v334[4] = 1024;
            *&v334[6] = v79;
            *&v334[10] = 1024;
            *&v334[12] = v80;
            *&v334[16] = 1024;
            *&v334[18] = v88;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel unexpected remoteGUID/account/service/name lengths (%u, %u, %u, %u)", buf, 0x24u);
          }

          goto LABEL_13;
        }

        v82 = __rev16(oslog);
        v83 = v78 + v82 + v79 + v80 + v81 + v44 + 16;
        if (v14 != v83)
        {
          v17 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            vifName8 = [v325 vifName];
            *buf = 138412802;
            v332 = vifName8;
            v333 = 1024;
            *v334 = v14;
            *&v334[4] = 2048;
            *&v334[6] = v83;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel unexpected size (%u != %lu)", buf, 0x1Cu);
          }

          goto LABEL_13;
        }

        v84 = v81;
        v85 = bytes + 16;
        v86 = [[NSString alloc] initWithBytes:v85 length:v78 encoding:4];
        if (v86)
        {
          v87 = &v85[v78];
          if (!v82)
          {
            oslogb = 0;
LABEL_152:
            v306 = [[NSString alloc] initWithBytes:v87 length:v79 encoding:4];
            if (!v306)
            {
              v126 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
              {
                vifName9 = [v325 vifName];
                *buf = 138412290;
                v332 = vifName9;
                _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel cannot decode remoteConnectionGUID", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  vifName10 = [v325 vifName];
                  _IDSLogTransport();

                  if (_IDSShouldLog())
                  {
                    vifName11 = [v325 vifName];
                    _IDSLogV();
                  }
                }
              }

              goto LABEL_335;
            }

            v303 = [[NSString alloc] initWithBytes:&v87[v79] length:v80 encoding:4];
            if (!v303)
            {
              v139 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
              {
                vifName12 = [v325 vifName];
                *buf = 138412290;
                v332 = vifName12;
                _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel cannot decode service", buf, 0xCu);
              }

              if (!os_log_shim_legacy_logging_enabled())
              {
                goto LABEL_334;
              }

              if (!_IDSShouldLogTransport())
              {
                goto LABEL_334;
              }

              vifName13 = [v325 vifName];
              _IDSLogTransport();

              if (!_IDSShouldLog())
              {
                goto LABEL_334;
              }

              vifName14 = [v325 vifName];
              _IDSLogV();
LABEL_333:

LABEL_334:
LABEL_335:

              goto LABEL_336;
            }

            vifName14 = [[NSString alloc] initWithBytes:&v87[v79 + v80] length:v84 encoding:4];
            if (!vifName14)
            {
              v146 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
              {
                vifName15 = [v325 vifName];
                *buf = 138412290;
                v332 = vifName15;
                _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel cannot decode name", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  vifName16 = [v325 vifName];
                  _IDSLogTransport();

                  if (_IDSShouldLog())
                  {
                    vifName17 = [v325 vifName];
                    _IDSLogV();
                  }
                }
              }

              goto LABEL_333;
            }

            if (v315)
            {
              v292 = *&v87[v79 + v80 + v84];
              v121 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
              {
                vifName18 = [v325 vifName];
                *buf = 138412546;
                v332 = vifName18;
                v333 = 2048;
                *v334 = v292;
                _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannelForDirectMsg flags: %#llx", buf, 0x16u);
              }
            }

            else
            {
              v292 = 0;
            }

            v301 = [IDSGenericConnectionID idWithAccount:v306 service:v303 name:vifName14];
            connectionsByID = [v325 connectionsByID];
            v149 = [connectionsByID objectForKey:v301];

            localSA = [v325 localSA];
            v151 = __rev16(v309);
            v311 = [IDSSockAddrWrapper wrapperWithWrapper:localSA andPortHostOrder:v151];

            remoteSA = [v325 remoteSA];
            v295 = __rev16(v307);
            v308 = [IDSSockAddrWrapper wrapperWithWrapper:remoteSA andPortHostOrder:?];

            v298 = [IDSSockAddrWrapperPair wrapperPairWithLocalAddress:v311 remoteAddress:v308];
            v153 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              vifName19 = [v325 vifName];
              *buf = 138414850;
              v332 = vifName19;
              v333 = 1024;
              *v334 = log;
              *&v334[4] = 1024;
              *&v334[6] = v151;
              *&v334[10] = 1024;
              *&v334[12] = v295;
              *&v334[16] = 2112;
              *&v334[18] = v86;
              *&v334[26] = 2112;
              *v335 = oslogb;
              *&v335[8] = 2112;
              *v336 = v306;
              *&v336[8] = 2112;
              *v337 = v303;
              *&v337[8] = 2112;
              *v338 = vifName14;
              *&v338[8] = 2112;
              *v339 = v149;
              *&v339[8] = 2112;
              *v340 = v325;
              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "%@: got control message: setup channel proto:%d ports[%u:::%u] remoteGUID[%@] forLocalGUID[%@] account:[%@] service[%@] name[%@] for connection[%@] deviceInfo[%@]", buf, 0x64u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                [v325 vifName];
                v282 = v149;
                v283 = v325;
                v280 = v303;
                v281 = vifName14;
                v278 = oslogb;
                v279 = v306;
                v276 = v295;
                v277 = v86;
                v274 = log;
                v259 = v275 = v151;
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  [v325 vifName];
                  v282 = v149;
                  v283 = v325;
                  v280 = v303;
                  v281 = vifName14;
                  v278 = oslogb;
                  v279 = v306;
                  v276 = v295;
                  v277 = v86;
                  v274 = log;
                  v259 = v275 = v151;
                  _IDSLogV();
                }
              }
            }

            if (oslogb && !v149)
            {
              v149 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(&v149->super, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, &v149->super, OS_LOG_TYPE_DEFAULT, "control message in reply to cleaned up connection", buf, 2u);
              }

LABEL_332:

              goto LABEL_333;
            }

            if (oslogb && v149)
            {
              localConnectionGUID = [(IDSGenericConnection *)v149 localConnectionGUID];
              v156 = [localConnectionGUID isEqualToString:oslogb];

              if ((v156 & 1) == 0)
              {
                v157 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "control message not for current connection - assume local is current for now (message is old) and send CloseChannel for remote attempt", buf, 2u);
                }

                controlChannel4 = [v325 controlChannel];
                v159 = sub_10062D4A4(0, v86, v306, v303, vifName14);
                [controlChannel4 sendMessage:v159];

                goto LABEL_332;
              }
            }

            else if (!v149)
            {
              goto LABEL_287;
            }

            v176 = [(IDSGenericConnection *)v149 localConnectionGUID:v259];
            if (([oslogb isEqualToString:v176]& 1) != 0)
            {
              v177 = ([(IDSGenericConnection *)v149 stateFlags]& 8) == 0;

              if (!v177)
              {
                v178 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "control message repeated for current connection - assume local is current and remote reconciled", buf, 2u);
                }

                goto LABEL_332;
              }
            }

            else
            {
            }

            if (([(IDSGenericConnection *)v149 stateFlags]& 8) == 0)
            {
              localConnectionGUID2 = [(IDSGenericConnection *)v149 localConnectionGUID];
              v180 = [localConnectionGUID2 compare:v86] == 1;

              if (v180)
              {
                v181 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                {
                  vifName20 = [v325 vifName];
                  localConnectionGUID3 = [(IDSGenericConnection *)v149 localConnectionGUID];
                  *buf = 138412546;
                  v332 = vifName20;
                  v333 = 2112;
                  *v334 = localConnectionGUID3;
                  _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "%@: found connection [%@] - remote wins", buf, 0x16u);
                }

                portMap = [v325 portMap];
                addressPair = [(IDSGenericConnection *)v149 addressPair];
                localAddress = [addressPair localAddress];
                -[IDSUTunController releasePortIfNecessary:port:](selfCopy, "releasePortIfNecessary:port:", portMap, [localAddress saPortHostOrder]);

                [(IDSGenericConnection *)v149 setAddressPair:v298];
              }

              goto LABEL_290;
            }

            portMap2 = [v325 portMap];
            addressPair2 = [(IDSGenericConnection *)v149 addressPair];
            localAddress2 = [addressPair2 localAddress];
            -[IDSUTunController releasePortIfNecessary:port:](selfCopy, "releasePortIfNecessary:port:", portMap2, [localAddress2 saPortHostOrder]);

            [(IDSUTunController *)selfCopy removeConnection:v149 fromDeviceConnectionInfo:v325 removeCode:5050 removeReason:@"stale connection"];
            [(IDSUTunController *)selfCopy checkSuspendTrafficForDevice:v325 wait:1];
LABEL_287:
            v149 = [[IDSGenericConnection alloc] initWithConnectionID:v301 protocol:log isCloudEnabled:0];
            cbuuid = [v325 cbuuid];
            -[IDSGenericConnection setIsDefaultPairedDevice:](v149, "setIsDefaultPairedDevice:", [cbuuid isEqualToString:kIDSDefaultPairedDeviceID]);

            [(IDSGenericConnection *)v149 setAddressPair:v298];
            connectionsByID2 = [v325 connectionsByID];
            [connectionsByID2 setObject:v149 forKey:v301];

            v195 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
            {
              vifName21 = [v325 vifName];
              localConnectionGUID4 = [(IDSGenericConnection *)v149 localConnectionGUID];
              v198 = localConnectionGUID4;
              uTF8String = [localConnectionGUID4 UTF8String];
              *buf = 138413058;
              v332 = vifName21;
              v333 = 1024;
              *v334 = v151;
              *&v334[4] = 1024;
              *&v334[6] = v295;
              *&v334[10] = 2080;
              *&v334[12] = uTF8String;
              _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "%@: send setup channel message ports[%u:::%u] guid[%s]", buf, 0x22u);
            }

            controlChannel5 = [v325 controlChannel];
            localConnectionGUID5 = [(IDSGenericConnection *)v149 localConnectionGUID];
            v202 = sub_100639644(log, v151, v295, localConnectionGUID5, v86, v306, v303, vifName14, v15 == 13, v292);
            [controlChannel5 sendMessage:v202];

            [(IDSGenericConnection *)v149 setStateFlags:[(IDSGenericConnection *)v149 stateFlags]| 4];
            [(IDSGenericConnection *)v149 setConnectionSetupStartTime:sub_10062118C()];
LABEL_290:
            addressPair3 = [(IDSGenericConnection *)v149 addressPair];
            localAddress3 = [addressPair3 localAddress];
            saPortHostOrder = [localAddress3 saPortHostOrder];
            addressPair4 = [(IDSGenericConnection *)v149 addressPair];
            remoteAddress = [addressPair4 remoteAddress];
            -[IDSGenericConnection setUint32Key:](v149, "setUint32Key:", (saPortHostOrder << 16) | [remoteAddress saPortHostOrder]);

            v208 = sub_1006C2FC8([v325 connectionsTableByLocalRemotePortKey], -[IDSGenericConnection uint32Key](v149, "uint32Key"));
            v209 = v208;
            if (v208)
            {
              [v208 invalidate];
            }

            sub_1006C2CB0([v325 connectionsTableByLocalRemotePortKey], -[IDSGenericConnection uint32Key](v149, "uint32Key"), v149);
            [(IDSGenericConnection *)v149 setStateFlags:[(IDSGenericConnection *)v149 stateFlags]| 8];
            [(IDSGenericConnection *)v149 setRemoteConnectionGUID:v86];
            if (!v315)
            {
              goto LABEL_328;
            }

            [(IDSGenericConnection *)v149 setDataProtectionClass:~v292 & 2];
            [(IDSGenericConnection *)v149 setIsDirectMsgChannel:1];
            if ((v292 & 4) != 0)
            {
              v210 = 200;
            }

            else if ((v292 & 8) != 0)
            {
              v210 = 300;
            }

            else
            {
              if ((v292 & 0x10) == 0)
              {
                goto LABEL_328;
              }

              v210 = 100;
            }

            [(IDSGenericConnection *)v149 setSocketTrafficClass:v210];
LABEL_328:
            serviceConnectorServiceForAccount = [v301 serviceConnectorServiceForAccount];
            [(IDSUTunController *)selfCopy startDataChannelWithDevice:v325 genericConnection:v149 serviceConnectorService:serviceConnectorServiceForAccount];
            if (v315 && [v324 isEqualToString:kIDSDefaultPairedDeviceID])
            {
              v256 = +[IDSDaemon daemon];
              [v256 receivedDirectMsgSocketRequestForService:v303 stream:vifName14 flags:v292];
            }

            goto LABEL_332;
          }

          oslogb = [[NSString alloc] initWithBytes:v87 length:v82 encoding:4];
          if (oslogb)
          {
            v87 += v82;
            goto LABEL_152;
          }

          v128 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            vifName22 = [v325 vifName];
            *buf = 138412290;
            v332 = vifName22;
            _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel cannot decode account", buf, 0xCu);
          }

          if (!os_log_shim_legacy_logging_enabled())
          {
            goto LABEL_336;
          }

          if (!_IDSShouldLogTransport())
          {
            goto LABEL_336;
          }

          vifName23 = [v325 vifName];
          _IDSLogTransport();

          if (!_IDSShouldLog())
          {
            goto LABEL_336;
          }
        }

        else
        {
          v108 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            vifName24 = [v325 vifName];
            *buf = 138412290;
            v332 = vifName24;
            _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel cannot decode remoteConnectionGUID", buf, 0xCu);
          }

          if (!os_log_shim_legacy_logging_enabled())
          {
            goto LABEL_336;
          }

          if (!_IDSShouldLogTransport())
          {
            goto LABEL_336;
          }

          vifName23 = [v325 vifName];
          _IDSLogTransport();

          if (!_IDSShouldLog())
          {
            goto LABEL_336;
          }
        }

        vifName25 = [v325 vifName];
        _IDSLogV();

LABEL_336:
        goto LABEL_14;
      }

      v17 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        vifName26 = [v325 vifName];
        *buf = 138412290;
        v332 = vifName26;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel insufficient header", buf, 0xCu);
      }

LABEL_13:

LABEL_14:
      return;
    case 3:
      if (v14 <= 0xA)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          vifName27 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName27;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel insufficient header", buf, 0xCu);
        }

        goto LABEL_13;
      }

      v58 = __rev16(*(bytes + 1));
      v59 = __rev16(*(bytes + 3));
      v60 = __rev16(*(bytes + 5));
      v61 = __rev16(*(bytes + 7));
      v62 = __rev16(*(bytes + 9));
      v63 = v58 + v59 + v60 + v61 + v62 + 11;
      if (v14 != v63)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          vifName28 = [v325 vifName];
          *buf = 138412802;
          v332 = vifName28;
          v333 = 1024;
          *v334 = v14;
          *&v334[4] = 2048;
          *&v334[6] = v63;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel unexpected size (%u != %lu)", buf, 0x1Cu);
        }

        goto LABEL_13;
      }

      if (v58)
      {
        controlChannel12 = [[NSString alloc] initWithBytes:bytes + 11 length:v58 encoding:4];
        if (!controlChannel12)
        {
          controlChannel12 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(controlChannel12, OS_LOG_TYPE_DEFAULT))
          {
            vifName29 = [v325 vifName];
            *buf = 138412290;
            v332 = vifName29;
            _os_log_impl(&_mh_execute_header, controlChannel12, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel cannot decode remoteConnectionGUID", buf, 0xCu);
          }

          goto LABEL_125;
        }
      }

      else
      {
        controlChannel12 = 0;
      }

      if (v59)
      {
        oslogc = [[NSString alloc] initWithBytes:&bytes[v58 + 11] length:v59 encoding:4];
        if (!oslogc)
        {
          oslogc = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(oslogc, OS_LOG_TYPE_DEFAULT))
          {
            vifName30 = [v325 vifName];
            *buf = 138412290;
            v332 = vifName30;
            _os_log_impl(&_mh_execute_header, oslogc, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel cannot decode localConnectionGUID", buf, 0xCu);
          }

          goto LABEL_254;
        }
      }

      else
      {
        oslogc = 0;
      }

      v110 = &bytes[v58 + 11 + v59];
      v111 = [[NSString alloc] initWithBytes:v110 length:v60 encoding:4];
      if (!v111)
      {
        v113 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          vifName31 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName31;
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel cannot decode account", buf, 0xCu);
        }

        goto LABEL_253;
      }

      v112 = v110 + v60;
      v113 = [[NSString alloc] initWithBytes:v112 length:v61 encoding:4];
      if (!v113)
      {
        v114 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          vifName32 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName32;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel cannot decode service", buf, 0xCu);
        }

        goto LABEL_252;
      }

      v114 = [[NSString alloc] initWithBytes:v112 + v61 length:v62 encoding:4];
      if (!v114)
      {
        loga = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
        {
          vifName33 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName33;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel cannot decode name", buf, 0xCu);
        }

        goto LABEL_251;
      }

      loga = [IDSGenericConnectionID idWithAccount:v111 service:v113 name:v114];
      connectionsByID3 = [v325 connectionsByID];
      v317 = [connectionsByID3 objectForKey:loga];

      v116 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        vifName34 = [v325 vifName];
        *buf = 138414082;
        v332 = vifName34;
        v333 = 2112;
        *v334 = oslogc;
        *&v334[8] = 2112;
        *&v334[10] = controlChannel12;
        *&v334[18] = 2112;
        *&v334[20] = v111;
        *v335 = 2112;
        *&v335[2] = v113;
        *v336 = 2112;
        *&v336[2] = v114;
        *v337 = 2112;
        *&v337[2] = v317;
        *v338 = 2112;
        *&v338[2] = v325;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "%@: got control message: close channel localConnectionGUID[%@] remoteConnectionGUID[%@] account:[%@] service[%@] name[%@] for connection[%@] deviceInfo[%@]", buf, 0x52u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [v325 vifName];
          v279 = v317;
          v280 = v325;
          v277 = v113;
          v278 = v114;
          v275 = controlChannel12;
          v259 = v276 = v111;
          v274 = oslogc;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            [v325 vifName];
            v279 = v317;
            v280 = v325;
            v277 = v113;
            v278 = v114;
            v275 = controlChannel12;
            v259 = v276 = v111;
            v274 = oslogc;
            _IDSLogV();
          }
        }
      }

      if (!v317)
      {
        goto LABEL_250;
      }

      remoteConnectionGUID = [v317 remoteConnectionGUID];
      v119 = [remoteConnectionGUID isEqualToString:controlChannel12];

      if (v119)
      {
        if (([v317 stateFlags]& 0x20) != 0)
        {
          goto LABEL_250;
        }
      }

      else
      {
        localConnectionGUID6 = [v317 localConnectionGUID];
        v164 = [localConnectionGUID6 isEqualToString:oslogc];

        if (!v164 || ([v317 stateFlags]& 0x20) != 0)
        {
          goto LABEL_250;
        }

        v165 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v165, OS_LOG_TYPE_FAULT))
        {
          sub_10092DAB8(v165);
        }
      }

      portMap3 = [v325 portMap];
      addressPair5 = [v317 addressPair];
      localAddress4 = [addressPair5 localAddress];
      -[IDSUTunController releasePortIfNecessary:port:](selfCopy, "releasePortIfNecessary:port:", portMap3, [localAddress4 saPortHostOrder]);

      [(IDSUTunController *)selfCopy removeConnection:v317 fromDeviceConnectionInfo:v325 removeCode:5051 removeReason:@"remote close"];
      [(IDSUTunController *)selfCopy checkSuspendTrafficForDevice:v325 wait:1];
LABEL_250:

LABEL_251:
LABEL_252:

LABEL_253:
LABEL_254:

      goto LABEL_125;
    case 4:
      [(IDSUTunController *)self processCompressionRequest:messageCopy fromDeviceConnectionInfo:v325];
      goto LABEL_14;
    case 5:
      [(IDSUTunController *)self processCompressionResponse:messageCopy fromDeviceConnectionInfo:v325];
      goto LABEL_14;
    case 6:
      if (v14 <= 0x17)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          vifName35 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName35;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel insufficient header", buf, 0xCu);
        }

        goto LABEL_13;
      }

      v70 = __rev16(*(bytes + 3));
      v71 = __rev16(*(bytes + 5));
      v72 = __rev16(*(bytes + 6));
      v73 = __rev16(*(bytes + 7));
      v74 = __rev16(*(bytes + 11));
      if (!v70 || !v71 || !v72 || !v73 || !v74)
      {
        v93 = v74;
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          vifName36 = [v325 vifName];
          *buf = 138413570;
          v332 = vifName36;
          v333 = 1024;
          *v334 = v70;
          *&v334[4] = 1024;
          *&v334[6] = v71;
          *&v334[10] = 1024;
          *&v334[12] = v72;
          *&v334[16] = 1024;
          *&v334[18] = v73;
          *&v334[22] = 1024;
          *&v334[24] = v93;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel unexpected remoteGUID/account/service/name/key lengths (%u, %u, %u, %u, %u)", buf, 0x2Au);
        }

        goto LABEL_13;
      }

      v75 = __rev16(*(bytes + 4));
      v76 = v70 + v75 + v71 + v72 + v73 + v74 + 24;
      if (v14 != v76)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          vifName37 = [v325 vifName];
          *buf = 138412802;
          v332 = vifName37;
          v333 = 1024;
          *v334 = v14;
          *&v334[4] = 2048;
          *&v334[6] = v76;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel unexpected size (%u != %lu)", buf, 0x1Cu);
        }

        goto LABEL_13;
      }

      v291 = v74;
      v305 = bytes[1];
      v299 = *(bytes + 1);
      v302 = *(bytes + 2);
      v293 = *(bytes + 4);
      v296 = *(bytes + 10);
      osloga = [[NSString alloc] initWithBytes:bytes + 24 length:v70 encoding:4];
      if (osloga)
      {
        v77 = &bytes[v70 + 24];
        if (!v75)
        {
          v316 = 0;
LABEL_182:
          logb = [[NSString alloc] initWithBytes:v77 length:v71 encoding:4];
          if (!logb)
          {
            v141 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
            {
              vifName38 = [v325 vifName];
              *buf = 138412290;
              v332 = vifName38;
              _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel cannot decode remoteConnectionGUID", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                vifName39 = [v325 vifName];
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  vifName40 = [v325 vifName];
                  _IDSLogV();
                }
              }
            }

            goto LABEL_324;
          }

          v131 = &v77[v71];
          v310 = [[NSString alloc] initWithBytes:&v77[v71] length:v72 encoding:4];
          if (!v310)
          {
            v160 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
            {
              vifName41 = [v325 vifName];
              *buf = 138412290;
              v332 = vifName41;
              _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel cannot decode service", buf, 0xCu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_323;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_323;
            }

            vifName42 = [v325 vifName];
            _IDSLogTransport();

            if (!_IDSShouldLog())
            {
              goto LABEL_323;
            }

            vifName43 = [v325 vifName];
            _IDSLogV();
LABEL_322:

LABEL_323:
LABEL_324:

            goto LABEL_325;
          }

          v132 = &v131[v72];
          v290 = [[NSString alloc] initWithBytes:&v131[v72] length:v73 encoding:4];
          if (!v290)
          {
            v169 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
            {
              vifName44 = [v325 vifName];
              *buf = 138412290;
              v332 = vifName44;
              _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel cannot decode name", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                vifName45 = [v325 vifName];
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  vifName46 = [v325 vifName];
                  _IDSLogV();
                }
              }
            }

            goto LABEL_321;
          }

          v289 = [IDSGenericConnectionID idWithAccount:logb service:v310 name:?];
          connectionsByID4 = [v325 connectionsByID];
          v134 = [connectionsByID4 objectForKey:v289];

          localSA2 = [v325 localSA];
          v287 = __rev16(v302);
          v304 = [IDSSockAddrWrapper wrapperWithWrapper:localSA2 andPortHostOrder:?];

          remoteSA2 = [v325 remoteSA];
          v286 = __rev16(v299);
          v300 = [IDSSockAddrWrapper wrapperWithWrapper:remoteSA2 andPortHostOrder:?];

          v288 = [IDSSockAddrWrapperPair wrapperPairWithLocalAddress:v304 remoteAddress:v300];
          v294 = bswap32(v293);
          v297 = __rev16(v296);
          v137 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            vifName47 = [v325 vifName];
            *buf = 138415362;
            v332 = vifName47;
            v333 = 1024;
            *v334 = v294;
            *&v334[4] = 1024;
            *&v334[6] = v297;
            *&v334[10] = 1024;
            *&v334[12] = v305;
            *&v334[16] = 1024;
            *&v334[18] = v287;
            *&v334[22] = 1024;
            *&v334[24] = v286;
            *v335 = 2112;
            *&v335[2] = osloga;
            *v336 = 2112;
            *&v336[2] = v316;
            *v337 = 2112;
            *&v337[2] = logb;
            *v338 = 2112;
            *&v338[2] = v310;
            *v339 = 2112;
            *&v339[2] = v290;
            *v340 = 2112;
            *&v340[2] = v134;
            v341 = 2112;
            v342 = v325;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "%@: got control message: setup encrypted channel ssrc:%08x startSeq:%04x proto:%d ports[%u:::%u] remoteGUID[%@] forLocalGUID[%@] account:[%@] service[%@] name[%@] for connection[%@] deviceInfo[%@]", buf, 0x70u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              [v325 vifName];
              v284 = v134;
              v285 = v325;
              v282 = v310;
              v283 = v290;
              v280 = v316;
              v281 = logb;
              v278 = v286;
              v279 = osloga;
              v276 = v305;
              v277 = v287;
              v274 = v294;
              v259 = v275 = v297;
              _IDSLogTransport();

              if (_IDSShouldLog())
              {
                [v325 vifName];
                v284 = v134;
                v285 = v325;
                v282 = v310;
                v283 = v290;
                v280 = v316;
                v281 = logb;
                v278 = v286;
                v279 = osloga;
                v277 = v287;
                v275 = v297;
                v259 = v276 = v305;
                v274 = v294;
                _IDSLogV();
              }
            }
          }

          if (v316 && !v134)
          {
            v134 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(&v134->super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &v134->super, OS_LOG_TYPE_DEFAULT, "control message in reply to cleaned up connection", buf, 2u);
            }

            goto LABEL_320;
          }

          if (v316 && v134)
          {
            localConnectionGUID7 = [(IDSGenericConnection *)v134 localConnectionGUID];
            v172 = [localConnectionGUID7 isEqualToString:v316];

            if ((v172 & 1) == 0)
            {
              v173 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "control message not for current connection - assume local is current for now (message is old) and send CloseChannel for remote attempt", buf, 2u);
              }

              controlChannel6 = [v325 controlChannel];
              v175 = sub_10062D4A4(0, osloga, logb, v310, v290);
              [controlChannel6 sendMessage:v175];

              goto LABEL_320;
            }
          }

          else if (!v134)
          {
            goto LABEL_306;
          }

          v187 = [(IDSGenericConnection *)v134 localConnectionGUID:v259];
          if ([v316 isEqualToString:v187])
          {
            v188 = ([(IDSGenericConnection *)v134 stateFlags]& 8) == 0;

            if (!v188)
            {
              v189 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "control message repeated for current connection - assume local is current and remote reconciled", buf, 2u);
              }

LABEL_285:

LABEL_320:
LABEL_321:
              vifName43 = v290;
              goto LABEL_322;
            }
          }

          else
          {
          }

          if (([(IDSGenericConnection *)v134 stateFlags]& 8) == 0)
          {
            if ([(IDSGenericConnection *)v134 keyMaterialLength]!= v291)
            {
              v189 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
              {
                vifName48 = [v325 vifName];
                keyMaterialLength = [(IDSGenericConnection *)v134 keyMaterialLength];
                *buf = 138412802;
                v332 = vifName48;
                v333 = 1024;
                *v334 = keyMaterialLength;
                *&v334[4] = 1024;
                *&v334[6] = v291;
                _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "%@: nonmatching key material length (local:%u remote:%u)", buf, 0x18u);
              }

              goto LABEL_285;
            }

            localConnectionGUID8 = [(IDSGenericConnection *)v134 localConnectionGUID];
            v212 = [localConnectionGUID8 compare:osloga] == 1;

            if (v212)
            {
              v213 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
              {
                vifName49 = [v325 vifName];
                localConnectionGUID9 = [(IDSGenericConnection *)v134 localConnectionGUID];
                *buf = 138412546;
                v332 = vifName49;
                v333 = 2112;
                *v334 = localConnectionGUID9;
                _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "%@: found connection [%@] - remote wins", buf, 0x16u);
              }

              portMap4 = [v325 portMap];
              addressPair6 = [(IDSGenericConnection *)v134 addressPair];
              localAddress5 = [addressPair6 localAddress];
              -[IDSUTunController releasePortIfNecessary:port:](selfCopy, "releasePortIfNecessary:port:", portMap4, [localAddress5 saPortHostOrder]);

              [(IDSGenericConnection *)v134 setAddressPair:v288];
            }

LABEL_313:
            [(IDSGenericConnection *)v134 setSSRCRecv:v294];
            [(IDSGenericConnection *)v134 setSeqRecvStart:v297];
            localKeyMaterial = [(IDSGenericConnection *)v134 localKeyMaterial];
            v240 = v291;
            v241 = &v132[v73];
            do
            {
              v242 = *v241++;
              *localKeyMaterial++ ^= v242;
              --v240;
            }

            while (v240);
            bzero(&v132[v73], v291);
            controlChannelVersion4 = [v325 controlChannelVersion];
            v244 = [controlChannelVersion4 intValue] == 1;

            if (!v244)
            {
              [(IDSGenericConnection *)v134 setSrtpProtocolVersion:1];
            }

            localConnectionGUID10 = [(IDSGenericConnection *)v134 localConnectionGUID];
            v246 = [localConnectionGUID10 compare:osloga] == 1;

            sub_10050C5E0([(IDSGenericConnection *)v134 encryptionState], [(IDSGenericConnection *)v134 localKeyMaterial], [(IDSGenericConnection *)v134 keyMaterialLength], v246, [(IDSGenericConnection *)v134 SSRCSend], [(IDSGenericConnection *)v134 seqSendStart], [(IDSGenericConnection *)v134 SSRCRecv], [(IDSGenericConnection *)v134 seqRecvStart], [(IDSGenericConnection *)v134 srtpProtocolVersion]);
            sub_1006C2CB0([v325 incomingEncryptionTableBySSRC], -[IDSGenericConnection SSRCRecv](v134, "SSRCRecv"), v134);
            addressPair7 = [(IDSGenericConnection *)v134 addressPair];
            localAddress6 = [addressPair7 localAddress];
            saPortHostOrder2 = [localAddress6 saPortHostOrder];
            addressPair8 = [(IDSGenericConnection *)v134 addressPair];
            remoteAddress2 = [addressPair8 remoteAddress];
            -[IDSGenericConnection setUint32Key:](v134, "setUint32Key:", (saPortHostOrder2 << 16) | [remoteAddress2 saPortHostOrder]);

            v252 = sub_1006C2FC8([v325 connectionsTableByLocalRemotePortKey], -[IDSGenericConnection uint32Key](v134, "uint32Key"));
            v253 = v252;
            if (v252)
            {
              [v252 invalidate];
            }

            sub_1006C2CB0([v325 connectionsTableByLocalRemotePortKey], -[IDSGenericConnection uint32Key](v134, "uint32Key"), v134);
            [(IDSGenericConnection *)v134 setStateFlags:[(IDSGenericConnection *)v134 stateFlags]| 8];
            [(IDSGenericConnection *)v134 setRemoteConnectionGUID:osloga];
            serviceConnectorServiceForAccount2 = [v289 serviceConnectorServiceForAccount];
            [(IDSUTunController *)selfCopy startDataChannelWithDevice:v325 genericConnection:v134 serviceConnectorService:serviceConnectorServiceForAccount2];

            goto LABEL_320;
          }

          portMap5 = [v325 portMap];
          addressPair9 = [(IDSGenericConnection *)v134 addressPair];
          localAddress7 = [addressPair9 localAddress];
          -[IDSUTunController releasePortIfNecessary:port:](selfCopy, "releasePortIfNecessary:port:", portMap5, [localAddress7 saPortHostOrder]);

          [(IDSUTunController *)selfCopy removeConnection:v134 fromDeviceConnectionInfo:v325 removeCode:5050 removeReason:@"stale connection"];
          [(IDSUTunController *)selfCopy checkSuspendTrafficForDevice:v325 wait:1];
LABEL_306:
          v134 = [[IDSGenericConnection alloc] initWithConnectionID:v289 protocol:v305 keyMaterialLength:v291 isCloudEnabled:0];
          cbuuid2 = [v325 cbuuid];
          -[IDSGenericConnection setIsDefaultPairedDevice:](v134, "setIsDefaultPairedDevice:", [cbuuid2 isEqualToString:kIDSDefaultPairedDeviceID]);

          [(IDSGenericConnection *)v134 setAddressPair:v288];
          connectionsByID5 = [v325 connectionsByID];
          [connectionsByID5 setObject:v134 forKey:v289];

          do
          {
            v224 = arc4random();
            v225 = sub_1006C2FC8([v325 outgoingEncryptionTableBySSRC], v224);
            v226 = v225 == 0;
          }

          while (!v226);
          [(IDSGenericConnection *)v134 setSSRCSend:v224];
          [(IDSGenericConnection *)v134 setSeqSendStart:arc4random()];
          [(IDSGenericConnection *)v134 setSeqSend:[(IDSGenericConnection *)v134 seqSendStart]];
          [(IDSGenericConnection *)v134 setEncryptionEnabled:1];
          v227 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
          {
            vifName50 = [v325 vifName];
            localConnectionGUID11 = [(IDSGenericConnection *)v134 localConnectionGUID];
            v230 = localConnectionGUID11;
            uTF8String2 = [localConnectionGUID11 UTF8String];
            seqSendStart = [(IDSGenericConnection *)v134 seqSendStart];
            *buf = 138413570;
            v332 = vifName50;
            v333 = 1024;
            *v334 = v287;
            *&v334[4] = 1024;
            *&v334[6] = v286;
            *&v334[10] = 2080;
            *&v334[12] = uTF8String2;
            *&v334[20] = 1024;
            *&v334[22] = v224;
            *&v334[26] = 1024;
            *v335 = seqSendStart;
            _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "%@: send setup encrypted channel message ports[%u:::%u] guid[%s] ssrc:%08x startSeq:%04x", buf, 0x2Eu);
          }

          controlChannel7 = [v325 controlChannel];
          localConnectionGUID12 = [(IDSGenericConnection *)v134 localConnectionGUID];
          seqSendStart2 = [(IDSGenericConnection *)v134 seqSendStart];
          v236 = sub_1006398CC(v305, v287, v286, localConnectionGUID12, osloga, logb, v310, v290, v224, SBYTE1(v224), SBYTE2(v224), SBYTE3(v224), seqSendStart2, SHIBYTE(seqSendStart2), [(IDSGenericConnection *)v134 localKeyMaterial], [(IDSGenericConnection *)v134 keyMaterialLength]);
          [controlChannel7 sendMessage:v236];

          [(IDSGenericConnection *)v134 setStateFlags:[(IDSGenericConnection *)v134 stateFlags]| 4];
          [(IDSGenericConnection *)v134 setConnectionSetupStartTime:sub_10062118C()];
          v237 = sub_1006C2FC8([v325 connectionsTableByLocalRemotePortKey], -[IDSGenericConnection uint32Key](v134, "uint32Key"));
          v238 = v237;
          if (v237)
          {
            [v237 invalidate];
          }

          sub_1006C2CB0([v325 outgoingEncryptionTableBySSRC], -[IDSGenericConnection SSRCSend](v134, "SSRCSend"), v134);

          goto LABEL_313;
        }

        v316 = [[NSString alloc] initWithBytes:&bytes[v70 + 24] length:v75 encoding:4];
        if (v316)
        {
          v77 += v75;
          goto LABEL_182;
        }

        v144 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          vifName51 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName51;
          _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel cannot decode account", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_325;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_325;
        }

        vifName52 = [v325 vifName];
        _IDSLogTransport();

        if (!_IDSShouldLog())
        {
          goto LABEL_325;
        }
      }

      else
      {
        v124 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          vifName53 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName53;
          _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel cannot decode remoteConnectionGUID", buf, 0xCu);
        }

        if (!os_log_shim_legacy_logging_enabled())
        {
          goto LABEL_325;
        }

        if (!_IDSShouldLogTransport())
        {
          goto LABEL_325;
        }

        vifName52 = [v325 vifName];
        _IDSLogTransport();

        if (!_IDSShouldLog())
        {
          goto LABEL_325;
        }
      }

      vifName54 = [v325 vifName];
      _IDSLogV();

LABEL_325:
      goto LABEL_14;
    case 7:
      controlChannel8 = [v325 controlChannel];
      [controlChannel8 processFairplayHostSessionInfo:messageCopy];

      goto LABEL_14;
    case 8:
      controlChannel9 = [v325 controlChannel];
      [controlChannel9 processFairplayDeviceInfo:messageCopy];

      goto LABEL_14;
    case 9:
      controlChannel10 = [v325 controlChannel];
      [controlChannel10 processFairplayDeviceSessionInfo:messageCopy];

      goto LABEL_14;
    case 10:
      controlChannel11 = [v325 controlChannel];
      [controlChannel11 processOTRNegotiationMessage:messageCopy];

      goto LABEL_14;
    case 11:
      if (v14 == 1)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          vifName55 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName55;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_EncryptControlChannel missing data", buf, 0xCu);
        }

        goto LABEL_13;
      }

      v50 = bytes[1];
      controlChannel12 = [v325 controlChannel];
      isReadyForEncrypting = [controlChannel12 isReadyForEncrypting];
      isDefaultPairedDevicePairedLocally = [controlChannel12 isDefaultPairedDevicePairedLocally];
      isDefaultPairedDevicePairedRemotely = [controlChannel12 isDefaultPairedDevicePairedRemotely];
      v55 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        vifName56 = [v325 vifName];
        *buf = 138413826;
        v332 = vifName56;
        v333 = 1024;
        *v334 = v50;
        *&v334[4] = 1024;
        *&v334[6] = (v50 >> 1) & 1;
        *&v334[10] = 1024;
        *&v334[12] = v50 & 1;
        *&v334[16] = 1024;
        *&v334[18] = isReadyForEncrypting;
        *&v334[22] = 1024;
        *&v334[24] = isDefaultPairedDevicePairedLocally;
        *v335 = 1024;
        *&v335[2] = isDefaultPairedDevicePairedRemotely;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%@: got control message: encrypt control channel flags %d ispairedlocally %d ispairedremotely %d (isencrypting: %d ispairedlocally %d ispairedremotely %d)", buf, 0x30u);
      }

      if (isReadyForEncrypting)
      {
        goto LABEL_125;
      }

      [controlChannel12 setIsDefaultPairedDevicePairedRemotely:v50 & 1];
      if ((~v50 & 3) != 0)
      {
        if (v50)
        {
          v106 = isDefaultPairedDevicePairedLocally;
        }

        else
        {
          v106 = 0;
        }

        if (v106 != 1)
        {
LABEL_125:

          goto LABEL_14;
        }

        v57 = sub_10063952C(1);
        [controlChannel12 sendPriorityMessage:v57];
      }

      else
      {
        v57 = sub_1006C2FC8([v325 connectionsTableByLocalRemotePortKey], 67109888);
        [(IDSUTunController *)selfCopy resetTCPConnection:v57 forDeviceConnectionInfo:v325];
        [controlChannel12 encryptControlChannelForStoredIdentities];
      }

      goto LABEL_125;
    case 12:
      controlChannel13 = [v325 controlChannel];
      [controlChannel13 processSuspendOTRNegotiationMessage:messageCopy];

      goto LABEL_14;
    case 14:
      if (v14 <= 9)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          vifName57 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName57;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_DirectMsgInfo insufficient header", buf, 0xCu);
        }

        goto LABEL_13;
      }

      if ([v324 isEqualToString:kIDSDefaultPairedDeviceID])
      {
        v65 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          vifName58 = [v325 vifName];
          *buf = 138412290;
          v332 = vifName58;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%@: got control message: direct message info", buf, 0xCu);
        }

        v67 = [[NSData alloc] initWithBytes:bytes + 1 length:v14 - 1];
        v68 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100639D4C;
        block[3] = &unk_100BD6ED0;
        v327 = v67;
        v69 = v67;
        dispatch_async(v68, block);
      }

      goto LABEL_14;
    default:
      v17 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        vifName59 = [v325 vifName];
        *buf = 138412546;
        v332 = vifName59;
        v333 = 1024;
        *v334 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: got invalid control message %d", buf, 0x12u);
      }

      goto LABEL_13;
  }
}

- (id)controlChannelVersionForCbuuid:(id)cbuuid
{
  cbuuidCopy = cbuuid;
  os_unfair_lock_lock(&self->_controlChannelVersionCacheLock);
  v5 = [(NSMutableDictionary *)self->_controlChannelVersionCache objectForKey:cbuuidCopy];

  os_unfair_lock_unlock(&self->_controlChannelVersionCacheLock);

  return v5;
}

- (void)setupDataConnectionWithDeviceConnectionInfo:(id)info options:(id)options
{
  infoCopy = info;
  optionsCopy = options;
  v145 = [optionsCopy objectForKey:@"account"];
  v7 = [optionsCopy objectForKey:@"service"];
  if (v7)
  {
    v142 = [optionsCopy objectForKey:IDSOpenSocketOptionStreamNameKey];
    v140 = [optionsCopy objectForKey:@"protocol"];
    v134 = [optionsCopy objectForKey:IDSOpenSocketOptionClientIDKey];
    v137 = [optionsCopy objectForKey:IDSOpenSocketOptionConnectionUUIDKey];
    v8 = [optionsCopy objectForKey:IDSOpenSocketOptionPriorityKey];
    v139 = v8;
    if (v8)
    {
      integerValue = [v8 integerValue];
    }

    else
    {
      integerValue = 200;
    }

    v10 = [optionsCopy objectForKey:IDSOpenSocketOptionCloudEnabledKey];
    bOOLValue = [v10 BOOLValue];

    if (_IDSSupportsDirectMessaging())
    {
      v11 = [optionsCopy objectForKey:IDSOpenSocketOptionIsDirectMsgSocket];
      bOOLValue2 = [v11 BOOLValue];

      v125 = bOOLValue2;
      switch(integerValue)
      {
        case 100:
          v13 = 16;
          break;
        case 200:
          v13 = 4;
          break;
        case 300:
          v13 = 8;
          break;
        default:
          v13 = 0;
          break;
      }

      v14 = [optionsCopy objectForKey:IDSOpenSocketOptionDataProtectionClass];
      unsignedIntValue = [v14 unsignedIntValue];

      if (unsignedIntValue == 2)
      {
        v13 |= 1uLL;
      }

      else if (!unsignedIntValue)
      {
        v13 |= 2uLL;
      }

      v16 = [optionsCopy objectForKey:IDSOpenSocketOptionDirectMsgType];
      unsignedShortValue = [v16 unsignedShortValue];
      switch(unsignedShortValue)
      {
        case 1:
          v13 |= 0x20uLL;
          break;
        case 5:
          v13 |= 0x80uLL;
          break;
        case 3:
          v13 |= 0x40uLL;
          break;
      }
    }

    else
    {
      v13 = 0;
      v125 = 0;
    }

    if ([v7 isEqualToIgnoringCase:@"com.apple.private.alloy.siri.proxy"])
    {
      v18 = 600;
    }

    else if ([v7 isEqualToIgnoringCase:@"com.apple.private.alloy.phonecontinuity"])
    {
      v18 = 800;
    }

    else
    {
      if (([v7 isEqualToIgnoringCase:@"com.apple.private.alloy.fignero"] & 1) == 0)
      {
        v133 = integerValue;
        if (![v7 isEqualToIgnoringCase:@"com.apple.private.alloy.willow.proxy"])
        {
          goto LABEL_35;
        }
      }

      v18 = 700;
    }

    v133 = v18;
LABEL_35:
    v19 = [optionsCopy objectForKey:IDSOpenSocketOptionEncryptionMethodKey];
    v138 = v19;
    if (v19)
    {
      v20 = [v19 integerValue] == 0;
    }

    else
    {
      v20 = 1;
    }

    v143 = IMGetCachedDomainValueForKey();
    if (v143)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          vifName = [infoCopy vifName];
          *buf = 138412802;
          *v159 = vifName;
          *&v159[8] = 2112;
          *v160 = v143;
          *&v160[8] = 2112;
          *v161 = v140;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: UTunSocketProtocolOverride [%@] instead of specified [%@]", buf, 0x20u);
        }
      }
    }

    if ([v140 isEqualToString:@"udp"])
    {
      v23 = 17;
    }

    else
    {
      v23 = 6;
    }

    v126 = v23;
    v24 = [optionsCopy objectForKey:IDSOpenSocketOptionRealTimeKey];
    bOOLValue3 = [v24 BOOLValue];

    cbuuid = [infoCopy cbuuid];
    if ([cbuuid isEqualToString:kIDSDefaultPairedDeviceID])
    {
      bOOLValue4 = 1;
    }

    else
    {
      v26 = [optionsCopy objectForKey:IDSDevicePropertyDefaultPairedDevice];
      bOOLValue4 = [v26 BOOLValue];
    }

    v132 = [optionsCopy objectForKey:IDSOpenSocketOptionCBUUIDKey];
    if (bOOLValue4)
    {
      v131 = IDSDeviceDefaultPairedDeviceUniqueID;
    }

    else
    {
      v131 = [optionsCopy objectForKey:IDSOpenSocketOptionDeviceUniqueIDKey];
    }

    v144 = [IDSGenericConnectionID idWithAccount:v145 service:v7 name:v142];
    connectionsByID = [infoCopy connectionsByID];
    v28 = [connectionsByID objectForKey:v144];

    if (v28)
    {
      v29 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        vifName2 = [infoCopy vifName];
        *buf = 138412802;
        *v159 = vifName2;
        *&v159[8] = 2112;
        *v160 = v28;
        *&v160[8] = 2112;
        *v161 = v144;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@: found connection [%@] for ID [%@]", buf, 0x20u);
      }

      if (([(IDSGenericConnection *)v28 stateFlags]& 1) == 0)
      {
        v31 = [optionsCopy objectForKeyedSubscript:@"connectionContext"];
        v32 = v31;
        if (v31)
        {
          [v31 setDeviceConnectionInfo:infoCopy];
          [v32 setConnection:v28];
          readHandler = [v32 readHandler];
          [(IDSGenericConnection *)v28 setReadHandler:readHandler];

          v34 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            vifName3 = [infoCopy vifName];
            readHandler2 = [v32 readHandler];
            v37 = objc_retainBlock(readHandler2);
            *buf = 138412802;
            *v159 = vifName3;
            *&v159[8] = 2048;
            *v160 = v37;
            *&v160[8] = 2112;
            *v161 = v28;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@: early return: bypass utun with readHandler %p for connection [%@]", buf, 0x20u);
          }
        }

        [(IDSGenericConnection *)v28 setClientID:v134];
        [(IDSGenericConnection *)v28 setPriority:integerValue];
        [(IDSGenericConnection *)v28 setSocketTrafficClass:v133];
        [(IDSGenericConnection *)v28 setStateFlags:[(IDSGenericConnection *)v28 stateFlags]| 1];
        [(IDSGenericConnection *)v28 setIsCloudEnabled:bOOLValue];
        [(IDSGenericConnection *)v28 setIsDefaultPairedDevice:bOOLValue4];
        [(IDSGenericConnection *)v28 setIsRealTime:bOOLValue3];
        if (v137)
        {
          [(IDSGenericConnection *)v28 setIdsDeviceConnectionUUID:v137];
          v38 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
          [(IDSGenericConnection *)v28 connectionInitTime];
          v40 = v39;
          idsDeviceConnectionUUID = [(IDSGenericConnection *)v28 idsDeviceConnectionUUID];
          [v38 setConnectionInitTime:idsDeviceConnectionUUID forConnectionUUID:v40];

          [(IDSGenericConnection *)v28 firstDataPacketReceiveTime];
          if (v42 != 0.0)
          {
            v43 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
            [(IDSGenericConnection *)v28 firstDataPacketReceiveTime];
            v45 = v44;
            idsDeviceConnectionUUID2 = [(IDSGenericConnection *)v28 idsDeviceConnectionUUID];
            [v43 setFirstPacketReceiveTime:idsDeviceConnectionUUID2 forConnectionUUID:v45];
          }
        }

        if (![(IDSUTunController *)self isConnected:v28 deviceConnectionInfo:infoCopy])
        {
          v86 = [optionsCopy objectForKey:IDSOpenSocketOptionSetAllowlistUUIDForStreamingSocket];
          bOOLValue5 = [v86 BOOLValue];

          if (bOOLValue5)
          {
            [(IDSGenericConnection *)v28 setShouldSetAllowlistUUIDForStreamingSocket:1];
          }

          v88 = [optionsCopy objectForKey:@"completionHandler"];
          v89 = [optionsCopy objectForKey:@"completionHandlerQueue"];
          [(IDSGenericConnection *)v28 setCompletionQueue:v89];
          [(IDSGenericConnection *)v28 setOpenSocketCompletionHandler:v88];
          goto LABEL_121;
        }

        [(IDSGenericConnection *)v28 setStateFlags:[(IDSGenericConnection *)v28 stateFlags]| 2];
        v47 = [(IDSGenericConnection *)v28 sd];
        connectError = [(IDSGenericConnection *)v28 connectError];
        [(IDSGenericConnection *)v28 setSd:0xFFFFFFFFLL];
        [(IDSGenericConnection *)v28 setConnectError:0];
        v48 = TrafficClassForIDSOpenSocketPriorityLevel();
        sub_10062CDEC(v47, v48);
        v49 = [optionsCopy objectForKey:IDSOpenSocketOptionSetAllowlistUUIDForStreamingSocket];
        bOOLValue6 = [v49 BOOLValue];

        if (v47 == -1)
        {
          v51 = 0;
        }

        else
        {
          v51 = bOOLValue6;
        }

        if (v51 != 1)
        {
LABEL_116:
          if (bOOLValue3)
          {
            [(IDSGenericConnection *)v28 setShouldStopBTDatagramLink:1];
            v114 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v159 = v7;
              _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "openSocket for %@ using BT datagram link - start", buf, 0xCu);
            }

            [(IDSLinkManager *)self->_linkManager startBTDatagramLinkForDeviceUniqueID:v131 cbuuid:v132];
          }

          linkManager = self->_linkManager;
          cbuuid2 = [infoCopy cbuuid];
          v117 = [(IDSLinkManager *)linkManager currentLinkType:cbuuid2];

          v88 = [optionsCopy objectForKey:@"completionHandlerQueue"];
          v150[0] = _NSConcreteStackBlock;
          v150[1] = 3221225472;
          v150[2] = sub_10063B420;
          v150[3] = &unk_100BE2D50;
          v151 = v28;
          v152 = optionsCopy;
          v157 = v47;
          v155 = v117;
          v156 = v133;
          v153 = infoCopy;
          v154 = connectError;
          v89 = connectError;
          dispatch_async(v88, v150);

LABEL_121:
LABEL_122:

          v9 = v142;
          goto LABEL_123;
        }

        v164[0] = 0;
        v164[1] = 0;
        v52 = [NSUUID alloc];
        v53 = [v52 initWithUUIDString:NRParametersWhitelistedAppUUIDString];
        [v53 getUUIDBytes:v164];
        if (setsockopt(v47, 0xFFFF, 4360, v164, 0x10u))
        {
          v54 = *__error();
          v55 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = strerror(v54);
            *buf = 67109634;
            *v159 = v47;
            *&v159[4] = 1024;
            *&v159[6] = v54;
            *v160 = 2080;
            *&v160[2] = v56;
            v57 = "setsockopt on socket (%d) failed for delegated uuid (error=%d: %s).";
            v58 = v55;
            v59 = 24;
LABEL_114:
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, v57, buf, v59);
          }
        }

        else
        {
          v55 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v159 = v47;
            v57 = "setsockopt on socket (%d) succeeded for delegated uuid";
            v58 = v55;
            v59 = 8;
            goto LABEL_114;
          }
        }

        goto LABEL_116;
      }

      portMap = [infoCopy portMap];
      addressPair = [(IDSGenericConnection *)v28 addressPair];
      localAddress = [addressPair localAddress];
      -[IDSUTunController releasePortIfNecessary:port:](self, "releasePortIfNecessary:port:", portMap, [localAddress saPortHostOrder]);

      [(IDSUTunController *)self removeConnection:v28 fromDeviceConnectionInfo:infoCopy removeCode:5102 removeReason:@"replace existing connection"];
    }

    LOWORD(v164[0]) = -21846;
    if (sub_1005B07E0([infoCopy portMap], v164))
    {
      v63 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        vifName4 = [infoCopy vifName];
        *buf = 138412802;
        *v159 = vifName4;
        *&v159[8] = 2112;
        *v160 = v7;
        *&v160[8] = 2112;
        *v161 = v142;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%@: cannot allocate new port for service %@ name %@", buf, 0x20u);
      }

      queue = [optionsCopy objectForKey:@"completionHandlerQueue"];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10063B57C;
      block[3] = &unk_100BE04B0;
      v147 = infoCopy;
      v148 = optionsCopy;
      v149 = v133;
      v65 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
      dispatch_async(queue, v65);

      v66 = v147;
      v67 = v28;
    }

    else
    {
      if ([infoCopy shouldUseServiceConnector])
      {
        v68 = -4222;
      }

      else
      {
        v68 = 1025;
      }

      v124 = v68;
      localSA = [infoCopy localSA];
      queue = [IDSSockAddrWrapper wrapperWithWrapper:localSA andPortHostOrder:LOWORD(v164[0])];

      remoteSA = [infoCopy remoteSA];
      v123 = [IDSSockAddrWrapper wrapperWithWrapper:remoteSA andPortHostOrder:v124];

      v122 = [IDSSockAddrWrapperPair wrapperPairWithLocalAddress:queue remoteAddress:v123];
      LODWORD(remoteSA) = self->_encryptionEnabled;
      v71 = [IDSGenericConnection alloc];
      if (remoteSA & v20)
      {
        v67 = [(IDSGenericConnection *)v71 initWithConnectionID:v144 protocol:v126 keyMaterialLength:60 isCloudEnabled:bOOLValue];

        do
        {
          v72 = arc4random();
          v73 = sub_1006C2FC8([infoCopy outgoingEncryptionTableBySSRC], v72);
          v74 = v73 == 0;
        }

        while (!v74);
        [(IDSGenericConnection *)v67 setSSRCSend:v72];
        [(IDSGenericConnection *)v67 setSeqSendStart:arc4random()];
        [(IDSGenericConnection *)v67 setSeqSend:[(IDSGenericConnection *)v67 seqSendStart]];
        [(IDSGenericConnection *)v67 setKeyMaterialLength:60];
        [(IDSGenericConnection *)v67 setEncryptionEnabled:1];
        v75 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          vifName5 = [infoCopy vifName];
          v77 = LOWORD(v164[0]);
          localConnectionGUID = [(IDSGenericConnection *)v67 localConnectionGUID];
          v79 = localConnectionGUID;
          uTF8String = [localConnectionGUID UTF8String];
          seqSendStart = [(IDSGenericConnection *)v67 seqSendStart];
          *buf = 138413570;
          *v159 = vifName5;
          *&v159[8] = 1024;
          *v160 = v77;
          *&v160[4] = 1024;
          *&v160[6] = v124;
          *v161 = 2080;
          *&v161[2] = uTF8String;
          LOWORD(v162) = 1024;
          *(&v162 + 2) = v72;
          HIWORD(v162) = 1024;
          v163 = seqSendStart;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%@: send setup encrypted channel message ports[%u:::%u] guid[%s] ssrc:%08x startSeq:%04x", buf, 0x2Eu);
        }

        v82 = v164[0];
        localConnectionGUID2 = [(IDSGenericConnection *)v67 localConnectionGUID];
        seqSendStart2 = [(IDSGenericConnection *)v67 seqSendStart];
        v85 = sub_1006398CC(v126, v82, v124, localConnectionGUID2, 0, v145, v7, v142, v72, SBYTE1(v72), SBYTE2(v72), SBYTE3(v72), seqSendStart2, SHIBYTE(seqSendStart2), [(IDSGenericConnection *)v67 localKeyMaterial], [(IDSGenericConnection *)v67 keyMaterialLength]);

        sub_1006C2CB0([infoCopy outgoingEncryptionTableBySSRC], -[IDSGenericConnection SSRCSend](v67, "SSRCSend"), v67);
      }

      else
      {
        v67 = [(IDSGenericConnection *)v71 initWithConnectionID:v144 protocol:v126 isCloudEnabled:bOOLValue];

        v90 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          vifName6 = [infoCopy vifName];
          v92 = LOWORD(v164[0]);
          localConnectionGUID3 = [(IDSGenericConnection *)v67 localConnectionGUID];
          v94 = localConnectionGUID3;
          uTF8String2 = [localConnectionGUID3 UTF8String];
          *buf = 138413058;
          *v159 = vifName6;
          *&v159[8] = 1024;
          *v160 = v92;
          *&v160[4] = 1024;
          *&v160[6] = v124;
          *v161 = 2080;
          *&v161[2] = uTF8String2;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%@: send setup channel message ports[%u:::%u] guid[%s]", buf, 0x22u);
        }

        v96 = v164[0];
        localConnectionGUID4 = [(IDSGenericConnection *)v67 localConnectionGUID];
        v85 = sub_100639644(v126, v96, v124, localConnectionGUID4, 0, v145, v7, v142, v125, v13);
      }

      v98 = [optionsCopy objectForKeyedSubscript:@"connectionContext"];
      v99 = v98;
      if (v98)
      {
        [v98 setDeviceConnectionInfo:infoCopy];
        [v99 setConnection:v67];
        readHandler3 = [v99 readHandler];
        [(IDSGenericConnection *)v67 setReadHandler:readHandler3];

        v101 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          vifName7 = [infoCopy vifName];
          readHandler4 = [v99 readHandler];
          v104 = objc_retainBlock(readHandler4);
          *buf = 138412802;
          *v159 = vifName7;
          *&v159[8] = 2048;
          *v160 = v104;
          *&v160[8] = 2112;
          *v161 = v67;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%@: bypass utun with readHandler %p for connection [%@]", buf, 0x20u);
        }
      }

      [(IDSGenericConnection *)v67 setPriority:integerValue];
      [(IDSGenericConnection *)v67 setSocketTrafficClass:v133];
      [(IDSGenericConnection *)v67 setHasMoreData:1];
      [(IDSGenericConnection *)v67 setStateFlags:1];
      v105 = [optionsCopy objectForKey:@"completionHandler"];
      [(IDSGenericConnection *)v67 setOpenSocketCompletionHandler:v105];
      v106 = [optionsCopy objectForKey:@"completionHandlerQueue"];
      [(IDSGenericConnection *)v67 setCompletionQueue:v106];
      [(IDSGenericConnection *)v67 setAddressPair:v122];
      [(IDSGenericConnection *)v67 setClientID:v134];
      if (v137)
      {
        [(IDSGenericConnection *)v67 setIdsDeviceConnectionUUID:v137];
      }

      connectionsByID2 = [infoCopy connectionsByID];
      [connectionsByID2 setObject:v67 forKey:v144];

      v108 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        vifName8 = [infoCopy vifName];
        *buf = 138413058;
        *v159 = vifName8;
        *&v159[8] = 2112;
        *v160 = v67;
        *&v160[8] = 2112;
        *v161 = v144;
        *&v161[8] = 2112;
        v162 = infoCopy;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%@: setting up new connection [%@] for ID [%@] deviceInfo[%@]", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [infoCopy vifName];
        v120 = v144;
        v118 = v121 = infoCopy;
        v119 = v67;
        _IDSLogV();
      }

      v110 = [optionsCopy objectForKey:{IDSOpenSocketOptionSetAllowlistUUIDForStreamingSocket, v118, v119, v120, v121}];
      bOOLValue7 = [v110 BOOLValue];

      if (bOOLValue7)
      {
        [(IDSGenericConnection *)v67 setShouldSetAllowlistUUIDForStreamingSocket:1];
      }

      controlChannel = [infoCopy controlChannel];
      [controlChannel sendMessage:v85];

      [(IDSGenericConnection *)v67 setStateFlags:[(IDSGenericConnection *)v67 stateFlags]| 4];
      if (qword_100CBF438 != -1)
      {
        sub_10092D8D8();
      }

      [(IDSGenericConnection *)v67 setConnectionSetupStartTime:*&qword_100CBF3C0 * mach_continuous_time()];
      [(IDSGenericConnection *)v67 setIsDefaultPairedDevice:bOOLValue4];
      [(IDSGenericConnection *)v67 setIsRealTime:bOOLValue3];
      if (bOOLValue3)
      {
        [(IDSGenericConnection *)v67 setShouldStopBTDatagramLink:1];
        v113 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v159 = v7;
          _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "openSocket for %@ using BT datagram link - start", buf, 0xCu);
        }

        [(IDSLinkManager *)self->_linkManager startBTDatagramLinkForDeviceUniqueID:v131 cbuuid:v132];
      }

      v66 = v123;
    }

    v28 = v67;
    goto LABEL_122;
  }

  v9 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Service is nil, please provide a valid service name.", buf, 2u);
  }

LABEL_123:
}

- (void)closeDataConnectionWithDeviceConnectionInfo:(id)info options:(id)options
{
  infoCopy = info;
  optionsCopy = options;
  v8 = [optionsCopy objectForKey:@"account"];
  v9 = [optionsCopy objectForKey:@"service"];
  v10 = [optionsCopy objectForKey:IDSOpenSocketOptionStreamNameKey];
  v11 = [IDSGenericConnectionID idWithAccount:v8 service:v9 name:v10];
  connectionsByID = [infoCopy connectionsByID];
  v13 = [connectionsByID objectForKey:v11];

  v14 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    vifName = [infoCopy vifName];
    *buf = 138412802;
    v30 = vifName;
    v31 = 2112;
    v32 = optionsCopy;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: closeSocketWithOptions called with options [%@] (connection %@)", buf, 0x20u);
  }

  if (v13 && ([v13 stateFlags] & 1) != 0)
  {
    v16 = v8;
    selfCopy = self;
    localConnectionGUID = [v13 localConnectionGUID];
    remoteConnectionGUID = [v13 remoteConnectionGUID];
    v28 = v16;
    v20 = sub_10062D4A4(localConnectionGUID, remoteConnectionGUID, v16, v9, v10);

    if (v20)
    {
      v21 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        vifName2 = [infoCopy vifName];
        *buf = 138412802;
        v30 = vifName2;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: close channel control message [%@] created for connection %@", buf, 0x20u);
      }

      controlChannel = [infoCopy controlChannel];
      [controlChannel sendMessage:v20];
    }

    portMap = [infoCopy portMap];
    addressPair = [v13 addressPair];
    [addressPair localAddress];
    v26 = v27 = v20;
    -[IDSUTunController releasePortIfNecessary:port:](selfCopy, "releasePortIfNecessary:port:", portMap, [v26 saPortHostOrder]);

    [(IDSUTunController *)selfCopy removeConnection:v13 fromDeviceConnectionInfo:infoCopy removeCode:5103 removeReason:@"closeSocketWithOptions called"];
    v8 = v28;
  }
}

- (id)defaultPairedDeviceIdentityPair
{
  v2 = +[IDSRegistrationKeyManager sharedInstance];
  v3 = [v2 latestCopyMessageProtectionIdentityForDataProtectionClass:2];

  if (v3)
  {
    v4 = [[IDSMPFullLegacyIdentity alloc] initWithFullIdentity:v3];
    CFRelease(v3);
  }

  else
  {
    v5 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed creating local identity because latestCopyMessageProtectionIdentity is nil", buf, 2u);
    }

    v4 = 0;
  }

  v6 = +[IDSPairingManager sharedInstance];
  pairedDevicePublicKey = [v6 pairedDevicePublicKey];

  v13 = 0;
  v8 = [IDSMPPublicLegacyIdentity identityWithData:pairedDevicePublicKey error:&v13];
  v9 = v13;
  if (v8)
  {
    if (v4)
    {
      v10 = [[IDSUTunControlChannelIdentityPair alloc] initWithLocalFullIdentity:v4 remotePublicIdentity:v8];
      goto LABEL_13;
    }
  }

  else
  {
    v11 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = pairedDevicePublicKey;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed creating public identity from data: %@  (Error: %@)", buf, 0x16u);
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)_prepareConnectionInfoWithCBUUID:(id)d deviceUniqueID:(id)iD shouldUseServiceConnector:(BOOL)connector identityPair:(id)pair remoteDeviceEncryptionInfo:(id)info
{
  connectorCopy = connector;
  dCopy = d;
  v13 = [(IDSUTunController *)self setupNewDeviceConnectionInfoForCbuuid:dCopy deviceUniqueID:iD identityPair:pair remoteDeviceEncryptionInfo:info shouldUseServiceConnector:connectorCopy];
  if (v13)
  {
    [(IDSLinkManager *)self->_linkManager triggerFixedInterfaceLinksDidConnect];
    v14 = v13;
  }

  else
  {
    v15 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: UTunController unable to create new device - cannot continue", &v17, 0xCu);
    }
  }

  return v13;
}

- (void)prepareDefaultPairedConnectionInfoWithDeviceUniqueID:(id)d shouldUseServiceConnector:(BOOL)connector
{
  dCopy = d;
  v4 = dCopy;
  IDSTransportThreadAddBlock();
}

- (void)openSocketWithOptions:(id)options queue:(id)queue completionHandler:(id)handler
{
  optionsCopy = options;
  queueCopy = queue;
  handlerCopy = handler;
  v10 = [optionsCopy mutableCopy];
  v11 = [handlerCopy copy];

  v12 = objc_retainBlock(v11);
  if (v12)
  {
    CFDictionarySetValue(v10, @"completionHandler", v12);
  }

  if (queueCopy)
  {
    v13 = queueCopy;
  }

  else
  {
    v13 = im_primary_queue();
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  CFDictionarySetValue(v10, @"completionHandlerQueue", v13);

LABEL_7:
  v14 = [(__CFDictionary *)v10 objectForKey:IDSOpenSocketOptionCBUUIDKey];
  v15 = [(__CFDictionary *)v10 objectForKey:IDSDevicePropertyDefaultPairedDevice];
  bOOLValue = [v15 BOOLValue];

  if (bOOLValue)
  {
    v17 = IDSDeviceDefaultPairedDeviceUniqueID;
  }

  else
  {
    v17 = [(__CFDictionary *)v10 objectForKey:IDSOpenSocketOptionDeviceUniqueIDKey];
    [v17 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID];
  }

  v18 = [(__CFDictionary *)v10 objectForKey:IDSOpenSocketOptionCloudEnabledKey];
  [v18 BOOLValue];

  v19 = [(__CFDictionary *)v10 objectForKey:IDSOpenSocketOptionIsIDSDSessionSocket];
  [v19 BOOLValue];

  [(__CFDictionary *)v10 objectForKeyedSubscript:IDSOpenSocketOptionRemoteDeviceEncryptionInfoKey];
  v25 = v14;
  v26 = v10;
  v27 = optionsCopy;
  v29 = v28 = v17;
  v20 = v29;
  v21 = v17;
  v22 = optionsCopy;
  v23 = v10;
  v24 = v14;
  IDSTransportThreadAddBlock();
}

- (void)cleanupSocketsForClient:(id)client
{
  clientCopy = client;
  v3 = clientCopy;
  IDSTransportThreadAddBlock();
}

- (void)closeSocketWithOptions:(id)options queue:(id)queue completionHandler:(id)handler
{
  optionsCopy = options;
  queueCopy = queue;
  handlerCopy = handler;
  v8 = queueCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  IDSTransportThreadAddBlock();
}

- (void)doCheckSuspendTrafficForDevice:(id)device
{
  deviceCopy = device;
  if (qword_100CBF438 != -1)
  {
    sub_10092D900();
  }

  v5 = *&qword_100CBF3C0 * mach_continuous_time();
  [deviceCopy suspendTrafficCheckTime];
  if (v6 <= v5)
  {
    connectionsByID = [deviceCopy connectionsByID];
    v11 = [connectionsByID count];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    connectionsByID2 = [deviceCopy connectionsByID];
    allValues = [connectionsByID2 allValues];

    v14 = [allValues countByEnumeratingWithState:&v20 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v21;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(allValues);
          }

          v16 += [*(*(&v20 + 1) + 8 * i) suspended];
        }

        v15 = [allValues countByEnumeratingWithState:&v20 objects:v34 count:16];
      }

      while (v15);
    }

    else
    {
      v16 = 0;
    }

    v19 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v31 = *&v11;
      v32 = 2048;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Suspend traffic check: connections %lu =? suspended connections %lu", buf, 0x16u);
    }

    if (v11 == v16)
    {
      if (deviceCopy[2079])
      {
        os_channel_get_fd();
      }

      else
      {
        [deviceCopy utunSocket];
      }

      IDSTransportThreadSuspendSocket();
      [deviceCopy setSuspendTraffic:1];
      [(IDSLinkManager *)self->_linkManager stopLinkForDeviceUniqueID:deviceCopy[2] cbuuid:deviceCopy[1] disconnectWP:1];
    }

    else
    {
      [deviceCopy setSuspendTraffic:0];
    }

    [deviceCopy setSuspendTrafficCheckTime:0.0];
  }

  else
  {
    [deviceCopy suspendTrafficCheckTime];
    v8 = v7 - v5 + 0.5;
    v9 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Rescheduling suspend traffic check in %0.2lf seconds", buf, 0xCu);
    }

    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_10063E44C;
    v27 = &unk_100BD9AA8;
    selfCopy = self;
    v29 = deviceCopy;
    IDSTransportThreadAddBlockAfter();
  }
}

- (void)checkSuspendTrafficForDevice:(id)device wait:(BOOL)wait
{
  deviceCopy = device;
  if (qword_100CBF438 != -1)
  {
    sub_10092D900();
  }

  v7 = mach_continuous_time();
  if (wait)
  {
    v8 = *&qword_100CBF3C0 * v7;
    [deviceCopy suspendTrafficCheckTime];
    if (v9 == 0.0)
    {
      [deviceCopy setSuspendTrafficCheckTime:v8 + 15.0];
      v10 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = 15.5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Scheduling a suspend traffic check in %0.2lf seconds", buf, 0xCu);
      }

      v14 = deviceCopy;
      IDSTransportThreadAddBlockAfter();
    }

    else
    {
      v11 = +[IDSFoundationLog utunController];
      v12 = v8 + 15.0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [deviceCopy suspendTrafficCheckTime];
        *buf = 134217984;
        v16 = v12 - v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Extending suspend traffic check by %0.2lf seconds", buf, 0xCu);
      }

      [deviceCopy setSuspendTrafficCheckTime:v12];
    }
  }

  else
  {
    [deviceCopy setSuspendTrafficCheckTime:0.0];
    [(IDSUTunController *)self doCheckSuspendTrafficForDevice:deviceCopy];
  }
}

- (void)suspendSocketWithOptions:(id)options
{
  optionsCopy = options;
  v3 = optionsCopy;
  IDSTransportThreadAddBlock();
}

- (BOOL)peerSupportsASQUIC:(id)c
{
  cCopy = c;
  v4 = [cCopy objectForKey:@"account"];
  v5 = [cCopy objectForKey:@"service"];
  v6 = [cCopy objectForKey:IDSOpenSocketOptionStreamNameKey];

  v7 = [IDSGenericConnectionID idWithAccount:v4 service:v5 name:v6];
  v8 = [NSString stringWithUTF8String:"61314"];
  v9 = [NSUUID alloc];
  v10 = +[IDSPairingManager sharedInstance];
  pairedDeviceUUIDString = [v10 pairedDeviceUUIDString];
  v12 = [v9 initWithUUIDString:pairedDeviceUUIDString];

  if (v12)
  {
    v13 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v12];
    v14 = [NREndpoint alloc];
    serviceConnectorServiceForAccount = [v7 serviceConnectorServiceForAccount];
    v16 = [v14 initWithDeviceIdentifier:v13 portString:v8 dataProtectionClass:4 service:serviceConnectorServiceForAccount];

    usesASQUIC = [v16 usesASQUIC];
    v18 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      if (usesASQUIC)
      {
        v19 = @"YES";
      }

      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "peerSupportsASQUIC: %@", &v21, 0xCu);
    }
  }

  else
  {
    v13 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "peerSupportsASQUIC: no paired device found", &v21, 2u);
    }

    LOBYTE(usesASQUIC) = 0;
  }

  return usesASQUIC;
}

- (void)resumeSocketWithOptions:(id)options shouldLogCall:(BOOL)call
{
  optionsCopy = options;
  v4 = optionsCopy;
  IDSTransportThreadAddBlock();
}

- (void)releasePortIfNecessary:(IDSPortMap *)necessary port:(unsigned __int16)port
{
  portCopy = port;
  if ((port & 0xFFFE) == 0x400)
  {
    v5 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = portCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "can't release a reserved port: %u", v6, 8u);
    }
  }

  else
  {

    sub_1005B0FD0(necessary, port);
  }
}

- (void)startUDPGlobalLinkForDevice:(id)device
{
  deviceCopy = device;
  v3 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)stopUDPGlobalLinkForDevice:(id)device
{
  deviceCopy = device;
  v3 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)createConnectionDataForDevice:(id)device localPartyID:(id)d dataReadyHandler:(id)handler
{
  deviceCopy = device;
  dCopy = d;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = dCopy;
  v10 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)processRemoteConnectionDataForDevice:(id)device remoteConnectionData:(id)data completionHandler:(id)handler
{
  deviceCopy = device;
  dataCopy = data;
  handlerCopy = handler;
  v8 = handlerCopy;
  v9 = dataCopy;
  v10 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)startConnectionForDevice:(id)device isInitiator:(BOOL)initiator remotePartyID:(id)d useStunMICheck:(BOOL)check
{
  deviceCopy = device;
  dCopy = d;
  v8 = dCopy;
  v9 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)stopGlobalLinkForDevice:(id)device
{
  deviceCopy = device;
  v3 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)startGlobalLinkForDevice:(id)device
{
  deviceCopy = device;
  v3 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)connectGlobalLinkForDevice:(id)device sessionInfo:(id)info connectReadyHandler:(id)handler withLocalInterfacePreference:(int)preference
{
  deviceCopy = device;
  infoCopy = info;
  handlerCopy = handler;
  v9 = handlerCopy;
  v10 = infoCopy;
  v11 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)disconnectGlobalLinkForDevice:(id)device isReinitiating:(BOOL)reinitiating completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  v7 = handlerCopy;
  v8 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)handleAllocateRequestFailureForDevice:(id)device requestID:(id)d errorCode:(int)code
{
  deviceCopy = device;
  dCopy = d;
  v7 = dCopy;
  v8 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)getLinkInformationForDevice:(id)device completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)obliterateConnectionInfoForCBUUID:(id)d
{
  dCopy = d;
  v5 = +[IDSPairingManager sharedInstance];
  pairedDeviceUUIDString = [v5 pairedDeviceUUIDString];
  v7 = [dCopy isEqualToString:pairedDeviceUUIDString];

  if (v7)
  {

    [(IDSUTunController *)self obliterateConnectionInfoWithCompletionBlock:0 completionQueue:0];
  }

  else
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "obliterateConnectionInfo called on a device that isnt the default paired device.  Ignoring...", v9, 2u);
    }
  }
}

- (void)obliterateConnectionInfoForCBUUID:(id)d completionBlock:(id)block completionQueue:(id)queue
{
  dCopy = d;
  blockCopy = block;
  queueCopy = queue;
  v13 = blockCopy;
  v9 = queueCopy;
  v10 = blockCopy;
  v11 = dCopy;
  IDSTransportThreadAddBlock();
}

- (void)addPairedDevice:(id)device shouldPairDirectlyOverIPsec:(BOOL)psec
{
  deviceCopy = device;
  v4 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)connectPairedDevice:(id)device
{
  deviceCopy = device;
  v3 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (void)deletePairedDevice:(id)device
{
  deviceCopy = device;
  v3 = deviceCopy;
  IDSTransportThreadAddBlock();
}

- (id)copyLinkStatsDict
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_10000AAB4;
  v8 = sub_10000BCCC;
  v9 = 0;
  IDSTransportThreadAddSyncBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)onTransportThread_PerServiceDataTransferredForDevice:(id)device services:(id)services
{
  deviceCopy = device;
  servicesCopy = services;
  if ([deviceCopy length])
  {
    *&v25 = 0;
    *(&v25 + 1) = &v25;
    v26 = 0x3032000000;
    v27 = sub_10000AAB4;
    v28 = sub_10000BCCC;
    v29 = 0;
    v8 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, deviceCopy);
    if (v8)
    {
      os_unfair_lock_lock(&unk_100CBF440);
      v9 = [qword_100CBF3B0 mutableCopy];
      os_unfair_lock_unlock(&unk_100CBF440);
      connectionsTableByLocalRemotePortKey = [v8 connectionsTableByLocalRemotePortKey];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10064115C;
      v17[3] = &unk_100BE2F50;
      v18 = servicesCopy;
      v20 = &v25;
      v11 = v9;
      v19 = v11;
      sub_10000C280(connectionsTableByLocalRemotePortKey, v17);
    }

    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(*(&v25 + 1) + 40);
      *buf = 136315394;
      v22 = "[IDSUTunController onTransportThread_PerServiceDataTransferredForDevice:services:]";
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s: reporting service stats %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v14 = *(*(&v25 + 1) + 40);

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v15 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v25) = 136315138;
      *(&v25 + 4) = "[IDSUTunController onTransportThread_PerServiceDataTransferredForDevice:services:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: invalid arguments", &v25, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)perServiceDataTransferredForDevice:(id)device services:(id)services
{
  deviceCopy = device;
  servicesCopy = services;
  if ([deviceCopy length])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = sub_10000AAB4;
    v15 = sub_10000BCCC;
    v16 = 0;
    v10 = deviceCopy;
    v11 = servicesCopy;
    IDSTransportThreadAddSyncBlock();
    v7 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[IDSUTunController perServiceDataTransferredForDevice:services:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: invalid arguments", &buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)perServiceDataSentForDevice:(id)device services:(id)services
{
  deviceCopy = device;
  servicesCopy = services;
  if ([deviceCopy length])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = sub_10000AAB4;
    v15 = sub_10000BCCC;
    v16 = 0;
    v10 = deviceCopy;
    v11 = servicesCopy;
    IDSTransportThreadAddSyncBlock();
    v7 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[IDSUTunController perServiceDataSentForDevice:services:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: invalid arguments", &buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)perServiceDataReceivedForDevice:(id)device services:(id)services
{
  deviceCopy = device;
  servicesCopy = services;
  if ([deviceCopy length])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = sub_10000AAB4;
    v15 = sub_10000BCCC;
    v16 = 0;
    v10 = deviceCopy;
    v11 = servicesCopy;
    IDSTransportThreadAddSyncBlock();
    v7 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[IDSUTunController perServiceDataReceivedForDevice:services:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: invalid arguments", &buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (unint64_t)totalPacketsSentForDevice:(id)device services:(id)services
{
  deviceCopy = device;
  servicesCopy = services;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9 = deviceCopy;
  v10 = servicesCopy;
  IDSTransportThreadAddSyncBlock();
  v7 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v7;
}

- (unint64_t)totalPacketsReceivedForDevice:(id)device services:(id)services
{
  deviceCopy = device;
  servicesCopy = services;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9 = deviceCopy;
  v10 = servicesCopy;
  IDSTransportThreadAddSyncBlock();
  v7 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v7;
}

- (void)setLinkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v3 = preferencesCopy;
  IDSTransportThreadAddBlock();
}

- (void)sendOTRNegotiationMessage:(id)message negotiationCount:(unsigned int)count negotiationData:(id)data
{
  messageCopy = message;
  dataCopy = data;
  v7 = dataCopy;
  v8 = messageCopy;
  IDSTransportThreadAddBlock();
}

- (void)sendSuspendOTRNegotiationMessage:(id)message
{
  messageCopy = message;
  v3 = messageCopy;
  IDSTransportThreadAddBlock();
}

- (void)link:(id)link didConnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v11 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, cbuuidCopy);
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[throughput] Now can send to device %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v22 = v11;
    _IDSLogV();
  }

  if (v11)
  {
    v13 = +[IDSDevicePolicyController sharedInstance];
    v14 = [v13 shouldBlackOutDeviceWithCbuuid:cbuuidCopy];

    if (v14)
    {
      v15 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        controlChannel = [v11 controlChannel];
        deviceUniqueID = [controlChannel deviceUniqueID];
        *buf = 138412546;
        v24 = cbuuidCopy;
        v25 = 2112;
        v26 = deviceUniqueID;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device %@/%@ is blacked out due to fairplay failures", buf, 0x16u);
      }

      [(IDSLinkManager *)self->_linkManager stopLinkForDeviceUniqueID:dCopy cbuuid:cbuuidCopy disconnectWP:1];
    }

    else
    {
      vifName = [v11 vifName];
      v19 = vifName;
      sub_100642B5C([vifName UTF8String], 1);

      if (([v11 linkLayerConnected] & 1) == 0)
      {
        [v11 setLinkLayerConnected:1];
        if (qword_100CBF438 != -1)
        {
          sub_10092D8D8();
        }

        mach_continuous_time();
        [v11 linkLayerDisconnectTime];
        if ([cbuuidCopy isEqualToString:kIDSDefaultPairedDeviceID])
        {
          v20 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "link is connected for default paired device, check suspended OTR sessions...", buf, 2u);
          }

          controlChannel2 = [v11 controlChannel];
          [controlChannel2 resumeOTRNegotiation];
        }
      }

      [v11 setSuspendTraffic:{0, v22}];
      if (v11[2079])
      {
        os_channel_get_fd();
      }

      else
      {
        [v11 utunSocket];
      }

      IDSTransportThreadResumeSocket();
      [v11 performBlocksOnLinkConnect];
    }
  }
}

- (void)link:(id)link didDisconnectForDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  linkCopy = link;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v11 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, cbuuidCopy);
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[throughput] Now cannot send to device %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v11;
    _IDSLogV();
  }

  if (v11)
  {
    vifName = [v11 vifName];
    v14 = vifName;
    sub_100642B5C([vifName UTF8String], 0);

    if ([v11 linkLayerConnected])
    {
      [v11 setLinkLayerConnected:0];
      if (qword_100CBF438 != -1)
      {
        sub_10092D8D8();
      }

      [v11 setLinkLayerDisconnectTime:*&qword_100CBF3C0 * mach_continuous_time()];
    }

    if ([cbuuidCopy isEqualToString:{kIDSDefaultPairedDeviceID, v15}])
    {
      if (v11[2079])
      {
        os_channel_get_fd();
      }

      else
      {
        [v11 utunSocket];
      }

      IDSTransportThreadSuspendSocket();
    }

    else if (([v11 suspendTraffic] & 1) == 0)
    {
      if (v11[2079])
      {
        os_channel_get_fd();
      }

      else
      {
        [v11 utunSocket];
      }

      IDSTransportThreadResumeSocket();
    }
  }
}

- (void)link:(id)link hasSpaceAvailable:(BOOL)available deviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  availableCopy = available;
  v7 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, cbuuid);
  if (v7)
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7[1];
      v11[0] = 67109378;
      v11[1] = availableCopy;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[throughput] Has space available(%d) for device %@", v11, 0x12u);
    }

    v10 = v7[2079];
    if (availableCopy)
    {
      if (v10)
      {
        os_channel_get_fd();
      }

      else
      {
        [v7 utunSocket];
      }

      IDSTransportThreadResumeSocket();
    }

    else
    {
      if (v10)
      {
        os_channel_get_fd();
      }

      else
      {
        [v7 utunSocket];
      }

      IDSTransportThreadSuspendSocket();
    }
  }
}

- (void)didUpdatePairedDevice:(id)device
{
  defaultPairedDeviceIdentityPair = [(IDSUTunController *)self defaultPairedDeviceIdentityPair];
  v4 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = defaultPairedDeviceIdentityPair;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "localdevicecontroller callback [%@]", buf, 0xCu);
  }

  v5 = defaultPairedDeviceIdentityPair;
  IDSTransportThreadAddBlock();
}

- (void)clearStats
{
  os_unfair_lock_lock(&unk_100CBF440);
  allValues = [qword_100CBF3B0 allValues];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (v7)
        {
          [*(*(&v8 + 1) + 8 * v6) setPacketsSent:0];
          [v7 setPacketsReceived:0];
          [v7 setBytesSent:0];
          [v7 setBytesReceived:0];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&unk_100CBF440);
}

- (unint64_t)onTransportThread_SendWithConnectionContext:(id)context packetBuffer:(id *)buffer
{
  contextCopy = context;
  IDSLinkPacketBufferAddBufferStart();
  connection = [contextCopy connection];
  uint32Key = [connection uint32Key];

  *buffer->var0 = HIBYTE(uint32Key);
  buffer->var0[1] = BYTE2(uint32Key);
  buffer->var0[2] = BYTE1(uint32Key);
  buffer->var0[3] = uint32Key;
  buffer->var0[4] = BYTE1(buffer->var2);
  buffer->var0[5] = buffer->var2;
  buffer->var0[7] = 0;
  buffer->var0[6] = 0;
  var0 = buffer->var0;
  var2 = buffer->var2;
  deviceConnectionInfo = [contextCopy deviceConnectionInfo];

  LOBYTE(v13) = 1;
  [(IDSUTunController *)self handleIPPayload:var0 bytesLength:var2 source:0 destination:0 upperProtocol:17 forDeviceConnectionInfo:deviceConnectionInfo flush:v13 callerShouldStop:0];

  _IDSLinkPacketBufferRelease();
  return 0;
}

- (BOOL)isConnected:(id)connected deviceConnectionInfo:(id)info
{
  connectedCopy = connected;
  if ([info shouldUseServiceConnector])
  {
    serviceConnection = [connectedCopy serviceConnection];
    if (serviceConnection)
    {
      connectError = [connectedCopy connectError];
      v8 = connectError == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if ([connectedCopy sd] == -1)
    {
      v8 = 0;
      goto LABEL_8;
    }

    serviceConnection = [connectedCopy connectError];
    v8 = serviceConnection != 0;
  }

LABEL_8:
  return v8;
}

@end