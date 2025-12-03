@interface PUPeer
- (PUPeer)init;
- (id)_convertRemotePasscodeStateToRemoteDeviceState:(id)state;
- (id)_convertToRemoteDeviceState:(id)state;
- (id)_createAndStoreNewPasscodeWithCurrentPasscode:(id)passcode;
- (id)_passcodeStringFromPasscodeData:(id)data;
- (id)_retrieveUnlockOnlyPasscode;
- (id)_sendProtobuf:(id)protobuf reliably:(BOOL)reliably expectsResponse:(BOOL)response responseIdentifier:(id)identifier error:(id *)error;
- (id)errorHandlerForRequest:(id)request;
- (id)responseHandlerForRequestMessageID:(id)d;
- (void)_logProtobuf:(id)protobuf;
- (void)_logResponse:(id)response;
- (void)completeEnableOnlyRemoteUnlockWithPasscode:(id)passcode completionHandler:(id)handler;
- (void)didCompleteRequest:(id)request;
- (void)didGetPasscodeState:(id)state;
- (void)didUnlock:(id)unlock;
- (void)disableOnlyRemoteUnlock:(id)unlock;
- (void)disableOnlyRemoteUnlockWithCompletionHandler:(id)handler;
- (void)enableOnlyRemoteUnlockWithPasscode:(id)passcode completionHandler:(id)handler;
- (void)enableWristDetectBeforeEnableOnlyRemoteUnlockWithPasscode:(id)passcode completionHandler:(id)handler;
- (void)getPasscodeState:(id)state;
- (void)notifyThisDeviceDidUnlock;
- (void)pairForUnlockWithPasscode:(id)passcode completionHandler:(id)handler;
- (void)queryRemoteDeviceState:(id)state;
- (void)removeErrorHandlerForRequest:(id)request;
- (void)removeLockout:(id)lockout;
- (void)removeResponseHandlerForRequestMessageID:(id)d;
- (void)requestRemoteDeviceDisableOnlyRemoteUnlock;
- (void)requestRemoteDeviceRemoteAction:(int64_t)action type:(int64_t)type completionHandler:(id)handler;
- (void)requestRemoteDeviceRemoveLockout:(id)lockout;
- (void)requestRemoteDeviceUnlockNotification;
- (void)resetDeviceWristDetectionSetting:(id)setting;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)setErrorHandler:(id)handler forRequest:(id)request;
- (void)setResponseHandler:(id)handler forRequestMessageID:(id)d;
- (void)setShouldNotifyNextUnlock:(id)unlock;
- (void)startRemoteAction:(id)action;
- (void)unpairForUnlockWithCompletionHandler:(id)handler;
@end

@implementation PUPeer

- (PUPeer)init
{
  v20.receiver = self;
  v20.super_class = PUPeer;
  v2 = [(PUPeer *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.pairedunlock.handlermanagement", 0);
    handlerManagementQueue = v2->_handlerManagementQueue;
    v2->_handlerManagementQueue = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    responseHandlers = v2->_responseHandlers;
    v2->_responseHandlers = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    errorHandlers = v2->_errorHandlers;
    v2->_errorHandlers = v7;

    v9 = dispatch_queue_create("com.apple.pairedunlock.ids", 0);
    idsQueue = v2->_idsQueue;
    v2->_idsQueue = v9;

    v11 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.pairedunlock"];
    service = v2->_service;
    v2->_service = v11;

    defaultPairedDevice = [(IDSService *)v2->_service defaultPairedDevice];
    productVersion = [defaultPairedDevice productVersion];
    v2->_pairedDeviceVersion = NRRawVersionFromString();
    v15 = pu_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [NSNumber numberWithUnsignedInt:v2->_pairedDeviceVersion];
      *buf = 138543618;
      v22 = productVersion;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "paired device version = %{public}@, %{public}@", buf, 0x16u);
    }

    [(IDSService *)v2->_service setProtobufAction:"didCompleteRequest:" forIncomingRequestsOfType:203];
    [(IDSService *)v2->_service setProtobufAction:"didCompleteRequest:" forIncomingResponsesOfType:203];
    [(IDSService *)v2->_service setProtobufAction:"getPasscodeState:" forIncomingRequestsOfType:201];
    [(IDSService *)v2->_service setProtobufAction:"didGetPasscodeState:" forIncomingRequestsOfType:202];
    [(IDSService *)v2->_service setProtobufAction:"didGetPasscodeState:" forIncomingResponsesOfType:202];
    [(IDSService *)v2->_service setProtobufAction:"didUnlock:" forIncomingRequestsOfType:200];
    [(IDSService *)v2->_service setProtobufAction:"startRemoteAction:" forIncomingRequestsOfType:100];
    [(IDSService *)v2->_service setProtobufAction:"disableOnlyRemoteUnlock:" forIncomingRequestsOfType:101];
    [(IDSService *)v2->_service setProtobufAction:"removeLockout:" forIncomingRequestsOfType:102];
    [(IDSService *)v2->_service setProtobufAction:"setShouldNotifyNextUnlock:" forIncomingRequestsOfType:1];
    [(IDSService *)v2->_service addDelegate:v2 queue:v2->_idsQueue];
    v17 = objc_alloc_init(PUKeyStore);
    keyStore = v2->_keyStore;
    v2->_keyStore = v17;

    v2->_unlockEnabled = 1;
  }

  return v2;
}

