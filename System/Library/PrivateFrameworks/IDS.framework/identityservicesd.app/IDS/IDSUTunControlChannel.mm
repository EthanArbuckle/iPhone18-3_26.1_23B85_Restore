@interface IDSUTunControlChannel
- (BOOL)connected;
- (BOOL)isDefaultPairedDeviceStartingToEncrypt;
- (BOOL)processFairplayDeviceInfo:(id)a3;
- (BOOL)processFairplayDeviceSessionInfo:(id)a3;
- (BOOL)processOTRNegotiationMessage:(id)a3;
- (BOOL)processSuspendOTRNegotiationMessage:(id)a3;
- (IDSUTunControlChannel)initWithDeviceUniqueID:(id)a3 cbuuid:(id)a4 shouldUseServiceConnector:(BOOL)a5 receiveHandler:(id)a6;
- (id)_utunControlMessageFairplayHostSessionInfo:(unsigned __int8)a3 deviceType:(unsigned __int8)a4 protocolVersion:(unsigned int)a5;
- (void)_callHandlerWithMessage:(id)a3 resetDataConnections:(BOOL)a4 shouldObliterate:(BOOL)a5 decryptionFailed:(BOOL)a6 shouldTriggerCorruptionRecovery:(BOOL)a7;
- (void)_cancelConnectionAndResetDataConnections:(BOOL)a3 shouldObliterate:(BOOL)a4 encryptionFailure:(BOOL)a5 shouldTriggerCorruptionRecovery:(BOOL)a6;
- (void)_checkSendNewMessage;
- (void)_cleanupConnection;
- (void)_clearChannel;
- (void)_destroyFairplayHostSession;
- (void)_handleFairplayAuthenticationFailure;
- (void)_receiveFromNWConnection;
- (void)_sendMessageOnNWConnection:(id)a3;
- (void)dealloc;
- (void)encryptControlChannelForStoredIdentities;
- (void)invalidate;
- (void)processReceivedMessage:(id)a3;
- (void)readFromConnection;
- (void)resumeOTRNegotiation;
- (void)sendMessage:(id)a3;
- (void)sendOTRNegotiationMessage:(id)a3 negotiationCount:(unsigned int)a4 negotiationData:(id)a5;
- (void)sendPriorityMessage:(id)a3;
- (void)sendSuspendOTRNegotiationMessage:(id)a3;
- (void)simulateDecryptionFailure;
- (void)suspendOTRNegotiation:(id)a3;
- (void)useConnection:(id)a3 withFirstMessage:(id)a4;
- (void)writeToConnection;
@end

@implementation IDSUTunControlChannel

- (IDSUTunControlChannel)initWithDeviceUniqueID:(id)a3 cbuuid:(id)a4 shouldUseServiceConnector:(BOOL)a5 receiveHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v35.receiver = self;
  v35.super_class = IDSUTunControlChannel;
  v13 = [(IDSUTunControlChannel *)&v35 init];
  if (v13)
  {
    v14 = [v10 copy];
    deviceUniqueID = v13->_deviceUniqueID;
    v13->_deviceUniqueID = v14;

    v16 = [v11 copy];
    cbuuid = v13->_cbuuid;
    v13->_cbuuid = v16;

    v18 = [v12 copy];
    receiveHandler = v13->_receiveHandler;
    v13->_receiveHandler = v18;

    v20 = objc_alloc_init(NSMutableData);
    pendingDataReceive = v13->_pendingDataReceive;
    v13->_pendingDataReceive = v20;

    v22 = objc_alloc_init(NSMutableData);
    pendingDataSend = v13->_pendingDataSend;
    v13->_pendingDataSend = v22;

    v24 = objc_alloc_init(NSMutableArray);
    outgoingMessages = v13->_outgoingMessages;
    v13->_outgoingMessages = v24;

    v26 = objc_alloc_init(NSMutableArray);
    outgoingPriorityMessages = v13->_outgoingPriorityMessages;
    v13->_outgoingPriorityMessages = v26;

    v13->_sd = -1;
    v13->_fairplayAuthState = 0;
    v13->_receiveHandlerBeingCalled = 0;
    v13->_shouldUseServiceConnector = a5;
    connection = v13->_connection;
    v13->_connection = 0;

    v13->_connectionReady = 0;
    v29 = [NSString stringWithFormat:@"control channel %@", v13->_deviceUniqueID];
    v30 = [v29 UTF8String];
    v31 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v32 = dispatch_queue_create(v30, v31);
    connectionQueue = v13->_connectionQueue;
    v13->_connectionQueue = v32;

    if ([v10 isEqualToString:IDSDeviceDefaultPairedDeviceUniqueID])
    {
      v13->_isDefaultPairedDevice = 1;
    }
  }

  return v13;
}

- (void)_cleanupConnection
{
  if (!self->_shouldUseServiceConnector && self->_sd != -1)
  {
    IDSTransportThreadRemoveSocket();
    shutdown(self->_sd, 2);
    self->_sd = -1;
  }

  v3 = self->_connection;
  if (v3)
  {
    self->_connection = 0;
    connection = v3;

    nw_connection_cancel(connection);
  }
}

- (void)simulateDecryptionFailure
{
  v3 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "control channel simulating decryption failure ############### - close socket / call receive handler", v4, 2u);
  }

  [(IDSUTunControlChannel *)self _cancelConnectionAndResetDataConnections:1 shouldObliterate:0 encryptionFailure:1 shouldTriggerCorruptionRecovery:0];
}

- (void)encryptControlChannelForStoredIdentities
{
  v3 = [(IDSUTunControlChannel *)self identityPair];

  v4 = +[IDSFoundationLog utunController];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [(IDSUTunControlChannel *)self identityPair];
      v7 = [v6 localFullIdentity];
      v8 = [(IDSUTunControlChannel *)self identityPair];
      v9 = [v8 remotePublicIdentity];
      v14 = 138478083;
      v15 = v7;
      v16 = 2113;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UTunController control channel asked to encrypt {local: %{private}@, remote: %{private}@}", &v14, 0x16u);
    }

    self->_isReadyForEncrypting = 1;
    if (self->_connection)
    {
      [(IDSUTunControlChannel *)self _cancelConnectionAndResetDataConnections:0 shouldObliterate:0 encryptionFailure:0 shouldTriggerCorruptionRecovery:0];
    }
  }

  else
  {
    if (v5)
    {
      v10 = [(IDSUTunControlChannel *)self identityPair];
      v11 = [v10 localFullIdentity];
      v12 = [(IDSUTunControlChannel *)self identityPair];
      v13 = [v12 remotePublicIdentity];
      v14 = 134218240;
      v15 = v11;
      v16 = 2048;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UTunController control channel asked to encrypt without keys (local %p remote %p)", &v14, 0x16u);
    }
  }
}

