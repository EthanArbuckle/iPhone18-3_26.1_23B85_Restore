@interface IDSCredentialsDaemonIDSInterface
+ (id)sharedInstance;
- (BOOL)_sendIDSMessage:(id)a3 queueOneIdentifier:(id)a4;
- (BOOL)_sendIDSMessage:(id)a3 timeOut:(id)a4 queueOneIdentifier:(id)a5 forcedIdentifier:(id)a6 options:(id)a7 identifier:(id *)a8;
- (BOOL)_sendIDSPairingMessage:(id)a3 queueOneIdentifier:(id)a4;
- (BOOL)_sendIDSPairingMessage:(id)a3 timeOut:(id)a4 queueOneIdentifier:(id)a5 forcedIdentifier:(id)a6;
- (IDSCredentialsDaemonIDSInterface)init;
- (IDSCredentialsDaemonIDSInterface)initWithIDSService:(id)a3;
- (id)_credentialUniqueIDFromMessageIdentifier:(id)a3;
- (void)_addMessageInfo:(id)a3 description:(id)a4 completionBlock:(id)a5;
- (void)_handleFetchFaceTimeAndiMessageInfoMessage:(id)a3;
- (void)_handleFetchFaceTimeAndiMessageInfoMessageResponse:(id)a3;
- (void)_handleFetchRAMessage:(id)a3;
- (void)_handleFetchRAMessageResponse:(id)a3;
- (void)_handleIncomingAccountSyncMessage:(id)a3 fromID:(id)a4;
- (void)_handleIncomingAccountSyncMessageResponse:(id)a3;
- (void)_handleSendIDSIDLocalIDQuery:(id)a3;
- (void)_handleSendIDSIDLocalIDQueryResponse:(id)a3;
- (void)_handleSendIDSLocalDeviceInfoRequest:(id)a3;
- (void)_handleSendIDSLocalDeviceInfoResponse:(id)a3;
- (void)_mapMessageIdentifier:(id)a3 toCredentialUniqueID:(id)a4;
- (void)_removeMessageIdentifierMapping:(id)a3;
- (void)_removeMessageIdentifierMappingWithCredentialUniqueID:(id)a3;
- (void)_sendAccountSyncMessageToIDS:(id)a3 withCompletionBlock:(id)a4;
- (void)_sendFetchIMFTRequestToIDS:(id)a3 withCompletionBlock:(id)a4;
- (void)_sendFetchRARequestToIDS:(id)a3 withCompletionBlock:(id)a4;
- (void)_sendIDSLocalDeviceInfoRequestToIDS:(id)a3 withCompletionBlock:(id)a4;
- (void)_sendIDStatusQueryRequestToIDS:(id)a3 withCompletionBlock:(id)a4;
- (void)dealloc;
- (void)forwardIPCRequestToIDS:(id)a3 withCompletionBlock:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5;
@end

@implementation IDSCredentialsDaemonIDSInterface

+ (id)sharedInstance
{
  if (qword_1000154C8 != -1)
  {
    sub_1000081E0();
  }

  v3 = qword_1000154D0;

  return v3;
}

- (IDSCredentialsDaemonIDSInterface)init
{
  v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.idscredentials"];
  v4 = [(IDSCredentialsDaemonIDSInterface *)self initWithIDSService:v3];

  return v4;
}

- (IDSCredentialsDaemonIDSInterface)initWithIDSService:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = IDSCredentialsDaemonIDSInterface;
  v6 = [(IDSCredentialsDaemonIDSInterface *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsService, a3);
    [(IDSService *)v7->_idsService addDelegate:v7 queue:&_dispatch_main_q];
    v8 = objc_alloc_init(IMOrderedMutableDictionary);
    uniqueIDToInfo = v7->_uniqueIDToInfo;
    v7->_uniqueIDToInfo = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    credentialIDByMessageID = v7->_credentialIDByMessageID;
    v7->_credentialIDByMessageID = v10;

    v12 = objc_alloc_init(NSMutableArray);
    queuedMessages = v7->_queuedMessages;
    v7->_queuedMessages = v12;
  }

  return v7;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  v3.receiver = self;
  v3.super_class = IDSCredentialsDaemonIDSInterface;
  [(IDSCredentialsDaemonIDSInterface *)&v3 dealloc];
}

- (void)_sendFetchIMFTRequestToIDS:(id)a3 withCompletionBlock:(id)a4
{
  v5 = [a4 copy];
  v6 = +[NSString stringGUID];
  v7 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v7, IDSRemoteCredentialKeyCommand, &off_1000111E8);
  if (v6)
  {
    CFDictionarySetValue(v7, IDSRemoteCredentialKeyUniqueID, v6);
  }

  if ([v6 length])
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [(IDSCredentialsDaemonIDSInterface *)self _addMessageInfo:v6 description:@"IDSRemoteCredentialCommandFetchIMFT" completionBlock:v5];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001598;
  v11[3] = &unk_100010630;
  v9 = v5;
  v12 = v9;
  v10 = objc_retainBlock(v11);
  if (![(IDSCredentialsDaemonIDSInterface *)self _storeIDSMessageForLaterDeliveryIfNecessary:v7 completionBlock:v10 isPairing:0]&& ![(IDSCredentialsDaemonIDSInterface *)self _sendIDSMessage:v7]&& v5)
  {
    (*(v9 + 2))(v9, 9, 0, 0);
  }
}

