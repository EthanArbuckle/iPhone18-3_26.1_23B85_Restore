@interface IDSUTunController
+ (IDSUTunController)sharedInstance;
- (BOOL)handleIncomingPacket:(id *)a3 fromDeviceToken:(id)a4;
- (BOOL)isConnected:(id)a3 deviceConnectionInfo:(id)a4;
- (BOOL)peerSupportsASQUIC:(id)a3;
- (BOOL)setupIPsecLinkForDeviceConnectionInfo:(id)a3;
- (BOOL)setupUTunForDeviceConnectionInfo:(id)a3;
- (IDSUTunController)init;
- (id)_prepareConnectionInfoWithCBUUID:(id)a3 deviceUniqueID:(id)a4 shouldUseServiceConnector:(BOOL)a5 identityPair:(id)a6 remoteDeviceEncryptionInfo:(id)a7;
- (id)controlChannelVersionForCbuuid:(id)a3;
- (id)copyLinkStatsDict;
- (id)defaultPairedDeviceIdentityPair;
- (id)onTransportThread_PerServiceDataTransferredForDevice:(id)a3 services:(id)a4;
- (id)perServiceDataReceivedForDevice:(id)a3 services:(id)a4;
- (id)perServiceDataSentForDevice:(id)a3 services:(id)a4;
- (id)perServiceDataTransferredForDevice:(id)a3 services:(id)a4;
- (id)setupNewDeviceConnectionInfoForCbuuid:(id)a3 deviceUniqueID:(id)a4 identityPair:(id)a5 remoteDeviceEncryptionInfo:(id)a6 shouldUseServiceConnector:(BOOL)a7;
- (int)processCompressionRequest:(id)a3 fromDeviceConnectionInfo:(id)a4;
- (int)processCompressionResponse:(id)a3 fromDeviceConnectionInfo:(id)a4;
- (unint64_t)onTransportThread_SendWithConnectionContext:(id)a3 packetBuffer:(id *)a4;
- (unint64_t)totalPacketsReceivedForDevice:(id)a3 services:(id)a4;
- (unint64_t)totalPacketsSentForDevice:(id)a3 services:(id)a4;
- (unsigned)handleUtunChannelWrite:(id)a3 source:(sockaddr *)a4 destination:(sockaddr *)a5 upperProtocol:(unsigned __int8)a6 bytes:(const void *)a7 bytesLen:(unint64_t)a8;
- (void)_getStallDetectorForConnection:(id)a3 deviceConnecionInfo:(id)a4;
- (void)_reloadSettings;
- (void)addPairedDevice:(id)a3 shouldPairDirectlyOverIPsec:(BOOL)a4;
- (void)checkSuspendTrafficForDevice:(id)a3 wait:(BOOL)a4;
- (void)cleanupSocketsForClient:(id)a3;
- (void)clearStats;
- (void)closeDataConnectionWithDeviceConnectionInfo:(id)a3 options:(id)a4;
- (void)closeSocketWithOptions:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)connectGlobalLinkForDevice:(id)a3 sessionInfo:(id)a4 connectReadyHandler:(id)a5 withLocalInterfacePreference:(int)a6;
- (void)connectPairedDevice:(id)a3;
- (void)createConnectionDataForDevice:(id)a3 localPartyID:(id)a4 dataReadyHandler:(id)a5;
- (void)deletePairedDevice:(id)a3;
- (void)didConnectControlChannelForDeviceConnectionInfo:(id)a3 connection:(id)a4 error:(id)a5;
- (void)didUpdatePairedDevice:(id)a3;
- (void)disconnectGlobalLinkForDevice:(id)a3 isReinitiating:(BOOL)a4 completionHandler:(id)a5;
- (void)doCheckSuspendTrafficForDevice:(id)a3;
- (void)getLinkInformationForDevice:(id)a3 completionHandler:(id)a4;
- (void)handleAllocateRequestFailureForDevice:(id)a3 requestID:(id)a4 errorCode:(int)a5;
- (void)handleIPPayload:(const void *)a3 bytesLength:(unint64_t)a4 source:(sockaddr *)a5 destination:(sockaddr *)a6 upperProtocol:(unsigned __int8)a7 forDeviceConnectionInfo:(id)a8 flush:(BOOL)a9 callerShouldStop:(BOOL *)a10;
- (void)handleUtunChannelRead:(id)a3 limit:(unsigned int)a4;
- (void)internalOpenSocketWithDestination:(id)a3 localSA:(id)a4 remoteSA:(id)a5 protocol:(int)a6 trafficClass:(int)a7 completionHandler:(id)a8;
- (void)internalStartConnectionWithEndpoint:(id)a3 service:(const char *)a4 parameters:(id)a5 serviceConnector:(id)a6 trafficClass:(int)a7 completionHandler:(id)a8;
- (void)link:(id)a3 didConnectForDeviceUniqueID:(id)a4 cbuuid:(id)a5;
- (void)link:(id)a3 didDisconnectForDeviceUniqueID:(id)a4 cbuuid:(id)a5;
- (void)link:(id)a3 hasSpaceAvailable:(BOOL)a4 deviceUniqueID:(id)a5 cbuuid:(id)a6;
- (void)obliterateConnectionInfoForCBUUID:(id)a3;
- (void)obliterateConnectionInfoForCBUUID:(id)a3 completionBlock:(id)a4 completionQueue:(id)a5;
- (void)openSocketWithOptions:(id)a3 queue:(id)a4 completionHandler:(id)a5;
- (void)prepareControlChannelForDeviceConnectionInfo:(id)a3 genericConnection:(id)a4;
- (void)prepareDefaultPairedConnectionInfoWithDeviceUniqueID:(id)a3 shouldUseServiceConnector:(BOOL)a4;
- (void)processRemoteConnectionDataForDevice:(id)a3 remoteConnectionData:(id)a4 completionHandler:(id)a5;
- (void)receiveControlChannelMessage:(id)a3 fromCbuuid:(id)a4 deviceUniqueID:(id)a5;
- (void)releasePortIfNecessary:(IDSPortMap *)a3 port:(unsigned __int16)a4;
- (void)removeConnection:(id)a3 fromDeviceConnectionInfo:(id)a4 removeCode:(int64_t)a5 removeReason:(id)a6;
- (void)resetAllConnectionsForDevice:(id)a3;
- (void)resetIPsecTCPConnection:(id)a3 forDeviceConnectionInfo:(id)a4;
- (void)resetTCPConnection:(id)a3 forDeviceConnectionInfo:(id)a4;
- (void)resetUTunTCPConnection:(id)a3 forDeviceConnectionInfo:(id)a4;
- (void)resumeSocketWithOptions:(id)a3 shouldLogCall:(BOOL)a4;
- (void)sendOTRNegotiationMessage:(id)a3 negotiationCount:(unsigned int)a4 negotiationData:(id)a5;
- (void)sendSuspendOTRNegotiationMessage:(id)a3;
- (void)setLinkPreferences:(id)a3;
- (void)setupDataConnectionWithDeviceConnectionInfo:(id)a3 options:(id)a4;
- (void)startCompressionForConnection:(id)a3 deviceConnectionInfo:(id)a4;
- (void)startConnectionForDevice:(id)a3 isInitiator:(BOOL)a4 remotePartyID:(id)a5 useStunMICheck:(BOOL)a6;
- (void)startControlChannelWithDevice:(id)a3;
- (void)startDataChannelWithDevice:(id)a3 genericConnection:(id)a4 serviceConnectorService:(id)a5;
- (void)startGlobalLinkForDevice:(id)a3;
- (void)startUDPGlobalLinkForDevice:(id)a3;
- (void)stopGlobalLinkForDevice:(id)a3;
- (void)stopUDPGlobalLinkForDevice:(id)a3;
- (void)suspendSocketWithOptions:(id)a3;
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
  v4 = [v3 isInternalInstall];

  if (v4)
  {
    self->_encryptionEnabled = IMGetDomainBoolForKeyWithDefaultValue();
    self->_encryptionEnabled = IMGetDomainBoolForKeyWithDefaultValue() ^ 1;
    self->_controlChannelEncryptionDisabled = IMGetDomainBoolForKeyWithDefaultValue();
    self->_vifShouldReadMultiple = IMGetDomainBoolForKeyWithDefaultValue();
    v5 = IMGetDomainValueForKey();
    v6 = [v5 unsignedIntValue];
    if (v6)
    {
      v7 = v6;
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

- (void)_getStallDetectorForConnection:(id)a3 deviceConnecionInfo:(id)a4
{
  v6 = a3;
  v7 = [a4 cbuuid];
  v8 = [v7 isEqualToString:kIDSDefaultPairedDeviceID];

  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = +[IMLockdownManager sharedInstance];
  v10 = [v9 isInternalInstall];

  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = [v6 connectionID];

  if (v11)
  {
    v12 = [v6 connectionID];
    v13 = [v12 service];
    v14 = [v13 isEqualToString:@"localdelivery"];

    if (!v14)
    {
      goto LABEL_18;
    }

    v15 = [v6 connectionID];
    v16 = [v15 name];
    v17 = [v16 isEqualToString:@"UTunDelivery-Default-Urgent"];

    if (v17)
    {
      v18 = @"kUTunConnectionDefaultUrgentOutgoingDetectorName";
    }

    else
    {
      v24 = [v6 connectionID];
      v25 = [v24 name];
      v26 = [v25 isEqualToString:@"UTunDelivery-Default-Default"];

      if (!v26)
      {
        goto LABEL_14;
      }

      v18 = @"kUTunConnectionDefaultDefaultOutgoingDetectorName";
    }
  }

  else
  {
    v19 = [v6 addressPair];
    v20 = [v19 localAddress];
    if ([v20 saPortHostOrder] != 1024)
    {

      goto LABEL_14;
    }

    v21 = [v6 addressPair];
    v22 = [v21 remoteAddress];
    v23 = [v22 saPortHostOrder];

    if (!v23)
    {
      goto LABEL_14;
    }

    v18 = @"kUTunConnectionControlChannelOutgoingDetectorName";
  }

  [v6 setOutgoingStallDetectorName:v18];
  [v6 _createStallDetectorWithName:v18];
LABEL_14:
  v27 = [v6 outgoingStallDetectorName];

  if (v27)
  {
    v28 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v6 outgoingStallDetectorName];
      v30 = 138412546;
      v31 = self;
      v32 = 2112;
      v33 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: created the stall detector for %@", &v30, 0x16u);
    }
  }

LABEL_18:
}