- (BOOL)isDefaultPairedDeviceStartingToEncrypt
{
  if (!self->_isDefaultPairedDevice || self->_isReadyForEncrypting)
  {
    return 0;
  }

  v3 = [(IDSUTunControlChannel *)self identityPair];
  v2 = v3 != 0;

  return v2;
}

- (void)_receiveFromNWConnection
{
  v3 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "control channel: _receiveFromNWConnection", buf, 2u);
  }

  connection = self->_connection;
  completion[0] = _NSConcreteStackBlock;
  completion[1] = 3221225472;
  completion[2] = sub_100449A8C;
  completion[3] = &unk_100BDC700;
  completion[4] = self;
  nw_connection_receive_message(connection, completion);
}

- (void)_sendMessageOnNWConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_shouldUseServiceConnector || self->_connection && self->_connectionReady)
  {
    v6 = [v4 length];
    v7 = +[IDSFoundationLog utunController];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 67109120;
        LODWORD(v18) = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "control channel: _sendMessageOnNWConnection writing: %u bytes", buf, 8u);
      }

      v16 = bswap32(v6) >> 16;
      v7 = objc_alloc_init(NSMutableData);
      [v7 appendBytes:&v16 length:2];
      [v7 appendData:v5];
      v9 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 length];
        *buf = 134217984;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "control channel: _sendMessageOnNWConnection length: %lu", buf, 0xCu);
      }

      connection = self->_connection;
      v12 = [v7 _createDispatchData];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10044A194;
      v14[3] = &unk_100BDC728;
      v15 = v6;
      v14[4] = self;
      nw_connection_send(connection, v12, _nw_content_context_default_message, 1, v14);
    }

    else if (v8)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "control channel: _sendMessageOnNWConnection no message to send", buf, 2u);
    }
  }

  else
  {
    v13 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "control channel _sendMessageOnNWConnection: no valid connection", buf, 2u);
    }
  }
}

- (void)processReceivedMessage:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "control channel: processReceivedMessage", buf, 2u);
  }

  if (self->_disableEncryption)
  {
    v6 = "disabled";
LABEL_5:
    v7 = v4;
LABEL_6:
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 length];
      v10 = [(NSMutableData *)self->_pendingDataReceive length];
      *buf = 136316162;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v4;
      *&buf[22] = 2048;
      *v75 = v9;
      *&v75[8] = 2112;
      *&v75[10] = v7;
      *&v75[18] = 2048;
      *&v75[20] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "control channel decrypted (%s) new message (%@, size=%lu  data: %@) (from %lu)", buf, 0x34u);
    }

    [(IDSUTunControlChannel *)self _callHandlerWithMessage:v7 resetDataConnections:0 shouldObliterate:0 decryptionFailed:0 shouldTriggerCorruptionRecovery:0];
    goto LABEL_9;
  }

  if (self->_isReadyForEncrypting)
  {
    v11 = [(IDSUTunControlChannel *)self identityPair];
    v12 = v4;
    if (![v12 length])
    {
      v20 = objc_alloc_init(NSData);
      v27 = v20;
      v22 = 1;
LABEL_40:

      v7 = v20;
      v6 = "default paired PK";
      if (v22)
      {
        goto LABEL_6;
      }

      v30 = 200;
      goto LABEL_46;
    }

    v58 = +[IDSMessageHashStore sharedInstance];
    v13 = v12;
    if (qword_100CBD3A8 != -1)
    {
      sub_10091F62C();
    }

    if (off_100CBD3A0)
    {
      v14 = +[IDSRegistrationKeyManager sharedInstance];
      v15 = [v14 latestCopyMessageProtectionIdentityForDataProtectionClass:2];

      *buf = 0;
      v16 = off_100CBD3A0(v13, v15, buf);
      if (v15)
      {
        CFRelease(v15);
      }

      if (v16 && ![v58 containsMessageHash:v16])
      {
        [v58 addMessageHash:v16];
        IMTimingStartTimingForKey();
        v17 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "   UTUNControlChannel Decrypting {identityPair: %{private}@}", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v54 = v11;
          _IDSLogV();
        }

        v18 = [v11 localFullIdentity];
        v19 = [v11 remotePublicIdentity];
        v69 = 0;
        v20 = [v18 verifyAndExposeData:v13 withSigner:v19 error:&v69];
        v21 = v69;

        v22 = v20 != 0;
        if (v20)
        {
          v23 = v20;
        }

        else
        {
          v51 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "   Public/Private decryption failed with error: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v54 = v21;
            _IDSLogV();
          }
        }

        IMTimingStopTimingForKey();

LABEL_39:
        goto LABEL_40;
      }
    }

    else
    {

      v16 = 0;
    }

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "IDS message hash found, returning early", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    [v58 updateCreationDateForHash:v16];
    v20 = objc_alloc_init(NSData);
    v29 = v20;
    v22 = 1;
    goto LABEL_39;
  }

  if (self->_isDefaultPairedDevice)
  {
    v6 = "default paired none";
    goto LABEL_5;
  }

  remoteDeviceEncryptionInfo = self->_remoteDeviceEncryptionInfo;
  if (remoteDeviceEncryptionInfo)
  {
    v25 = [(NSDictionary *)remoteDeviceEncryptionInfo objectForKeyedSubscript:IDSUTunControlChannelRemoteDeviceEncryptionInfo_UNENCRYPTED_Key];
    v26 = [v25 BOOLValue];

    if (v26)
    {
      v6 = "remote UNENCRYPTED";
      goto LABEL_5;
    }

    v33 = [(NSDictionary *)self->_remoteDeviceEncryptionInfo objectForKeyedSubscript:IDSUTunControlChannelRemoteDeviceEncryptionInfoRemoteTokenURIKey];
    v34 = [(NSDictionary *)self->_remoteDeviceEncryptionInfo objectForKeyedSubscript:IDSUTunControlChannelRemoteDeviceEncryptionInfoServiceKey];
    v35 = [(NSDictionary *)self->_remoteDeviceEncryptionInfo objectForKeyedSubscript:IDSUTunControlChannelRemoteDeviceEncryptionInfoMyURIKey];
    v36 = [(NSDictionary *)self->_remoteDeviceEncryptionInfo objectForKeyedSubscript:IDSUTunControlChannelRemoteDeviceEncryptionInfoMyIdentityKey];
    v73 = 0;
    v59 = [v33 _stripPotentialTokenURIWithToken:&v73];
    v57 = v73;
    v37 = dispatch_semaphore_create(0);
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    v68[0] = 0;
    v68[1] = v68;
    v68[2] = 0x2020000000;
    v68[3] = 1;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *v75 = sub_10000A994;
    *&v75[8] = sub_10000BC3C;
    *&v75[16] = 0;
    v38 = +[IDSEncryptionController sharedInstance];
    v39 = [IDSURI URIWithPrefixedURI:v59];
    v40 = [IDSURI URIWithPrefixedURI:v35];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_10044AF34;
    v63[3] = &unk_100BDC750;
    v65 = &v69;
    v66 = v68;
    v67 = buf;
    v41 = v37;
    v64 = v41;
    LOBYTE(v56) = !self->_avoidMainQueueOverrideToNO;
    LOBYTE(v55) = 0;
    [v38 legacyPublicKeyDecryptData:v4 fromURI:v39 identity:v36 toURI:v40 pushToken:v57 service:v34 priority:300 isRetry:v55 replayKey:0 completionBlock:v63 avoidMainQueue:v56];

    dispatch_semaphore_wait(v41, 0xFFFFFFFFFFFFFFFFLL);
    v30 = v70[3];
    v7 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v68, 8);
    _Block_object_dispose(&v69, 8);

    v6 = "remote PK";
    goto LABEL_45;
  }

  if (self->_deviceUniqueID)
  {
    v31 = +[IDSEncryptionController sharedInstance];
    deviceUniqueID = self->_deviceUniqueID;
    v62 = 0;
    v7 = [v31 legacyPublicKeyDecryptData:v4 toDeviceID:deviceUniqueID priority:300 error:&v62];
    v33 = v62;

    v30 = sub_1005C23F8(v33);
    v6 = "cloud paired PK";
LABEL_45:

    if (!v30)
    {
      goto LABEL_6;
    }

LABEL_46:
    v42 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      isDefaultPairedDevice = self->_isDefaultPairedDevice;
      isReadyForEncrypting = self->_isReadyForEncrypting;
      isDefaultPairedDevicePairedLocally = self->_isDefaultPairedDevicePairedLocally;
      isDefaultPairedDevicePairedRemotely = self->_isDefaultPairedDevicePairedRemotely;
      *buf = 136316418;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v30;
      *&buf[22] = 1024;
      *v75 = isDefaultPairedDevice;
      *&v75[4] = 1024;
      *&v75[6] = isReadyForEncrypting;
      *&v75[10] = 1024;
      *&v75[12] = isDefaultPairedDevicePairedLocally;
      *&v75[16] = 1024;
      *&v75[18] = isDefaultPairedDevicePairedRemotely;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "control channel failed to decrypt (%s) of control channel data: %ld (magnet %u encrypting %u, pairedLocally %u pairedRemotely %u)", buf, 0x2Eu);
    }

    if (self->_receiveHandlerBeingCalled)
    {
      v47 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "receiveHandler is being called, so ignore this one", buf, 2u);
      }
    }

    else
    {
      self->_receiveHandlerBeingCalled = 1;
      v48 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Dispatch receiveHandler", buf, 2u);
      }

      v49 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10044B09C;
      block[3] = &unk_100BD6ED0;
      block[4] = self;
      dispatch_async(v49, block);
    }

    goto LABEL_9;
  }

  if (self->_receiveHandlerBeingCalled)
  {
    v50 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "receiveHandler is being called, so ignore this one", buf, 2u);
    }
  }

  else
  {
    self->_receiveHandlerBeingCalled = 1;
    v52 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Dispatch receiveHandler", buf, 2u);
    }

    v53 = im_primary_queue();
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_10044AFE4;
    v61[3] = &unk_100BD6ED0;
    v61[4] = self;
    dispatch_async(v53, v61);
  }