- (void)_sendFetchRARequestToIDS:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v8 = IMGetXPCArrayFromDictionary();

  v9 = +[NSString stringGUID];
  v10 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v10, IDSRemoteCredentialKeyCommand, &off_100011200);
  if (v9)
  {
    CFDictionarySetValue(v10, IDSRemoteCredentialKeyUniqueID, v9);
  }

  if (v8)
  {
    CFDictionarySetValue(v10, IDSRemoteCredentialKeyServiceTypes, v8);
  }

  if ([v9 length] && v7)
  {
    [(IDSCredentialsDaemonIDSInterface *)self _addMessageInfo:v9 description:@"IDSRemoteCredentialCommandFetchRA" completionBlock:v7];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000178C;
  v13[3] = &unk_100010630;
  v11 = v7;
  v14 = v11;
  v12 = objc_retainBlock(v13);
  if (![(IDSCredentialsDaemonIDSInterface *)self _storeIDSMessageForLaterDeliveryIfNecessary:v10 completionBlock:v12 isPairing:0]&& ![(IDSCredentialsDaemonIDSInterface *)self _sendIDSMessage:v10 queueOneIdentifier:@"IDSRemoteCredentialCommandFetchRA"]&& v7)
  {
    (*(v11 + 2))(v11, 17, 0, 0);
  }
}

- (void)_sendIDSLocalDeviceInfoRequestToIDS:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v8 = +[NSString stringGUID];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "About to send device info request to IDS", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v10 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting remote device info", buf, 2u);
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v11, IDSRemoteCredentialKeyCommand, &off_100011218);
  if (v8)
  {
    CFDictionarySetValue(v11, IDSRemoteCredentialKeyUniqueID, v8);
  }

  if ([v8 length] && v7)
  {
    [(IDSCredentialsDaemonIDSInterface *)self _addMessageInfo:v8 description:@"IDSRemoteCredentialCommandRequestDeviceInfo" completionBlock:v7];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001A68;
  v15[3] = &unk_100010630;
  v12 = v7;
  v16 = v12;
  v13 = objc_retainBlock(v15);
  if (![(IDSCredentialsDaemonIDSInterface *)self _storeIDSMessageForLaterDeliveryIfNecessary:v11 queueOneIdentifier:@"IDSRemoteCredentialCommandRequestDeviceInfo" completionBlock:v13 isPairing:1]&& ![(IDSCredentialsDaemonIDSInterface *)self _sendIDSPairingMessage:v11 queueOneIdentifier:@"IDSRemoteCredentialCommandRequestDeviceInfo"]&& v7)
  {
    v14 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1000081F4(v14);
    }

    (*(v12 + 2))(v12, 12, 0, 0);
  }
}

- (void)_sendIDStatusQueryRequestToIDS:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSString stringGUID];
  v9 = IMGetXPCArrayFromDictionary();
  v10 = IMGetXPCStringFromDictionary();
  v11 = IMGetXPCBoolFromDictionary();
  v12 = IMGetXPCBoolFromDictionary();
  v13 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "About to ID Query request to IDS", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v14 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v14, IDSRemoteCredentialKeyCommand, &off_100011230);
  if (v8)
  {
    CFDictionarySetValue(v14, IDSRemoteCredentialKeyUniqueID, v8);
  }

  if (v9)
  {
    CFDictionarySetValue(v14, IDSRemoteCredentialKeyIDs, v9);
  }

  if (v10)
  {
    CFDictionarySetValue(v14, IDSRemoteCredentialKeyService, v10);
  }

  v15 = [NSNumber numberWithBool:v11];
  if (v15)
  {
    CFDictionarySetValue(v14, IDSRemoteCredentialKeyLightQuery, v15);
  }

  v16 = [NSNumber numberWithBool:v12];
  if (v16)
  {
    CFDictionarySetValue(v14, IDSRemoteCredentialKeyAllowQuery, v16);
  }

  if ([v8 length])
  {
    [(IDSCredentialsDaemonIDSInterface *)self _addMessageInfo:v8 description:@"IDSRemoteCredentialCommandRequestIDStatus" completionBlock:v7];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100001E24;
  v20[3] = &unk_100010630;
  v17 = v7;
  v21 = v17;
  v18 = objc_retainBlock(v20);
  if (![(IDSCredentialsDaemonIDSInterface *)self _storeIDSMessageForLaterDeliveryIfNecessary:v14 queueOneIdentifier:@"IDSRemoteCredentialCommandRequestDeviceInfo" completionBlock:v18 isPairing:0])
  {
    v19 = [(IDSCredentialsDaemonIDSInterface *)self _sendIDSMessage:v14 timeOut:&off_1000112D8 forcedIdentifier:v8];
    if (v17)
    {
      if ((v19 & 1) == 0)
      {
        (*(v17 + 2))(v17, 14, 0, 0);
      }
    }
  }
}