- (id)responseHandlerForRequestMessageID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100001F64;
  v16 = sub_100001F90;
  v17 = 0;
  handlerManagementQueue = self->_handlerManagementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001F98;
  block[3] = &unk_100018590;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(handlerManagementQueue, block);
  v7 = objc_retainBlock(v13[5]);

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setResponseHandler:(id)handler forRequestMessageID:(id)d
{
  handlerCopy = handler;
  dCopy = d;
  handlerManagementQueue = self->_handlerManagementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000020B0;
  block[3] = &unk_1000185B8;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_barrier_sync(handlerManagementQueue, block);
}

- (void)removeResponseHandlerForRequestMessageID:(id)d
{
  dCopy = d;
  handlerManagementQueue = self->_handlerManagementQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002158;
  v7[3] = &unk_1000185E0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_barrier_sync(handlerManagementQueue, v7);
}

- (id)errorHandlerForRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100001F64;
  v16 = sub_100001F90;
  v17 = 0;
  handlerManagementQueue = self->_handlerManagementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002274;
  block[3] = &unk_100018590;
  v10 = requestCopy;
  v11 = &v12;
  block[4] = self;
  v6 = requestCopy;
  dispatch_sync(handlerManagementQueue, block);
  v7 = objc_retainBlock(v13[5]);

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setErrorHandler:(id)handler forRequest:(id)request
{
  handlerCopy = handler;
  requestCopy = request;
  handlerManagementQueue = self->_handlerManagementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000238C;
  block[3] = &unk_100018608;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_barrier_sync(handlerManagementQueue, block);
}

- (void)removeErrorHandlerForRequest:(id)request
{
  requestCopy = request;
  handlerManagementQueue = self->_handlerManagementQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000247C;
  v7[3] = &unk_1000185E0;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_barrier_sync(handlerManagementQueue, v7);
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  v8 = pu_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = protobufCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Incoming unhandled protobuf: <%@>", &v9, 0xCu);
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  if (!success)
  {
    v12 = pu_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CF18();
    }

    v13 = [(PUPeer *)self errorHandlerForRequest:identifierCopy];
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13, errorCopy);
    }
  }

  [(PUPeer *)self removeErrorHandlerForRequest:identifierCopy];
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  changedCopy = changed;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [changedCopy countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(changedCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isDefaultPairedDevice])
        {
          v7 |= [v10 isConnected];
        }
      }

      v6 = [changedCopy countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v11 = pu_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (v7)
    {
      v12 = @"YES";
    }

    *buf = 138412546;
    v18 = v12;
    v19 = 2112;
    v20 = changedCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Connected devices changed, connected = %@, devices = %@", buf, 0x16u);
  }
}