LABEL_9:
}

- (void)readFromConnection
{
  if (self->_newSocket)
  {
    self->_newSocket = 0;
    v28 = 4;
    __errnum = -1431655766;
    v3 = getsockopt(self->_sd, 0xFFFF, 4103, &__errnum, &v28);
    v4 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      deviceUniqueID = self->_deviceUniqueID;
      sd = self->_sd;
      v7 = __errnum;
      v8 = strerror(__errnum);
      *buf = 138413314;
      *&buf[4] = deviceUniqueID;
      *&buf[12] = 1024;
      *&buf[14] = sd;
      *&buf[18] = 1024;
      *&buf[20] = v3;
      *&buf[24] = 1024;
      *&buf[26] = v7;
      *&buf[30] = 2080;
      *&buf[32] = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UTunController control channel for [%@] connected for {socket:%d} read (getsockopt=%d error=%d: %s)", buf, 0x28u);
    }

    if (!v3)
    {
      if (__errnum)
      {
        v9 = self;
        v10 = 0;
LABEL_28:
        v18 = 0;
LABEL_29:
        [(IDSUTunControlChannel *)v9 _cancelConnectionAndResetDataConnections:v10 shouldObliterate:0 encryptionFailure:0 shouldTriggerCorruptionRecovery:v18];
        return;
      }
    }
  }

  v11 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_sd;
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "control channel receiving control message on {socket:%d} ...", buf, 8u);
  }

  memset(buf, 170, 0x800uLL);
  v13 = recv(self->_sd, buf, 0x800uLL, 0);
  if (v13 < 0)
  {
    v19 = *__error();
    if (v19 <= 0x37 && ((1 << v19) & 0x80000800000010) != 0)
    {
      return;
    }

    v20 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_deviceUniqueID;
      v22 = self->_sd;
      v23 = strerror(v19);
      __errnum = 138413058;
      v30 = v21;
      v31 = 1024;
      v32 = v22;
      v33 = 1024;
      v34 = v19;
      v35 = 2080;
      v36 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "UTunController control channel for [%@] disconnected on {socket:%d} recv: errno=%d: %s", &__errnum, 0x22u);
    }

    v10 = [(IDSUTunControlChannel *)self isDefaultPairedDeviceStartingToEncrypt]^ 1;
LABEL_27:
    v9 = self;
    goto LABEL_28;
  }

  if (!v13)
  {
    v24 = [(IDSUTunControlChannel *)self isDefaultPairedDeviceStartingToEncrypt];
    v25 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_deviceUniqueID;
      v27 = self->_sd;
      __errnum = 138412546;
      v30 = v26;
      v31 = 1024;
      v32 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "UTunController control channel for [%@] disconnected on {socket:%d} recv: connection closed", &__errnum, 0x12u);
    }

    v10 = v24 ^ 1;
    goto LABEL_27;
  }

  [(NSMutableData *)self->_pendingDataReceive appendBytes:buf length:v13];
  ++self->_dataReceivedWithoutMessageCount;
  if ([(NSMutableData *)self->_pendingDataReceive length]>= 2)
  {
    do
    {
      v14 = [(NSMutableData *)self->_pendingDataReceive bytes];
      v15 = __rev16(*v14);
      if ([(NSMutableData *)self->_pendingDataReceive length]- 2 < v15)
      {
        break;
      }

      self->_dataReceivedWithoutMessageCount = 0;
      v16 = [NSData dataWithBytes:v14 + 1 length:v15];
      [(NSMutableData *)self->_pendingDataReceive replaceBytesInRange:0 withBytes:v15 + 2 length:0, 0];
      [(IDSUTunControlChannel *)self processReceivedMessage:v16];
    }

    while ([(NSMutableData *)self->_pendingDataReceive length]> 1);
  }

  if (!self->_checksumEnabled && self->_dataReceivedWithoutMessageCount >= 2)
  {
    v17 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__errnum) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "control channel corruption detection heuristic hit - resetting", &__errnum, 2u);
    }

    v9 = self;
    v10 = 0;
    v18 = 1;
    goto LABEL_29;
  }
}