- (void)handleIPPayload:(const void *)a3 bytesLength:(unint64_t)a4 source:(sockaddr *)a5 destination:(sockaddr *)a6 upperProtocol:(unsigned __int8)a7 forDeviceConnectionInfo:(id)a8 flush:(BOOL)a9 callerShouldStop:(BOOL *)a10
{
  v10 = a7;
  v14 = a8;
  if (a10)
  {
    *a10 = 0;
  }

  if (v10 == 17)
  {
    kdebug_trace();
  }

  v178 = self;
  if (a4 > 7)
  {
    if (v10 != 6 && v10 != 17)
    {
      v22 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v14 vifName];
        v24 = [NSData dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
        LODWORD(buf[0]) = 138412802;
        *(buf + 4) = v23;
        WORD6(buf[0]) = 1024;
        *(buf + 14) = v10;
        WORD1(buf[1]) = 2112;
        *(&buf[1] + 4) = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@: dropping unknown proto[%u] packet [%@]", buf, 0x1Cu);
      }

      if (a9)
      {
        goto LABEL_64;
      }

      goto LABEL_238;
    }

    if (self->_logPackets && v10 == 17 && byte_100CBF3D8)
    {
      if (qword_100CBF438 != -1)
      {
        sub_10092D900();
      }

      v18 = mach_continuous_time();
      if (a4 <= 0x27)
      {
        v19 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v14 vifName];
          v21 = [NSData dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
          LODWORD(buf[0]) = 138412802;
          *(buf + 4) = v20;
          WORD6(buf[0]) = 2112;
          *(buf + 14) = v21;
          WORD3(buf[1]) = 2048;
          *(&buf[1] + 1) = a4;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@: dropping packet %@ of length %zu", buf, 0x20u);
        }

        if (a9)
        {
          goto LABEL_64;
        }

        goto LABEL_238;
      }

      if (xmmword_100CBF3E8 == *(a3 + 1) && *(&xmmword_100CBF3E8 + 1) == *(a3 + 2) && qword_100CBF3F8 == *(a3 + 3) && unk_100CBF400 == *(a3 + 4))
      {
        byte_100CBF3D8 = 0;
        *&qword_100CBF3E0 = *&qword_100CBF3C0 * v18;
        v45 = qword_100CD3D68;
        v46 = [IDSUTunTimingLogger kernelTestEventWithTimestamp:"kernelTestEventWithTimestamp:kernelTime:bytes:" kernelTime:a4 - 8 bytes:?];
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

        self = v178;
      }
    }

    if (v10 == 17 && self->_logPackets)
    {
      qword_100CBF418 = mach_continuous_time();
      qword_100CBF410 = qword_100CBF418;
      self = v178;
    }

    if (v10 == 6)
    {
      if (a4 <= 0x13)
      {
        v29 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v14 vifName];
          v31 = [NSData dataWithBytesNoCopy:a3 length:a4 & 0x1F freeWhenDone:0];
          LODWORD(buf[0]) = 138412802;
          *(buf + 4) = v30;
          WORD6(buf[0]) = 2112;
          *(buf + 14) = v31;
          WORD3(buf[1]) = 1024;
          DWORD2(buf[1]) = a4;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@: dropping packet %@ of length %u", buf, 0x1Cu);
        }

        if (a9)
        {
          goto LABEL_64;
        }

        goto LABEL_238;
      }

      v172 = (*(a3 + 12) >> 2) & 0x3C;
      LODWORD(v173) = bswap32(*(a3 + 1));
      HIDWORD(v173) = *(a3 + 13);
    }

    else
    {
      v173 = 0;
      v172 = 0;
    }

    v174 = __rev16(*(a3 + 1));
    v175 = __rev16(*a3);
    if (self->_logPackets)
    {
      v32 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        if (a4 >= 0x28)
        {
          v33 = 40;
        }

        else
        {
          v33 = a4;
        }

        v34 = [v14 vifName];
        v35 = [NSData dataWithBytesNoCopy:a3 length:v33 freeWhenDone:0];
        v36 = v35;
        LODWORD(buf[0]) = 138413826;
        v37 = " ...";
        *(buf + 4) = v34;
        if (a4 < 0x29)
        {
          v37 = "";
        }

        WORD6(buf[0]) = 1024;
        *(buf + 14) = v175;
        WORD1(buf[1]) = 1024;
        DWORD1(buf[1]) = v174;
        WORD4(buf[1]) = 1024;
        *(&buf[1] + 10) = v10;
        HIWORD(buf[1]) = 2048;
        *&buf[2] = a4;
        WORD4(buf[2]) = 2112;
        *(&buf[2] + 10) = v35;
        WORD1(buf[3]) = 2080;
        *(&buf[3] + 4) = v37;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%@: Payload Handler! %u => %u proto:%d (len=%ld)\n\t\t=> data[%@%s]", buf, 0x3Cu);
      }
    }

    if ([v14 suspendTraffic])
    {
      v38 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [v14 vifName];
        v40 = v14[1];
        LODWORD(buf[0]) = 138412546;
        *(buf + 4) = v39;
        WORD6(buf[0]) = 2112;
        *(buf + 14) = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%@: device %@ is suspending traffic", buf, 0x16u);
      }

      if (a9)
      {
        goto LABEL_64;
      }

      goto LABEL_238;
    }

    v177 = sub_1006C2FC8([v14 connectionsTableByLocalRemotePortKey], v174 | (v175 << 16));
    if (v177)
    {
      v44 = 0;
      if (v10 == 17 && v178->_logPackets)
      {
        v44 = mach_continuous_time();
      }
    }

    else
    {
      if (v10 != 6 || (v173 & 0x400000000) == 0)
      {
        v58 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = [v14 vifName];
          LODWORD(buf[0]) = 138413058;
          *(buf + 4) = v59;
          WORD6(buf[0]) = 1024;
          *(buf + 14) = v175;
          WORD1(buf[1]) = 1024;
          DWORD1(buf[1]) = v174;
          WORD4(buf[1]) = 2112;
          *(&buf[1] + 10) = v14;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@: cannot find connection for outgoing packet [%u => %u] in [%@]", buf, 0x22u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v170 = [v14 vifName];
          _IDSLogV();
        }

        if (v10 == 6)
        {
          memset(__n_4, 170, sizeof(__n_4));
          v60 = *(a3 + 2);
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
          v63 = [v14 remoteSA];
          v64 = [v63 sa6];
          v65 = [v14 localSA];
          tcp6checksum((v64 + 8), ([v65 sa6] + 8), __n_4, 0x14uLL);

          if (v14[2079])
          {
            v66 = [v14 remoteSA];
            v67 = [v66 sa];
            v68 = [v14 localSA];
            v69 = -[IDSUTunController handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:](v178, "handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:", v14, v67, [v68 sa], 6, __n_4, 20);
          }

          else
          {
            [v14 vifRef];
            v66 = [v14 remoteSA];
            [v66 sa];
            v68 = [v14 localSA];
            [v68 sa];
            v69 = NEVirtualInterfaceWriteIPPayload();
          }

          v155 = v69;

          v156 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
          {
            v157 = [v14 vifName];
            v158 = [v14 localSA];
            v159 = [v14 remoteSA];
            v160 = [NSData dataWithBytesNoCopy:__n_4 length:20 freeWhenDone:0];
            LODWORD(buf[0]) = 138413314;
            *(buf + 4) = v157;
            WORD6(buf[0]) = 2112;
            *(buf + 14) = v158;
            WORD3(buf[1]) = 2112;
            *(&buf[1] + 1) = v159;
            LOWORD(buf[2]) = 1024;
            *(&buf[2] + 2) = v155;
            WORD3(buf[2]) = 2112;
            *(&buf[2] + 1) = v160;
            _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "%@: write generated reset %@ <= %@ neRet=%d\n\t\t<= data[%@]", buf, 0x30u);
          }
        }

        if (a9)
        {
          linkManager = v178->_linkManager;
          v162 = [v14 deviceUniqueID];
          v163 = [v14 cbuuid];
          [(IDSLinkManager *)linkManager flushBuffer:0 toDeviceUniqueID:v162 cbuuid:v163];
        }

        goto LABEL_237;
      }

      v44 = 0;
    }

    v47 = [v177 compressionInfo];
    if ([v47 state] <= 1)
    {
    }

    else
    {
      v48 = [v177 compressionInfo];
      v49 = [v48 localContext] == 0;

      if (!v49)
      {
        v50 = [v177 compressionInfo];
        v171 = [v50 localCID];

        *__n_4 = a3;
        v51 = [v177 compressionInfo];
        [v51 localContext];
        v52 = IDSHC_Compress();

        if (v52)
        {
          v53 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = [v14 vifName];
            LODWORD(buf[0]) = 138412546;
            *(buf + 4) = v54;
            WORD6(buf[0]) = 2048;
            *(buf + 14) = v52;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@: IDSHC_Compress failed (%lu), revert back to un-compressed", buf, 0x16u);
          }
        }

        v55 = *__n_4;
        if (v171 < 0x10)
        {
          --*__n_4;
          __n = a4 + 1;
          if (v10 == 6)
          {
            v70 = -96;
          }

          else
          {
            v70 = 0x80;
          }

          *(v55 - 1) = v171 | v70;
        }

        else
        {
          *__n_4 -= 3;
          __n = a4 + 3;
          if (v10 == 6)
          {
            v56 = -80;
          }

          else
          {
            v56 = -112;
          }

          *(v55 - 3) = v56;
          *(*__n_4 + 1) = BYTE1(v171);
          *(*__n_4 + 2) = v171;
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

        v57 = v171;
LABEL_102:
        v171 = v57;
        if (v10 == 6)
        {
          tcp6checksum(0, 0, a3, a4);
          v73 = 32;
        }

        else
        {
          udp6checksum(0, 0, a3, a4);
          v73 = 0;
        }

        v72 = _IDSLinkPacketBufferCreate();
        **v72 = v73;
        memcpy((*v72 + 1), a3, a4);
        v74 = 0;
        v72[2] = a4 + 1;
LABEL_106:
        logPackets = v178->_logPackets;
        if (v10 == 17 && logPackets)
        {
          qword_100CBF428 = mach_continuous_time() - v44;
          logPackets = v178->_logPackets;
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

            v79 = [v14 vifName];
            v80 = [NSData dataWithBytesNoCopy:*v72 length:v78 freeWhenDone:0];
            v81 = v80;
            LODWORD(buf[0]) = 138414338;
            v82 = " ...";
            *(buf + 4) = v79;
            *(buf + 14) = 1;
            WORD6(buf[0]) = 1024;
            if (v76 < 0x15)
            {
              v82 = "";
            }

            WORD1(buf[1]) = 1024;
            DWORD1(buf[1]) = v10 == 6;
            WORD4(buf[1]) = 1024;
            *(&buf[1] + 10) = v171;
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

        if (v178->_encryptionEnabled && [v177 encryptionEnabled])
        {
          v83 = [v177 seqSend];
          v84 = sub_10050CB8C([v177 encryptionState], v83, *v72, v72[2], 1);
          if (v84)
          {
            v85 = [v14 portMap];
            v86 = [v177 addressPair];
            v87 = [v86 localAddress];
            -[IDSUTunController releasePortIfNecessary:port:](v178, "releasePortIfNecessary:port:", v85, [v87 saPortHostOrder]);

            v88 = [NSString stringWithFormat:@"Encryption failure: %u", v84];
            [(IDSUTunController *)v178 removeConnection:v177 fromDeviceConnectionInfo:v14 removeCode:5301 removeReason:v88];

            _IDSLinkPacketBufferRelease();
            if (a9)
            {
              v89 = v178->_linkManager;
              v90 = [v14 deviceUniqueID];
              v91 = [v14 cbuuid];
              [(IDSLinkManager *)v89 flushBuffer:0 toDeviceUniqueID:v90 cbuuid:v91];
            }

            goto LABEL_237;
          }

          IDSLinkPacketBufferAddBufferStart();
          v92 = *v72;
          v93 = *v72;
          **v72 = 224;
          v94 = [v177 seqSend];
          v93[2] = HIBYTE(v94);
          v92[3] = v94;
          v95 = [v177 SSRCSend];
          v92[4] = HIBYTE(v95);
          v92[5] = BYTE2(v95);
          v92[6] = BYTE1(v95);
          v92[7] = v95;
          [v177 setSeqSend:(v83 + 1)];
        }

        *(v72 + 38) = [v177 isCloudEnabled];
        *(v72 + 39) = [v177 isControlChannel];
        *(v72 + 41) = [v177 isDefaultPairedDevice];
        if (v72[2] > 675)
        {
          v96 = 0;
        }

        else
        {
          v96 = [v177 isRealTime];
        }

        *(v72 + 42) = v96;
        if (*(v72 + 39) == 1)
        {
          v97 = 99;
          goto LABEL_130;
        }

        *(v72 + 305) = [v177 sdNumberNoClose];
        v103 = [v177 priority];
        if (v103 <= 299)
        {
          if (!v103)
          {
            v97 = 45;
            goto LABEL_130;
          }

          if (v103 != 100)
          {
            if (v103 == 200)
            {
              v97 = 100;
              goto LABEL_130;
            }

            goto LABEL_222;
          }

          v97 = 115;
        }

        else if (v103 > 699)
        {
          if (v103 != 700)
          {
            if (v103 == 800)
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
          if (v103 != 300)
          {
            if (v103 == 600)
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
        v100 = [v177 addressPair];
        v101 = [v100 localAddress];
        v102 = v99 * v98;
        if ([v101 saPortHostOrder] == 1024)
        {
        }

        else
        {
          v104 = [v177 addressPair];
          v105 = [v104 remoteAddress];
          v106 = [v105 saPortHostOrder] == 1024;

          if (!v106 && [v177 priority] != 300)
          {
            v107 = [v14 highPriorityConnectionSendingSet];
            v108 = [v107 count] == 0;

            if (!v108)
            {
              [v177 lastSuccessfulSentTime];
              v110 = v10 != 6;
              if (v102 - v109 > 0.5)
              {
                v110 = 1;
              }

              if (!v110)
              {
                if (v172 == a4)
                {
                  if (!v178->_logPackets)
                  {
                    goto LABEL_150;
                  }

                  v111 = +[IDSFoundationLog utunController];
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                  {
                    v112 = [v14 vifName];
                    v113 = [v177 localConnectionGUID];
                    v114 = [v14 highPriorityConnectionSendingSet];
                    LODWORD(buf[0]) = 138412802;
                    *(buf + 4) = v112;
                    WORD6(buf[0]) = 2112;
                    *(buf + 14) = v113;
                    WORD3(buf[1]) = 2112;
                    *(&buf[1] + 1) = v114;
                    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%@: passing through low priority ack for [%@] - current busy high priority set(%@)", buf, 0x20u);
                  }
                }

                else
                {
                  if (!v178->_logPackets)
                  {
                    goto LABEL_150;
                  }

                  v111 = +[IDSFoundationLog utunController];
                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                  {
                    v164 = [v14 vifName];
                    v165 = [v177 localConnectionGUID];
                    v166 = [v14 highPriorityConnectionSendingSet];
                    LODWORD(buf[0]) = 138412802;
                    *(buf + 4) = v164;
                    WORD6(buf[0]) = 2112;
                    *(buf + 14) = v165;
                    WORD3(buf[1]) = 2112;
                    *(&buf[1] + 1) = v166;
                    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "%@: cannot send low priority [%@] - current busy high priority set(%@)", buf, 0x20u);
                  }
                }

LABEL_150:
                v115 = [v177 stateFlags];
                v116 = BYTE4(v173) & 2;
                v117 = v173 + a4 - v172 + (v116 >> 1);
                if ((v115 & 0x40) != 0)
                {
                  if (v117 - [v177 expectedNextOutgoingSequenceNumber] <= 0x3FFFFFFE)
                  {
                    [v177 setExpectedNextOutgoingSequenceNumber:v117];
                  }
                }

                else
                {
                  [v177 setStateFlags:v115 | 0x40];
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

                v120 = v178;
                if (v178->_logPackets)
                {
                  v121 = +[IDSFoundationLog utunController];
                  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
                  {
                    v122 = v116 == 0;
                    v123 = [v14 vifName];
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

                    v128 = [v177 expectedNextOutgoingSequenceNumber];
                    LODWORD(buf[0]) = 138414082;
                    *(buf + 4) = v123;
                    WORD6(buf[0]) = 1024;
                    *(buf + 14) = a4;
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
                    *(&buf[4] + 2) = v128;
                    _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "%@: Sending TCP %uB (flags[%02X] [%s%s%s%s])) noseq:%08x", buf, 0x46u);
                  }

                  v120 = v178;
                }

                if (!v120->_isSimulateResetLoopTest && (BYTE4(v173) & 0x12) == 2)
                {
                  v129 = [v14 controlChannel];
                  v130 = [v129 didReceiveReestablishmentRequest];

                  if (v130)
                  {
                    v131 = sub_10062118C();
                    v132 = [v14 controlChannel];
                    [v132 reestablishmentRequestReceiveTime];
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

                    v136 = [v14 controlChannel];
                    [v136 setDidReceiveReestablishmentRequest:0];

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
                if (v10 == 17)
                {
                  kdebug_trace();
                }

                *(v72 + 40) = a9;
                v138 = [(IDSLinkManager *)v178->_linkManager sendPacketBuffer:v72 toDeviceUniqueID:v14[2] cbuuid:v14[1]];
                v139 = v138;
                if (v178->_isSimulateResetLoopTest && (BYTE4(v173) & 0x12) == 2)
                {
                  v140 = sub_10000FAC0(&v178->_deviceConnectionInfoTableByCbuuid, kIDSDefaultPairedDeviceID);
                  v141 = sub_1006C2FC8([v14 connectionsTableByLocalRemotePortKey], 67109888);
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

                  [(IDSUTunController *)v178 resetTCPConnection:v141 forDeviceConnectionInfo:v140];
                  v178->_isSimulateResetLoopTest = 0;

                  goto LABEL_237;
                }

                if (v138 <= 5)
                {
                  if (!v138)
                  {
                    [v177 setLastSuccessfulSentTime:v102];
                    v148 = [v177 outgoingStallDetector];

                    if (v148)
                    {
                      v149 = [v177 outgoingStallDetector];
                      [v149 consumeBytes:a4];
                    }

                    if (v10 == 17 && v178->_logPackets)
                    {
                      v150 = sub_10062118C();
                      v151 = qword_100CD3D68;
                      v152 = a4 - 8;
                      v153 = [IDSUTunTimingLogger outgoingEventWithTimestamp:a4 - 8 duration:v150 processTime:v150 - qword_100CBF410 * *&qword_100CBF3C0 compressionTime:*&qword_100CBF3C0 * qword_100CBF420 sendTime:*&qword_100CBF3C0 * qword_100CBF428 bytes:v150 - qword_100CBF418 * *&qword_100CBF3C0];
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
                      v144 = [v14 utunSocket];
                      LODWORD(buf[0]) = 67109376;
                      DWORD1(buf[0]) = v139;
                      WORD4(buf[0]) = 1024;
                      *(buf + 10) = v144;
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

                v145 = v14[2079] == 0;
                v146 = +[IDSFoundationLog utunController];
                v147 = os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT);
                if (v145)
                {
                  if (v147)
                  {
                    v154 = [v14 utunSocket];
                    LODWORD(buf[0]) = 67109120;
                    DWORD1(buf[0]) = v154;
                    _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "[throughput] link throttling (s: %d)", buf, 8u);
                  }

                  [v14 utunSocket];
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
                if (a10)
                {
                  *a10 = 1;
                }

                goto LABEL_237;
              }
            }
          }
        }

        if (v10 != 6)
        {
          if (v178->_logPackets)
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
    v16 = [v14 vifName];
    v17 = [NSData dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
    LODWORD(buf[0]) = 138412802;
    *(buf + 4) = v16;
    WORD6(buf[0]) = 2112;
    *(buf + 14) = v17;
    WORD3(buf[1]) = 2048;
    *(&buf[1] + 1) = a4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: dropping packet %@ of length %zu", buf, 0x20u);
  }

  if (a9)
  {
LABEL_64:
    v41 = v178->_linkManager;
    v42 = [v14 deviceUniqueID];
    v43 = [v14 cbuuid];
    [(IDSLinkManager *)v41 flushBuffer:0 toDeviceUniqueID:v42 cbuuid:v43];
  }

LABEL_238:
}

- (void)handleUtunChannelRead:(id)a3 limit:(unsigned int)a4
{
  v6 = a3;
  [v6 utunChannel];
  [v6 utunChannelRxRing];
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
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = -1;
    }

    if (v7 >= v10)
    {
      v11 = v10;
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
      ++v6[4166];
      if (WORD1(v17) >= 4uLL && *v18 == 503316480)
      {
        LOBYTE(v15) = v11 == v12;
        [(IDSUTunController *)self handleIPPayload:v18 + 44 bytesLength:WORD1(v17) - 44 source:0 destination:0 upperProtocol:*(v18 + 10) forDeviceConnectionInfo:v6 flush:v15 callerShouldStop:&v16];
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

    v13 = [v6 utunChannelRxCount];
    v14 = [v6 utunChannelRxRingSize] >> 1;
    if (v11 < v14)
    {
      v14 = v11;
    }

    if (v9 == 1 || v13 >= v14)
    {
LABEL_17:
      [v6 setUtunChannelRxCount:0];
      os_channel_sync();
    }
  }
}

- (unsigned)handleUtunChannelWrite:(id)a3 source:(sockaddr *)a4 destination:(sockaddr *)a5 upperProtocol:(unsigned __int8)a6 bytes:(const void *)a7 bytesLen:(unint64_t)a8
{
  v14 = a3;
  [v14 utunChannel];
  [v14 utunChannelTxRing];
  v15 = os_channel_available_slot_count();
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v16;
  if (!v15)
  {
    if (v14[2084] == 0.0)
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

        v14[2084] = *&qword_100CBF3C0 * mach_continuous_time();
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
      v22 = v14[2084];
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

  if (a4->sa_family != 30 || a5->sa_family != 30)
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
  MEMORY[0xAAAAAAAAAAAAAAB6] = *&a4->sa_data[6];
  MEMORY[0xAAAAAAAAAAAAAAC6] = *&a5->sa_data[6];
  MEMORY[0xAAAAAAAAAAAAAAB2] = bswap32(a8) >> 16;
  MEMORY[0xAAAAAAAAAAAAAAB4] = a6;
  MEMORY[0xAAAAAAAAAAAAAAAE] = 96;
  if (a8 + 44 > [v14 utunChannelMaxSlotSize])
  {
    v17 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&v29 = (a8 + 44);
      v30 = 2048;
      v31 = [v14 utunChannelMaxSlotSize];
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "problem: handleUtunChannelWrite: packet too large %lu > %lu", buf, 0x16u);
    }

LABEL_26:

LABEL_33:
    v25 = 0;
    goto LABEL_34;
  }

  memmove(0xAAAAAAAAAAAAAAD6, a7, a8);
  os_channel_set_slot_properties();
  os_channel_advance_slot();
  os_channel_sync();
  v25 = 1;
LABEL_34:

  return v25;
}

- (BOOL)setupUTunForDeviceConnectionInfo:(id)a3
{
  v3 = a3;
  memset(v116, 170, 20);
  v115 = 0xAAAAAAAAAAAAAAAALL;
  v4 = NEVirtualInterfaceCreate();
  if (v4)
  {
LABEL_7:
    oslog = NEVirtualInterfaceCopyName();
    [v3 setVifName:oslog];
    [v3 setVifRef:v4];
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
      v13 = [v3 vifName];
      v14 = [IDSSockAddrWrapper wrapperWithSockAddr:&v115];
      *buf = 138412802;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2112;
      *v118 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: generated [%@] => [%@]", buf, 0x20u);
    }

    v15 = NEVirtualInterfaceDupSocket();
    if ((v15 & 0x80000000) == 0)
    {
      [v3 setUtunSocket:v15];
      v16 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v3 cbuuid];
        *buf = 67109378;
        *&buf[4] = v15;
        *&buf[8] = 2112;
        *&buf[10] = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Get raw socket %d for device %@", buf, 0x12u);
      }

      NEVirtualInterfaceSetReadAutomatically();
      v18 = self;
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

              [v3 setUtunNexusUUID:buf];
              [v3 setUtunChannel:extended];
              [v3 setUtunChannelMaxSlotSize:v100.ai_flags];
              os_channel_ring_id();
              [v3 setUtunChannelTxRing:os_channel_tx_ring()];
              os_channel_ring_id();
              [v3 setUtunChannelRxRing:os_channel_rx_ring()];
              [v3 setUtunChannelRxRingSize:*out];
              os_channel_attr_destroy();
LABEL_53:
              v43 = NEVirtualInterfaceSetMTU();
              v44 = *__error();
              v45 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v46 = [v3 vifName];
                v47 = v46;
                if (v43)
                {
                  v48 = 0;
                }

                else
                {
                  v48 = v44;
                }

                *buf = 138413058;
                *&buf[4] = v46;
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
                v52 = [v3 vifName];
                v53 = v52;
                if (v49)
                {
                  v54 = 0;
                }

                else
                {
                  v54 = v50;
                }

                *buf = 138413058;
                *&buf[4] = v52;
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
                v58 = [v3 vifName];
                v59 = v58;
                if (v55)
                {
                  v60 = 0;
                }

                else
                {
                  v60 = v56;
                }

                *buf = 138412802;
                *&buf[4] = v58;
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
                v64 = [v3 vifName];
                v65 = v64;
                if (updated)
                {
                  v66 = 0;
                }

                else
                {
                  v66 = v62;
                }

                *buf = 138412802;
                *&buf[4] = v64;
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
                  v70 = [v3 vifName];
                  *buf = 138412290;
                  *&buf[4] = v70;
                  _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%@: getaddrinfo failed!!", buf, 0xCu);
                }

                NEVirtualInterfaceInvalidate();
                close(v15);
                CFRelease(v4);
              }

              else
              {
                v71 = [IDSSockAddrWrapper wrapperWithSockAddr:*(*v99 + 32)];
                [v3 setLocalSA:v71];

                freeaddrinfo(*v99);
                v72 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  v73 = [v3 vifName];
                  v74 = [v3 localSA];
                  v75 = [v3 localSA];
                  v76 = *([v75 sa6] + 6);
                  *buf = 138412802;
                  *&buf[4] = v73;
                  *&buf[12] = 2112;
                  *&buf[14] = v74;
                  *&buf[22] = 1024;
                  *v118 = v76;
                  _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%@: result localSA: [%@ @ %u]", buf, 0x1Cu);
                }

                v77 = [v3 localSA];
                v78 = [v77 sa6];
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
                [v3 setRemoteSA:v79];

                *&out[29] = 0xAAAAAAAAAAAAAAAALL;
                *&v80 = 0xAAAAAAAAAAAAAAAALL;
                *(&v80 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *out = v80;
                *&out[16] = v80;
                uuid_unparse_upper([v3 selfInstanceID], out);
                v81 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  v82 = [v3 vifName];
                  v83 = [v3 cbuuid];
                  v84 = [v3 deviceUniqueID];
                  v85 = [v3 remoteSA];
                  *buf = 138413570;
                  *&buf[4] = v82;
                  *&buf[12] = 2112;
                  *&buf[14] = v83;
                  *&buf[22] = 2112;
                  *v118 = v84;
                  *&v118[8] = 2112;
                  v119 = v85;
                  v120 = 2080;
                  v121 = out;
                  v122 = 2112;
                  v123 = v3;
                  _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%@: created mapping [%@ / %@] <=> [%@] (selfInstanceID[%s] %@)", buf, 0x3Eu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v86 = [v3 vifName];
                    v87 = [v3 cbuuid];
                    v88 = [v3 deviceUniqueID];
                    v93 = [v3 remoteSA];
                    _IDSLogTransport();

                    if (_IDSShouldLog())
                    {
                      v89 = [v3 vifName];
                      v90 = [v3 cbuuid];
                      v91 = [v3 deviceUniqueID];
                      v94 = [v3 remoteSA];
                      _IDSLogV();
                    }
                  }
                }

                if (v3[2079])
                {
                  os_channel_get_fd();
                }

                v98 = v3;
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
      v18 = self;
LABEL_35:
      if (v18->_vifShouldReadMultiple)
      {
        v107 = _NSConcreteStackBlock;
        v108 = 3221225472;
        v109 = sub_10062A7CC;
        v110 = &unk_100BE2AD0;
        v111 = v18;
        v26 = v3;
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
        v105 = v18;
        v37 = v3;
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
      v7 = [v3 cbuuid];
      *buf = 138412546;
      *&buf[4] = v7;
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
    v24 = [v3 cbuuid];
    *buf = 138412546;
    *&buf[4] = v24;
    *&buf[12] = 1024;
    *&buf[14] = 3;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "NEVICreate failed for %@! after %d tries", buf, 0x12u);
  }

  v23 = 0;
LABEL_91:

  return v23;
}

- (void)startDataChannelWithDevice:(id)a3 genericConnection:(id)a4 serviceConnectorService:(id)a5
{
  v147 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(IDSUTunController *)self stringComponentsForServiceConnectorService:v9];
  if ([v10 count] <= 2)
  {
    v11 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v147 vifName];
      *buf = 138412546;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v9;
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
    v18 = [v147 vifName];
    v19 = [v147 serviceConnectionCache];
    *buf = 138413058;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    v162 = 2112;
    v163 = v9;
    v164 = 2112;
    v165 = v19;
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
  v145 = v9;
  v129 = v20;
  if (![v147 shouldUseServiceConnector])
  {
    v124 = 0;
    v146 = 0;
    v143 = 0;
    v136 = 4;
    v22 = v9;
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
  if (_IDSSupportsDirectMessaging() && [v8 isDirectMsgChannel])
  {
    if ([v8 dataProtectionClass] == 2)
    {
      v136 = 4;
    }

    else
    {
      v24 = [v8 dataProtectionClass];
      v25 = v136;
      if (!v24)
      {
        v25 = 3;
      }

      v136 = v25;
    }
  }

  v146 = [NSString stringWithUTF8String:"61314"];
  v26 = [v147 serviceConnector];
  if (v20)
  {
    v27 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v147 vifName];
      *buf = 138412546;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%@: calling internalStartConnectionWithEndpoint with cloud option for service %@", buf, 0x16u);
    }

    v29 = [NSString stringWithUTF8String:"61315"];

    v30 = [v147 cloudServiceConnector];

    v146 = v29;
    v26 = v30;
  }

  v31 = [NSUUID alloc];
  v32 = +[IDSPairingManager sharedInstance];
  v33 = [v32 pairedDeviceUUIDString];
  v34 = [v31 initWithUUIDString:v33];

  if (v34)
  {
    v35 = self;
    v143 = v26;
    v126 = v15;
    v36 = v14;
    v37 = v8;
    v38 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v34];
    v39 = [[NREndpoint alloc] initWithDeviceIdentifier:v38 portString:v146 dataProtectionClass:v136 service:v145];
    v40 = [v39 usesASQUIC];
    v41 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = @"NO";
      if (v40)
      {
        v42 = @"YES";
      }

      *buf = 138412546;
      *&buf[4] = v145;
      *&buf[12] = 2112;
      *&buf[14] = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "startDataChannelWithDevice:service %@, usesASQUIC: %@", buf, 0x16u);
    }

    v124 = v40;

    v43 = [v39 copyEndpoint];
    v146 = v43;
    v8 = v37;
    v22 = v145;
    v23 = v144;
    v14 = v36;
    v15 = v126;
    self = v35;