- (void)_sendAccountSyncMessageToIDS:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSString stringGUID];
  v9 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending account sync message to paired device", buf, 2u);
  }

  v10 = IMGetXPCCodableFromDictionaryWithStandardAllowlist();
  v11 = IMGetXPCStringFromDictionary();
  v12 = IMGetXPCBoolFromDictionary();

  v13 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v13, IDSRemoteCredentialKeyCommand, &off_100011248);
  if (v8)
  {
    CFDictionarySetValue(v13, IDSRemoteCredentialKeyUniqueID, v8);
  }

  if (v10)
  {
    CFDictionarySetValue(v13, IDSRemoteCredentialKeySyncPayload, v10);
  }

  if ([v8 length])
  {
    [(IDSCredentialsDaemonIDSInterface *)self _addMessageInfo:v8 description:@"IDSRemoteCredentialCommandAccountSyncMessage" completionBlock:v6];
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000021A4;
  v26[3] = &unk_100010630;
  v14 = v6;
  v27 = v14;
  v15 = objc_retainBlock(v26);
  v16 = @"IDSRemoteCredentialCommandRequestDeviceInfo";
  if (v11)
  {
    v16 = v11;
  }

  v17 = v16;
  if (![(IDSCredentialsDaemonIDSInterface *)self _storeIDSMessageForLaterDeliveryIfNecessary:v13 queueOneIdentifier:v17 completionBlock:v15 isPairing:0])
  {
    v24 = v10;
    if (v12)
    {
      v29 = IDSSendMessageOptionAllowCloudDeliveryKey;
      v30 = &__kCFBooleanTrue;
      v18 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    }

    else
    {
      v18 = &__NSDictionary0__struct;
    }

    v19 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    v25 = 0;
    v20 = self;
    v23 = v18;
    v21 = [(IDSCredentialsDaemonIDSInterface *)self _sendIDSMessage:v13 timeOut:v19 queueOneIdentifier:v11 forcedIdentifier:0 options:v18 identifier:&v25];
    v22 = v25;

    if (!v14 || (v21 & 1) != 0)
    {
      [(IDSCredentialsDaemonIDSInterface *)v20 _mapMessageIdentifier:v22 toCredentialUniqueID:v8];
    }

    else
    {
      (*(v14 + 2))(v14, 16, 0, 0);
    }

    v10 = v24;
  }
}

- (BOOL)_sendIDSMessage:(id)a3 queueOneIdentifier:(id)a4
{
  v6 = IDSMaxMessageTimeout;
  v7 = a4;
  v8 = a3;
  v9 = [NSNumber numberWithDouble:v6];
  LOBYTE(self) = [(IDSCredentialsDaemonIDSInterface *)self _sendIDSMessage:v8 timeOut:v9 queueOneIdentifier:v7 forcedIdentifier:0];

  return self;
}

- (BOOL)_sendIDSMessage:(id)a3 timeOut:(id)a4 queueOneIdentifier:(id)a5 forcedIdentifier:(id)a6 options:(id)a7 identifier:(id *)a8
{
  v13 = a3;
  value = a4;
  v14 = a5;
  v47 = a6;
  v46 = a7;
  [(IDSService *)self->_idsService linkedDevicesWithRelationship:3];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v15 = v52 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v16)
  {
    v17 = *v52;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v52 != v17)
      {
        objc_enumerationMutation(v15);
      }

      v19 = *(*(&v51 + 1) + 8 * v18);
      if ([v19 isActive])
      {
        v20 = [v19 uniqueIDOverride];
        v21 = [v20 length] == 0;

        if (!v21)
        {
          break;
        }
      }

      if (v16 == ++v18)
      {
        v16 = [v15 countByEnumeratingWithState:&v51 objects:v65 count:16];
        if (v16)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v22 = IDSCopyIDForDevice();

    if (!v22)
    {
      goto LABEL_34;
    }

    v23 = JWEncodeDictionary();
    v44 = [v23 _CUTCopyGzippedData];
    v24 = objc_alloc_init(NSMutableDictionary);
    v25 = v24;
    if (value)
    {
      CFDictionarySetValue(v24, IDSSendMessageOptionTimeoutKey, value);
    }

    v26 = IDSGetUUIDData();
    if (v26)
    {
      CFDictionarySetValue(v25, IDSSendMessageOptionUUIDKey, v26);
    }

    CFDictionarySetValue(v25, IDSSendMessageOptionEnforceRemoteTimeoutsKey, &__kCFBooleanFalse);
    if (v14)
    {
      CFDictionarySetValue(v25, IDSSendMessageOptionQueueOneIdentifierKey, v14);
    }

    [(__CFDictionary *)v25 addEntriesFromDictionary:v46];
    idsService = self->_idsService;
    v28 = [NSSet setWithObject:v22];
    v49 = 0;
    v50 = 0;
    v29 = [(IDSService *)idsService sendData:v44 toDestinations:v28 priority:300 options:v25 identifier:&v50 error:&v49];
    v30 = v50;
    v31 = v49;

    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = @"NO";
      *buf = 138413314;
      v56 = v30;
      if (v29)
      {
        v33 = @"YES";
      }

      v57 = 2112;
      v58 = v31;
      v59 = 2112;
      v60 = v25;
      v61 = 2112;
      v62 = v13;
      v63 = 2112;
      v64 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending message to local account (identifier %@)  (error %@)  (options %@)  (messageDict %@) success: %@", buf, 0x34u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v34 = @"NO";
      if (v29)
      {
        v34 = @"YES";
      }

      v42 = v13;
      v43 = v34;
      v40 = v31;
      v41 = v25;
      v39 = v30;
      _IDSLogV();
    }

    v35 = [IMRGLog NRPairing:v39];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = @"NO";
      *buf = 138413314;
      v56 = v30;
      if (v29)
      {
        v36 = @"YES";
      }

      v57 = 2112;
      v58 = v31;
      v59 = 2112;
      v60 = v25;
      v61 = 2112;
      v62 = v13;
      v63 = 2112;
      v64 = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Sending message to local account (identifier %@)  (error %@)  (options %@)  (messageDict %@) success: %@", buf, 0x34u);
    }

    if (a8)
    {
      v37 = v30;
      *a8 = v30;
    }
  }

  else
  {
LABEL_10:

LABEL_34:
    v22 = +[IMRGLog NRPairing];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Couldn't find active device to send message", buf, 2u);
    }

    LOBYTE(v29) = 0;
  }

  return v29;
}