- (void)writeToConnection
{
  if (self->_newSocket)
  {
    self->_newSocket = 0;
    v35 = 4;
    __errnum = -1431655766;
    v3 = getsockopt(self->_sd, 0xFFFF, 4103, &__errnum, &v35);
    v4 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      deviceUniqueID = self->_deviceUniqueID;
      sd = self->_sd;
      v7 = __errnum;
      v8 = strerror(__errnum);
      *buf = 138544386;
      *v38 = deviceUniqueID;
      *&v38[8] = 1024;
      *&v38[10] = sd;
      *&v38[14] = 1024;
      *&v38[16] = v3;
      *&v38[20] = 1024;
      *&v38[22] = v7;
      *&v38[26] = 2080;
      *&v38[28] = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UTunController control channel for [%{public}@] connected for write {socket:%d} (getsockopt=%d error=%d: %s)", buf, 0x28u);
    }

    if (!v3)
    {
      if (__errnum)
      {
        v9 = self;
        v10 = 0;
LABEL_22:
        [(IDSUTunControlChannel *)v9 _cancelConnectionAndResetDataConnections:v10 shouldObliterate:0 encryptionFailure:0 shouldTriggerCorruptionRecovery:0];
        return;
      }
    }
  }

  if (![(NSMutableData *)self->_pendingDataSend length])
  {
    IDSTransportThreadSuspendSocket();
    self->_sendSuspended = 1;
    return;
  }

  v11 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = self->_sd;
    v13 = [(NSMutableData *)self->_pendingDataSend length];
    *buf = 67109376;
    *v38 = v12;
    *&v38[4] = 2048;
    *&v38[6] = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "control channel sending control message on {socket:%d} ... (have %lu)", buf, 0x12u);
  }

  v14 = send(self->_sd, [(NSMutableData *)self->_pendingDataSend bytes], [(NSMutableData *)self->_pendingDataSend length], 0);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v19 = *__error();
    if (v19 > 0x37 || ((1 << v19) & 0x80000800000010) == 0)
    {
      v20 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_deviceUniqueID;
        v22 = self->_sd;
        v23 = strerror(v19);
        *buf = 138413058;
        *v38 = v21;
        *&v38[8] = 1024;
        *&v38[10] = v22;
        *&v38[14] = 1024;
        *&v38[16] = v19;
        *&v38[20] = 2080;
        *&v38[22] = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "UTunController control channel for [%@] disconnected on send {socket:%d}: errno=%d: %s", buf, 0x22u);
      }

      goto LABEL_21;
    }
  }

  else
  {
    v15 = v14;
    if (v14 > [(NSMutableData *)self->_pendingDataSend length])
    {
      v16 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(NSMutableData *)self->_pendingDataSend length];
        v18 = self->_sd;
        *buf = 134218496;
        *v38 = v15;
        *&v38[8] = 2048;
        *&v38[10] = v17;
        *&v38[18] = 1024;
        *&v38[20] = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "control channel unexpected length {bytesSent:%zu} {pendingDataSendLength:%zu} for socket {socket:%d}", buf, 0x1Cu);
      }

LABEL_21:
      v10 = [(IDSUTunControlChannel *)self isDefaultPairedDeviceStartingToEncrypt]^ 1;
      v9 = self;
      goto LABEL_22;
    }

    if (v15)
    {
      outgoingStallDetector = self->_outgoingStallDetector;
      if (outgoingStallDetector)
      {
        [(IDSStallDetector *)outgoingStallDetector produceBytes:v15];
      }

      [(NSMutableData *)self->_pendingDataSend replaceBytesInRange:0 withBytes:v15 length:0, 0];
      v25 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_sd;
        v27 = [(NSMutableData *)self->_pendingDataSend length];
        v28 = self->_sd;
        *buf = 134218752;
        *v38 = v15;
        *&v38[8] = 1024;
        *&v38[10] = v26;
        *&v38[14] = 2048;
        *&v38[16] = v27;
        *&v38[24] = 1024;
        *&v38[26] = v28;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "control channel sent %ld bytes on {socket:%d} (%lu left) (s:%d)", buf, 0x22u);
      }

      if (![(NSMutableData *)self->_pendingDataSend length])
      {
        if (self->_sendingPriorityMessage)
        {
          self->_sendingPriorityMessage = 0;
        }

        else if ([(NSMutableArray *)self->_outgoingMessages count])
        {
          [(NSMutableArray *)self->_outgoingMessages removeObjectAtIndex:0];
        }

        else
        {
          v32 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "control channel finished sending bytes but no message to remove", buf, 2u);
          }
        }

        v33 = [(NSMutableArray *)self->_outgoingMessages count];
        if ([(NSMutableArray *)self->_outgoingPriorityMessages count]+ v33)
        {
          [(IDSUTunControlChannel *)self _checkSendNewMessage];
        }

        else
        {
          IDSTransportThreadSuspendSocket();
          self->_sendSuspended = 1;
          v34 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "control channel finished sending bytes no more message send pending", buf, 2u);
          }
        }
      }
    }

    else
    {
      v29 = *__error();
      v30 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->_sd;
        *buf = 67109376;
        *v38 = v31;
        *&v38[4] = 1024;
        *&v38[6] = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "control channel sent 0 bytes on {socket:%d} - try again later (%d)", buf, 0xEu);
      }
    }
  }
}

- (void)useConnection:(id)a3 withFirstMessage:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = self->_connection;
    if (v9)
    {
      canceledConnection = self->_canceledConnection;
      self->_canceledConnection = 0;

      self->_shouldCallbackOnCancel = 0;
      [(IDSUTunControlChannel *)self _cleanupConnection];
    }

    objc_storeStrong(&self->_connection, a3);
    if (self->_shouldUseServiceConnector)
    {
      v11 = sub_1004495E0();
      options = nw_framer_create_options(v11);

      *buf = 0;
      v27 = buf;
      v28 = 0x2020000000;
      v29 = 0;
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_10044BDC8;
      v23 = &unk_100BDC778;
      v25 = buf;
      v24 = options;
      nw_connection_modify_connected_protocol_stack();

      _Block_object_dispose(buf, 8);
    }

    [(NSMutableData *)self->_pendingDataReceive setLength:0];
    [(NSMutableData *)self->_pendingDataSend setLength:0];
    self->_newSocket = 1;
    if ([(IDSUTunControlChannel *)self isDefaultPairedDeviceStartingToEncrypt])
    {
      self->_isReadyForEncrypting = 1;
    }

    self->_sendSuspended = 0;
    if (v8 && self->_shouldUseServiceConnector)
    {
      [(NSMutableArray *)self->_outgoingMessages insertObject:v8 atIndex:0];
    }

    Current = CFAbsoluteTimeGetCurrent();
    nw_connection_set_queue(v7, self->_connectionQueue);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10044BEF4;
    v15[3] = &unk_100BDC7C8;
    v14 = v7;
    v16 = v14;
    v17 = self;
    v19 = Current;
    v18 = v8;
    nw_connection_set_state_changed_handler(v14, v15);
    nw_connection_start(v14);
  }

  else
  {
    v9 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "control channel cannot use nil connection", buf, 2u);
    }
  }
}