- (id)_sendProtobuf:(id)protobuf reliably:(BOOL)reliably expectsResponse:(BOOL)response responseIdentifier:(id)identifier error:(id *)error
{
  responseCopy = response;
  protobufCopy = protobuf;
  identifierCopy = identifier;
  v14 = +[NSMutableDictionary dictionary];
  v15 = v14;
  if (identifierCopy)
  {
    [v14 setObject:identifierCopy forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
  }

  if (responseCopy)
  {
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
  }

  if (!reliably)
  {
    [v15 setObject:&off_100019188 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
  }

  service = self->_service;
  v17 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v25 = 0;
  v26 = 0;
  v18 = [(IDSService *)service sendProtobuf:protobufCopy toDestinations:v17 priority:300 options:v15 identifier:&v26 error:&v25];
  v19 = v26;
  v20 = v25;

  if (error)
  {
    v21 = v20;
    *error = v20;
  }

  v22 = pu_log();
  v23 = v22;
  if (v18)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = protobufCopy;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sent protobuf SUCCEEDED: <%@> with ID: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_10000CF9C();
  }

  return v19;
}

- (void)didCompleteRequest:(id)request
{
  requestCopy = request;
  v5 = [PUProtoRequestCompleted alloc];
  data = [requestCopy data];
  v7 = [(PUProtoRequestCompleted *)v5 initWithData:data];

  v8 = pu_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    context = [requestCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    v22 = 138412546;
    v23 = requestCopy;
    v24 = 2112;
    v25 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received protobuf: <%@> with identifier: %@", &v22, 0x16u);
  }

  errorData = [(PUProtoRequestCompleted *)v7 errorData];

  if (errorData)
  {
    v12 = [NSKeyedUnarchiver alloc];
    errorData2 = [(PUProtoRequestCompleted *)v7 errorData];
    v14 = [v12 initForReadingFromData:errorData2 error:0];

    errorData = [v14 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      errorData = 0;
    }
  }

  messageID = [(PUProtoRequestCompleted *)v7 messageID];
  if (messageID == 100)
  {
    v16 = [NSNumber numberWithUnsignedShort:messageID];
    v17 = [(PUPeer *)self responseHandlerForRequestMessageID:v16];

    v18 = pu_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v22 = 67109120;
        LODWORD(v23) = 100;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Calling response handler for message of type %i", &v22, 8u);
      }

      passcodeState = [(PUProtoRequestCompleted *)v7 passcodeState];
      v18 = [(PUPeer *)self _convertRemotePasscodeStateToRemoteDeviceState:passcodeState];

      (v17)[2](v17, v18, errorData);
    }

    else if (v19)
    {
      v22 = 67109120;
      LODWORD(v23) = 100;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Missing handler for message of type %i!", &v22, 8u);
    }
  }

  v21 = [NSNumber numberWithUnsignedShort:messageID];
  [(PUPeer *)self removeResponseHandlerForRequestMessageID:v21];
}

- (void)pairForUnlockWithPasscode:(id)passcode completionHandler:(id)handler
{
  passcodeCopy = passcode;
  handlerCopy = handler;
  if (+[PUPasscodeState isLocked])
  {
    v8 = pu_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000D048();
    }

    v9 = 2;
LABEL_12:

    v15 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:v9 userInfo:0];
    if (v15)
    {
      v16 = v15;
      [(PUPeer *)self _notifyPairResult:0 error:v15 handler:handlerCopy];
    }

    goto LABEL_14;
  }

  v10 = +[MCProfileConnection sharedConnection];
  v11 = [v10 unlockDeviceWithPasscode:passcodeCopy outError:0];

  v12 = pu_log();
  v8 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000D00C();
    }

    v9 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting unlock pair", buf, 2u);
  }

  v13 = +[SFUnlockManager sharedUnlockManager];
  v14 = IDSDefaultPairedDevice;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000032F0;
  v17[3] = &unk_100018630;
  v17[4] = self;
  v18 = handlerCopy;
  [v13 enableUnlockWithDevice:v14 fromKey:0 withPasscode:passcodeCopy completionHandler:v17];

LABEL_14:
}

- (void)requestRemoteDeviceRemoteAction:(int64_t)action type:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = objc_alloc_init(PUProtoStartRemoteAction);
  [(PUProtoStartRemoteAction *)v9 setActionID:action];
  [(PUProtoStartRemoteAction *)v9 setPasscodeType:type];
  data = [(PUProtoStartRemoteAction *)v9 data];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000340C;
  v13[3] = &unk_100018658;
  v14 = handlerCopy;
  v11 = handlerCopy;
  v12 = [(PUPeer *)self _sendRequest:100 data:data reliably:0 expectResponse:1 handler:v13 error:0];
}