LABEL_36:
    v150[0] = _NSConcreteStackBlock;
    v150[1] = 3221225472;
    v150[2] = sub_10062BC60;
    v150[3] = &unk_100BE2B98;
    v44 = v147;
    v151 = v44;
    v45 = v8;
    v152 = v45;
    v153 = v23;
    v154 = v14;
    v158 = v139;
    v140 = v15;
    v155 = v140;
    v156 = self;
    v46 = v22;
    v157 = v46;
    v47 = objc_retainBlock(v150);
    v135 = v14;
    v131 = self;
    if ([v44 shouldUseServiceConnector])
    {
      v123 = v8;
      if (v45)
      {
        v48 = [v44 serviceConnectionCache];
        v49 = v46;
        v50 = [v48 objectForKey:v46];

        v122 = v50;
        if (v50)
        {
          v51 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = [v44 vifName];
            *buf = 138412802;
            *&buf[4] = v52;
            *&buf[12] = 2112;
            *&buf[14] = v122;
            v162 = 2112;
            v163 = v49;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%@: found service connection %@ in cache for service %@", buf, 0x20u);
          }

          v53 = v122;
          [v45 setServiceConnection:v122];
          v54 = [v44 serviceConnectionCache];
          [v54 removeObjectForKey:v49];

          [v45 socketTrafficClass];
          v55 = TrafficClassForIDSOpenSocketPriorityLevel();
          (v47[2])(v47, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, v122, v55, 0);
          v8 = v123;
          v26 = v143;
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
            v70 = [v44 connectionsByID];
            v137 = v69;
            v71 = [v70 objectForKey:v69];

            v142 = v71;
            v72 = [v71 serviceConnection];
            if (v72)
            {
              v131->_isocPipeAssertedForRelayConnection = 1;
              v73 = im_primary_queue();
              dispatch_async(v73, &stru_100BE2BB8);

              v74 = nw_connection_copy_parameters(v72);
              v75 = nw_protocol_copy_quic_definition();
              v76 = nw_parameters_copy_protocol_options_for_definition();

              nw_quic_stream_set_is_datagram();
              v77 = +[IDSFoundationLog utunController];
              v26 = v143;
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "IDSUTunController:startDataChannelWithDevice:nw_quic_set_phone_call_relay_optimization", buf, 2u);
              }

              v132 = v76;
              nw_quic_set_phone_call_relay_optimization();
              v78 = +[IDSFoundationLog utunController];
              v8 = v123;
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
              v8 = v123;
              v26 = v143;
            }
          }

          else
          {
            v134 = v10;
            v101 = [v45 addressPair];
            v102 = [v101 remoteAddress];
            v103 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", [v102 saPortHostOrder]);

            v130 = v45;
            v104 = [v45 addressPair];
            v105 = [v104 localAddress];
            v106 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u", [v105 saPortHostOrder]);

            v107 = [NSUUID alloc];
            v108 = +[IDSPairingManager sharedInstance];
            v109 = [v108 pairedDeviceUUIDString];
            v110 = [v107 initWithUUIDString:v109];

            v125 = v110;
            v74 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v110];
            v137 = v103;
            v111 = [[NREndpoint alloc] initWithDeviceIdentifier:v74 portString:v103 dataProtectionClass:4];
            v142 = v106;
            v112 = [[NRParametersPhoneCallRelay alloc] initWithLocalPort:v106];
            v113 = [v112 copyParameters];
            v132 = v111;
            v114 = [v111 copyEndpoint];
            v79 = nw_connection_create(v114, v113);
            v115 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              v116 = [v44 vifName];
              *buf = 138413570;
              *&buf[4] = v116;
              *&buf[12] = 2112;
              *&buf[14] = v79;
              v162 = 2112;
              v163 = v49;
              v164 = 2112;
              v165 = v114;
              v166 = 2112;
              v167 = v142;
              v168 = 2112;
              v169 = v137;
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%@: create udp connection %@ for service %@ endpoint %@ localPort %@ remotePort %@", buf, 0x3Eu);
            }

            v80 = 0;
            v8 = v123;
            v72 = v125;
            v10 = v134;
            v26 = v143;
            v45 = v130;
          }

          if (!v79)
          {
            v117 = [NSString stringWithFormat:@"failed to create udp connection for %@", v49];
            v118 = [NSDictionary dictionaryWithObject:v117 forKey:NSLocalizedDescriptionKey];
            v119 = [NSError errorWithDomain:@"IDSUTun" code:5071 userInfo:v118];

            v26 = v143;
            v80 = v119;
            v8 = v123;
          }

          [v45 socketTrafficClass];
          v120 = TrafficClassForIDSOpenSocketPriorityLevel();
          v47 = v121;
          (v121[2])(v121, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, v79, v120, v80);

          v15 = v127;
          v53 = 0;
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
      v83 = [v82 pairedDeviceUUIDString];
      v84 = [v81 initWithUUIDString:v83];

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

      v93 = [v92 copyParameters];
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

          v96 = nw_parameters_copy_default_protocol_stack(v93);
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
      v100 = [v46 UTF8String];
      [v91 socketTrafficClass];
      v26 = v143;
      [(IDSUTunController *)self internalStartConnectionWithEndpoint:v146 service:v100 parameters:v93 serviceConnector:v143 trafficClass:TrafficClassForIDSOpenSocketPriorityLevel() completionHandler:v47];

      v8 = v123;
      v56 = v144;
      v15 = v128;
      v10 = v133;
      v53 = v85;
      goto LABEL_64;
    }

    isa = v44[1].isa;
    v53 = [v45 addressPair];
    v57 = [v53 localAddress];
    [v45 addressPair];
    v59 = v58 = v8;
    v60 = [v59 remoteAddress];
    v61 = v47;
    v62 = v10;
    v63 = v15;
    v64 = [v45 protocol];
    [v45 priority];
    v65 = TrafficClassForIDSOpenSocketPriorityLevel();
    v66 = v64;
    v15 = v63;
    v10 = v62;
    v47 = v61;
    [(IDSUTunController *)v131 internalOpenSocketWithDestination:isa localSA:v57 remoteSA:v60 protocol:v66 trafficClass:v65 completionHandler:v61];

    v8 = v58;
    v56 = v144;

    v26 = v143;
LABEL_64:

    v67 = v151;
    v14 = v135;
    goto LABEL_65;
  }

  v67 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = [v147 vifName];
    *buf = 138412290;
    *&buf[4] = v68;
    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "%@: Asked to set up a connection when we dont have a paired device!  Aborting...", buf, 0xCu);
  }

  v56 = v13;
LABEL_65:
}

- (BOOL)setupIPsecLinkForDeviceConnectionInfo:(id)a3
{
  v3 = a3;
  [v3 setShouldUseServiceConnector:1];
  [v3 setVifName:@"IPsecLink"];
  v11 = 7708;
  v12 = 0;
  v14 = 0;
  v13 = 0;
  v15 = 0;
  v4 = [IDSSockAddrWrapper wrapperWithSockAddr:&v11];
  [v3 setLocalSA:v4];

  v5 = [IDSSockAddrWrapper wrapperWithSockAddr:&v11];
  [v3 setRemoteSA:v5];

  v6 = nw_parameters_create();
  nw_parameters_set_required_interface_subtype();
  v7 = nw_service_connector_create();
  [v3 setServiceConnector:v7];
  v8 = nw_service_connector_create();
  [v3 setCloudServiceConnector:v8];
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

  [v3 setLinkLayerConnected:1];
  return 1;
}

- (id)setupNewDeviceConnectionInfoForCbuuid:(id)a3 deviceUniqueID:(id)a4 identityPair:(id)a5 remoteDeviceEncryptionInfo:(id)a6 shouldUseServiceConnector:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    *buf = 138412802;
    v36 = v12;
    v37 = 2112;
    if (v7)
    {
      v17 = @"YES";
    }

    v38 = v13;
    v39 = 2112;
    v40 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "setupNewDeviceConnectionInfoForCbuuid %@ deviceUniqueID %@ shouldUseServiceConnector %@", buf, 0x20u);
  }

  v18 = objc_alloc_init(IDSDeviceConnectionInfo);
  [(IDSDeviceConnectionInfo *)v18 setCbuuid:v12];
  [(IDSDeviceConnectionInfo *)v18 setDeviceUniqueID:v13];
  if (v7)
  {
    [(IDSDeviceConnectionInfo *)v18 setLinkLayerConnected:1];
  }

  else
  {
    v19 = [(IDSUTunController *)self linkManager];
    -[IDSDeviceConnectionInfo setLinkLayerConnected:](v18, "setLinkLayerConnected:", [v19 isConnectedToDeviceID:v12]);
  }

  pthread_mutex_lock(&self->_deviceConnectionInfoTableByCbuuidLock);
  sub_1006C3304(&self->_deviceConnectionInfoTableByCbuuid.tableSize, v12, v18);
  pthread_mutex_unlock(&self->_deviceConnectionInfoTableByCbuuidLock);
  v20 = [v12 isEqualToString:kIDSDefaultPairedDeviceID];
  [(IDSDeviceConnectionInfo *)v18 setShouldUseServiceConnector:v7];
  if (v7)
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
    v31 = v12;
    v23 = v18;
    v32 = v23;
    v33 = v13;
    v24 = [(IDSUTunControlChannel *)v22 initWithDeviceUniqueID:v33 cbuuid:v31 shouldUseServiceConnector:v7 receiveHandler:v30];
    [(IDSUTunControlChannel *)v24 setRemoteDeviceEncryptionInfo:v15];
    [(IDSUTunControlChannel *)v24 setDisableEncryption:self->_controlChannelEncryptionDisabled];
    if (v14 && !v7)
    {
      [(IDSUTunControlChannel *)v24 setIdentityPair:v14];
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
    sub_1006C361C(&self->_deviceConnectionInfoTableByCbuuid, v12);
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
    v5 = [(IDSUTunController *)v2 defaultPairedDeviceIdentityPair];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10062E954;
    v22 = &unk_100BD9BE0;
    v6 = v2;
    v23 = v6;
    v24 = v5 == 0;
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

- (void)internalStartConnectionWithEndpoint:(id)a3 service:(const char *)a4 parameters:(id)a5 serviceConnector:(id)a6 trafficClass:(int)a7 completionHandler:(id)a8
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = objc_retainBlock(a8);
  CFAbsoluteTimeGetCurrent();
  v16 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v19 = a4;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IPsecLink: starting service connector for %s on %@ with parameters %@", buf, 0x20u);
  }

  v17 = v15;
  nw_service_connector_start_request();
}

- (void)prepareControlChannelForDeviceConnectionInfo:(id)a3 genericConnection:(id)a4
{
  v9 = a3;
  v5 = a4;
  [v5 setUint32Key:67109888];
  [v5 setIsCloudEnabled:1];
  [v5 setIsControlChannel:1];
  v6 = [v9 cbuuid];
  [v5 setIsDefaultPairedDevice:{objc_msgSend(v6, "isEqualToString:", kIDSDefaultPairedDeviceID)}];

  v7 = sub_1006C2FC8([v9 connectionsTableByLocalRemotePortKey], objc_msgSend(v5, "uint32Key"));
  v8 = v7;
  if (v7)
  {
    [v7 invalidate];
  }

  sub_1006C2CB0([v9 connectionsTableByLocalRemotePortKey], objc_msgSend(v5, "uint32Key"), v5);
}

- (void)didConnectControlChannelForDeviceConnectionInfo:(id)a3 connection:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "control channel: didConnectControlChannelForDeviceConnectionInfo called: connection %@ error %@", buf, 0x16u);
  }

  if (!v10)
  {
    dword_100CB2100 = 4;
    qword_100CBF430 = 0;
    v18 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice: finished with [%@]", buf, 0xCu);
    }

    v19 = [v8 cbuuid];
    v20 = kIDSDefaultPairedDeviceID;
    v21 = [v19 isEqualToString:kIDSDefaultPairedDeviceID];

    if (v21)
    {
      v22 = [NSUUID alloc];
      v23 = +[IDSCurrentDevice sharedInstance];
      v24 = [v23 deviceIdentifier];
      v71 = [v22 initWithUUIDString:v24];
    }

    else
    {
      memset(buf, 170, 16);
      uuid_clear(buf);
      v71 = [[NSUUID alloc] initWithUUIDBytes:buf];
    }

    v66 = self;
    v31 = +[IMDeviceSupport sharedInstance];
    v32 = [v31 productName];

    v33 = +[IMDeviceSupport sharedInstance];
    v70 = [v33 productVersion];

    v34 = +[IMDeviceSupport sharedInstance];
    v69 = [v34 productBuildVersion];

    v35 = +[IMDeviceSupport sharedInstance];
    v68 = [v35 model];

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
      v39 = [v8 cbuuid];
      v40 = [v39 isEqualToString:v20];

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
    v67 = v32;
    [(IDSUTunControlMessage_Hello *)v42 setProductName:v32];
    [(IDSUTunControlMessage_Hello *)v42 setProductVersion:v70];
    [(IDSUTunControlMessage_Hello *)v42 setProductBuildVersion:v69];
    [(IDSUTunControlMessage_Hello *)v42 setModel:v68];
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
    v47 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v8, "selfInstanceID")}];
    [(IDSUTunControlMessage_Hello *)v42 setInstanceID:v47];
    v48 = [(IDSUTunControlMessage_Hello *)v42 data];
    v49 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [v48 length];
      *buf = 134217984;
      *&buf[4] = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice: sending hello message of size = %lu", buf, 0xCu);
    }

    v51 = [v8 controlChannel];
    [v51 setConnecting:0];

    v52 = [v8 controlChannel];
    [v52 useConnection:v9 withFirstMessage:v48];

    v53 = [v8 controlChannel];
    v54 = [v53 isReadyForEncrypting];

    if (v54)
    {
      [(IDSLinkManager *)v66->_linkManager setRequireBT:0];
    }

    if (_IDSSupportsDirectMessaging())
    {
      v55 = [v8 cbuuid];
      v56 = [v55 isEqualToString:v20];

      if (v56)
      {
        v81 = 14;
        v57 = +[IDSDaemon sharedInstance];
        v58 = [v57 copyDirectMessagingInfo];

        if ([v58 length] > 8)
        {
          v60 = objc_alloc_init(NSMutableData);
          [v60 appendBytes:&v81 length:1];
          [v60 appendData:v58];
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

        v65 = [v8 controlChannel];
        [v65 sendMessage:v60];
      }
    }

    v64 = v71;
    goto LABEL_57;
  }

  v12 = [v8 controlChannel];
  [v12 setConnecting:0];

  v13 = [v8 controlChannel];
  v14 = [v13 connected];

  v15 = +[IDSFoundationLog utunController];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (!v14)
  {
    if (v16)
    {
      v25 = v8[1];
      *buf = 138412546;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice: error creating control channel with [%@] [%@]", buf, 0x16u);
    }

    v26 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v8[1];
      *buf = 138412546;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v10;
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

      [(IDSUTunController *)self obliterateConnectionInfoForCBUUID:v8[1] completionBlock:0 completionQueue:0];
    }

    v29 = [v8 cbuuid];
    v30 = [v29 isEqualToString:kIDSDefaultPairedDeviceID];

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
    v79 = self;
    v80 = v8;
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
    v17 = [v8 vifName];
    *buf = 138412546;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: start_request returns error but control channel fine - assuming connected via available block. Error %@", buf, 0x16u);
  }

LABEL_58:
}

- (void)startControlChannelWithDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 controlChannel];
  if ([v5 connecting])
  {
  }

  else
  {
    v6 = [v4 controlChannel];
    v7 = [v6 connected];

    if (!v7)
    {
LABEL_8:
      v12 = [v4 controlChannel];
      [v12 setConnecting:1];

      v13 = [v4 localSA];
      v9 = [IDSSockAddrWrapper wrapperWithWrapper:v13 andPortHostOrder:1024];

      v14 = [v4 remoteSA];
      v15 = [IDSSockAddrWrapper wrapperWithWrapper:v14 andPortHostOrder:1024];

      v16 = [IDSSockAddrWrapperPair wrapperPairWithLocalAddress:v9 remoteAddress:v15];
      v17 = [[IDSGenericConnection alloc] initWithAddressPair:v16 protocol:6];
      LODWORD(v13) = [v4 shouldUseServiceConnector];
      v18 = +[IDSFoundationLog utunController];
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        v57 = v17;
        v59 = v16;
        v61 = v15;
        if (v19)
        {
          v20 = [v4 cbuuid];
          *buf = 138412290;
          v71 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice over ipsec path for %@", buf, 0xCu);
        }

        v21 = [NSUUID alloc];
        v22 = +[IDSPairingManager sharedInstance];
        v23 = [v22 pairedDeviceUUIDString];
        v24 = [v21 initWithUUIDString:v23];

        if (v24)
        {
          v25 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v24];
          v26 = [NREndpoint alloc];
          v27 = [NSString stringWithUTF8String:"61315"];
          v55 = [v26 initWithDeviceIdentifier:v25 portString:v27 dataProtectionClass:4 service:@"ids-control-channel"];

          v28 = [v55 copyEndpoint];
          v29 = [NRParametersServiceConnection alloc];
          v76 = NRParametersOptionAllowsQR;
          v77 = &__kCFBooleanTrue;
          v30 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v31 = [v29 initWithDeviceIdentifier:v25 dataProtectionClass:4 options:v30];

          v32 = [v31 copyParameters];
          nw_parameters_set_traffic_class();
          v33 = [v4 cloudServiceConnector];
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_1006303BC;
          v67[3] = &unk_100BE2CE0;
          v67[4] = self;
          v68 = v4;
          v17 = v57;
          v69 = v57;
          [(IDSUTunController *)self internalStartConnectionWithEndpoint:v28 service:"ids-control-channel" parameters:v32 serviceConnector:v33 trafficClass:900 completionHandler:v67];
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
          v35 = [v4 cbuuid];
          *buf = 138412290;
          v71 = v35;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice over utun/bt path for %@", buf, 0xCu);
        }

        v36 = v4[1];
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_10063044C;
        v63[3] = &unk_100BE2CE0;
        v37 = v4;
        v64 = v37;
        v38 = v17;
        v65 = v38;
        v66 = self;
        [(IDSUTunController *)self internalOpenSocketWithDestination:v36 localSA:v9 remoteSA:v15 protocol:6 trafficClass:900 completionHandler:v63];
        v39 = [v37 controlChannelCachedSYN];

        if (v39)
        {
          v56 = self;
          v58 = v17;
          v62 = v15;
          v60 = v16;
          if (v37[2079])
          {
            v54 = [v16 remoteAddress];
            v40 = [v54 sa];
            v41 = [v16 localAddress];
            v42 = [v41 sa];
            v43 = [v37 controlChannelCachedSYN];
            v44 = [v43 bytes];
            v45 = [v37 controlChannelCachedSYN];
            v46 = -[IDSUTunController handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:](v56, "handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:", v37, v40, v42, 6, v44, [v45 length]);
          }

          else
          {
            [v37 vifRef];
            v54 = [v16 remoteAddress];
            [v54 sa];
            v41 = [v16 localAddress];
            [v41 sa];
            v43 = [v37 controlChannelCachedSYN];
            [v43 bytes];
            v45 = [v37 controlChannelCachedSYN];
            [v45 length];
            v46 = NEVirtualInterfaceWriteIPPayload();
          }

          v48 = v46;

          v49 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [v37 vifName];
            v51 = [v37 controlChannelCachedSYN];
            *buf = 138412802;
            v71 = v50;
            v72 = 1024;
            v73 = v48;
            v74 = 2112;
            v75 = v51;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%@: write cached control channel syn neRet=%d\n\t\t<= data[%@]", buf, 0x1Cu);
          }

          v52 = [v37 controlChannelCachedSYN];
          v53 = [v52 bytes];

          [(IDSGenericConnection *)v38 setFirstIncomingSYNSequenceNumber:bswap32(v53[1])];
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
          [(IDSGenericConnection *)v38 reportToAWD:[(IDSLinkManager *)v56->_linkManager currentLinkType:v37[1]] connectionType:1 error:0];
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
      v11 = [v4 cbuuid];
      *buf = 138412290;
      v71 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice called but already connecting/connected - force continue %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  if (v10)
  {
    v34 = [v4 cbuuid];
    *buf = 138412290;
    v71 = v34;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "startControlChannelWithDevice called but already connecting/connected - returning %@", buf, 0xCu);
  }