- (void)_callHandlerWithMessage:(id)a3 resetDataConnections:(BOOL)a4 shouldObliterate:(BOOL)a5 decryptionFailed:(BOOL)a6 shouldTriggerCorruptionRecovery:(BOOL)a7
{
  receiveHandler = self->_receiveHandler;
  if (receiveHandler)
  {
    receiveHandler[2](receiveHandler, a3, a4, a5, a6, a7);
  }
}

- (void)_cancelConnectionAndResetDataConnections:(BOOL)a3 shouldObliterate:(BOOL)a4 encryptionFailure:(BOOL)a5 shouldTriggerCorruptionRecovery:(BOOL)a6
{
  v11 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    canceledConnection = self->_canceledConnection;
    v16 = 138412546;
    v17 = connection;
    v18 = 2112;
    v19 = canceledConnection;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "control channel _cancelConnectionAndResetDataConnections _connection %@, _canceledConnection %@", &v16, 0x16u);
  }

  v14 = self->_connection;
  if (v14)
  {
    self->_shouldCallbackOnCancel = 1;
    objc_storeStrong(&self->_canceledConnection, v14);
    self->_callbackResetDataConnections = a3;
    self->_callbackShouldObliterate = a4;
    self->_callbackEncryptionFailed = a5;
    self->_callbackShouldTriggerCorruptionRecovery = a6;
    [(IDSUTunControlChannel *)self _clearChannel];
    [(IDSUTunControlChannel *)self _cleanupConnection];
  }

  else
  {
    v15 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_10091F654(v15);
    }
  }
}

- (BOOL)connected
{
  if (self->_shouldUseServiceConnector)
  {
    v2 = self->_connection == 0;
  }

  else
  {
    v2 = self->_sd == -1;
  }

  return !v2;
}

- (void)_clearChannel
{
  v3 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing %@", &v7, 0xCu);
  }

  [(NSMutableData *)self->_pendingDataReceive setLength:0];
  [(NSMutableData *)self->_pendingDataSend setLength:0];
  [(NSMutableArray *)self->_outgoingMessages removeAllObjects];
  if (self->_isDefaultPairedDevice)
  {
    v4 = +[IMLockdownManager sharedInstance];
    v5 = [v4 isInternalInstall];

    if (v5)
    {
      outgoingStallDetector = self->_outgoingStallDetector;
      if (outgoingStallDetector)
      {
        [(IDSStallDetector *)outgoingStallDetector reset];
      }
    }
  }
}

- (void)_checkSendNewMessage
{
  if (self->_sd == -1)
  {
    v5 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "control channel _checkSendNewMessage: no valid connection", buf, 2u);
    }
  }

  else if (![(NSMutableData *)self->_pendingDataSend length])
  {
    v3 = [(NSMutableArray *)self->_outgoingPriorityMessages count];
    if (&v3[[(NSMutableArray *)self->_outgoingMessages count]])
    {
      if (v3)
      {
        v4 = [(NSMutableArray *)self->_outgoingPriorityMessages objectAtIndex:0];
        [(NSMutableArray *)self->_outgoingPriorityMessages removeObjectAtIndex:0];
        self->_sendingPriorityMessage = 1;
        goto LABEL_12;
      }

      if (!self->_isDefaultPairedDevice || self->_isReadyForEncrypting || !self->_isDefaultPairedDevicePairedLocally && !self->_isDefaultPairedDevicePairedRemotely)
      {
        v4 = [(NSMutableArray *)self->_outgoingMessages objectAtIndex:0];
LABEL_12:
        v6 = [v4 length];
        if (self->_disableEncryption)
        {
          v7 = "disabled";
LABEL_14:
          v8 = v4;
LABEL_15:
          v9 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [v8 length];
            sendingPriorityMessage = self->_sendingPriorityMessage;
            *buf = 136316418;
            *&buf[4] = v7;
            *&buf[12] = 2048;
            *&buf[14] = v8;
            *&buf[22] = 2048;
            v75 = v10;
            LOWORD(v76) = 1024;
            *(&v76 + 2) = v6;
            HIWORD(v76) = 2112;
            *v77 = v8;
            *&v77[8] = 1024;
            *v78 = sendingPriorityMessage;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "control channel encrypted (%s) new message (%p, size=%lu original size=%u  data: %@) (_sendingPriorityMessage: %d)", buf, 0x36u);
          }

          *buf = -21846;
          v12 = [v8 length];
          buf[0] = HIBYTE(v12);
          buf[1] = v12;
          [(NSMutableData *)self->_pendingDataSend appendBytes:buf length:2];
          [(NSMutableData *)self->_pendingDataSend appendData:v8];
          if (self->_sendSuspended)
          {
            self->_sendSuspended = 0;
            IDSTransportThreadResumeSocket();
          }

LABEL_20:
          return;
        }

        if (!self->_isReadyForEncrypting)
        {
          if (self->_isDefaultPairedDevice)
          {
            v7 = "default paired none";
            goto LABEL_14;
          }

          remoteDeviceEncryptionInfo = self->_remoteDeviceEncryptionInfo;
          if (remoteDeviceEncryptionInfo)
          {
            v24 = [(NSDictionary *)remoteDeviceEncryptionInfo objectForKeyedSubscript:IDSUTunControlChannelRemoteDeviceEncryptionInfo_UNENCRYPTED_Key];
            v25 = [v24 BOOLValue];

            if (v25)
            {
              v7 = "remote UNENCRYPTED";
              goto LABEL_14;
            }

            v33 = [(NSDictionary *)self->_remoteDeviceEncryptionInfo objectForKeyedSubscript:IDSUTunControlChannelRemoteDeviceEncryptionInfoRemoteTokenURIKey];
            v57 = [(NSDictionary *)self->_remoteDeviceEncryptionInfo objectForKeyedSubscript:IDSUTunControlChannelRemoteDeviceEncryptionInfoServiceKey];
            v59 = [(NSDictionary *)self->_remoteDeviceEncryptionInfo objectForKeyedSubscript:IDSUTunControlChannelRemoteDeviceEncryptionInfoMyURIKey];
            v56 = [(NSDictionary *)self->_remoteDeviceEncryptionInfo objectForKeyedSubscript:IDSUTunControlChannelRemoteDeviceEncryptionInfoMyIdentityKey];
            v73 = 0;
            v58 = [v33 _stripPotentialTokenURIWithToken:&v73];
            v55 = v73;
            v34 = dispatch_semaphore_create(0);
            v69 = 0;
            v70 = &v69;
            v71 = 0x2020000000;
            v72 = 0;
            v68[0] = 0;
            v68[1] = v68;
            v68[2] = 0x2020000000;
            v68[3] = 1;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v75 = sub_10000A994;
            v76 = sub_10000BC3C;
            *v77 = 0;
            v35 = +[IDSEncryptionController sharedInstance];
            v36 = [IDSURI URIWithPrefixedURI:v59];
            v37 = [IDSURI URIWithPrefixedURI:v58];
            v63[0] = _NSConcreteStackBlock;
            v63[1] = 3221225472;
            v63[2] = sub_10044D994;
            v63[3] = &unk_100BDC7F0;
            v65 = v68;
            v66 = &v69;
            v67 = buf;
            v38 = v34;
            v64 = v38;
            LOBYTE(v54) = !self->_avoidMainQueueOverrideToNO;
            [v35 legacyPublicKeyEncryptData:v4 withEncryptedAttributes:0 fromURI:v36 identity:v56 toURI:v37 pushToken:v55 service:v57 priority:300 completionBlock:v63 avoidMainQueue:v54];

            dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
            v22 = v70[3];
            v8 = *(*&buf[8] + 40);

            _Block_object_dispose(buf, 8);
            _Block_object_dispose(v68, 8);
            _Block_object_dispose(&v69, 8);

            v7 = "remote PK";
          }

          else
          {
            if (!self->_deviceUniqueID)
            {
              v46 = +[IDSFoundationLog utunController];
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                isDefaultPairedDevice = self->_isDefaultPairedDevice;
                isReadyForEncrypting = self->_isReadyForEncrypting;
                isDefaultPairedDevicePairedLocally = self->_isDefaultPairedDevicePairedLocally;
                isDefaultPairedDevicePairedRemotely = self->_isDefaultPairedDevicePairedRemotely;
                *buf = 136316674;
                *&buf[4] = "none";
                *&buf[12] = 2112;
                *&buf[14] = v4;
                *&buf[22] = 2048;
                v75 = 0;
                LOWORD(v76) = 1024;
                *(&v76 + 2) = isDefaultPairedDevice;
                HIWORD(v76) = 1024;
                *v77 = isReadyForEncrypting;
                *&v77[4] = 1024;
                *&v77[6] = isDefaultPairedDevicePairedLocally;
                *v78 = 1024;
                *&v78[2] = isDefaultPairedDevicePairedRemotely;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "control channel failed to encrypt (%s) message [%@] error: %ld (magnet %u encrypting %u, pairedLocally %u pairedRemotely %u)", buf, 0x38u);
              }

              v51 = im_primary_queue();
              dispatch_async(v51, &stru_100BDC810);

              v52 = im_primary_queue();
              v61[0] = _NSConcreteStackBlock;
              v61[1] = 3221225472;
              v61[2] = sub_10044DA90;
              v61[3] = &unk_100BD6ED0;
              v61[4] = self;
              dispatch_async(v52, v61);

              goto LABEL_20;
            }

            v31 = +[IDSEncryptionController sharedInstance];
            deviceUniqueID = self->_deviceUniqueID;
            v62 = 0;
            v8 = [v31 legacyPublicKeyEncryptData:v4 withEncryptedAttributes:0 toDeviceID:deviceUniqueID priority:300 error:&v62];
            v33 = v62;

            v22 = sub_1005C2330(v33);
            v7 = "cloud paired PK";
          }

          if (!v22)
          {
            goto LABEL_15;
          }