- (void)requestRemoteDeviceUnlockNotification
{
  v5 = objc_alloc_init(PUProtoSetShouldNotifyNextUnlock);
  [(PUProtoSetShouldNotifyNextUnlock *)v5 setShouldNotify:1];
  data = [(PUProtoSetShouldNotifyNextUnlock *)v5 data];
  v4 = [(PUPeer *)self _sendRequest:1 data:data reliably:1 expectResponse:0 handler:&stru_100018698 error:0];
}

- (void)requestRemoteDeviceDisableOnlyRemoteUnlock
{
  v5 = objc_alloc_init(PUProtoRequestDisableOnlyRemoteUnlock);
  data = [(PUProtoRequestDisableOnlyRemoteUnlock *)v5 data];
  v4 = [(PUPeer *)self _sendRequest:101 data:data reliably:1 expectResponse:0 handler:&stru_1000186B8 error:0];
}

- (void)requestRemoteDeviceRemoveLockout:(id)lockout
{
  lockoutCopy = lockout;
  v4 = objc_alloc_init(PUProtoRemoveLockout);
  data = [(PUProtoRemoveLockout *)v4 data];
  v6 = [(PUPeer *)self _sendRequest:102 data:data reliably:1 expectResponse:1 handler:lockoutCopy error:0];
}

- (void)unpairForUnlockWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v3 = +[SFUnlockManager sharedUnlockManager];
  [v3 disableUnlockWithDevice:IDSDefaultPairedDevice];

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

- (void)queryRemoteDeviceState:(id)state
{
  stateCopy = state;
  v5 = [stateCopy copy];
  [(PUPeer *)self setResponseHandler:v5 forRequestMessageID:&off_1000191A0];

  v6 = objc_alloc_init(PUProtoGetPasscodeState);
  data = [(PUProtoGetPasscodeState *)v6 data];
  v14 = 0;
  v8 = [(PUPeer *)self _sendRequest:201 data:data reliably:0 expectResponse:1 handler:0 error:&v14];
  v9 = v14;

  if (v9)
  {
    [(PUPeer *)self removeResponseHandlerForRequestMessageID:&off_1000191A0];
    (*(stateCopy + 2))(stateCopy, 0, v9);
  }

  else
  {
    objc_initWeak(&location, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003A1C;
    v10[3] = &unk_1000186E0;
    objc_copyWeak(&v12, &location);
    v11 = &off_1000191A0;
    [(PUPeer *)self setErrorHandler:v10 forRequest:v8];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)resetDeviceWristDetectionSetting:(id)setting
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003E38;
  v11[3] = &unk_100018730;
  settingCopy = setting;
  v12 = settingCopy;
  v4 = objc_retainBlock(v11);
  v5 = +[PUPasscodeState wristDetectDisabledPreference];
  v6 = +[PUPasscodeState isWristDetectionDisabled];
  v7 = pu_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v5 == v6)
  {
    if (v8)
    {
      v10 = [NSNumber numberWithBool:v5];
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "wristDetectDisabled preference has not changed = %@", buf, 0xCu);
    }

    (v4[2])(v4, 0);
  }

  else
  {
    if (v8)
    {
      v9 = [NSNumber numberWithBool:v5];
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "wristDetectDisabled preference has changed to = %@", buf, 0xCu);
    }

    [PUPasscodeState setWristDetectionDisabled:v5 completion:v4];
  }
}

- (id)_createAndStoreNewPasscodeWithCurrentPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v5 = malloc_type_malloc(0x40uLL, 0x100004077774924uLL);
  if (SecRandomCopyBytes(0, 0x40uLL, v5))
  {
    v6 = pu_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000D084();
    }

    goto LABEL_17;
  }

  v6 = [NSData dataWithBytesNoCopy:v5 length:64];
  v7 = [(PUPeer *)self _passcodeStringFromPasscodeData:v6];
  v8 = pu_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 length]);
    v20 = 138412290;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Generated random passcode of length %@.", &v20, 0xCu);
  }

  v10 = +[MCProfileConnection sharedConnection];
  v11 = [v10 changePasscodeFrom:passcodeCopy to:v7 outError:0];

  v12 = pu_log();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000D0C0();
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Successfully changed to random passcode; storing", &v20, 2u);
  }

  v14 = [(PUKeyStore *)self->_keyStore storePasscodeBlob:v6 withLabel:@"passcode"];
  v15 = pu_log();
  v16 = v15;
  if (!v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10000D0FC();
    }

    v18 = +[MCProfileConnection sharedConnection];
    v19 = [v18 changePasscodeFrom:v7 to:passcodeCopy outError:0];

    if (v19)
    {
      goto LABEL_16;
    }

    v13 = pu_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10000D138();
    }