LABEL_32:
}

- (void)resetTCPConnection:(id)a3 forDeviceConnectionInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reset TCP for genericConnection %@", &v9, 0xCu);
  }

  if ([v7 shouldUseServiceConnector])
  {
    [(IDSUTunController *)self resetIPsecTCPConnection:v6 forDeviceConnectionInfo:v7];
  }

  else
  {
    [(IDSUTunController *)self resetUTunTCPConnection:v6 forDeviceConnectionInfo:v7];
  }
}

- (void)resetIPsecTCPConnection:(id)a3 forDeviceConnectionInfo:(id)a4
{
  v4 = a3;
  v5 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 serviceConnection];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "reset TCP for genericConnection %@ serviceConnection %@", &v7, 0x16u);
  }

  [v4 _closeSockets];
  [v4 setStateFlags:{objc_msgSend(v4, "stateFlags") | 0x200}];
}

- (void)resetUTunTCPConnection:(id)a3 forDeviceConnectionInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  memset(v76, 170, sizeof(v76));
  v7 = [v5 expectedNextIncomingSequenceNumber];
  v8 = [v5 expectedNextOutgoingSequenceNumber];
  v9 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v5;
    *&buf[12] = 1024;
    *&buf[14] = v7;
    *&buf[18] = 1024;
    *&buf[20] = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "reset TCP for genericConnection %@ using seq:%08x ack:%08x", buf, 0x18u);
  }

  v10 = [v5 addressPair];
  v11 = [v10 remoteAddress];
  v12 = [v11 saPortHostOrder];
  v13 = [v5 addressPair];
  v14 = [v13 localAddress];
  sub_10062704C(v76, v12, [v14 saPortHostOrder], v7, v8);

  v15 = v5;
  v16 = [v15 sdCopy];
  if (v16 != -1)
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
    if (!getsockopt(v16, 6, 512, buf, &v70))
    {
      v18 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = buf[0];
        v20 = DWORD1(v78);
        v21 = DWORD2(v78);
        v22 = [v15 expectedNextIncomingSequenceNumber];
        v23 = [v15 expectedNextOutgoingSequenceNumber];
        *v71 = 67110144;
        *v72 = v19;
        *&v72[4] = 1024;
        *&v72[6] = v20;
        LOWORD(v73) = 1024;
        *(&v73 + 2) = v21;
        HIWORD(v73) = 1024;
        *v74 = v22;
        *&v74[4] = 1024;
        v75[0] = v23;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "TCP info (%u) tcpi_snd_nxt:%08x tcpi_rcv_nxt:%08x (connection: in:%08x out:%08x)", v71, 0x20u);
      }
    }
  }

  v24 = [v15 addressPair];
  v25 = [v24 remoteAddress];
  v26 = [v25 sa6];
  v27 = [v15 addressPair];
  v28 = [v27 localAddress];
  tcp6checksum((v26 + 8), ([v28 sa6] + 8), v76, 0x14uLL);

  if (v6[2079])
  {
    v29 = [v15 addressPair];
    v30 = [v29 remoteAddress];
    v31 = [v30 sa];
    v32 = [v15 addressPair];
    v33 = [v32 localAddress];
    v34 = -[IDSUTunController handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:](self, "handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:", v6, v31, [v33 sa], 6, v76, 20);
  }

  else
  {
    [v6 vifRef];
    v29 = [v15 addressPair];
    v30 = [v29 remoteAddress];
    [v30 sa];
    v32 = [v15 addressPair];
    v33 = [v32 localAddress];
    [v33 sa];
    v34 = NEVirtualInterfaceWriteIPPayload();
  }

  v35 = v34;

  v36 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v6 vifName];
    v38 = [v15 addressPair];
    v39 = [v38 shortDescription];
    v40 = [NSData dataWithBytesNoCopy:v76 length:20 freeWhenDone:0];
    *buf = 138413058;
    *&buf[4] = v37;
    *&buf[12] = 2112;
    *&buf[14] = v39;
    *&buf[22] = 1024;
    *&buf[24] = v35;
    *&buf[28] = 2112;
    *&buf[30] = v40;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%@: write generated reset ports[%@] neRet=%d\n\t\t<= data[%@]", buf, 0x26u);
  }

  v41 = [v15 sdCopy];
  if (v41 == -1 && (v41 = [v15 sdOriginal], v41 == -1) && (v41 = objc_msgSend(v15, "sd"), v41 == -1))
  {
    v67 = [v15 serviceConnection];
    if (!v67)
    {
      goto LABEL_24;
    }

    v68 = v67;
    connected_socket = nw_connection_get_connected_socket();

    if (connected_socket == -1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    connected_socket = v41;
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
    v44 = [v15 addressPair];
    v45 = [v44 remoteAddress];
    v46 = [v45 saPortHostOrder];
    v47 = [v15 addressPair];
    v48 = [v47 localAddress];
    v49 = [v48 saPortHostOrder];
    sub_10062704C(v76, v46, v49, SDWORD2(v78), SDWORD1(v78));

    v50 = [v15 addressPair];
    v51 = [v50 remoteAddress];
    v52 = [v51 sa6];
    v53 = [v15 addressPair];
    v54 = [v53 localAddress];
    tcp6checksum((v52 + 8), ([v54 sa6] + 8), v76, 0x14uLL);

    if (v6[2079])
    {
      v55 = [v15 addressPair];
      v56 = [v55 remoteAddress];
      v57 = [v56 sa];
      v58 = [v15 addressPair];
      v59 = [v58 localAddress];
      v60 = -[IDSUTunController handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:](self, "handleUtunChannelWrite:source:destination:upperProtocol:bytes:bytesLen:", v6, v57, [v59 sa], 6, v76, 20);
    }

    else
    {
      [v6 vifRef];
      v55 = [v15 addressPair];
      v56 = [v55 remoteAddress];
      [v56 sa];
      v58 = [v15 addressPair];
      v59 = [v58 localAddress];
      [v59 sa];
      v60 = NEVirtualInterfaceWriteIPPayload();
    }

    v61 = v60;

    v62 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = [v6 vifName];
      v64 = [v15 addressPair];
      v65 = [v64 shortDescription];
      v66 = [NSData dataWithBytesNoCopy:v76 length:20 freeWhenDone:0];
      *v71 = 138413058;
      *v72 = v63;
      *&v72[8] = 2112;
      v73 = v65;
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

- (void)removeConnection:(id)a3 fromDeviceConnectionInfo:(id)a4 removeCode:(int64_t)a5 removeReason:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v10)
  {
    v13 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v12;
      v42 = 2112;
      v43 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: closing connection %@", buf, 0x16u);
    }

    if ([v10 protocol] == 6)
    {
      [(IDSUTunController *)self resetTCPConnection:v10 forDeviceConnectionInfo:v11];
    }

    if ([v10 protocol] == 17 && self->_isocPipeAssertedForRelayConnection)
    {
      v14 = im_primary_queue();
      dispatch_async(v14, &stru_100BE2D00);

      self->_isocPipeAssertedForRelayConnection = 0;
    }

    [(IDSUTunController *)self resetIPsecTCPConnection:v10 forDeviceConnectionInfo:v11];
    if ([v10 priority] == 300)
    {
      v15 = [v11 highPriorityConnectionSendingSet];
      v16 = [v10 localConnectionGUID];
      [v15 removeObject:v16];
    }

    v17 = [v10 compressionInfo];
    v18 = [v17 state];

    if (v18 >= 1)
    {
      v19 = [v10 compressionInfo];
      [v11 clearLocalCID:{objc_msgSend(v19, "localCID")}];
    }

    v20 = [v10 connectionID];

    if (v20)
    {
      v21 = [v11 connectionsByID];
      v22 = [v10 connectionID];
      [v21 removeObjectForKey:v22];
    }

    if (([v10 stateFlags] & 2) == 0)
    {
      v23 = [v10 openSocketCompletionHandler];

      if (v23)
      {
        [v10 setStateFlags:{objc_msgSend(v10, "stateFlags") | 2}];
        v24 = [v10 openSocketCompletionHandler];
        [v10 setOpenSocketCompletionHandler:0];
        v25 = [NSDictionary dictionaryWithObject:v12 forKey:NSLocalizedDescriptionKey];
        v26 = [NSError errorWithDomain:@"IDSUTun" code:a5 userInfo:v25];

        v27 = [v10 completionQueue];
        v34 = _NSConcreteStackBlock;
        v35 = 3221225472;
        v36 = sub_1006318E8;
        v37 = &unk_100BD7298;
        v38 = v26;
        v39 = v24;
        v28 = v26;
        v29 = v24;
        dispatch_async(v27, &v34);
      }
    }

    v30 = [v10 addressPair];

    if (v30)
    {
      sub_1006C30B8([v11 connectionsTableByLocalRemotePortKey], objc_msgSend(v10, "uint32Key"));
    }

    if ([v10 encryptionEnabled])
    {
      sub_1006C30B8([v11 outgoingEncryptionTableBySSRC], objc_msgSend(v10, "SSRCSend"));
      sub_1006C30B8([v11 incomingEncryptionTableBySSRC], objc_msgSend(v10, "SSRCRecv"));
    }

    [v10 invalidate];
    if ([v10 shouldStopBTDatagramLink])
    {
      [v10 setShouldStopBTDatagramLink:0];
      v31 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v10 connectionID];
        v33 = [v32 service];
        *buf = 138412290;
        v41 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "closeSocket for %@ using BT datagram link - stop", buf, 0xCu);
      }

      [(IDSLinkManager *)self->_linkManager stopBTDatagramLinkForDeviceUniqueID:IDSDeviceDefaultPairedDeviceUniqueID cbuuid:kIDSDefaultPairedDeviceID];
    }
  }
}

- (void)resetAllConnectionsForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 connectionsByID];
  v6 = [v5 allValues];
  v7 = [v6 _copyForEnumerating];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v7;
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
        v13 = [v4 portMap];
        v14 = [v12 addressPair];
        v15 = [v14 localAddress];
        -[IDSUTunController releasePortIfNecessary:port:](self, "releasePortIfNecessary:port:", v13, [v15 saPortHostOrder]);

        [(IDSUTunController *)self removeConnection:v12 fromDeviceConnectionInfo:v4 removeCode:5031 removeReason:@"resetting all connections"];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  [(IDSUTunController *)self checkSuspendTrafficForDevice:v4 wait:1];
}

- (BOOL)handleIncomingPacket:(id *)a3 fromDeviceToken:(id)a4
{
  v175 = a4;
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
    v8 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, v175);
    if (!v8)
    {
      v8 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v175;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: waiting for first openSocket", buf, 0xCu);
      }

      v13 = 1;
      goto LABEL_237;
    }
  }

  var2 = a3->var2;
  if (var2)
  {
    var0 = a3->var0;
    if (self->_encryptionEnabled && (v11 = *var0, v11 >= 0xE0))
    {
      if (var2 <= 7)
      {
        v12 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v175;
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
          *&buf[4] = v175;
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
          *&buf[4] = v175;
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
          *&buf[4] = v175;
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
          v135 = [v8 portMap];
          v136 = [v25 addressPair];
          v137 = [v136 localAddress];
          -[IDSUTunController releasePortIfNecessary:port:](self, "releasePortIfNecessary:port:", v135, [v137 saPortHostOrder]);

          v138 = [NSString stringWithFormat:@"Decryption failure: %u", v134];
          v25 = v174;
          [(IDSUTunController *)self removeConnection:v174 fromDeviceConnectionInfo:v8 removeCode:5301 removeReason:v138];
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
        v19 = [v174 encryptionEnabled];
        oslog = +[IDSFoundationLog utunController];
        v20 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
        if (!v19)
        {
          if (v20)
          {
            v26 = [NSData dataWithBytesNoCopy:var0 length:var2 freeWhenDone:0];
            *buf = 138412802;
            *&buf[4] = v175;
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
          *&buf[4] = v175;
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
      v168 = bswap32(*(var0 + 1)) >> 16;
      v169 = __rev16(*(var0 + 3));
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
            *&buf[4] = v175;
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
      v30 = [v174 compressionInfo];
      v31 = [v30 remoteCID];

      if (v31 != v171)
      {
        v32 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v8 vifName];
          v34 = [v174 compressionInfo];
          *buf = 138412802;
          *&buf[4] = v33;
          *&buf[12] = 1024;
          *&buf[14] = [v34 remoteCID];
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
          v85 = [v8 vifName];
          *v188 = 138412546;
          v189 = v85;
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

    v86 = [v174 compressionInfo];
    v87 = [v86 remoteContext] == 0;

    if (v87)
    {
      v58 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v91 = [v8 vifName];
        v92 = [v174 compressionInfo];
        v93 = [v92 remoteCID];
        *buf = 138412546;
        *&buf[4] = v91;
        *&buf[12] = 1024;
        *&buf[14] = v93;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@: remoteContext is nil for remoteCID %d, decompression failed.", buf, 0x12u);
      }

      goto LABEL_112;
    }

    v88 = [v174 compressionInfo];
    [v88 remoteContext];
    v89 = IDSHC_DecompressSimple();

    if (v89)
    {
      v18 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v90 = [v8 vifName];
        *buf = 138412546;
        *&buf[4] = v90;
        *&buf[12] = 2048;
        *&buf[14] = v89;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: IDSHC_DecompressSimple failed (%lu)", buf, 0x16u);
      }

      goto LABEL_150;
    }

    v95 = [v174 addressPair];
    v96 = [v95 remoteAddress];
    v168 = [v96 saPortHostOrder];

    v97 = [v174 addressPair];
    v98 = [v97 localAddress];
    v169 = [v98 saPortHostOrder];

LABEL_24:
    if (v15)
    {
      if (v178 <= 19)
      {
        v18 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v175;
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
          *&buf[4] = v175;
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
      v174 = sub_1006C2FC8([v8 connectionsTableByLocalRemotePortKey], v168 | (v169 << 16));
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
            v164 = [v8 vifName];
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
            v43 = [v174 flagsString];
            *buf = 138414850;
            *&buf[4] = v164;
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
            *(&v182 + 2) = v169;
            HIWORD(v182) = 1024;
            v183 = v168;
            v184 = 2112;
            v185 = v43;
            v186 = 2048;
            v187 = v174;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@: Got TCP %dB (flags[%02X] [%s%s%s%s])) for %u <= %u (connection %@ (%p))", buf, 0x60u);
          }
        }

        if (v174)
        {
          v44 = [v174 connectionID];
          v45 = [v44 service];
          if ([v45 isEqualToString:@"localdelivery"])
          {
            v46 = 2;
          }

          else
          {
            v46 = 4;
          }

          v165 = v46;

          v47 = [v8 remoteSA];
          v48 = [v47 sa6];
          v49 = [v8 localSA];
          v50 = [v49 sa6];
          tcp6checksum((v48 + 8), (v50 + 8), v179, v178);

          v51 = v178;
          v52 = v179->u32[1];
          v53 = (v179->u8[12] >> 2) & 0x3C;
          if (v53 && self->_encryptionEnabled && !v13 && (*(v174 + 4784) & 1) != 0)
          {
            v115 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              v131 = [v8 vifName];
              *buf = 138412290;
              *&buf[4] = v131;
              _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%@: dropping TCP (unencrypted) - expect to be encrypted", buf, 0xCu);
            }
          }

          else
          {
            v54 = [v174 stateFlags];
            v55 = v54;
            v56 = bswap32(v52);
            v57 = (v56 + v51 - v53);
            if ((v179->i8[13] & 2) == 0)
            {
              if ((v54 & 0x80) == 0)
              {
                v58 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v59 = [v8 vifName];
                  v60 = v59;
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

                  *&buf[4] = v59;
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
                  *(&v182 + 2) = v169;
                  HIWORD(v182) = 1024;
                  v183 = v168;
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
                v101 = [v174 idsDeviceConnectionUUID];
                v102 = v101 == 0;

                if (!v102)
                {
                  v103 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
                  v104 = *(v174 + 4872);
                  v105 = [v174 idsDeviceConnectionUUID];
                  [v103 setFirstPacketReceiveTime:v105 forConnectionUUID:v104];
                }
              }

              if (([v8 shouldUseServiceConnector]& 1) == 0)
              {
                goto LABEL_169;
              }

              goto LABEL_141;
            }

            if ((v54 & 0x80) == 0)
            {
              [v174 setStateFlags:v54 | 0x80];
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

            if (v169 != 1024 || v56 == [v174 firstIncomingSYNSequenceNumber] || (v179->i8[13] & 0x10) != 0)
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

            v113 = [v8 controlChannel];
            [v113 setDidReceiveReestablishmentRequest:1];

            v114 = [v8 controlChannel];
            [v114 setReestablishmentRequestReceiveTime:sub_10062118C()];

            v115 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              v116 = [v8 controlChannel];
              v117 = [v116 didReceiveReestablishmentRequest];
              v118 = @"NO";
              if (v117)
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
          v72 = [v8 vifName];
          v73 = v72;
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

          *&buf[4] = v72;
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
          *(&v182 + 2) = v169;
          HIWORD(v182) = 1024;
          v183 = v168;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%@: dropping TCP (no connection) %dB (flags[%02X] [%s%s%s%s])) for %u <= %u", buf, 0x4Cu);
        }
      }

      else
      {
        if (v174)
        {
          if (!self->_encryptionEnabled || v13 || (*(v174 + 4784) & 1) == 0)
          {
            v66 = [v174 readHandler];

            if (v66)
            {
              v67 = &v179->i8[8];
              v68 = v178 - 8;
              a3->var1 = v68;
              a3->var2 = v68;
              a3->var0 = v67;
              v69 = [v174 readHandler];
              (v69)[2](v69, a3);

              goto LABEL_233;
            }

            v122 = [v8 remoteSA];
            v123 = [v122 sa6];
            v124 = [v8 localSA];
            v125 = [v124 sa6];
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
              v139 = [v8 remoteSA];
              v140 = [v139 sa];
              v141 = [v8 localSA];
              v142 = [v141 sa];
              v143 = [(IDSUTunController *)self handleUtunChannelWrite:v8 source:v140 destination:v142 upperProtocol:v170 bytes:v179 bytesLen:v178];
            }

            else
            {
              [v8 vifRef];
              v139 = [v8 remoteSA];
              [v139 sa];
              v141 = [v8 localSA];
              [v141 sa];
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
                  v149 = [v8 vifName];
                  v150 = " ...";
                  *buf = 138414338;
                  *&buf[4] = v149;
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
                  *&buf[32] = v168;
                  *&buf[36] = 1024;
                  *&buf[38] = v169;
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

                v153 = [v8 vifName];
                v154 = [v174 expectedNextIncomingSequenceNumber];
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

                *&buf[4] = v153;
                *&buf[12] = 1024;
                *&buf[14] = v170;
                *&buf[18] = 1024;
                *&buf[20] = v169;
                *&buf[24] = 1024;
                *&buf[26] = v168;
                *&buf[30] = 1024;
                *&buf[32] = v144;
                *&buf[36] = 1024;
                *&buf[38] = v154;
                *&buf[42] = 2112;
                *&buf[44] = v155;
                *&buf[52] = 2080;
                *v181 = v157;
                _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "%@: write ippayload (proto=%u) %u <= %u neRet=%d niseq:%08x\n\t\t<= data[%@%s]", buf, 0x3Eu);
              }
            }

            [v174 setPacketsReceived:{objc_msgSend(v174, "packetsReceived") + 1}];
            [v174 setBytesReceived:{objc_msgSend(v174, "bytesReceived") + a3->var2}];
            goto LABEL_233;
          }

          v115 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
          {
            v132 = [v8 vifName];
            *buf = 138413058;
            *&buf[4] = v132;
            *&buf[12] = 1024;
            *&buf[14] = v178;
            *&buf[18] = 1024;
            *&buf[20] = v169;
            *&buf[24] = 1024;
            *&buf[26] = v168;
            _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "%@: dropping UDP (unencrypted) %dB for %u <= %u", buf, 0x1Eu);
          }

          goto LABEL_206;
        }

        v71 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v94 = [v8 vifName];
          *buf = 138413058;
          *&buf[4] = v94;
          *&buf[12] = 1024;
          *&buf[14] = v178;
          *&buf[18] = 1024;
          *&buf[20] = v169;
          *&buf[24] = 1024;
          *&buf[26] = v168;
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
        v70 = [v8 vifName];
        *buf = 138412546;
        *&buf[4] = v70;
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
    *&buf[4] = v175;
    *&buf[12] = 1024;
    *&buf[14] = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: incoming packet not enough bytes to parse %d", buf, 0x12u);
  }

  v13 = 0;