LABEL_64:
          v39 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = self->_isDefaultPairedDevice;
            v41 = self->_isReadyForEncrypting;
            v42 = self->_isDefaultPairedDevicePairedLocally;
            v43 = self->_isDefaultPairedDevicePairedRemotely;
            *buf = 136316674;
            *&buf[4] = v7;
            *&buf[12] = 2112;
            *&buf[14] = v4;
            *&buf[22] = 2048;
            v75 = v22;
            LOWORD(v76) = 1024;
            *(&v76 + 2) = v40;
            HIWORD(v76) = 1024;
            *v77 = v41;
            *&v77[4] = 1024;
            *&v77[6] = v42;
            *v78 = 1024;
            *&v78[2] = v43;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "control channel failed to encrypt (%s) message [%@] error: %ld (magnet %u encrypting %u, pairedLocally %u pairedRemotely %u)", buf, 0x38u);
          }

          self->_sendingPriorityMessage = 0;
          v44 = im_primary_queue();
          dispatch_async(v44, &stru_100BDC830);

          v45 = im_primary_queue();
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10044DB6C;
          block[3] = &unk_100BD6ED0;
          block[4] = self;
          dispatch_async(v45, block);

          goto LABEL_20;
        }

        v13 = [(IDSUTunControlChannel *)self identityPair];
        v14 = v4;
        if (![v14 length])
        {
          v18 = 0;
          v20 = 0;
          v22 = 201;
LABEL_46:

          v8 = v18;
          v7 = "default paired PK";
          if (v20)
          {
            goto LABEL_15;
          }

          goto LABEL_64;
        }

        IMTimingStartTimingForKey();
        v15 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          *&buf[4] = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "   UTUNControlChannel Encrypting {identityPair: %{private}@}", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v53 = v13;
          _IDSLogV();
        }

        v16 = [v13 remotePublicIdentity];
        v17 = [v13 localFullIdentity];
        v69 = 0;
        v18 = [v16 signAndProtectData:v14 withSigner:v17 error:&v69];
        v19 = v69;

        v20 = v18 != 0;
        if (v18)
        {
          v21 = v18;
        }

        else
        {
          v29 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v19;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "   Public/Private encryption failed with error: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            v53 = v19;
            _IDSLogV();
          }

          if (v19 && [v19 code] == -25304)
          {
            v30 = OSLogHandleForIDSCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "   ********* Security reported invalid local item ref, this is bad - we're purging this, and please file this radar", buf, 2u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              _IDSWarnV();
              _IDSLogV();
              _IDSLogTransport();
            }

            IMLogBacktrace();
            v22 = 250;
            goto LABEL_32;
          }
        }

        v22 = 201;
LABEL_32:
        IMTimingStopTimingForKey();

        goto LABEL_46;
      }

      if (!self->_shouldUseServiceConnector)
      {
        v26 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          sd = self->_sd;
          sendSuspended = self->_sendSuspended;
          *buf = 67109376;
          *&buf[4] = sd;
          *&buf[8] = 1024;
          *&buf[10] = sendSuspended;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "control channel suspending {socket:%d} (%d) awaiting default paired encryption negotiation", buf, 0xEu);
        }

        if (!self->_sendSuspended)
        {
          self->_sendSuspended = 1;
          IDSTransportThreadSuspendSocket();
        }
      }
    }
  }
}