LABEL_15:

LABEL_16:
LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully stored random passcode", &v20, 2u);
  }

LABEL_18:

  return v7;
}

- (void)completeEnableOnlyRemoteUnlockWithPasscode:(id)passcode completionHandler:(id)handler
{
  passcodeCopy = passcode;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000043A8;
  v25[3] = &unk_100018798;
  v25[4] = self;
  handlerCopy = handler;
  v26 = handlerCopy;
  v8 = objc_retainBlock(v25);
  v9 = passcodeCopy;
  v10 = v9;
  if (v9 && [v9 length])
  {
    v11 = 0;
    v12 = v10;
  }

  else
  {
    v13 = pu_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "replacing empty passcode", buf, 2u);
    }

    v12 = [(PUPeer *)self _createAndStoreNewPasscodeWithCurrentPasscode:v10];

    if (!v12)
    {
      v16 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:0 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v16);
      goto LABEL_10;
    }

    v11 = 1;
  }

  v14 = +[SFUnlockManager sharedUnlockManager];
  v15 = IDSDefaultPairedDevice;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100004594;
  v17[3] = &unk_1000187E8;
  v23 = v11;
  v21 = v8;
  v18 = v10;
  v19 = v12;
  selfCopy = self;
  v22 = handlerCopy;
  v16 = v12;
  [v14 enableUnlockWithDevice:v15 fromKey:0 withPasscode:v16 completionHandler:v17];

LABEL_10:
}

- (void)enableWristDetectBeforeEnableOnlyRemoteUnlockWithPasscode:(id)passcode completionHandler:(id)handler
{
  passcodeCopy = passcode;
  handlerCopy = handler;
  if (+[PUPasscodeState isWristDetectionDisabled])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100004AA0;
    v10[3] = &unk_100018810;
    v12 = handlerCopy;
    v10[4] = self;
    v11 = passcodeCopy;
    [PUPasscodeState setWristDetectionDisabled:0 completion:v10];
  }

  else
  {
    v8 = pu_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "wrist detection already enabled", v9, 2u);
    }

    [(PUPeer *)self completeEnableOnlyRemoteUnlockWithPasscode:passcodeCopy completionHandler:handlerCopy];
  }
}

- (void)enableOnlyRemoteUnlockWithPasscode:(id)passcode completionHandler:(id)handler
{
  passcodeCopy = passcode;
  handlerCopy = handler;
  if (+[PUPasscodeState isLocked])
  {
    v7 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:2 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v7);
    goto LABEL_9;
  }

  v7 = +[MCProfileConnection sharedConnection];
  if ([v7 isPasscodeModificationAllowed])
  {
    if ([v7 unlockDeviceWithPasscode:passcodeCopy outError:0])
    {
      [(PUPeer *)self enableWristDetectBeforeEnableOnlyRemoteUnlockWithPasscode:passcodeCopy completionHandler:handlerCopy];
      goto LABEL_9;
    }

    v8 = 1;
  }

  else
  {
    v8 = 4;
  }

  v9 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:v8 userInfo:0];
  handlerCopy[2](handlerCopy, 0, v9);

LABEL_9:
}

- (id)_passcodeStringFromPasscodeData:(id)data
{
  v3 = [data base64EncodedStringWithOptions:0];
  v4 = [NSString stringWithFormat:@"c5l_%@", v3];

  return v4;
}