- (BOOL)_sendIDSPairingMessage:(id)a3 queueOneIdentifier:(id)a4
{
  v6 = IDSMaxMessageTimeout;
  v7 = a4;
  v8 = a3;
  v9 = [NSNumber numberWithDouble:v6];
  LOBYTE(self) = [(IDSCredentialsDaemonIDSInterface *)self _sendIDSPairingMessage:v8 timeOut:v9 queueOneIdentifier:v7 forcedIdentifier:0];

  return self;
}

- (BOOL)_sendIDSPairingMessage:(id)a3 timeOut:(id)a4 queueOneIdentifier:(id)a5 forcedIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v33 = a6;
  v13 = JWEncodeDictionary();
  v14 = [v13 _CUTCopyGzippedData];
  v15 = objc_alloc_init(NSMutableDictionary);
  v16 = v15;
  if (v11)
  {
    CFDictionarySetValue(v15, IDSSendMessageOptionTimeoutKey, v11);
  }

  v17 = IDSGetUUIDData();
  if (v17)
  {
    CFDictionarySetValue(v16, IDSSendMessageOptionUUIDKey, v17);
  }

  CFDictionarySetValue(v16, IDSSendMessageOptionEnforceRemoteTimeoutsKey, &__kCFBooleanFalse);
  if (v12)
  {
    CFDictionarySetValue(v16, IDSSendMessageOptionQueueOneIdentifierKey, v12);
  }

  idsService = self->_idsService;
  v19 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v34 = 0;
  v35 = 0;
  v20 = [(IDSService *)idsService sendData:v14 toDestinations:v19 priority:300 options:v16 identifier:&v35 error:&v34];
  v21 = v35;
  v22 = v34;

  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = @"NO";
    *buf = 138413058;
    v37 = v21;
    if (v20)
    {
      v24 = @"YES";
    }

    v38 = 2112;
    v39 = v22;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending pairing message to local account (identifier %@)  (error %@)  (messageDict %@) success: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v25 = @"NO";
    if (v20)
    {
      v25 = @"YES";
    }

    v31 = v10;
    v32 = v25;
    v29 = v21;
    v30 = v22;
    _IDSLogV();
  }

  v26 = [IMRGLog watchPairing:v29];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = @"NO";
    *buf = 138413058;
    v37 = v21;
    if (v20)
    {
      v27 = @"YES";
    }

    v38 = 2112;
    v39 = v22;
    v40 = 2112;
    v41 = v10;
    v42 = 2112;
    v43 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sending pairing message to local account (identifier %@)  (error %@)  (messageDict %@) success: %@", buf, 0x2Au);
  }

  return v20;
}

- (void)forwardIPCRequestToIDS:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v8 = IMGetXPCIntFromDictionary();
  v9 = v8;
  if (v8 <= 12)
  {
    if (v8 == 9)
    {
      [(IDSCredentialsDaemonIDSInterface *)self _sendFetchIMFTRequestToIDS:v6 withCompletionBlock:v7];
      goto LABEL_17;
    }

    if (v8 == 11)
    {
      [(IDSCredentialsDaemonIDSInterface *)self _sendIDSLocalDeviceInfoRequestToIDS:v6 withCompletionBlock:v7];
      goto LABEL_17;
    }
  }

  else
  {
    switch(v8)
    {
      case 13:
        [(IDSCredentialsDaemonIDSInterface *)self _sendIDStatusQueryRequestToIDS:v6 withCompletionBlock:v7];
        goto LABEL_17;
      case 15:
        [(IDSCredentialsDaemonIDSInterface *)self _sendAccountSyncMessageToIDS:v6 withCompletionBlock:v7];
        goto LABEL_17;
      case 17:
        [(IDSCredentialsDaemonIDSInterface *)self _sendFetchRARequestToIDS:v6 withCompletionBlock:v7];
        goto LABEL_17;
    }
  }

  v10 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Could not forward command %d to IDS", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