- (void)sendMessage:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v4 length];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "control channel: sendMessage length: %lu", &v8, 0xCu);
  }

  if (v4)
  {
    if (self->_shouldUseServiceConnector)
    {
      if (self->_connection && self->_connectionReady)
      {
        [(IDSUTunControlChannel *)self _sendMessageOnNWConnection:v4];
      }

      else
      {
        v7 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "control channel: waiting for connection, queuing up message to send", &v8, 2u);
        }

        [(NSMutableArray *)self->_outgoingMessages addObject:v4];
      }
    }

    else
    {
      v6 = [v4 copy];
      [(NSMutableArray *)self->_outgoingMessages addObject:v6];
      [(IDSUTunControlChannel *)self _checkSendNewMessage];
    }
  }
}

- (void)sendPriorityMessage:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v4 length];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "control channel: sendPriorityMessage length: %lu", &v8, 0xCu);
  }

  if (v4)
  {
    if (self->_shouldUseServiceConnector)
    {
      if (self->_connection && self->_connectionReady)
      {
        [(IDSUTunControlChannel *)self _sendMessageOnNWConnection:v4];
      }

      else
      {
        v7 = +[IDSFoundationLog utunController];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "control channel: waiting for connection, queuing up message to send", &v8, 2u);
        }

        [(NSMutableArray *)self->_outgoingMessages addObject:v4];
      }
    }

    else
    {
      v6 = [v4 copy];
      [(NSMutableArray *)self->_outgoingPriorityMessages addObject:v6];
      [(IDSUTunControlChannel *)self _checkSendNewMessage];
    }
  }
}

- (void)invalidate
{
  v3 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "control channel: invalidate", v5, 2u);
  }

  [(IDSUTunControlChannel *)self _destroyFairplayDeviceSession];
  [(IDSUTunControlChannel *)self _destroyFairplayHostSession];
  [(IDSUTunControlChannel *)self _cleanupConnection];
  receiveHandler = self->_receiveHandler;
  if (receiveHandler)
  {
    self->_receiveHandler = 0;
  }
}

- (void)dealloc
{
  [(IDSUTunControlChannel *)self _cleanupConnection];
  v3.receiver = self;
  v3.super_class = IDSUTunControlChannel;
  [(IDSUTunControlChannel *)&v3 dealloc];
}

- (id)_utunControlMessageFairplayHostSessionInfo:(unsigned __int8)a3 deviceType:(unsigned __int8)a4 protocolVersion:(unsigned int)a5
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  [(IDSUTunControlChannel *)self _destroyFairplayHostSession];
  sub_1001280D8(v16, &v15, &v14, &v13);
  if (v6)
  {
    v7 = v6;
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "GrappaHostInit failed with error %d.", buf, 8u);
    }

    if (v14)
    {
      sub_100094E10(v14);
    }

    [(IDSUTunControlChannel *)self _handleFairplayAuthenticationFailure];
    v9 = 0;
  }

  else
  {
    self->_grappaHostSessionID = v15;
    v10 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v18 = v15;
      v19 = 1024;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "GrappaHostInit succeeded with hostSessionID %08x, hostSessionInfoRequest (%uB)", buf, 0xEu);
    }

    v12 = 7;
    *buf = bswap32(v13);
    v9 = objc_alloc_init(NSMutableData);
    [v9 appendBytes:&v12 length:1];
    [v9 appendBytes:buf length:4];
    [v9 appendBytes:v14 length:v13];
    if (v14)
    {
      sub_100094E10(v14);
    }
  }

  return v9;
}

- (BOOL)processFairplayDeviceInfo:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    *v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got control message: FairplayDeviceInfo %@", &v18, 0xCu);
  }

  v6 = [v4 length];
  v7 = [v4 bytes];
  if (v6 == 7)
  {
    v8 = v7[1];
    v9 = v7[2];
    v10 = bswap32(*(v7 + 3));
    v11 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 67109632;
      *v19 = v8;
      *&v19[4] = 1024;
      *&v19[6] = v10;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "recv FairplayDeviceInfo:(version=%u, deviceType=%u, protocolVersion=%u)", &v18, 0x14u);
    }

    v12 = +[IDSDevicePolicyController sharedInstance];
    [v12 startFairplayAuthenticationForDeviceWithCbuuid:self->_cbuuid];

    v13 = [(IDSUTunControlChannel *)self _utunControlMessageFairplayHostSessionInfo:v8 deviceType:v10 protocolVersion:v9];
    v14 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 length];
      v18 = 134218242;
      *v19 = v15;
      *&v19[8] = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "send FairplayHostSessionInfo (%luB):%@", &v18, 0x16u);
    }

    [(IDSUTunControlChannel *)self sendMessage:v13];
  }

  else
  {
    v16 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      *v19 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "UTCMType_FairplayDeviceInfo has invalid data length (%lu)", &v18, 0xCu);
    }

    [(IDSUTunControlChannel *)self _handleFairplayAuthenticationFailure];
  }

  return v6 == 7;
}

- (BOOL)processFairplayDeviceSessionInfo:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412290;
    v24[0] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "got control message: FairplayDeviceSessionInfo %@", &v23, 0xCu);
  }

  v6 = [v4 length];
  v7 = [v4 bytes];
  if (v6 <= 4)
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134217984;
      v24[0] = v6;
      v9 = "UTCMType_FairplayHostInfo has invalid data length (%lu)";
      v10 = v8;
      v11 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v23, v11);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v12 = v7;
  v13 = bswap32(*(v7 + 1));
  if (v6 != (v13 + 5))
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 67109376;
      LODWORD(v24[0]) = v6;
      WORD2(v24[0]) = 1024;
      *(v24 + 6) = (v13 + 5);
      v9 = "invalid message size for UTCMType_FairplayDeviceSessionInfo (%u != %u)";
      v10 = v8;
      v11 = 14;
      goto LABEL_15;
    }

LABEL_16:

    [(IDSUTunControlChannel *)self _handleFairplayAuthenticationFailure];
    v17 = 0;
    goto LABEL_21;
  }

  v14 = [NSData dataWithBytes:v7 + 5 length:v13];
  v15 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109378;
    LODWORD(v24[0]) = v13;
    WORD2(v24[0]) = 2112;
    *(v24 + 6) = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "recv FairplayDeviceSessionInfo (%uB):%@", &v23, 0x12u);
  }

  sub_100124670(self->_grappaHostSessionID, (v12 + 5), v13);
  v17 = v16 == 0;
  if (v16)
  {
    v18 = v16;
    v19 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 67109120;
      LODWORD(v24[0]) = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "GrappaHostEstablishKey failed with error %d", &v23, 8u);
    }

    [(IDSUTunControlChannel *)self _handleFairplayAuthenticationFailure];
  }

  else
  {
    self->_fairplayAuthState = 2;
    v20 = +[IDSDevicePolicyController sharedInstance];
    [v20 endFairplayAuthenticationForDeviceWithCbuuid:self->_cbuuid];

    v21 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Grappa authentication is complete on host.", &v23, 2u);
    }
  }

LABEL_21:
  return v17;
}