- (id)_retrieveUnlockOnlyPasscode
{
  v3 = [(PUKeyStore *)self->_keyStore getPasscodeBlobWithLabel:@"passcode"];
  if (v3)
  {
    v4 = [(PUPeer *)self _passcodeStringFromPasscodeData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)disableOnlyRemoteUnlockWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[PUPasscodeState isLocked])
  {
    v5 = 2;
LABEL_8:
    _retrieveUnlockOnlyPasscode = [NSError errorWithDomain:@"com.apple.paired-unlock" code:v5 userInfo:0];
    handlerCopy[2](handlerCopy, 0, _retrieveUnlockOnlyPasscode);
    goto LABEL_16;
  }

  v6 = +[MCProfileConnection sharedConnection];
  isPasscodeModificationAllowed = [v6 isPasscodeModificationAllowed];

  if (!isPasscodeModificationAllowed)
  {
    v5 = 4;
    goto LABEL_8;
  }

  _retrieveUnlockOnlyPasscode = [(PUPeer *)self _retrieveUnlockOnlyPasscode];
  if (_retrieveUnlockOnlyPasscode)
  {
    v9 = +[MCProfileConnection sharedConnection];
    v16 = 0;
    v10 = [v9 changePasscodeFrom:_retrieveUnlockOnlyPasscode to:&stru_100018D80 outError:&v16];
    v11 = v16;

    if (v10)
    {
      [(PUKeyStore *)self->_keyStore deletePasscodeBlobWithLabel:@"passcode"];
      v12 = +[SFUnlockManager sharedUnlockManager];
      [v12 disableUnlockWithDevice:IDSDefaultPairedDevice];

      [(PUPeer *)self _notifyCurrentStateReliably:1 completionHandler:&stru_100018830];
      v13 = 0;
    }

    else
    {
      v15 = pu_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10000D300();
      }

      v13 = v11;
    }
  }

  else
  {
    v14 = pu_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000D33C();
    }

    v13 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:0 userInfo:0];
    v11 = v13;
  }

  handlerCopy[2](handlerCopy, 0, v13);

LABEL_16:
}

- (void)notifyThisDeviceDidUnlock
{
  v5 = objc_alloc_init(PUProtoDidUnlock);
  data = [(PUProtoDidUnlock *)v5 data];
  v4 = [(PUPeer *)self _sendRequest:200 data:data reliably:0 expectResponse:0 handler:0 error:0];
}

- (void)_logProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    context = [protobufCopy context];
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    v7 = 138412546;
    v8 = protobufCopy;
    v9 = 2112;
    v10 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received protobuf: <%@> with identifier: %@", &v7, 0x16u);
  }
}

- (void)_logResponse:(id)response
{
  responseCopy = response;
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = responseCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending repsonse protobuf: <%@>", &v5, 0xCu);
  }
}