LABEL_17:
}

- (void)_handleFetchFaceTimeAndiMessageInfoMessage:(id)a3
{
  v22 = a3;
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received fetch iMessage info message: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v20 = v22;
    _IDSLogV();
  }

  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v22;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching All Accounts that support AccountSync: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v20 = v22;
    _IDSLogV();
  }

  v5 = objc_opt_class();
  v6 = IDSRemoteCredentialKeyUniqueID;
  v7 = sub_100003420(v5, v22, IDSRemoteCredentialKeyUniqueID);
  v8 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v8, IDSRemoteCredentialKeyCommand, &off_100011260);
  if (v7)
  {
    CFDictionarySetValue(v8, v6, v7);
  }

  v9 = objc_alloc_init(NSMutableArray);
  v10 = [IDSAccountController alloc];
  v11 = [v10 initWithService:IDSServiceNameiMessage];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [v11 enabledAccounts];
  v13 = 0;
  v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = *v24;
    do
    {
      v16 = 0;
      v17 = v13;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v13 = [v11 accountWithUniqueID:{*(*(&v23 + 1) + 8 * v16), v20}];

        v18 = [v13 accountInfo];
        [v9 addObject:v18];

        v16 = v16 + 1;
        v17 = v13;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  if (v9)
  {
    CFDictionarySetValue(v8, IDSRemoteCredentialKeyiMessageAccountInfo, v9);
  }

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending iMessage account info %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v20 = v8;
    _IDSLogV();
  }

  if (![(IDSCredentialsDaemonIDSInterface *)self _storeIDSMessageForLaterDeliveryIfNecessary:v8 completionBlock:0 isPairing:0, v20])
  {
    [(IDSCredentialsDaemonIDSInterface *)self _sendIDSMessage:v8];
  }
}

- (void)_handleFetchFaceTimeAndiMessageInfoMessageResponse:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received fetch FaceTime and iMessage info response message: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = v4;
    _IDSLogV();
  }

  v6 = objc_opt_class();
  v7 = sub_100003420(v6, v4, IDSRemoteCredentialKeyUniqueID);
  if (![v7 length])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No unique ID in message, ignoring response...", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  v9 = [(IDSCredentialsDaemonIDSInterface *)self _blockForMessageIdentifier:v7, v11];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, 10, v4, 1);
    [(IDSCredentialsDaemonIDSInterface *)self _removeMessageInfo:v7];
    [(IDSCredentialsDaemonIDSInterface *)self _removeMessageIdentifierMappingWithCredentialUniqueID:v7];
  }
}

- (void)_handleFetchRAMessage:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received fetch Remote Accounts Message: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v15 = v4;
    _IDSLogV();
  }

  v6 = [v4 _arrayForKey:{@"serviceTypes", v15}];
  v7 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching All Accounts Passed In: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v16 = v6;
    _IDSLogV();
  }

  v8 = objc_opt_class();
  v9 = IDSRemoteCredentialKeyUniqueID;
  v10 = sub_100003420(v8, v4, IDSRemoteCredentialKeyUniqueID);
  v11 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v11, IDSRemoteCredentialKeyCommand, &off_100011278);
  if (v10)
  {
    CFDictionarySetValue(v11, v9, v10);
  }

  v12 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Local setup - received incoming RA Request message", buf, 2u);
  }

  v13 = +[IDSPairedDeviceManager sharedInstance];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100003A40;
  v17[3] = &unk_100010658;
  v18 = v11;
  v19 = self;
  v14 = v11;
  [v13 constructRAResponseDictionary:v6 completionHandler:v17];
}

- (void)_handleFetchRAMessageResponse:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received fetch remote account response message: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v11 = v4;
    _IDSLogV();
  }

  v6 = objc_opt_class();
  v7 = sub_100003420(v6, v4, IDSRemoteCredentialKeyUniqueID);
  if (![v7 length])
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No unique ID in message, ignoring response...", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  v9 = [(IDSCredentialsDaemonIDSInterface *)self _blockForMessageIdentifier:v7, v11];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, 18, v4, 1);
    [(IDSCredentialsDaemonIDSInterface *)self _removeMessageInfo:v7];
    [(IDSCredentialsDaemonIDSInterface *)self _removeMessageIdentifierMappingWithCredentialUniqueID:v7];
  }
}

- (void)_handleSendIDSLocalDeviceInfoRequest:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to provide my device info to remote device", buf, 2u);
  }

  v6 = +[IDSPairedDeviceManager sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003E80;
  v8[3] = &unk_100010658;
  v9 = v4;
  v10 = self;
  v7 = v4;
  [v6 getLocalDeviceInfoWithCompletionBlock:v8 queue:&_dispatch_main_q];
}