LABEL_237:

  return v13;
}

- (void)internalOpenSocketWithDestination:(id)a3 localSA:(id)a4 remoteSA:(id)a5 protocol:(int)a6 trafficClass:(int)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  if (a6 == 17)
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
    v22 = [NSString stringWithFormat:@"device %@: socket() failed: errno=%d: %s", v13, *v21, strerror(*v21)];
    v23 = [NSDictionary dictionaryWithObject:v22 forKey:NSLocalizedDescriptionKey];
    v24 = [NSError errorWithDomain:@"IDSUTun" code:5001 userInfo:v23];

    (*(v16 + 2))(v16, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, a7, v24);
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
  if (a6 == 6)
  {
    *buf = 1;
    setsockopt(v19, 6, 521, buf, 4u);
    if (a7 <= 699)
    {
      if (a7 != 500 && a7 != 600)
      {
        goto LABEL_15;
      }
    }

    else if (a7 != 700 && a7 != 900 && a7 != 800)
    {
      goto LABEL_15;
    }

    v42 = 1;
    setsockopt(v19, 6, 1, &v42, 4u);
  }

LABEL_15:
  sub_10062CDEC(v19, a7);
  v25 = bind(v19, [v14 sa], 0x1Cu);
  v26 = *__error();
  v27 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v15;
    v29 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v14 sa6] + 8, 16);
    v30 = *([v14 sa6] + 6);
    *buf = 138413570;
    v47 = v13;
    v48 = 2112;
    *v49 = v14;
    *&v49[8] = 2112;
    v50 = v29;
    v51 = 1024;
    v52 = v30;
    v53 = 1024;
    v54 = v25;
    v55 = 1024;
    v56 = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "for device %@: binding to [%@ [%@] @ scopeid=%d] iRet=%d (errno=%d)", buf, 0x32u);

    v15 = v28;
  }

  if (v25)
  {
    close(v19);
    v31 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"device %@: can't bind to [%@ @ scopeid=%d]: errno=%d: %s", v13, v14, *([v14 sa6] + 6), v26, strerror(v26));
    v32 = [NSDictionary dictionaryWithObject:v31 forKey:NSLocalizedDescriptionKey];
    v33 = [NSError errorWithDomain:@"IDSUTun" code:5002 userInfo:v32];

    (*(v16 + 2))(v16, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, a7, v33);
  }

  else
  {
    v34 = connect(v19, [v15 sa], 0x1Cu);
    v35 = *__error();
    v36 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = +[IDSSockAddrWrapper wrapperWithSockAddr:](IDSSockAddrWrapper, "wrapperWithSockAddr:", [v15 sa]);
      v38 = *([v15 sa6] + 6);
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
      (*(v16 + 2))(v16, 0, 0, 0, 0, v19, 0, 0, -1, 0);
    }

    else
    {
      close(v19);
      v39 = [NSString stringWithFormat:@"device %@: can't connect to %@: errno=%d: %s", v13, v15, v35, strerror(v35)];
      v40 = [NSDictionary dictionaryWithObject:v39 forKey:NSLocalizedDescriptionKey];
      v41 = [NSError errorWithDomain:@"IDSUTun" code:5003 userInfo:v40];

      (*(v16 + 2))(v16, 0, 0, 0, 0, 0xFFFFFFFFLL, 0, 0, -1, v41);
    }
  }

LABEL_25:
}

- (int)processCompressionRequest:(id)a3 fromDeviceConnectionInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 vifName];
    *buf = 138412546;
    v76 = v8;
    v77 = 2112;
    *v78 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: got control message: compression_req %@", buf, 0x16u);
  }

  v9 = [v5 length];
  v10 = [v5 bytes];
  if (v9 > 0xA)
  {
    v16 = v10;
    v74 = v6;
    v17 = bswap32(*(v10 + 1)) >> 16;
    v18 = bswap32(*(v10 + 3)) >> 16;
    v19 = bswap32(*(v10 + 5)) >> 16;
    v20 = bswap32(*(v10 + 7)) >> 16;
    v21 = bswap32(*(v10 + 9)) >> 16;
    v22 = v17 + v18 + v19 + v20 + v21 + 23;
    if (v9 != v22)
    {
      v11 = +[IDSFoundationLog utunController];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v57 = 1;
        v6 = v74;
        goto LABEL_52;
      }

      v6 = v74;
      v12 = [v74 vifName];
      *buf = 138412802;
      v76 = v12;
      v77 = 1024;
      *v78 = v9;
      *&v78[4] = 2048;
      *&v78[6] = v22;
      v13 = "%@: invalid message size for UTCMType_CompressionRequest (%u != %lu)";
      v14 = v11;
      v15 = 28;
      goto LABEL_24;
    }

    v23 = v10 + 23;
    v11 = [[NSString alloc] initWithBytes:v10 + 23 length:v17 encoding:4];
    if (!v11)
    {
      v25 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v74;
        v59 = [v74 vifName];
        *buf = 138412290;
        v76 = v59;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionRequest cannot decode remoteConnectionGUID", buf, 0xCu);

        v57 = 2;
      }

      else
      {
        v57 = 2;
        v6 = v74;
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
        v6 = v74;
        v60 = [v74 vifName];
        *buf = 138412290;
        v76 = v60;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionRequest cannot decode localConnectionGUID", buf, 0xCu);

        v57 = 2;
      }

      else
      {
        v57 = 2;
        v6 = v74;
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
      v27 = [v74 vifName];
      *buf = 138413314;
      v76 = v27;
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
      v6 = v74;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v61 = [v74 vifName];
        *buf = 138412290;
        v76 = v61;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionRequest cannot decode account", buf, 0xCu);
      }

      v57 = 2;
      goto LABEL_49;
    }

    v30 = &v28[v19];
    v31 = [[NSString alloc] initWithBytes:v30 length:v20 encoding:4];
    v6 = v74;
    if (!v31)
    {
      v32 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v62 = [v74 vifName];
        *buf = 138412290;
        v76 = v62;
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
        v63 = [v74 vifName];
        *buf = 138412290;
        v76 = v63;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionRequest cannot decode name", buf, 0xCu);
      }

      v57 = 2;
      goto LABEL_47;
    }

    v33 = [IDSGenericConnectionID idWithAccount:v29 service:v31 name:v32];
    v34 = [v74 connectionsByID];
    v69 = v33;
    v35 = [v34 objectForKey:v33];

    v36 = v35;
    if (v35)
    {
      v37 = [v35 localConnectionGUID];
      if ([v37 isEqualToString:v25])
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
            v41 = [v74 vifName];
            v42 = [v68 addressPair];
            v43 = [v42 shortDescription];
            *buf = 138412546;
            v76 = v41;
            v77 = 2112;
            *v78 = v43;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%@: processCompressionRequest resolved connection ports[%@]", buf, 0x16u);

            v36 = v68;
          }

          [v36 compressionInfo];
          v45 = v44 = v36;
          [v45 setRemoteCID:v73];

          [v44 protocol];
          v46 = [v44 addressPair];
          v47 = [v46 remoteAddress];
          [v47 saPortHostOrder];

          v48 = [v44 addressPair];
          v49 = [v48 localAddress];
          [v49 saPortHostOrder];

          IDSHC_CreateContext();
          v50 = [v44 compressionInfo];
          [v50 setRemoteContext:0];

          v51 = [v44 localConnectionGUID];
          v52 = [v44 remoteConnectionGUID];
          v53 = sub_100634894(v72, v51, v52, v29, v31, v32);

          v6 = v74;
          v54 = [v74 controlChannel];
          [v54 sendMessage:v53];

          v55 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [v74 vifName];
            *buf = 138412546;
            v76 = v56;
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
    v12 = [v6 vifName];
    *buf = 138412546;
    v76 = v12;
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

- (int)processCompressionResponse:(id)a3 fromDeviceConnectionInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 vifName];
    *buf = 138412546;
    *&buf[4] = v8;
    v77 = 2112;
    *v78 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: got control message: compression_resp %@", buf, 0x16u);
  }

  v9 = [v5 length];
  v10 = [v5 bytes];
  if (v9 > 0xA)
  {
    v14 = v10;
    v75 = v6;
    v15 = bswap32(*(v10 + 1)) >> 16;
    v16 = bswap32(*(v10 + 3)) >> 16;
    v17 = bswap32(*(v10 + 5)) >> 16;
    v18 = bswap32(*(v10 + 7)) >> 16;
    v19 = bswap32(*(v10 + 9)) >> 16;
    v20 = v15 + v16 + v17 + v18 + v19 + 13;
    if (v9 != v20)
    {
      v56 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v75;
        v57 = [v75 vifName];
        *buf = 138412802;
        *&buf[4] = v57;
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
        v6 = v75;
      }

      v11 = v56;
      goto LABEL_55;
    }

    v21 = v10 + 13;
    v22 = [[NSString alloc] initWithBytes:v10 + 13 length:v15 encoding:4];
    if (!v22)
    {
      v24 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v75;
        v58 = [v75 vifName];
        *buf = 138412290;
        *&buf[4] = v58;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionResponse cannot decode remoteConnectionGUID", buf, 0xCu);

        v13 = 2;
      }

      else
      {
        v13 = 2;
        v6 = v75;
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
        v6 = v75;
        v59 = [v75 vifName];
        *buf = 138412290;
        *&buf[4] = v59;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionResponse cannot decode localConnectionGUID", buf, 0xCu);

        v13 = 2;
      }

      else
      {
        v13 = 2;
        v6 = v75;
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
        v6 = v75;
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
        v6 = v75;
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
        v6 = v75;
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
        v6 = v75;
      }

      goto LABEL_51;
    }

    v31 = [[NSString alloc] initWithBytes:v29 + v18 length:v19 encoding:4];
    if (!v31)
    {
      v64 = +[IDSFoundationLog utunController];
      v6 = v75;
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
    v33 = [v75 connectionsByID];
    v71 = v32;
    v34 = [v33 objectForKey:v32];

    if (v34)
    {
      v35 = [v34 localConnectionGUID];
      if ([v35 isEqualToString:v74])
      {
        v36 = [v34 remoteConnectionGUID];
        v37 = [v36 isEqualToString:v22];

        if (v37)
        {
          v38 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            [v75 vifName];
            v39 = log = v38;
            v40 = [v34 addressPair];
            v41 = [v40 shortDescription];
            *buf = 138412546;
            *&buf[4] = v39;
            v77 = 2112;
            *v78 = v41;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@: processCompressionResponse resolved connection ports[%@]", buf, 0x16u);

            v38 = log;
          }

          v42 = [v34 compressionInfo];
          v43 = [v42 reqCount];

          if (v43 <= v72)
          {
            v44 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = [v75 vifName];
              *buf = 138412546;
              *&buf[4] = v45;
              v77 = 1024;
              *v78 = v72;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%@: compression_req (%u) acknowledged!", buf, 0x12u);
            }

            v46 = [v34 compressionInfo];
            [v46 setReqCount:v72];
          }

          *buf = 0;
          [v34 protocol];
          v47 = [v34 compressionInfo];
          [v47 localCID];

          v48 = [v34 addressPair];
          v49 = [v48 localAddress];
          [v49 saPortHostOrder];

          v50 = [v34 addressPair];
          v51 = [v50 remoteAddress];
          [v51 saPortHostOrder];

          v52 = [v34 compressionInfo];
          [v52 lastSentSeq];

          v53 = [v34 compressionInfo];
          [v53 lastSentAck];

          IDSHC_CreateContext();
          v54 = [v34 compressionInfo];
          [v54 setLocalContext:*buf];

          v55 = [v34 compressionInfo];
          [v55 setState:2];

          v13 = 0;
          v6 = v75;
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
    v6 = v75;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [v75 vifName];
      *buf = 138412802;
      *&buf[4] = v68;
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
    v12 = [v6 vifName];
    *buf = 138412546;
    *&buf[4] = v12;
    v77 = 2048;
    *v78 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CompressionResponse has invalid header length (%lu)", buf, 0x16u);
  }

  v13 = 1;
LABEL_55:

  return v13;
}

- (void)startCompressionForConnection:(id)a3 deviceConnectionInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[IDSFoundationLog utunController];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 && v6)
  {
    if (v8)
    {
      v9 = [v5 addressPair];
      v10 = [v9 shortDescription];
      *buf = 138412290;
      v51 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "startCompressionForConnection ports[%@]", buf, 0xCu);
    }

    v11 = [v6 nextAvailableLocalCID];
    v7 = +[IDSFoundationLog utunController];
    v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v11 == 0xFFFF)
    {
      if (v12)
      {
        v38 = [v6 vifName];
        *buf = 138412290;
        v51 = v38;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: failed to get local CID", buf, 0xCu);
      }
    }

    else
    {
      if (v12)
      {
        v13 = [v6 vifName];
        *buf = 138412546;
        v51 = v13;
        v52 = 1024;
        LODWORD(v53) = v11;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: resolved next available localCID 0x%04x", buf, 0x12u);
      }

      v14 = [v5 compressionInfo];
      [v14 setLocalCID:v11];

      v15 = [v5 compressionInfo];
      [v15 setReqCount:{(objc_msgSend(v15, "reqCount") + 1)}];

      [v5 setCompressionState:1];
      v16 = [v5 compressionInfo];
      v46 = [v16 reqCount];

      v17 = [v5 compressionInfo];
      HIDWORD(v45) = [v17 lastSentSeq];

      v18 = [v5 compressionInfo];
      LODWORD(v45) = [v18 lastSentAck];

      v19 = [v5 connectionID];
      v20 = [v19 account];

      v21 = [v5 connectionID];
      v22 = [v21 service];

      v23 = [v5 connectionID];
      [v23 name];
      v24 = v49 = v6;

      v25 = [v5 localConnectionGUID];
      v26 = [v5 remoteConnectionGUID];
      v44 = v25;
      v27 = v25;
      v7 = v20;
      v28 = v22;
      v39 = v11;
      v29 = v24;
      v42 = [v25 UTF8String];
      LODWORD(v24) = strlen(v42);
      v43 = v26;
      v41 = [v26 UTF8String];
      LODWORD(v25) = strlen(v41);
      v40 = [v7 UTF8String];

      v30 = strlen(v40);
      v31 = [v28 UTF8String];
      v48 = v28;

      LODWORD(v22) = strlen(v31);
      v32 = [v29 UTF8String];
      v47 = v29;

      v33 = strlen(v32);
      LOWORD(v28) = v33;
      v54 = 4;
      v55 = bswap32(v24) >> 16;
      v56 = bswap32(v25) >> 16;
      v57 = bswap32(v30) >> 16;
      v58 = bswap32(v22) >> 16;
      v59 = bswap32(v33) >> 16;
      *buf = __rev16(v46);
      *&buf[2] = __rev16(v39);
      v51 = _byteswap_uint64(v45);
      v34 = objc_alloc_init(NSMutableData);
      [v34 appendBytes:&v54 length:11];
      [v34 appendBytes:buf length:12];
      [v34 appendBytes:v42 length:v24];
      [v34 appendBytes:v41 length:v25];
      v6 = v49;
      [v34 appendBytes:v40 length:v30];
      [v34 appendBytes:v31 length:v22];
      [v34 appendBytes:v32 length:v28];

      v35 = [v49 controlChannel];
      [v35 sendMessage:v34];

      v36 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v49 vifName];
        *buf = 138412546;
        v51 = v37;
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