- (void)startRemoteAction:(id)action
{
  actionCopy = action;
  [(PUPeer *)self _logProtobuf:actionCopy];
  context = [actionCopy context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];

  if (+[PUPasscodeState isLocked])
  {
    v7 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:2 userInfo:0];
    [(PUPeer *)self _sendResultOfMessage:100 requestID:outgoingResponseIdentifier success:0 error:v7];

    goto LABEL_40;
  }

  v8 = [PUProtoStartRemoteAction alloc];
  data = [actionCopy data];
  v10 = [(PUProtoStartRemoteAction *)v8 initWithData:data];

  objc_initWeak(&location, self);
  actionID = [(PUProtoStartRemoteAction *)v10 actionID];
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 1;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100005AF8;
  v50[3] = &unk_100018880;
  v53 = &v55;
  v12 = v10;
  v51 = v12;
  objc_copyWeak(v54, &location);
  v52 = outgoingResponseIdentifier;
  v29 = actionID;
  v54[1] = actionID;
  v13 = objc_retainBlock(v50);
  v14 = v13;
  switch(actionID)
  {
    case 4u:
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100005EBC;
      v40[3] = &unk_1000188D0;
      v16 = v12;
      v41 = v16;
      selfCopy = self;
      v45 = 4;
      v43 = 0;
      v44 = v14;
      v17 = objc_retainBlock(v40);
      v18 = pu_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "unlock pairing requested %@", &buf, 0xCu);
      }

      if (!+[PUPasscodeState isWristDetectionDisabled](PUPasscodeState, "isWristDetectionDisabled") || !+[PUPasscodeState hasSEP])
      {
        v19 = pu_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "wrist detection enabled prior to unlock pairing or device without SEP", &buf, 2u);
        }
      }

      (v17[2])(v17, 0);
      *(v56 + 24) = 0;

      break;
    case 5u:
      if (+[PUPasscodeState hasSEP])
      {
        v15 = pu_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "on new hardware, not putting up passcode screen for disabling the wrist detect", &buf, 2u);
        }

        *(v56 + 24) = 0;
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100005E24;
        v46[3] = &unk_100018730;
        v47 = v14;
        [PUPasscodeState setWristDetectionDisabled:1 completion:v46];
      }

      else
      {
        *(v56 + 24) = 1;
      }

      break;
    case 6u:
      *(v56 + 24) = 0;
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_100005D8C;
      v48[3] = &unk_100018730;
      v49 = v13;
      [PUPasscodeState setWristDetectionDisabled:0 completion:v48];

      break;
  }

  if (*(v56 + 24) != 1 || !+[PUPasscodeState isUnlockOnly])
  {
    goto LABEL_34;
  }

  v20 = +[MCProfileConnection sharedConnection];
  isPasscodeModificationAllowed = [v20 isPasscodeModificationAllowed];

  if (!isPasscodeModificationAllowed)
  {
    v23 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:4 userInfo:0];
    (v14)[2](v14, 0, v23);
    goto LABEL_33;
  }

  if (actionID != 2)
  {
    if (actionID != 3)
    {
LABEL_34:
      _retrieveUnlockOnlyPasscode = 0;
      goto LABEL_35;
    }

    v22 = dispatch_semaphore_create(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v61 = 0x3032000000;
    v62 = sub_100006268;
    v63 = sub_100006278;
    v64 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_100006268;
    v38 = sub_100006278;
    v39 = 0;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100006280;
    v30[3] = &unk_1000188F8;
    p_buf = &buf;
    v33 = &v34;
    v23 = v22;
    v31 = v23;
    [(PUPeer *)self disableOnlyRemoteUnlockWithCompletionHandler:v30];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    if (*(*(&buf + 1) + 40))
    {
      v24 = pu_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10000D3E8(&buf + 8);
      }

      v25 = v35;
      v26 = *(*(&buf + 1) + 40);
    }

    else
    {
      v26 = 0;
      v25 = v35;
    }

    v14[2](v14, v25[5], v26);

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&buf, 8);

LABEL_33:
    goto LABEL_34;
  }

  _retrieveUnlockOnlyPasscode = [(PUPeer *)self _retrieveUnlockOnlyPasscode];
LABEL_35:
  if (*(v56 + 24) == 1)
  {
    v28 = pu_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "putting up passcode screen", &buf, 2u);
    }

    [(PUPeerDelegate *)self->_delegate peer:self remoteDeviceRequestsRemoteAction:v29 type:[(PUProtoStartRemoteAction *)v12 passcodeType] existingPasscode:_retrieveUnlockOnlyPasscode completionHandler:v14];
  }

  objc_destroyWeak(v54);
  _Block_object_dispose(&v55, 8);

  objc_destroyWeak(&location);
LABEL_40:
}

- (void)disableOnlyRemoteUnlock:(id)unlock
{
  [(PUPeer *)self _logProtobuf:unlock];
  v4 = +[PUPasscodeState isLocked];
  v5 = pu_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got request to disable only remote unlock; currently locked, so waiting until next unlock to do so", v7, 2u);
    }

    CFPreferencesSetAppValue(@"ShouldDisableOnlyRemoteUnlock", kCFBooleanTrue, @"com.apple.paired-unlock");
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got request to disable only remote unlock; currently unlocked, so starting that now", buf, 2u);
    }

    [(PUPeer *)self disableOnlyRemoteUnlockWithCompletionHandler:&stru_100018918];
  }
}

- (void)removeLockout:(id)lockout
{
  lockoutCopy = lockout;
  [(PUPeer *)self _logProtobuf:lockoutCopy];
  v5 = +[NSFileManager defaultManager];
  [v5 removeItemAtPath:@"/var/mobile/Library/Carousel/LockoutStateJournal.plist" error:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kPUDidRemoveLockoutNotification, 0, 0, 1u);
  context = [lockoutCopy context];

  outgoingResponseIdentifier = [context outgoingResponseIdentifier];
  [(PUPeer *)self _sendResultOfMessage:102 requestID:outgoingResponseIdentifier success:1 error:0];
}