- (void)_handleSendIDSLocalDeviceInfoResponse:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog NRPairing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received remote device info: %@", buf, 0xCu);
  }

  v6 = IDSRemoteCredentialKeyEncryptionKey;
  v7 = [v4 objectForKey:IDSRemoteCredentialKeyEncryptionKey];
  objc_opt_class();
  v39 = self;
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 objectForKey:v6];
    v9 = [NSData _IDSDataFromBase64String:v8];
LABEL_7:
    v40 = v9;
    goto LABEL_9;
  }

  v8 = [v4 objectForKey:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v4 objectForKey:v6];
    goto LABEL_7;
  }

  v40 = 0;
LABEL_9:

  v10 = IDSRemoteCredentialKeyEncryptionClassAKey;
  v11 = [v4 objectForKey:IDSRemoteCredentialKeyEncryptionClassAKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v4 objectForKey:v10];
    v13 = [NSData _IDSDataFromBase64String:v12];
LABEL_13:
    v14 = v13;
    goto LABEL_15;
  }

  v12 = [v4 objectForKey:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v4 objectForKey:v10];
    goto LABEL_13;
  }

  v14 = 0;
LABEL_15:

  v15 = IDSRemoteCredentialKeyEncryptionClassCKey;
  v16 = [v4 objectForKey:IDSRemoteCredentialKeyEncryptionClassCKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v4 objectForKey:v15];
    v18 = [NSData _IDSDataFromBase64String:v17];
LABEL_19:
    v19 = v18;
    goto LABEL_21;
  }

  v17 = [v4 objectForKey:v15];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v4 objectForKey:v15];
    goto LABEL_19;
  }

  v19 = 0;
LABEL_21:

  v20 = objc_opt_class();
  v21 = sub_100003420(v20, v4, IDSRemoteCredentialKeyIdentifier);
  v22 = objc_opt_class();
  v23 = sub_100003420(v22, v4, IDSRemoteCredentialKeyPrivateDeviceData);
  v24 = objc_opt_class();
  v25 = sub_100003420(v24, v4, IDSRemoteCredentialKeyDeviceName);
  v26 = objc_opt_class();
  v27 = sub_100003420(v26, v4, IDSRemoteCredentialKeyHardwareVersion);
  v28 = [NSDictionary alloc];
  v29 = v19;
  v37 = v19;
  v38 = v14;
  v30 = v21;
  v31 = [v28 initWithObjectsAndKeys:{v21, IDSDevicePropertyIdentifier, v40, IDSDevicePropertyEncryptionKey, v14, IDSDevicePropertyEncryptionClassAKey, v37, IDSDevicePropertyEncryptionClassCKey, v23, IDSDevicePropertyPrivateDeviceData, v25, IDSDevicePropertyName, v27, IDSDevicePropertyHardwareVersion, 0}];
  v32 = +[IDSPairedDeviceManager sharedInstance];
  [v32 setPairedDeviceInfo:v31];

  v33 = objc_opt_class();
  v34 = sub_100003420(v33, v4, IDSRemoteCredentialKeyUniqueID);
  v35 = [(IDSCredentialsDaemonIDSInterface *)v39 _blockForMessageIdentifier:v34];
  v36 = v35;
  if (v35)
  {
    (*(v35 + 16))(v35, 12, v4, 1);
    [(IDSCredentialsDaemonIDSInterface *)v39 _removeMessageInfo:v34];
    [(IDSCredentialsDaemonIDSInterface *)v39 _removeMessageIdentifierMappingWithCredentialUniqueID:v34];
  }
}

- (void)_handleSendIDSIDLocalIDQuery:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received IDs V2 Query Request message: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = v4;
    _IDSLogV();
  }

  v6 = [v4 _arrayForKey:{IDSRemoteCredentialKeyIDs, v18}];
  v7 = IDSRemoteCredentialKeyService;
  v8 = [v4 _stringForKey:IDSRemoteCredentialKeyService];
  v9 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RUNNING REMOTE ID QUERY V2 WITH IDs: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v19 = v6;
    _IDSLogV();
  }

  v10 = +[IDSIDQueryController sharedInstance];
  v11 = [v10 _refreshIDStatusForDestinations:v6 service:v8 listenerID:@"__kIDSCredentialsProxyIDSQueryControllerListenerID"];

  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Remote ID Status V2 Query has completed with the following results: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v20 = v11;
    _IDSLogV();
  }

  v13 = objc_opt_class();
  v14 = IDSRemoteCredentialKeyUniqueID;
  v15 = sub_100003420(v13, v4, IDSRemoteCredentialKeyUniqueID);
  v16 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v16, IDSRemoteCredentialKeyCommand, &off_1000112A8);
  if (v15)
  {
    CFDictionarySetValue(v16, v14, v15);
  }

  if (v8)
  {
    CFDictionarySetValue(v16, v7, v8);
  }

  if (v11)
  {
    CFDictionarySetValue(v16, IDSRemoteCredentialKeyIdStatusUpdates, v11);
  }

  CFDictionarySetValue(v16, IDSRemoteCredentialKeySuccess, &__kCFBooleanTrue);
  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Remote IDs Query V2 - Sending results over IDS", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (![(IDSCredentialsDaemonIDSInterface *)self _storeIDSMessageForLaterDeliveryIfNecessary:v16 completionBlock:0 isPairing:0, v20])
  {
    [(IDSCredentialsDaemonIDSInterface *)self _sendIDSMessage:v16];
  }
}