- (void)receiveControlChannelMessage:(id)a3 fromCbuuid:(id)a4 deviceUniqueID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v322 = self;
  v323 = a5;
  v324 = v9;
  v325 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, v9);
  v10 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v325 vifName];
    *buf = 138412290;
    v332 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: control message parsing..", buf, 0xCu);
  }

  v12 = v8;
  v13 = [v8 bytes];
  v14 = [v8 length];
  if (!v14)
  {
    v17 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v325 vifName];
      *buf = 138412290;
      v332 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: control message too small", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v15 = *v13;
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
      v24 = [v325 vifName];
      v25 = [(IDSUTunControlMessage_Hello *)v23 initWithBytes:v13 length:v14 loggingPrefixString:v24];

      v26 = [(IDSUTunControlMessage_Hello *)v25 controlChannelVersion];
      LODWORD(v24) = v26 == 0;

      if (v24)
      {
        v90 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v91 = [v325 vifName];
          *buf = 138412290;
          v332 = v91;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%@: control message: hello control channel version is nil", buf, 0xCu);
        }
      }

      else
      {
        v27 = [(IDSUTunControlMessage_Hello *)v25 instanceID];
        [v27 getUUIDBytes:{objc_msgSend(v325, "instanceID")}];

        v28 = [(IDSUTunControlMessage_Hello *)v25 capabilityFlags];
        [v325 setCapabilityFlags:{objc_msgSend(v28, "unsignedLongLongValue")}];

        v29 = [(IDSUTunControlMessage_Hello *)v25 serviceMinCompatibilityVersion];
        [v325 setServiceMinCompatibilityVersion:{objc_msgSend(v29, "unsignedIntValue")}];

        v30 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v325 vifName];
          *buf = 138412546;
          v332 = v31;
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

          v96 = [v325 controlChannel];
          [v96 setChecksumEnabled:1];
        }

        v97 = [(IDSUTunControlMessage_Hello *)v25 controlChannelVersion];
        [v325 setControlChannelVersion:v97];

        os_unfair_lock_lock(&self->_controlChannelVersionCacheLock);
        controlChannelVersionCache = self->_controlChannelVersionCache;
        v99 = [(IDSUTunControlMessage_Hello *)v25 controlChannelVersion];
        [(NSMutableDictionary *)controlChannelVersionCache setObject:v99 forKey:v324];

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

        v101 = [v325 controlChannel];
        v102 = [v101 didReceiveReestablishmentRequest];

        if (v102)
        {
          v103 = [v325 controlChannel];
          [v103 setDidReceiveReestablishmentRequest:0];

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
        log = v13[1];
        v307 = *(v13 + 1);
        v309 = *(v13 + 2);
        v36 = *(v13 + 3);
        oslog = *(v13 + 4);
        v37 = *(v13 + 5);
        v38 = *(v13 + 6);
        v39 = *(v13 + 7);
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
            v43 = [v325 vifName];
            *buf = 138412290;
            v332 = v43;
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
            v89 = [v325 vifName];
            *buf = 138413314;
            v332 = v89;
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
            v95 = [v325 vifName];
            *buf = 138412802;
            v332 = v95;
            v333 = 1024;
            *v334 = v14;
            *&v334[4] = 2048;
            *&v334[6] = v83;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel unexpected size (%u != %lu)", buf, 0x1Cu);
          }

          goto LABEL_13;
        }

        v84 = v81;
        v85 = v13 + 16;
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
                v127 = [v325 vifName];
                *buf = 138412290;
                v332 = v127;
                _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel cannot decode remoteConnectionGUID", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v264 = [v325 vifName];
                  _IDSLogTransport();

                  if (_IDSShouldLog())
                  {
                    v265 = [v325 vifName];
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
                v140 = [v325 vifName];
                *buf = 138412290;
                v332 = v140;
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

              v266 = [v325 vifName];
              _IDSLogTransport();

              if (!_IDSShouldLog())
              {
                goto LABEL_334;
              }

              v120 = [v325 vifName];
              _IDSLogV();
LABEL_333:

LABEL_334:
LABEL_335:

              goto LABEL_336;
            }

            v120 = [[NSString alloc] initWithBytes:&v87[v79 + v80] length:v84 encoding:4];
            if (!v120)
            {
              v146 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
              {
                v147 = [v325 vifName];
                *buf = 138412290;
                v332 = v147;
                _os_log_impl(&_mh_execute_header, v146, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannel cannot decode name", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v269 = [v325 vifName];
                  _IDSLogTransport();

                  if (_IDSShouldLog())
                  {
                    v270 = [v325 vifName];
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
                v122 = [v325 vifName];
                *buf = 138412546;
                v332 = v122;
                v333 = 2048;
                *v334 = v292;
                _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_SetupChannelForDirectMsg flags: %#llx", buf, 0x16u);
              }
            }

            else
            {
              v292 = 0;
            }

            v301 = [IDSGenericConnectionID idWithAccount:v306 service:v303 name:v120];
            v148 = [v325 connectionsByID];
            v149 = [v148 objectForKey:v301];

            v150 = [v325 localSA];
            v151 = __rev16(v309);
            v311 = [IDSSockAddrWrapper wrapperWithWrapper:v150 andPortHostOrder:v151];

            v152 = [v325 remoteSA];
            v295 = __rev16(v307);
            v308 = [IDSSockAddrWrapper wrapperWithWrapper:v152 andPortHostOrder:?];

            v298 = [IDSSockAddrWrapperPair wrapperPairWithLocalAddress:v311 remoteAddress:v308];
            v153 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
            {
              v154 = [v325 vifName];
              *buf = 138414850;
              v332 = v154;
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
              *v338 = v120;
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
                v281 = v120;
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
                  v281 = v120;
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
              v155 = [(IDSGenericConnection *)v149 localConnectionGUID];
              v156 = [v155 isEqualToString:oslogb];

              if ((v156 & 1) == 0)
              {
                v157 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "control message not for current connection - assume local is current for now (message is old) and send CloseChannel for remote attempt", buf, 2u);
                }

                v158 = [v325 controlChannel];
                v159 = sub_10062D4A4(0, v86, v306, v303, v120);
                [v158 sendMessage:v159];

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
              v179 = [(IDSGenericConnection *)v149 localConnectionGUID];
              v180 = [v179 compare:v86] == 1;

              if (v180)
              {
                v181 = +[IDSFoundationLog utunController];
                if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                {
                  v182 = [v325 vifName];
                  v183 = [(IDSGenericConnection *)v149 localConnectionGUID];
                  *buf = 138412546;
                  v332 = v182;
                  v333 = 2112;
                  *v334 = v183;
                  _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "%@: found connection [%@] - remote wins", buf, 0x16u);
                }

                v184 = [v325 portMap];
                v185 = [(IDSGenericConnection *)v149 addressPair];
                v186 = [v185 localAddress];
                -[IDSUTunController releasePortIfNecessary:port:](v322, "releasePortIfNecessary:port:", v184, [v186 saPortHostOrder]);

                [(IDSGenericConnection *)v149 setAddressPair:v298];
              }

              goto LABEL_290;
            }

            v190 = [v325 portMap];
            v191 = [(IDSGenericConnection *)v149 addressPair];
            v192 = [v191 localAddress];
            -[IDSUTunController releasePortIfNecessary:port:](v322, "releasePortIfNecessary:port:", v190, [v192 saPortHostOrder]);

            [(IDSUTunController *)v322 removeConnection:v149 fromDeviceConnectionInfo:v325 removeCode:5050 removeReason:@"stale connection"];
            [(IDSUTunController *)v322 checkSuspendTrafficForDevice:v325 wait:1];
LABEL_287:
            v149 = [[IDSGenericConnection alloc] initWithConnectionID:v301 protocol:log isCloudEnabled:0];
            v193 = [v325 cbuuid];
            -[IDSGenericConnection setIsDefaultPairedDevice:](v149, "setIsDefaultPairedDevice:", [v193 isEqualToString:kIDSDefaultPairedDeviceID]);

            [(IDSGenericConnection *)v149 setAddressPair:v298];
            v194 = [v325 connectionsByID];
            [v194 setObject:v149 forKey:v301];

            v195 = +[IDSFoundationLog utunController];
            if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
            {
              v196 = [v325 vifName];
              v197 = [(IDSGenericConnection *)v149 localConnectionGUID];
              v198 = v197;
              v199 = [v197 UTF8String];
              *buf = 138413058;
              v332 = v196;
              v333 = 1024;
              *v334 = v151;
              *&v334[4] = 1024;
              *&v334[6] = v295;
              *&v334[10] = 2080;
              *&v334[12] = v199;
              _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "%@: send setup channel message ports[%u:::%u] guid[%s]", buf, 0x22u);
            }

            v200 = [v325 controlChannel];
            v201 = [(IDSGenericConnection *)v149 localConnectionGUID];
            v202 = sub_100639644(log, v151, v295, v201, v86, v306, v303, v120, v15 == 13, v292);
            [v200 sendMessage:v202];

            [(IDSGenericConnection *)v149 setStateFlags:[(IDSGenericConnection *)v149 stateFlags]| 4];
            [(IDSGenericConnection *)v149 setConnectionSetupStartTime:sub_10062118C()];
LABEL_290:
            v203 = [(IDSGenericConnection *)v149 addressPair];
            v204 = [v203 localAddress];
            v205 = [v204 saPortHostOrder];
            v206 = [(IDSGenericConnection *)v149 addressPair];
            v207 = [v206 remoteAddress];
            -[IDSGenericConnection setUint32Key:](v149, "setUint32Key:", (v205 << 16) | [v207 saPortHostOrder]);

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
            v255 = [v301 serviceConnectorServiceForAccount];
            [(IDSUTunController *)v322 startDataChannelWithDevice:v325 genericConnection:v149 serviceConnectorService:v255];
            if (v315 && [v324 isEqualToString:kIDSDefaultPairedDeviceID])
            {
              v256 = +[IDSDaemon daemon];
              [v256 receivedDirectMsgSocketRequestForService:v303 stream:v120 flags:v292];
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
            v129 = [v325 vifName];
            *buf = 138412290;
            v332 = v129;
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

          v260 = [v325 vifName];
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
            v109 = [v325 vifName];
            *buf = 138412290;
            v332 = v109;
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

          v260 = [v325 vifName];
          _IDSLogTransport();

          if (!_IDSShouldLog())
          {
            goto LABEL_336;
          }
        }

        v261 = [v325 vifName];
        _IDSLogV();

LABEL_336:
        goto LABEL_14;
      }

      v17 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v325 vifName];
        *buf = 138412290;
        v332 = v18;
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
          v34 = [v325 vifName];
          *buf = 138412290;
          v332 = v34;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel insufficient header", buf, 0xCu);
        }

        goto LABEL_13;
      }

      v58 = __rev16(*(v13 + 1));
      v59 = __rev16(*(v13 + 3));
      v60 = __rev16(*(v13 + 5));
      v61 = __rev16(*(v13 + 7));
      v62 = __rev16(*(v13 + 9));
      v63 = v58 + v59 + v60 + v61 + v62 + 11;
      if (v14 != v63)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v92 = [v325 vifName];
          *buf = 138412802;
          v332 = v92;
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
        v51 = [[NSString alloc] initWithBytes:v13 + 11 length:v58 encoding:4];
        if (!v51)
        {
          v51 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v64 = [v325 vifName];
            *buf = 138412290;
            v332 = v64;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel cannot decode remoteConnectionGUID", buf, 0xCu);
          }

          goto LABEL_125;
        }
      }

      else
      {
        v51 = 0;
      }

      if (v59)
      {
        oslogc = [[NSString alloc] initWithBytes:&v13[v58 + 11] length:v59 encoding:4];
        if (!oslogc)
        {
          oslogc = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(oslogc, OS_LOG_TYPE_DEFAULT))
          {
            v107 = [v325 vifName];
            *buf = 138412290;
            v332 = v107;
            _os_log_impl(&_mh_execute_header, oslogc, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel cannot decode localConnectionGUID", buf, 0xCu);
          }

          goto LABEL_254;
        }
      }

      else
      {
        oslogc = 0;
      }

      v110 = &v13[v58 + 11 + v59];
      v111 = [[NSString alloc] initWithBytes:v110 length:v60 encoding:4];
      if (!v111)
      {
        v113 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
        {
          v123 = [v325 vifName];
          *buf = 138412290;
          v332 = v123;
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
          v130 = [v325 vifName];
          *buf = 138412290;
          v332 = v130;
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
          v143 = [v325 vifName];
          *buf = 138412290;
          v332 = v143;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_CloseChannel cannot decode name", buf, 0xCu);
        }

        goto LABEL_251;
      }

      loga = [IDSGenericConnectionID idWithAccount:v111 service:v113 name:v114];
      v115 = [v325 connectionsByID];
      v317 = [v115 objectForKey:loga];

      v116 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v117 = [v325 vifName];
        *buf = 138414082;
        v332 = v117;
        v333 = 2112;
        *v334 = oslogc;
        *&v334[8] = 2112;
        *&v334[10] = v51;
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
          v275 = v51;
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
            v275 = v51;
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

      v118 = [v317 remoteConnectionGUID];
      v119 = [v118 isEqualToString:v51];

      if (v119)
      {
        if (([v317 stateFlags]& 0x20) != 0)
        {
          goto LABEL_250;
        }
      }

      else
      {
        v163 = [v317 localConnectionGUID];
        v164 = [v163 isEqualToString:oslogc];

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

      v166 = [v325 portMap];
      v167 = [v317 addressPair];
      v168 = [v167 localAddress];
      -[IDSUTunController releasePortIfNecessary:port:](v322, "releasePortIfNecessary:port:", v166, [v168 saPortHostOrder]);

      [(IDSUTunController *)v322 removeConnection:v317 fromDeviceConnectionInfo:v325 removeCode:5051 removeReason:@"remote close"];
      [(IDSUTunController *)v322 checkSuspendTrafficForDevice:v325 wait:1];
LABEL_250:

LABEL_251:
LABEL_252:

LABEL_253:
LABEL_254:

      goto LABEL_125;
    case 4:
      [(IDSUTunController *)self processCompressionRequest:v8 fromDeviceConnectionInfo:v325];
      goto LABEL_14;
    case 5:
      [(IDSUTunController *)self processCompressionResponse:v8 fromDeviceConnectionInfo:v325];
      goto LABEL_14;
    case 6:
      if (v14 <= 0x17)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [v325 vifName];
          *buf = 138412290;
          v332 = v46;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel insufficient header", buf, 0xCu);
        }

        goto LABEL_13;
      }

      v70 = __rev16(*(v13 + 3));
      v71 = __rev16(*(v13 + 5));
      v72 = __rev16(*(v13 + 6));
      v73 = __rev16(*(v13 + 7));
      v74 = __rev16(*(v13 + 11));
      if (!v70 || !v71 || !v72 || !v73 || !v74)
      {
        v93 = v74;
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v94 = [v325 vifName];
          *buf = 138413570;
          v332 = v94;
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

      v75 = __rev16(*(v13 + 4));
      v76 = v70 + v75 + v71 + v72 + v73 + v74 + 24;
      if (v14 != v76)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v105 = [v325 vifName];
          *buf = 138412802;
          v332 = v105;
          v333 = 1024;
          *v334 = v14;
          *&v334[4] = 2048;
          *&v334[6] = v76;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel unexpected size (%u != %lu)", buf, 0x1Cu);
        }

        goto LABEL_13;
      }

      v291 = v74;
      v305 = v13[1];
      v299 = *(v13 + 1);
      v302 = *(v13 + 2);
      v293 = *(v13 + 4);
      v296 = *(v13 + 10);
      osloga = [[NSString alloc] initWithBytes:v13 + 24 length:v70 encoding:4];
      if (osloga)
      {
        v77 = &v13[v70 + 24];
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
              v142 = [v325 vifName];
              *buf = 138412290;
              v332 = v142;
              _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel cannot decode remoteConnectionGUID", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v267 = [v325 vifName];
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  v268 = [v325 vifName];
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
              v161 = [v325 vifName];
              *buf = 138412290;
              v332 = v161;
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

            v271 = [v325 vifName];
            _IDSLogTransport();

            if (!_IDSShouldLog())
            {
              goto LABEL_323;
            }

            v162 = [v325 vifName];
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
              v170 = [v325 vifName];
              *buf = 138412290;
              v332 = v170;
              _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "%@: SetupEncryptedChannel cannot decode name", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v272 = [v325 vifName];
                _IDSLogTransport();

                if (_IDSShouldLog())
                {
                  v273 = [v325 vifName];
                  _IDSLogV();
                }
              }
            }

            goto LABEL_321;
          }

          v289 = [IDSGenericConnectionID idWithAccount:logb service:v310 name:?];
          v133 = [v325 connectionsByID];
          v134 = [v133 objectForKey:v289];

          v135 = [v325 localSA];
          v287 = __rev16(v302);
          v304 = [IDSSockAddrWrapper wrapperWithWrapper:v135 andPortHostOrder:?];

          v136 = [v325 remoteSA];
          v286 = __rev16(v299);
          v300 = [IDSSockAddrWrapper wrapperWithWrapper:v136 andPortHostOrder:?];

          v288 = [IDSSockAddrWrapperPair wrapperPairWithLocalAddress:v304 remoteAddress:v300];
          v294 = bswap32(v293);
          v297 = __rev16(v296);
          v137 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
          {
            v138 = [v325 vifName];
            *buf = 138415362;
            v332 = v138;
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
            v171 = [(IDSGenericConnection *)v134 localConnectionGUID];
            v172 = [v171 isEqualToString:v316];

            if ((v172 & 1) == 0)
            {
              v173 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v173, OS_LOG_TYPE_DEFAULT, "control message not for current connection - assume local is current for now (message is old) and send CloseChannel for remote attempt", buf, 2u);
              }

              v174 = [v325 controlChannel];
              v175 = sub_10062D4A4(0, osloga, logb, v310, v290);
              [v174 sendMessage:v175];

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
              v162 = v290;
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
                v257 = [v325 vifName];
                v258 = [(IDSGenericConnection *)v134 keyMaterialLength];
                *buf = 138412802;
                v332 = v257;
                v333 = 1024;
                *v334 = v258;
                *&v334[4] = 1024;
                *&v334[6] = v291;
                _os_log_impl(&_mh_execute_header, v189, OS_LOG_TYPE_DEFAULT, "%@: nonmatching key material length (local:%u remote:%u)", buf, 0x18u);
              }

              goto LABEL_285;
            }

            v211 = [(IDSGenericConnection *)v134 localConnectionGUID];
            v212 = [v211 compare:osloga] == 1;

            if (v212)
            {
              v213 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
              {
                v214 = [v325 vifName];
                v215 = [(IDSGenericConnection *)v134 localConnectionGUID];
                *buf = 138412546;
                v332 = v214;
                v333 = 2112;
                *v334 = v215;
                _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "%@: found connection [%@] - remote wins", buf, 0x16u);
              }

              v216 = [v325 portMap];
              v217 = [(IDSGenericConnection *)v134 addressPair];
              v218 = [v217 localAddress];
              -[IDSUTunController releasePortIfNecessary:port:](v322, "releasePortIfNecessary:port:", v216, [v218 saPortHostOrder]);

              [(IDSGenericConnection *)v134 setAddressPair:v288];
            }

LABEL_313:
            [(IDSGenericConnection *)v134 setSSRCRecv:v294];
            [(IDSGenericConnection *)v134 setSeqRecvStart:v297];
            v239 = [(IDSGenericConnection *)v134 localKeyMaterial];
            v240 = v291;
            v241 = &v132[v73];
            do
            {
              v242 = *v241++;
              *v239++ ^= v242;
              --v240;
            }

            while (v240);
            bzero(&v132[v73], v291);
            v243 = [v325 controlChannelVersion];
            v244 = [v243 intValue] == 1;

            if (!v244)
            {
              [(IDSGenericConnection *)v134 setSrtpProtocolVersion:1];
            }

            v245 = [(IDSGenericConnection *)v134 localConnectionGUID];
            v246 = [v245 compare:osloga] == 1;

            sub_10050C5E0([(IDSGenericConnection *)v134 encryptionState], [(IDSGenericConnection *)v134 localKeyMaterial], [(IDSGenericConnection *)v134 keyMaterialLength], v246, [(IDSGenericConnection *)v134 SSRCSend], [(IDSGenericConnection *)v134 seqSendStart], [(IDSGenericConnection *)v134 SSRCRecv], [(IDSGenericConnection *)v134 seqRecvStart], [(IDSGenericConnection *)v134 srtpProtocolVersion]);
            sub_1006C2CB0([v325 incomingEncryptionTableBySSRC], -[IDSGenericConnection SSRCRecv](v134, "SSRCRecv"), v134);
            v247 = [(IDSGenericConnection *)v134 addressPair];
            v248 = [v247 localAddress];
            v249 = [v248 saPortHostOrder];
            v250 = [(IDSGenericConnection *)v134 addressPair];
            v251 = [v250 remoteAddress];
            -[IDSGenericConnection setUint32Key:](v134, "setUint32Key:", (v249 << 16) | [v251 saPortHostOrder]);

            v252 = sub_1006C2FC8([v325 connectionsTableByLocalRemotePortKey], -[IDSGenericConnection uint32Key](v134, "uint32Key"));
            v253 = v252;
            if (v252)
            {
              [v252 invalidate];
            }

            sub_1006C2CB0([v325 connectionsTableByLocalRemotePortKey], -[IDSGenericConnection uint32Key](v134, "uint32Key"), v134);
            [(IDSGenericConnection *)v134 setStateFlags:[(IDSGenericConnection *)v134 stateFlags]| 8];
            [(IDSGenericConnection *)v134 setRemoteConnectionGUID:osloga];
            v254 = [v289 serviceConnectorServiceForAccount];
            [(IDSUTunController *)v322 startDataChannelWithDevice:v325 genericConnection:v134 serviceConnectorService:v254];

            goto LABEL_320;
          }

          v219 = [v325 portMap];
          v220 = [(IDSGenericConnection *)v134 addressPair];
          v221 = [v220 localAddress];
          -[IDSUTunController releasePortIfNecessary:port:](v322, "releasePortIfNecessary:port:", v219, [v221 saPortHostOrder]);

          [(IDSUTunController *)v322 removeConnection:v134 fromDeviceConnectionInfo:v325 removeCode:5050 removeReason:@"stale connection"];
          [(IDSUTunController *)v322 checkSuspendTrafficForDevice:v325 wait:1];