- (void)_handleFairplayAuthenticationFailure
{
  v3 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handle Fairplay authentication failure...", v4, 2u);
  }

  [(IDSUTunControlChannel *)self _cancelConnectionAndResetDataConnections:1 shouldObliterate:1 encryptionFailure:0 shouldTriggerCorruptionRecovery:0];
}

- (void)_destroyFairplayHostSession
{
  if (self->_grappaHostSessionID)
  {
    v3 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      grappaHostSessionID = self->_grappaHostSessionID;
      v5[0] = 67109120;
      v5[1] = grappaHostSessionID;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_destroyFairplayHostSession %08x", v5, 8u);
    }

    sub_10004EE68(self->_grappaHostSessionID);
    self->_grappaHostSessionID = 0;
  }
}

- (void)sendOTRNegotiationMessage:(id)a3 negotiationCount:(unsigned int)a4 negotiationData:(id)a5
{
  v8 = a3;
  if (v8 && a5)
  {
    v9 = a5;
    v10 = _IDSLinkPacketBufferCreate();
    v10[655] = 266;
    v11 = [v8 UTF8String];
    if (v11)
    {
      v12 = v11;
      v13 = strlen(v11);
      v10[656] = bswap32(v13) >> 16;
      v14 = v13;
      if (v13)
      {
        memcpy(v10 + 657, v12, v13);
      }
    }

    else
    {
      v14 = 0;
      v10[656] = 0;
    }

    v15 = (v10 + v14);
    *(v10 + v14 + 1314) = bswap32(a4);
    v16 = [v9 length];
    v17 = v16;
    v15[659] = bswap32(v16) >> 16;
    v15 += 660;
    v18 = [v9 bytes];

    memcpy(v15, v18, v17);
    v19 = [NSData dataWithBytes:v10 + 655 length:v15 + v17 - (v10 + 655)];
    _IDSLinkPacketBufferRelease();
    v20 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134218498;
      v22 = [v19 length];
      v23 = 2112;
      v24 = v8;
      v25 = 1024;
      v26 = a4;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "send control message: OTRNegotiationData (%luB) for %@, count:%08x", &v21, 0x1Cu);
    }

    [(IDSUTunControlChannel *)self sendMessage:v19];
  }
}

- (BOOL)processOTRNegotiationMessage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_34;
  }

  v5 = [v3 bytes];
  v6 = [v4 length];
  v7 = v6;
  if (v6 <= 3u)
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 67109120;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "processOTRNegotiationMessage: totalLength: %u, less than 4", &v26, 8u);
    }

LABEL_5:

LABEL_34:
    v23 = 0;
    goto LABEL_35;
  }

  v9 = v5[1];
  if (v9 != 1)
  {
    v8 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 67109120;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "got control message: invalid OTR version number: %d.", &v26, 8u);
    }

    goto LABEL_5;
  }

  v10 = v5 + 2;
  v11 = __rev16(*(v5 + 1));
  v12 = v6 - 4;
  if (v11)
  {
    v13 = v12 >= v11;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v16 = [[NSString alloc] initWithBytes:v5 + 4 length:v11 encoding:4];
    if (!v16)
    {
      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "control message: OTRNegotiation cannot decode token", &v26, 2u);
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

      goto LABEL_34;
    }

    v14 = v16;
    v10 = &v5[v11 + 4];
    v15 = (v12 - v11);
  }

  else
  {
    v14 = 0;
    v15 = v6 - 2;
  }

  if (v15 <= 5)
  {
    v17 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 67109376;
      v27 = v6;
      v28 = 2048;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "processOTRNegotiationMessage: totalLength: %u, dataBytesLeft: %lu", &v26, 0x12u);
    }

LABEL_20:

    goto LABEL_34;
  }

  if (&v10[(bswap32(*(v10 + 2)) >> 16) + 6] > &v5[v6])
  {
    v17 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "control message: OTRNegotiation cannot decode negotiation data", &v26, 2u);
    }

    goto LABEL_20;
  }

  v18 = *v10;
  v19 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
  v20 = +[IDSFoundationLog utunController];
  v21 = bswap32(v18);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 67109634;
    v27 = v7;
    v28 = 2112;
    v29 = v14;
    v30 = 1024;
    v31 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "got control message: OTRNegotiationData (%uB) for %@, count:%08x", &v26, 0x18u);
  }

  v22 = +[IDSOTRController sharedInstance];
  [v22 processNegotiationData:v19 deviceUniqueID:IDSDeviceDefaultPairedDeviceUniqueID token:v14 negotiationCount:v21];

  v23 = 1;
LABEL_35:

  return v23;
}

- (void)sendSuspendOTRNegotiationMessage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = _IDSLinkPacketBufferCreate();
    v5[655] = 268;
    v6 = [v4 UTF8String];
    if (v6)
    {
      v7 = v6;
      v8 = strlen(v6);
      v5[656] = bswap32(v8) >> 16;
      v9 = v8;
      if (v8)
      {
        memcpy(v5 + 657, v7, v8);
      }
    }

    else
    {
      v9 = 0;
      v5[656] = 0;
    }

    v10 = [NSData dataWithBytes:v5 + 655 length:v9 + 4];
    _IDSLinkPacketBufferRelease();
    v11 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218242;
      v13 = [v10 length];
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "send control message: SuspendOTRNegotiationData (%luB) for %@", &v12, 0x16u);
    }

    [(IDSUTunControlChannel *)self sendMessage:v10];
  }
}

- (BOOL)processSuspendOTRNegotiationMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = [v4 bytes];
  v7 = [v5 length];
  v8 = v6[1];
  if (v8 != 1)
  {
    v14 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109120;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "got control message: SuspendOTRNegotiationData, invalid OTR version number: %d.", &v17, 8u);
    }

    goto LABEL_13;
  }

  v9 = v7;
  if ((v7 & 0xFFFE) != 2)
  {
    v10 = __rev16(*(v6 + 1));
    if (v10)
    {
      if (v7 - 4 >= v10)
      {
        v11 = [[NSString alloc] initWithBytes:v6 + 4 length:v10 encoding:4];
        if (v11)
        {
          goto LABEL_7;
        }

        v16 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "control message: OTRNegotiation cannot decode token", &v17, 2u);
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

LABEL_13:
        v13 = 0;
        goto LABEL_14;
      }
    }
  }

  v11 = 0;
LABEL_7:
  v12 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109378;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "got control message: SuspendOTRNegotiationData (%uB) for %@", &v17, 0x12u);
  }

  [(IDSUTunControlChannel *)self suspendOTRNegotiation:v11];
  v13 = 1;
LABEL_14:

  return v13;
}

- (void)suspendOTRNegotiation:(id)a3
{
  v3 = a3;
  v4 = +[IDSOTRController sharedInstance];
  [v4 suspendSessionNegotiation:v3 askedByPairedDevice:1];
}

- (void)resumeOTRNegotiation
{
  v2 = +[IDSOTRController sharedInstance];
  [v2 resumeSessionNegotiation];
}

@end