- (void)_handleSendIDSIDLocalIDQueryResponse:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received ID Query response message V2 : %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v6 = objc_opt_class();
  v7 = sub_100003420(v6, v4, IDSRemoteCredentialKeyUniqueID);
  v8 = [(IDSCredentialsDaemonIDSInterface *)self _blockForMessageIdentifier:v7];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, 14, v4, 1);
    [(IDSCredentialsDaemonIDSInterface *)self _removeMessageInfo:v7];
    [(IDSCredentialsDaemonIDSInterface *)self _removeMessageIdentifierMappingWithCredentialUniqueID:v7];
  }
}

- (void)_handleIncomingAccountSyncMessage:(id)a3 fromID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSDictionary dictionaryWithDictionary:v6];
    v16 = 138412290;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received incoming account sync message %@", &v16, 0xCu);
  }

  v10 = objc_opt_class();
  v11 = sub_100003420(v10, v6, IDSRemoteCredentialKeySyncPayload);
  IDSIncomingAccountSyncMessage();

  v12 = objc_opt_class();
  v13 = IDSRemoteCredentialKeyUniqueID;
  v14 = sub_100003420(v12, v6, IDSRemoteCredentialKeyUniqueID);
  v15 = objc_alloc_init(NSMutableDictionary);
  CFDictionarySetValue(v15, IDSRemoteCredentialKeyCommand, &off_1000112C0);
  if (v14)
  {
    CFDictionarySetValue(v15, v13, v14);
  }

  CFDictionarySetValue(v15, IDSRemoteCredentialKeySuccess, &__kCFBooleanTrue);
  if (![(IDSCredentialsDaemonIDSInterface *)self _storeIDSMessageForLaterDeliveryIfNecessary:v15 completionBlock:0 isPairing:0])
  {
    [(IDSCredentialsDaemonIDSInterface *)self _sendIDSMessage:v15];
  }
}

- (void)_handleIncomingAccountSyncMessageResponse:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog accountSync];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSDictionary dictionaryWithDictionary:v4];
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received incoming account sync message response %@", &v11, 0xCu);
  }

  v7 = objc_opt_class();
  v8 = sub_100003420(v7, v4, IDSRemoteCredentialKeyUniqueID);
  v9 = [(IDSCredentialsDaemonIDSInterface *)self _blockForMessageIdentifier:v8];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, 16, v4, 1);
    [(IDSCredentialsDaemonIDSInterface *)self _removeMessageInfo:v8];
    [(IDSCredentialsDaemonIDSInterface *)self _removeMessageIdentifierMappingWithCredentialUniqueID:v8];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    v33 = 2112;
    v34 = v14;
    v35 = 2112;
    v36 = v15;
    v37 = 2112;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "incomingData on service %@, account %@ data %@ fromID %@ context %@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v27 = v15;
    v28 = v16;
    v25 = v13;
    v26 = v14;
    v24 = v12;
    _IDSLogV();
  }

  v18 = [v14 _CUTOptionallyDecompressData];
  v19 = JWDecodeDictionary();
  v20 = [v19 objectForKey:IDSRemoteCredentialKeyCommand];
  v21 = [v20 unsignedIntValue];

  if (v21 > 9)
  {
    if (v21 <= 13)
    {
      if (v21 > 11)
      {
        if (v21 == 12)
        {
          [(IDSCredentialsDaemonIDSInterface *)self _handleSendIDSLocalDeviceInfoResponse:v19];
        }

        else
        {
          [(IDSCredentialsDaemonIDSInterface *)self _handleSendIDSIDLocalIDQuery:v19];
        }
      }

      else if (v21 == 10)
      {
        [(IDSCredentialsDaemonIDSInterface *)self _handleFetchFaceTimeAndiMessageInfoMessageResponse:v19];
      }

      else
      {
        [(IDSCredentialsDaemonIDSInterface *)self _handleSendIDSLocalDeviceInfoRequest:v19];
      }

      goto LABEL_38;
    }

    if (v21 <= 15)
    {
      if (v21 == 14)
      {
        [(IDSCredentialsDaemonIDSInterface *)self _handleSendIDSIDLocalIDQueryResponse:v19];
      }

      else
      {
        [(IDSCredentialsDaemonIDSInterface *)self _handleIncomingAccountSyncMessage:v19 fromID:v15];
      }

      goto LABEL_38;
    }

    switch(v21)
    {
      case 16:
        [(IDSCredentialsDaemonIDSInterface *)self _handleIncomingAccountSyncMessageResponse:v19];
        goto LABEL_38;
      case 17:
        [(IDSCredentialsDaemonIDSInterface *)self _handleFetchRAMessage:v19];
        goto LABEL_38;
      case 18:
        [(IDSCredentialsDaemonIDSInterface *)self _handleFetchRAMessageResponse:v19];
        goto LABEL_38;
    }

    goto LABEL_33;
  }

  if ((v21 - 1) >= 8)
  {
    if (v21 == 9)
    {
      [(IDSCredentialsDaemonIDSInterface *)self _handleFetchFaceTimeAndiMessageInfoMessage:v19];
      goto LABEL_38;
    }

LABEL_33:
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v30) = v21;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Unknown incoming IDS message with command %d, ignoring...", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v22 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v30) = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Received deprecated IDSRemoteCredential command -- ignoring { command: %u }", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
LABEL_37:
    _IDSLogV();
  }