LABEL_306:
          v134 = [[IDSGenericConnection alloc] initWithConnectionID:v289 protocol:v305 keyMaterialLength:v291 isCloudEnabled:0];
          v222 = [v325 cbuuid];
          -[IDSGenericConnection setIsDefaultPairedDevice:](v134, "setIsDefaultPairedDevice:", [v222 isEqualToString:kIDSDefaultPairedDeviceID]);

          [(IDSGenericConnection *)v134 setAddressPair:v288];
          v223 = [v325 connectionsByID];
          [v223 setObject:v134 forKey:v289];

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
            v228 = [v325 vifName];
            v229 = [(IDSGenericConnection *)v134 localConnectionGUID];
            v230 = v229;
            v231 = [v229 UTF8String];
            v232 = [(IDSGenericConnection *)v134 seqSendStart];
            *buf = 138413570;
            v332 = v228;
            v333 = 1024;
            *v334 = v287;
            *&v334[4] = 1024;
            *&v334[6] = v286;
            *&v334[10] = 2080;
            *&v334[12] = v231;
            *&v334[20] = 1024;
            *&v334[22] = v224;
            *&v334[26] = 1024;
            *v335 = v232;
            _os_log_impl(&_mh_execute_header, v227, OS_LOG_TYPE_DEFAULT, "%@: send setup encrypted channel message ports[%u:::%u] guid[%s] ssrc:%08x startSeq:%04x", buf, 0x2Eu);
          }

          v233 = [v325 controlChannel];
          v234 = [(IDSGenericConnection *)v134 localConnectionGUID];
          v235 = [(IDSGenericConnection *)v134 seqSendStart];
          v236 = sub_1006398CC(v305, v287, v286, v234, osloga, logb, v310, v290, v224, SBYTE1(v224), SBYTE2(v224), SBYTE3(v224), v235, SHIBYTE(v235), [(IDSGenericConnection *)v134 localKeyMaterial], [(IDSGenericConnection *)v134 keyMaterialLength]);
          [v233 sendMessage:v236];

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

        v316 = [[NSString alloc] initWithBytes:&v13[v70 + 24] length:v75 encoding:4];
        if (v316)
        {
          v77 += v75;
          goto LABEL_182;
        }

        v144 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          v145 = [v325 vifName];
          *buf = 138412290;
          v332 = v145;
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

        v262 = [v325 vifName];
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
          v125 = [v325 vifName];
          *buf = 138412290;
          v332 = v125;
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

        v262 = [v325 vifName];
        _IDSLogTransport();

        if (!_IDSShouldLog())
        {
          goto LABEL_325;
        }
      }

      v263 = [v325 vifName];
      _IDSLogV();

LABEL_325:
      goto LABEL_14;
    case 7:
      v35 = [v325 controlChannel];
      [v35 processFairplayHostSessionInfo:v8];

      goto LABEL_14;
    case 8:
      v48 = [v325 controlChannel];
      [v48 processFairplayDeviceInfo:v8];

      goto LABEL_14;
    case 9:
      v22 = [v325 controlChannel];
      [v22 processFairplayDeviceSessionInfo:v8];

      goto LABEL_14;
    case 10:
      v47 = [v325 controlChannel];
      [v47 processOTRNegotiationMessage:v8];

      goto LABEL_14;
    case 11:
      if (v14 == 1)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v325 vifName];
          *buf = 138412290;
          v332 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_EncryptControlChannel missing data", buf, 0xCu);
        }

        goto LABEL_13;
      }

      v50 = v13[1];
      v51 = [v325 controlChannel];
      v52 = [v51 isReadyForEncrypting];
      v53 = [v51 isDefaultPairedDevicePairedLocally];
      v54 = [v51 isDefaultPairedDevicePairedRemotely];
      v55 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [v325 vifName];
        *buf = 138413826;
        v332 = v56;
        v333 = 1024;
        *v334 = v50;
        *&v334[4] = 1024;
        *&v334[6] = (v50 >> 1) & 1;
        *&v334[10] = 1024;
        *&v334[12] = v50 & 1;
        *&v334[16] = 1024;
        *&v334[18] = v52;
        *&v334[22] = 1024;
        *&v334[24] = v53;
        *v335 = 1024;
        *&v335[2] = v54;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%@: got control message: encrypt control channel flags %d ispairedlocally %d ispairedremotely %d (isencrypting: %d ispairedlocally %d ispairedremotely %d)", buf, 0x30u);
      }

      if (v52)
      {
        goto LABEL_125;
      }

      [v51 setIsDefaultPairedDevicePairedRemotely:v50 & 1];
      if ((~v50 & 3) != 0)
      {
        if (v50)
        {
          v106 = v53;
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
        [v51 sendPriorityMessage:v57];
      }

      else
      {
        v57 = sub_1006C2FC8([v325 connectionsTableByLocalRemotePortKey], 67109888);
        [(IDSUTunController *)v322 resetTCPConnection:v57 forDeviceConnectionInfo:v325];
        [v51 encryptControlChannelForStoredIdentities];
      }

      goto LABEL_125;
    case 12:
      v21 = [v325 controlChannel];
      [v21 processSuspendOTRNegotiationMessage:v8];

      goto LABEL_14;
    case 14:
      if (v14 <= 9)
      {
        v17 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v325 vifName];
          *buf = 138412290;
          v332 = v45;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: UTCMType_DirectMsgInfo insufficient header", buf, 0xCu);
        }

        goto LABEL_13;
      }

      if ([v324 isEqualToString:kIDSDefaultPairedDeviceID])
      {
        v65 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = [v325 vifName];
          *buf = 138412290;
          v332 = v66;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "%@: got control message: direct message info", buf, 0xCu);
        }

        v67 = [[NSData alloc] initWithBytes:v13 + 1 length:v14 - 1];
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
        v49 = [v325 vifName];
        *buf = 138412546;
        v332 = v49;
        v333 = 1024;
        *v334 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: got invalid control message %d", buf, 0x12u);
      }

      goto LABEL_13;
  }
}

- (id)controlChannelVersionForCbuuid:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_controlChannelVersionCacheLock);
  v5 = [(NSMutableDictionary *)self->_controlChannelVersionCache objectForKey:v4];

  os_unfair_lock_unlock(&self->_controlChannelVersionCacheLock);

  return v5;
}

- (void)setupDataConnectionWithDeviceConnectionInfo:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v145 = [v6 objectForKey:@"account"];
  v7 = [v6 objectForKey:@"service"];
  if (v7)
  {
    v142 = [v6 objectForKey:IDSOpenSocketOptionStreamNameKey];
    v140 = [v6 objectForKey:@"protocol"];
    v134 = [v6 objectForKey:IDSOpenSocketOptionClientIDKey];
    v137 = [v6 objectForKey:IDSOpenSocketOptionConnectionUUIDKey];
    v8 = [v6 objectForKey:IDSOpenSocketOptionPriorityKey];
    v139 = v8;
    if (v8)
    {
      v130 = [v8 integerValue];
    }

    else
    {
      v130 = 200;
    }

    v10 = [v6 objectForKey:IDSOpenSocketOptionCloudEnabledKey];
    v127 = [v10 BOOLValue];

    if (_IDSSupportsDirectMessaging())
    {
      v11 = [v6 objectForKey:IDSOpenSocketOptionIsDirectMsgSocket];
      v12 = [v11 BOOLValue];

      v125 = v12;
      switch(v130)
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

      v14 = [v6 objectForKey:IDSOpenSocketOptionDataProtectionClass];
      v15 = [v14 unsignedIntValue];

      if (v15 == 2)
      {
        v13 |= 1uLL;
      }

      else if (!v15)
      {
        v13 |= 2uLL;
      }

      v16 = [v6 objectForKey:IDSOpenSocketOptionDirectMsgType];
      v17 = [v16 unsignedShortValue];
      switch(v17)
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
        v133 = v130;
        if (![v7 isEqualToIgnoringCase:@"com.apple.private.alloy.willow.proxy"])
        {
          goto LABEL_35;
        }
      }

      v18 = 700;
    }

    v133 = v18;
LABEL_35:
    v19 = [v6 objectForKey:IDSOpenSocketOptionEncryptionMethodKey];
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
          v22 = [v5 vifName];
          *buf = 138412802;
          *v159 = v22;
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
    v24 = [v6 objectForKey:IDSOpenSocketOptionRealTimeKey];
    v128 = [v24 BOOLValue];

    v25 = [v5 cbuuid];
    if ([v25 isEqualToString:kIDSDefaultPairedDeviceID])
    {
      v135 = 1;
    }

    else
    {
      v26 = [v6 objectForKey:IDSDevicePropertyDefaultPairedDevice];
      v135 = [v26 BOOLValue];
    }

    v132 = [v6 objectForKey:IDSOpenSocketOptionCBUUIDKey];
    if (v135)
    {
      v131 = IDSDeviceDefaultPairedDeviceUniqueID;
    }

    else
    {
      v131 = [v6 objectForKey:IDSOpenSocketOptionDeviceUniqueIDKey];
    }

    v144 = [IDSGenericConnectionID idWithAccount:v145 service:v7 name:v142];
    v27 = [v5 connectionsByID];
    v28 = [v27 objectForKey:v144];

    if (v28)
    {
      v29 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v5 vifName];
        *buf = 138412802;
        *v159 = v30;
        *&v159[8] = 2112;
        *v160 = v28;
        *&v160[8] = 2112;
        *v161 = v144;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@: found connection [%@] for ID [%@]", buf, 0x20u);
      }

      if (([(IDSGenericConnection *)v28 stateFlags]& 1) == 0)
      {
        v31 = [v6 objectForKeyedSubscript:@"connectionContext"];
        v32 = v31;
        if (v31)
        {
          [v31 setDeviceConnectionInfo:v5];
          [v32 setConnection:v28];
          v33 = [v32 readHandler];
          [(IDSGenericConnection *)v28 setReadHandler:v33];

          v34 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v5 vifName];
            v36 = [v32 readHandler];
            v37 = objc_retainBlock(v36);
            *buf = 138412802;
            *v159 = v35;
            *&v159[8] = 2048;
            *v160 = v37;
            *&v160[8] = 2112;
            *v161 = v28;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@: early return: bypass utun with readHandler %p for connection [%@]", buf, 0x20u);
          }
        }

        [(IDSGenericConnection *)v28 setClientID:v134];
        [(IDSGenericConnection *)v28 setPriority:v130];
        [(IDSGenericConnection *)v28 setSocketTrafficClass:v133];
        [(IDSGenericConnection *)v28 setStateFlags:[(IDSGenericConnection *)v28 stateFlags]| 1];
        [(IDSGenericConnection *)v28 setIsCloudEnabled:v127];
        [(IDSGenericConnection *)v28 setIsDefaultPairedDevice:v135];
        [(IDSGenericConnection *)v28 setIsRealTime:v128];
        if (v137)
        {
          [(IDSGenericConnection *)v28 setIdsDeviceConnectionUUID:v137];
          v38 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
          [(IDSGenericConnection *)v28 connectionInitTime];
          v40 = v39;
          v41 = [(IDSGenericConnection *)v28 idsDeviceConnectionUUID];
          [v38 setConnectionInitTime:v41 forConnectionUUID:v40];

          [(IDSGenericConnection *)v28 firstDataPacketReceiveTime];
          if (v42 != 0.0)
          {
            v43 = +[IDSDeviceConnectionAWDMetrics sharedInstance];
            [(IDSGenericConnection *)v28 firstDataPacketReceiveTime];
            v45 = v44;
            v46 = [(IDSGenericConnection *)v28 idsDeviceConnectionUUID];
            [v43 setFirstPacketReceiveTime:v46 forConnectionUUID:v45];
          }
        }

        if (![(IDSUTunController *)self isConnected:v28 deviceConnectionInfo:v5])
        {
          v86 = [v6 objectForKey:IDSOpenSocketOptionSetAllowlistUUIDForStreamingSocket];
          v87 = [v86 BOOLValue];

          if (v87)
          {
            [(IDSGenericConnection *)v28 setShouldSetAllowlistUUIDForStreamingSocket:1];
          }

          v88 = [v6 objectForKey:@"completionHandler"];
          v89 = [v6 objectForKey:@"completionHandlerQueue"];
          [(IDSGenericConnection *)v28 setCompletionQueue:v89];
          [(IDSGenericConnection *)v28 setOpenSocketCompletionHandler:v88];
          goto LABEL_121;
        }

        [(IDSGenericConnection *)v28 setStateFlags:[(IDSGenericConnection *)v28 stateFlags]| 2];
        v47 = [(IDSGenericConnection *)v28 sd];
        v136 = [(IDSGenericConnection *)v28 connectError];
        [(IDSGenericConnection *)v28 setSd:0xFFFFFFFFLL];
        [(IDSGenericConnection *)v28 setConnectError:0];
        v48 = TrafficClassForIDSOpenSocketPriorityLevel();
        sub_10062CDEC(v47, v48);
        v49 = [v6 objectForKey:IDSOpenSocketOptionSetAllowlistUUIDForStreamingSocket];
        v50 = [v49 BOOLValue];

        if (v47 == -1)
        {
          v51 = 0;
        }

        else
        {
          v51 = v50;
        }

        if (v51 != 1)
        {
LABEL_116:
          if (v128)
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
          v116 = [v5 cbuuid];
          v117 = [(IDSLinkManager *)linkManager currentLinkType:v116];

          v88 = [v6 objectForKey:@"completionHandlerQueue"];
          v150[0] = _NSConcreteStackBlock;
          v150[1] = 3221225472;
          v150[2] = sub_10063B420;
          v150[3] = &unk_100BE2D50;
          v151 = v28;
          v152 = v6;
          v157 = v47;
          v155 = v117;
          v156 = v133;
          v153 = v5;
          v154 = v136;
          v89 = v136;
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

      v60 = [v5 portMap];
      v61 = [(IDSGenericConnection *)v28 addressPair];
      v62 = [v61 localAddress];
      -[IDSUTunController releasePortIfNecessary:port:](self, "releasePortIfNecessary:port:", v60, [v62 saPortHostOrder]);

      [(IDSUTunController *)self removeConnection:v28 fromDeviceConnectionInfo:v5 removeCode:5102 removeReason:@"replace existing connection"];
    }

    LOWORD(v164[0]) = -21846;
    if (sub_1005B07E0([v5 portMap], v164))
    {
      v63 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = [v5 vifName];
        *buf = 138412802;
        *v159 = v64;
        *&v159[8] = 2112;
        *v160 = v7;
        *&v160[8] = 2112;
        *v161 = v142;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%@: cannot allocate new port for service %@ name %@", buf, 0x20u);
      }

      queue = [v6 objectForKey:@"completionHandlerQueue"];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10063B57C;
      block[3] = &unk_100BE04B0;
      v147 = v5;
      v148 = v6;
      v149 = v133;
      v65 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
      dispatch_async(queue, v65);

      v66 = v147;
      v67 = v28;
    }

    else
    {
      if ([v5 shouldUseServiceConnector])
      {
        v68 = -4222;
      }

      else
      {
        v68 = 1025;
      }

      v124 = v68;
      v69 = [v5 localSA];
      queue = [IDSSockAddrWrapper wrapperWithWrapper:v69 andPortHostOrder:LOWORD(v164[0])];

      v70 = [v5 remoteSA];
      v123 = [IDSSockAddrWrapper wrapperWithWrapper:v70 andPortHostOrder:v124];

      v122 = [IDSSockAddrWrapperPair wrapperPairWithLocalAddress:queue remoteAddress:v123];
      LODWORD(v70) = self->_encryptionEnabled;
      v71 = [IDSGenericConnection alloc];
      if (v70 & v20)
      {
        v67 = [(IDSGenericConnection *)v71 initWithConnectionID:v144 protocol:v126 keyMaterialLength:60 isCloudEnabled:v127];

        do
        {
          v72 = arc4random();
          v73 = sub_1006C2FC8([v5 outgoingEncryptionTableBySSRC], v72);
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
          v76 = [v5 vifName];
          v77 = LOWORD(v164[0]);
          v78 = [(IDSGenericConnection *)v67 localConnectionGUID];
          v79 = v78;
          v80 = [v78 UTF8String];
          v81 = [(IDSGenericConnection *)v67 seqSendStart];
          *buf = 138413570;
          *v159 = v76;
          *&v159[8] = 1024;
          *v160 = v77;
          *&v160[4] = 1024;
          *&v160[6] = v124;
          *v161 = 2080;
          *&v161[2] = v80;
          LOWORD(v162) = 1024;
          *(&v162 + 2) = v72;
          HIWORD(v162) = 1024;
          v163 = v81;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "%@: send setup encrypted channel message ports[%u:::%u] guid[%s] ssrc:%08x startSeq:%04x", buf, 0x2Eu);
        }

        v82 = v164[0];
        v83 = [(IDSGenericConnection *)v67 localConnectionGUID];
        v84 = [(IDSGenericConnection *)v67 seqSendStart];
        v85 = sub_1006398CC(v126, v82, v124, v83, 0, v145, v7, v142, v72, SBYTE1(v72), SBYTE2(v72), SBYTE3(v72), v84, SHIBYTE(v84), [(IDSGenericConnection *)v67 localKeyMaterial], [(IDSGenericConnection *)v67 keyMaterialLength]);

        sub_1006C2CB0([v5 outgoingEncryptionTableBySSRC], -[IDSGenericConnection SSRCSend](v67, "SSRCSend"), v67);
      }

      else
      {
        v67 = [(IDSGenericConnection *)v71 initWithConnectionID:v144 protocol:v126 isCloudEnabled:v127];

        v90 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          v91 = [v5 vifName];
          v92 = LOWORD(v164[0]);
          v93 = [(IDSGenericConnection *)v67 localConnectionGUID];
          v94 = v93;
          v95 = [v93 UTF8String];
          *buf = 138413058;
          *v159 = v91;
          *&v159[8] = 1024;
          *v160 = v92;
          *&v160[4] = 1024;
          *&v160[6] = v124;
          *v161 = 2080;
          *&v161[2] = v95;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%@: send setup channel message ports[%u:::%u] guid[%s]", buf, 0x22u);
        }

        v96 = v164[0];
        v97 = [(IDSGenericConnection *)v67 localConnectionGUID];
        v85 = sub_100639644(v126, v96, v124, v97, 0, v145, v7, v142, v125, v13);
      }

      v98 = [v6 objectForKeyedSubscript:@"connectionContext"];
      v99 = v98;
      if (v98)
      {
        [v98 setDeviceConnectionInfo:v5];
        [v99 setConnection:v67];
        v100 = [v99 readHandler];
        [(IDSGenericConnection *)v67 setReadHandler:v100];

        v101 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          v102 = [v5 vifName];
          v103 = [v99 readHandler];
          v104 = objc_retainBlock(v103);
          *buf = 138412802;
          *v159 = v102;
          *&v159[8] = 2048;
          *v160 = v104;
          *&v160[8] = 2112;
          *v161 = v67;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "%@: bypass utun with readHandler %p for connection [%@]", buf, 0x20u);
        }
      }

      [(IDSGenericConnection *)v67 setPriority:v130];
      [(IDSGenericConnection *)v67 setSocketTrafficClass:v133];
      [(IDSGenericConnection *)v67 setHasMoreData:1];
      [(IDSGenericConnection *)v67 setStateFlags:1];
      v105 = [v6 objectForKey:@"completionHandler"];
      [(IDSGenericConnection *)v67 setOpenSocketCompletionHandler:v105];
      v106 = [v6 objectForKey:@"completionHandlerQueue"];
      [(IDSGenericConnection *)v67 setCompletionQueue:v106];
      [(IDSGenericConnection *)v67 setAddressPair:v122];
      [(IDSGenericConnection *)v67 setClientID:v134];
      if (v137)
      {
        [(IDSGenericConnection *)v67 setIdsDeviceConnectionUUID:v137];
      }

      v107 = [v5 connectionsByID];
      [v107 setObject:v67 forKey:v144];

      v108 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = [v5 vifName];
        *buf = 138413058;
        *v159 = v109;
        *&v159[8] = 2112;
        *v160 = v67;
        *&v160[8] = 2112;
        *v161 = v144;
        *&v161[8] = 2112;
        v162 = v5;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%@: setting up new connection [%@] for ID [%@] deviceInfo[%@]", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [v5 vifName];
        v120 = v144;
        v118 = v121 = v5;
        v119 = v67;
        _IDSLogV();
      }

      v110 = [v6 objectForKey:{IDSOpenSocketOptionSetAllowlistUUIDForStreamingSocket, v118, v119, v120, v121}];
      v111 = [v110 BOOLValue];

      if (v111)
      {
        [(IDSGenericConnection *)v67 setShouldSetAllowlistUUIDForStreamingSocket:1];
      }

      v112 = [v5 controlChannel];
      [v112 sendMessage:v85];

      [(IDSGenericConnection *)v67 setStateFlags:[(IDSGenericConnection *)v67 stateFlags]| 4];
      if (qword_100CBF438 != -1)
      {
        sub_10092D8D8();
      }

      [(IDSGenericConnection *)v67 setConnectionSetupStartTime:*&qword_100CBF3C0 * mach_continuous_time()];
      [(IDSGenericConnection *)v67 setIsDefaultPairedDevice:v135];
      [(IDSGenericConnection *)v67 setIsRealTime:v128];
      if (v128)
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