- (void)didUnlock:(id)unlock
{
  [(PUPeer *)self _logProtobuf:unlock];
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_delegate;

    [(PUPeerDelegate *)v5 peerRemoteDeviceDidUnlock:self];
  }
}

- (void)setShouldNotifyNextUnlock:(id)unlock
{
  unlockCopy = unlock;
  [(PUPeer *)self _logProtobuf:unlockCopy];
  v5 = [PUProtoSetShouldNotifyNextUnlock alloc];
  data = [unlockCopy data];

  v7 = [(PUProtoSetShouldNotifyNextUnlock *)v5 initWithData:data];
  [(PUPeerDelegate *)self->_delegate peer:self wantsNotificationOfNextUnlock:[(PUProtoSetShouldNotifyNextUnlock *)v7 shouldNotify]];
}

- (id)_convertToRemoteDeviceState:(id)state
{
  stateCopy = state;
  v5 = [PUProtoPasscodeState alloc];
  data = [stateCopy data];

  v7 = [(PUProtoPasscodeState *)v5 initWithData:data];
  v8 = [(PUPeer *)self _convertRemotePasscodeStateToRemoteDeviceState:v7];

  return v8;
}

- (id)_convertRemotePasscodeStateToRemoteDeviceState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v5 = objc_alloc_init(PURemoteDeviceState);
    [v5 setVersion:self->_pairedDeviceVersion];
    [v5 setPasscodeSet:{objc_msgSend(stateCopy, "hasPasscode")}];
    [v5 setPasscodeLocked:{objc_msgSend(stateCopy, "isLocked")}];
    [v5 setUnlockOnly:{objc_msgSend(stateCopy, "isUnlockOnly")}];
    if ([stateCopy hasPolicy])
    {
      policy = [stateCopy policy];
      v7 = objc_alloc_init(PURemotePasscodePolicy);
      [v7 setModificationAllowed:{objc_msgSend(policy, "modificationAllowed")}];
      [v7 setPasscodeMinimumLength:{objc_msgSend(policy, "minimumLength")}];
      [v5 setPasscodePolicy:v7];
    }

    if ([stateCopy hasIsWristDetectionEnabled])
    {
      [v5 setWristDetectEnabled:{objc_msgSend(stateCopy, "isWristDetectionEnabled")}];
    }

    else
    {
      [v5 version];
      if (NRVersionIsGreaterThanOrEqual())
      {
        v8 = pu_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10000D598();
        }
      }

      else
      {
        v8 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.Carousel"];
        [v5 setWristDetectEnabled:{-[NSObject BOOLForKey:](v8, "BOOLForKey:", @"DisableWristDetection"}];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didGetPasscodeState:(id)state
{
  stateCopy = state;
  [(PUPeer *)self _logProtobuf:stateCopy];
  v4 = [(PUPeer *)self _convertToRemoteDeviceState:stateCopy];
  v5 = [(PUPeer *)self responseHandlerForRequestMessageID:&off_1000191A0];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v4, 0);
    [(PUPeer *)self removeResponseHandlerForRequestMessageID:&off_1000191A0];
  }

  context = [stateCopy context];
  incomingResponseIdentifier = [context incomingResponseIdentifier];

  if (!incomingResponseIdentifier)
  {
    [(PUPeerDelegate *)self->_delegate peer:self didNotifyRemoteState:v4 error:0];
  }

  isUnlockOnly = [v4 isUnlockOnly];
  v10 = &kCFBooleanTrue;
  if (!isUnlockOnly)
  {
    v10 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"IsUnlockOnly", *v10, @"com.apple.paired-unlock");
}

- (void)getPasscodeState:(id)state
{
  stateCopy = state;
  [(PUPeer *)self _logProtobuf:stateCopy];
  v8 = +[PUPasscodeState toProtobuf];
  +[PUConnection syncPasscodeState];
  [(PUPeer *)self _logResponse:v8];
  context = [stateCopy context];

  outgoingResponseIdentifier = [context outgoingResponseIdentifier];
  data = [v8 data];
  [(PUPeer *)self _sendResponse:202 toRequestID:outgoingResponseIdentifier data:data error:0];
}

@end