LABEL_38:
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    *buf = 138412802;
    v30 = v14;
    v31 = 2112;
    if (v8)
    {
      v17 = @"YES";
    }

    v32 = v17;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sent message with identifier %@ success %@ error %@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v18 = @"NO";
    if (v8)
    {
      v18 = @"YES";
    }

    v27 = v18;
    v28 = v15;
    v26 = v14;
    _IDSLogV();
  }

  v19 = [IMRGLog NRPairing:v26];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = [(IMOrderedMutableDictionary *)self->_uniqueIDToInfo orderedObjects];
    *buf = 138413058;
    v30 = v14;
    v31 = 2112;
    v32 = v20;
    v33 = 2112;
    v34 = v15;
    v35 = 2112;
    v36 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sent message with identifier %@ success %@ error %@. Messages still in the queue: %@", buf, 0x2Au);
  }

  if (!v8)
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to send IDS message", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v23 = [(IDSCredentialsDaemonIDSInterface *)self _credentialUniqueIDFromMessageIdentifier:v14];
    v24 = [(IDSCredentialsDaemonIDSInterface *)self _blockForMessageIdentifier:v23];
    if (v24)
    {
      v25 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Found original completion block for this message", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }

      v24[2](v24, 0, 0, 0);
      [(IDSCredentialsDaemonIDSInterface *)self _removeMessageInfo:v23];
    }

    [(IDSCredentialsDaemonIDSInterface *)self _removeMessageIdentifierMapping:v14];
  }
}

- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5
{
  queuedMessages = self->_queuedMessages;
  v6 = a5;
  [(NSMutableArray *)queuedMessages removeAllObjects];
  v6[2]();
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  if ([a4 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = self->_queuedMessages;
    v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v21 = *v23;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = objc_opt_class();
        v10 = sub_100003420(v9, v8, @"IDSQueuedMessageRequest");
        v11 = objc_opt_class();
        v12 = sub_100003420(v11, v8, @"IDSQueuedMessageTimeout");
        v13 = objc_opt_class();
        v14 = sub_100003420(v13, v8, @"IDSQueuedMessageQueueOneIdentifier");
        v15 = objc_opt_class();
        v16 = sub_100003420(v15, v8, @"IDSQueuedMessageForceIdentifier");
        v17 = [v8 objectForKey:@"IDSQueuedMessageCompletionBlock"];
        v18 = [v8 objectForKey:@"IDSQueuedMessageIsPairing"];
        v19 = [v18 BOOLValue];

        if (v19)
        {
          if ([(IDSCredentialsDaemonIDSInterface *)self _sendIDSPairingMessage:v10 timeOut:v12 queueOneIdentifier:v14 forcedIdentifier:v16])
          {
            goto LABEL_13;
          }
        }

        else if ([(IDSCredentialsDaemonIDSInterface *)self _sendIDSMessage:v10 timeOut:v12 queueOneIdentifier:v14 forcedIdentifier:v16])
        {
          goto LABEL_13;
        }

        if (v17)
        {
          v17[2](v17);
        }

LABEL_13:
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v6)
      {
LABEL_15:

        break;
      }
    }
  }

  [(NSMutableArray *)self->_queuedMessages removeAllObjects];
}

- (void)_addMessageInfo:(id)a3 description:(id)a4 completionBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v12 = objc_retainBlock(v9);

  if (v12)
  {
    CFDictionarySetValue(Mutable, @"block", v12);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008384();
  }

  v13 = v8;
  if (v13)
  {
    CFDictionarySetValue(Mutable, @"description", v13);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100008420();
  }

  [(IMOrderedMutableDictionary *)self->_uniqueIDToInfo setOrderedObject:Mutable forKey:v10];
}

- (void)_mapMessageIdentifier:(id)a3 toCredentialUniqueID:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [(NSMutableDictionary *)self->_credentialIDByMessageID setObject:a4 forKey:a3];
    }
  }
}

- (void)_removeMessageIdentifierMapping:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_credentialIDByMessageID removeObjectForKey:?];
  }
}

- (void)_removeMessageIdentifierMappingWithCredentialUniqueID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_credentialIDByMessageID;
    v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(NSMutableDictionary *)self->_credentialIDByMessageID objectForKeyedSubscript:v10, v14];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      v13 = v10;

      if (!v13)
      {
        goto LABEL_14;
      }

      [(IDSCredentialsDaemonIDSInterface *)self _removeMessageIdentifierMapping:v13];
      v5 = v13;
    }

LABEL_13:
  }

LABEL_14:
}

- (id)_credentialUniqueIDFromMessageIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_credentialIDByMessageID objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end