- (void)closeDataConnectionWithDeviceConnectionInfo:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKey:@"account"];
  v9 = [v7 objectForKey:@"service"];
  v10 = [v7 objectForKey:IDSOpenSocketOptionStreamNameKey];
  v11 = [IDSGenericConnectionID idWithAccount:v8 service:v9 name:v10];
  v12 = [v6 connectionsByID];
  v13 = [v12 objectForKey:v11];

  v14 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v6 vifName];
    *buf = 138412802;
    v30 = v15;
    v31 = 2112;
    v32 = v7;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@: closeSocketWithOptions called with options [%@] (connection %@)", buf, 0x20u);
  }

  if (v13 && ([v13 stateFlags] & 1) != 0)
  {
    v16 = v8;
    v17 = self;
    v18 = [v13 localConnectionGUID];
    v19 = [v13 remoteConnectionGUID];
    v28 = v16;
    v20 = sub_10062D4A4(v18, v19, v16, v9, v10);

    if (v20)
    {
      v21 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v6 vifName];
        *buf = 138412802;
        v30 = v22;
        v31 = 2112;
        v32 = v20;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@: close channel control message [%@] created for connection %@", buf, 0x20u);
      }

      v23 = [v6 controlChannel];
      [v23 sendMessage:v20];
    }

    v24 = [v6 portMap];
    v25 = [v13 addressPair];
    [v25 localAddress];
    v26 = v27 = v20;
    -[IDSUTunController releasePortIfNecessary:port:](v17, "releasePortIfNecessary:port:", v24, [v26 saPortHostOrder]);

    [(IDSUTunController *)v17 removeConnection:v13 fromDeviceConnectionInfo:v6 removeCode:5103 removeReason:@"closeSocketWithOptions called"];
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
  v7 = [v6 pairedDevicePublicKey];

  v13 = 0;
  v8 = [IDSMPPublicLegacyIdentity identityWithData:v7 error:&v13];
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
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed creating public identity from data: %@  (Error: %@)", buf, 0x16u);
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)_prepareConnectionInfoWithCBUUID:(id)a3 deviceUniqueID:(id)a4 shouldUseServiceConnector:(BOOL)a5 identityPair:(id)a6 remoteDeviceEncryptionInfo:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = [(IDSUTunController *)self setupNewDeviceConnectionInfoForCbuuid:v12 deviceUniqueID:a4 identityPair:a6 remoteDeviceEncryptionInfo:a7 shouldUseServiceConnector:v9];
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
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: UTunController unable to create new device - cannot continue", &v17, 0xCu);
    }
  }

  return v13;
}

- (void)prepareDefaultPairedConnectionInfoWithDeviceUniqueID:(id)a3 shouldUseServiceConnector:(BOOL)a4
{
  v5 = a3;
  v4 = v5;
  IDSTransportThreadAddBlock();
}

- (void)openSocketWithOptions:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 mutableCopy];
  v11 = [v9 copy];

  v12 = objc_retainBlock(v11);
  if (v12)
  {
    CFDictionarySetValue(v10, @"completionHandler", v12);
  }

  if (v8)
  {
    v13 = v8;
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
  v16 = [v15 BOOLValue];

  if (v16)
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
  v27 = v7;
  v29 = v28 = v17;
  v20 = v29;
  v21 = v17;
  v22 = v7;
  v23 = v10;
  v24 = v14;
  IDSTransportThreadAddBlock();
}

- (void)cleanupSocketsForClient:(id)a3
{
  v4 = a3;
  v3 = v4;
  IDSTransportThreadAddBlock();
}

- (void)closeSocketWithOptions:(id)a3 queue:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v11 = a4;
  v12 = a5;
  v8 = v11;
  v9 = v12;
  v10 = v7;
  IDSTransportThreadAddBlock();
}

- (void)doCheckSuspendTrafficForDevice:(id)a3
{
  v4 = a3;
  if (qword_100CBF438 != -1)
  {
    sub_10092D900();
  }

  v5 = *&qword_100CBF3C0 * mach_continuous_time();
  [v4 suspendTrafficCheckTime];
  if (v6 <= v5)
  {
    v10 = [v4 connectionsByID];
    v11 = [v10 count];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [v4 connectionsByID];
    v13 = [v12 allValues];

    v14 = [v13 countByEnumeratingWithState:&v20 objects:v34 count:16];
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
            objc_enumerationMutation(v13);
          }

          v16 += [*(*(&v20 + 1) + 8 * i) suspended];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v34 count:16];
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
      if (v4[2079])
      {
        os_channel_get_fd();
      }

      else
      {
        [v4 utunSocket];
      }

      IDSTransportThreadSuspendSocket();
      [v4 setSuspendTraffic:1];
      [(IDSLinkManager *)self->_linkManager stopLinkForDeviceUniqueID:v4[2] cbuuid:v4[1] disconnectWP:1];
    }

    else
    {
      [v4 setSuspendTraffic:0];
    }

    [v4 setSuspendTrafficCheckTime:0.0];
  }

  else
  {
    [v4 suspendTrafficCheckTime];
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
    v28 = self;
    v29 = v4;
    IDSTransportThreadAddBlockAfter();
  }
}

- (void)checkSuspendTrafficForDevice:(id)a3 wait:(BOOL)a4
{
  v6 = a3;
  if (qword_100CBF438 != -1)
  {
    sub_10092D900();
  }

  v7 = mach_continuous_time();
  if (a4)
  {
    v8 = *&qword_100CBF3C0 * v7;
    [v6 suspendTrafficCheckTime];
    if (v9 == 0.0)
    {
      [v6 setSuspendTrafficCheckTime:v8 + 15.0];
      v10 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = 15.5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Scheduling a suspend traffic check in %0.2lf seconds", buf, 0xCu);
      }

      v14 = v6;
      IDSTransportThreadAddBlockAfter();
    }

    else
    {
      v11 = +[IDSFoundationLog utunController];
      v12 = v8 + 15.0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        [v6 suspendTrafficCheckTime];
        *buf = 134217984;
        v16 = v12 - v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Extending suspend traffic check by %0.2lf seconds", buf, 0xCu);
      }

      [v6 setSuspendTrafficCheckTime:v12];
    }
  }

  else
  {
    [v6 setSuspendTrafficCheckTime:0.0];
    [(IDSUTunController *)self doCheckSuspendTrafficForDevice:v6];
  }
}

- (void)suspendSocketWithOptions:(id)a3
{
  v4 = a3;
  v3 = v4;
  IDSTransportThreadAddBlock();
}

- (BOOL)peerSupportsASQUIC:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"account"];
  v5 = [v3 objectForKey:@"service"];
  v6 = [v3 objectForKey:IDSOpenSocketOptionStreamNameKey];

  v7 = [IDSGenericConnectionID idWithAccount:v4 service:v5 name:v6];
  v8 = [NSString stringWithUTF8String:"61314"];
  v9 = [NSUUID alloc];
  v10 = +[IDSPairingManager sharedInstance];
  v11 = [v10 pairedDeviceUUIDString];
  v12 = [v9 initWithUUIDString:v11];

  if (v12)
  {
    v13 = [NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:v12];
    v14 = [NREndpoint alloc];
    v15 = [v7 serviceConnectorServiceForAccount];
    v16 = [v14 initWithDeviceIdentifier:v13 portString:v8 dataProtectionClass:4 service:v15];

    v17 = [v16 usesASQUIC];
    v18 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = @"NO";
      if (v17)
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

    LOBYTE(v17) = 0;
  }

  return v17;
}

- (void)resumeSocketWithOptions:(id)a3 shouldLogCall:(BOOL)a4
{
  v5 = a3;
  v4 = v5;
  IDSTransportThreadAddBlock();
}

- (void)releasePortIfNecessary:(IDSPortMap *)a3 port:(unsigned __int16)a4
{
  v4 = a4;
  if ((a4 & 0xFFFE) == 0x400)
  {
    v5 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "can't release a reserved port: %u", v6, 8u);
    }
  }

  else
  {

    sub_1005B0FD0(a3, a4);
  }
}

- (void)startUDPGlobalLinkForDevice:(id)a3
{
  v4 = a3;
  v3 = v4;
  IDSTransportThreadAddBlock();
}

- (void)stopUDPGlobalLinkForDevice:(id)a3
{
  v4 = a3;
  v3 = v4;
  IDSTransportThreadAddBlock();
}

- (void)createConnectionDataForDevice:(id)a3 localPartyID:(id)a4 dataReadyHandler:(id)a5
{
  v7 = a3;
  v11 = a4;
  v12 = a5;
  v8 = v12;
  v9 = v11;
  v10 = v7;
  IDSTransportThreadAddBlock();
}

- (void)processRemoteConnectionDataForDevice:(id)a3 remoteConnectionData:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v11 = a4;
  v12 = a5;
  v8 = v12;
  v9 = v11;
  v10 = v7;
  IDSTransportThreadAddBlock();
}

- (void)startConnectionForDevice:(id)a3 isInitiator:(BOOL)a4 remotePartyID:(id)a5 useStunMICheck:(BOOL)a6
{
  v7 = a3;
  v10 = a5;
  v8 = v10;
  v9 = v7;
  IDSTransportThreadAddBlock();
}

- (void)stopGlobalLinkForDevice:(id)a3
{
  v4 = a3;
  v3 = v4;
  IDSTransportThreadAddBlock();
}

- (void)startGlobalLinkForDevice:(id)a3
{
  v4 = a3;
  v3 = v4;
  IDSTransportThreadAddBlock();
}

- (void)connectGlobalLinkForDevice:(id)a3 sessionInfo:(id)a4 connectReadyHandler:(id)a5 withLocalInterfacePreference:(int)a6
{
  v8 = a3;
  v12 = a4;
  v13 = a5;
  v9 = v13;
  v10 = v12;
  v11 = v8;
  IDSTransportThreadAddBlock();
}

- (void)disconnectGlobalLinkForDevice:(id)a3 isReinitiating:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a3;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  IDSTransportThreadAddBlock();
}

- (void)handleAllocateRequestFailureForDevice:(id)a3 requestID:(id)a4 errorCode:(int)a5
{
  v6 = a3;
  v9 = a4;
  v7 = v9;
  v8 = v6;
  IDSTransportThreadAddBlock();
}

- (void)getLinkInformationForDevice:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  IDSTransportThreadAddBlock();
}

- (void)obliterateConnectionInfoForCBUUID:(id)a3
{
  v4 = a3;
  v5 = +[IDSPairingManager sharedInstance];
  v6 = [v5 pairedDeviceUUIDString];
  v7 = [v4 isEqualToString:v6];

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

- (void)obliterateConnectionInfoForCBUUID:(id)a3 completionBlock:(id)a4 completionQueue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v12 = a5;
  v13 = v8;
  v9 = v12;
  v10 = v8;
  v11 = v7;
  IDSTransportThreadAddBlock();
}

- (void)addPairedDevice:(id)a3 shouldPairDirectlyOverIPsec:(BOOL)a4
{
  v5 = a3;
  v4 = v5;
  IDSTransportThreadAddBlock();
}

- (void)connectPairedDevice:(id)a3
{
  v4 = a3;
  v3 = v4;
  IDSTransportThreadAddBlock();
}

- (void)deletePairedDevice:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (id)onTransportThread_PerServiceDataTransferredForDevice:(id)a3 services:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    *&v25 = 0;
    *(&v25 + 1) = &v25;
    v26 = 0x3032000000;
    v27 = sub_10000AAB4;
    v28 = sub_10000BCCC;
    v29 = 0;
    v8 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, v6);
    if (v8)
    {
      os_unfair_lock_lock(&unk_100CBF440);
      v9 = [qword_100CBF3B0 mutableCopy];
      os_unfair_lock_unlock(&unk_100CBF440);
      v10 = [v8 connectionsTableByLocalRemotePortKey];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10064115C;
      v17[3] = &unk_100BE2F50;
      v18 = v7;
      v20 = &v25;
      v11 = v9;
      v19 = v11;
      sub_10000C280(v10, v17);
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

- (id)perServiceDataTransferredForDevice:(id)a3 services:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = sub_10000AAB4;
    v15 = sub_10000BCCC;
    v16 = 0;
    v10 = v5;
    v11 = v6;
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

- (id)perServiceDataSentForDevice:(id)a3 services:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = sub_10000AAB4;
    v15 = sub_10000BCCC;
    v16 = 0;
    v10 = v5;
    v11 = v6;
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

- (id)perServiceDataReceivedForDevice:(id)a3 services:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = sub_10000AAB4;
    v15 = sub_10000BCCC;
    v16 = 0;
    v10 = v5;
    v11 = v6;
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

- (unint64_t)totalPacketsSentForDevice:(id)a3 services:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9 = v5;
  v10 = v6;
  IDSTransportThreadAddSyncBlock();
  v7 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v7;
}

- (unint64_t)totalPacketsReceivedForDevice:(id)a3 services:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v9 = v5;
  v10 = v6;
  IDSTransportThreadAddSyncBlock();
  v7 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v7;
}

- (void)setLinkPreferences:(id)a3
{
  v4 = a3;
  v3 = v4;
  IDSTransportThreadAddBlock();
}

- (void)sendOTRNegotiationMessage:(id)a3 negotiationCount:(unsigned int)a4 negotiationData:(id)a5
{
  v6 = a3;
  v9 = a5;
  v7 = v9;
  v8 = v6;
  IDSTransportThreadAddBlock();
}

- (void)sendSuspendOTRNegotiationMessage:(id)a3
{
  v4 = a3;
  v3 = v4;
  IDSTransportThreadAddBlock();
}

- (void)link:(id)a3 didConnectForDeviceUniqueID:(id)a4 cbuuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, v10);
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
    v14 = [v13 shouldBlackOutDeviceWithCbuuid:v10];

    if (v14)
    {
      v15 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v11 controlChannel];
        v17 = [v16 deviceUniqueID];
        *buf = 138412546;
        v24 = v10;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device %@/%@ is blacked out due to fairplay failures", buf, 0x16u);
      }

      [(IDSLinkManager *)self->_linkManager stopLinkForDeviceUniqueID:v9 cbuuid:v10 disconnectWP:1];
    }

    else
    {
      v18 = [v11 vifName];
      v19 = v18;
      sub_100642B5C([v18 UTF8String], 1);

      if (([v11 linkLayerConnected] & 1) == 0)
      {
        [v11 setLinkLayerConnected:1];
        if (qword_100CBF438 != -1)
        {
          sub_10092D8D8();
        }

        mach_continuous_time();
        [v11 linkLayerDisconnectTime];
        if ([v10 isEqualToString:kIDSDefaultPairedDeviceID])
        {
          v20 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "link is connected for default paired device, check suspended OTR sessions...", buf, 2u);
          }

          v21 = [v11 controlChannel];
          [v21 resumeOTRNegotiation];
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

- (void)link:(id)a3 didDisconnectForDeviceUniqueID:(id)a4 cbuuid:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, v10);
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
    v13 = [v11 vifName];
    v14 = v13;
    sub_100642B5C([v13 UTF8String], 0);

    if ([v11 linkLayerConnected])
    {
      [v11 setLinkLayerConnected:0];
      if (qword_100CBF438 != -1)
      {
        sub_10092D8D8();
      }

      [v11 setLinkLayerDisconnectTime:*&qword_100CBF3C0 * mach_continuous_time()];
    }

    if ([v10 isEqualToString:{kIDSDefaultPairedDeviceID, v15}])
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

- (void)link:(id)a3 hasSpaceAvailable:(BOOL)a4 deviceUniqueID:(id)a5 cbuuid:(id)a6
{
  v6 = a4;
  v7 = sub_10000FAC0(&self->_deviceConnectionInfoTableByCbuuid, a6);
  if (v7)
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7[1];
      v11[0] = 67109378;
      v11[1] = v6;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[throughput] Has space available(%d) for device %@", v11, 0x12u);
    }

    v10 = v7[2079];
    if (v6)
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

- (void)didUpdatePairedDevice:(id)a3
{
  v3 = [(IDSUTunController *)self defaultPairedDeviceIdentityPair];
  v4 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "localdevicecontroller callback [%@]", buf, 0xCu);
  }

  v5 = v3;
  IDSTransportThreadAddBlock();
}

- (void)clearStats
{
  os_unfair_lock_lock(&unk_100CBF440);
  v2 = [qword_100CBF3B0 allValues];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
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
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&unk_100CBF440);
}

- (unint64_t)onTransportThread_SendWithConnectionContext:(id)a3 packetBuffer:(id *)a4
{
  v6 = a3;
  IDSLinkPacketBufferAddBufferStart();
  v7 = [v6 connection];
  v8 = [v7 uint32Key];

  *a4->var0 = HIBYTE(v8);
  a4->var0[1] = BYTE2(v8);
  a4->var0[2] = BYTE1(v8);
  a4->var0[3] = v8;
  a4->var0[4] = BYTE1(a4->var2);
  a4->var0[5] = a4->var2;
  a4->var0[7] = 0;
  a4->var0[6] = 0;
  var0 = a4->var0;
  var2 = a4->var2;
  v11 = [v6 deviceConnectionInfo];

  LOBYTE(v13) = 1;
  [(IDSUTunController *)self handleIPPayload:var0 bytesLength:var2 source:0 destination:0 upperProtocol:17 forDeviceConnectionInfo:v11 flush:v13 callerShouldStop:0];

  _IDSLinkPacketBufferRelease();
  return 0;
}

- (BOOL)isConnected:(id)a3 deviceConnectionInfo:(id)a4
{
  v5 = a3;
  if ([a4 shouldUseServiceConnector])
  {
    v6 = [v5 serviceConnection];
    if (v6)
    {
      v7 = [v5 connectError];
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if ([v5 sd] == -1)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v6 = [v5 connectError];
    v8 = v6 != 0;
  }

LABEL_8:
  return v8;
}

@end