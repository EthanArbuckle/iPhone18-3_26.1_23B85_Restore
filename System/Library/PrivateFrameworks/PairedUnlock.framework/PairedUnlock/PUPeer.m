@interface PUPeer
- (PUPeer)init;
- (id)_convertRemotePasscodeStateToRemoteDeviceState:(id)a3;
- (id)_convertToRemoteDeviceState:(id)a3;
- (id)_createAndStoreNewPasscodeWithCurrentPasscode:(id)a3;
- (id)_passcodeStringFromPasscodeData:(id)a3;
- (id)_retrieveUnlockOnlyPasscode;
- (id)_sendProtobuf:(id)a3 reliably:(BOOL)a4 expectsResponse:(BOOL)a5 responseIdentifier:(id)a6 error:(id *)a7;
- (id)errorHandlerForRequest:(id)a3;
- (id)responseHandlerForRequestMessageID:(id)a3;
- (void)_logProtobuf:(id)a3;
- (void)_logResponse:(id)a3;
- (void)completeEnableOnlyRemoteUnlockWithPasscode:(id)a3 completionHandler:(id)a4;
- (void)didCompleteRequest:(id)a3;
- (void)didGetPasscodeState:(id)a3;
- (void)didUnlock:(id)a3;
- (void)disableOnlyRemoteUnlock:(id)a3;
- (void)disableOnlyRemoteUnlockWithCompletionHandler:(id)a3;
- (void)enableOnlyRemoteUnlockWithPasscode:(id)a3 completionHandler:(id)a4;
- (void)enableWristDetectBeforeEnableOnlyRemoteUnlockWithPasscode:(id)a3 completionHandler:(id)a4;
- (void)getPasscodeState:(id)a3;
- (void)notifyThisDeviceDidUnlock;
- (void)pairForUnlockWithPasscode:(id)a3 completionHandler:(id)a4;
- (void)queryRemoteDeviceState:(id)a3;
- (void)removeErrorHandlerForRequest:(id)a3;
- (void)removeLockout:(id)a3;
- (void)removeResponseHandlerForRequestMessageID:(id)a3;
- (void)requestRemoteDeviceDisableOnlyRemoteUnlock;
- (void)requestRemoteDeviceRemoteAction:(int64_t)a3 type:(int64_t)a4 completionHandler:(id)a5;
- (void)requestRemoteDeviceRemoveLockout:(id)a3;
- (void)requestRemoteDeviceUnlockNotification;
- (void)resetDeviceWristDetectionSetting:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)setErrorHandler:(id)a3 forRequest:(id)a4;
- (void)setResponseHandler:(id)a3 forRequestMessageID:(id)a4;
- (void)setShouldNotifyNextUnlock:(id)a3;
- (void)startRemoteAction:(id)a3;
- (void)unpairForUnlockWithCompletionHandler:(id)a3;
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

    v13 = [(IDSService *)v2->_service defaultPairedDevice];
    v14 = [v13 productVersion];
    v2->_pairedDeviceVersion = NRRawVersionFromString();
    v15 = pu_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [NSNumber numberWithUnsignedInt:v2->_pairedDeviceVersion];
      *buf = 138543618;
      v22 = v14;
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

- (id)responseHandlerForRequestMessageID:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(handlerManagementQueue, block);
  v7 = objc_retainBlock(v13[5]);

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setResponseHandler:(id)a3 forRequestMessageID:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerManagementQueue = self->_handlerManagementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000020B0;
  block[3] = &unk_1000185B8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_barrier_sync(handlerManagementQueue, block);
}

- (void)removeResponseHandlerForRequestMessageID:(id)a3
{
  v4 = a3;
  handlerManagementQueue = self->_handlerManagementQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002158;
  v7[3] = &unk_1000185E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(handlerManagementQueue, v7);
}

- (id)errorHandlerForRequest:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(handlerManagementQueue, block);
  v7 = objc_retainBlock(v13[5]);

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setErrorHandler:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  handlerManagementQueue = self->_handlerManagementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000238C;
  block[3] = &unk_100018608;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_barrier_sync(handlerManagementQueue, block);
}

- (void)removeErrorHandlerForRequest:(id)a3
{
  v4 = a3;
  handlerManagementQueue = self->_handlerManagementQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000247C;
  v7[3] = &unk_1000185E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_barrier_sync(handlerManagementQueue, v7);
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v7 = a5;
  v8 = pu_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Incoming unhandled protobuf: <%@>", &v9, 0xCu);
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  if (!a6)
  {
    v12 = pu_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000CF18();
    }

    v13 = [(PUPeer *)self errorHandlerForRequest:v10];
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13, v11);
    }
  }

  [(PUPeer *)self removeErrorHandlerForRequest:v10];
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v4 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isDefaultPairedDevice])
        {
          v7 |= [v10 isConnected];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v21 count:16];
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
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Connected devices changed, connected = %@, devices = %@", buf, 0x16u);
  }
}

- (id)_sendProtobuf:(id)a3 reliably:(BOOL)a4 expectsResponse:(BOOL)a5 responseIdentifier:(id)a6 error:(id *)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a6;
  v14 = +[NSMutableDictionary dictionary];
  v15 = v14;
  if (v13)
  {
    [v14 setObject:v13 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
  }

  if (v9)
  {
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
  }

  if (!a4)
  {
    [v15 setObject:&off_100019188 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
    [v15 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionLocalDeliveryKey];
  }

  service = self->_service;
  v17 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v25 = 0;
  v26 = 0;
  v18 = [(IDSService *)service sendProtobuf:v12 toDestinations:v17 priority:300 options:v15 identifier:&v26 error:&v25];
  v19 = v26;
  v20 = v25;

  if (a7)
  {
    v21 = v20;
    *a7 = v20;
  }

  v22 = pu_log();
  v23 = v22;
  if (v18)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v12;
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

- (void)didCompleteRequest:(id)a3
{
  v4 = a3;
  v5 = [PUProtoRequestCompleted alloc];
  v6 = [v4 data];
  v7 = [(PUProtoRequestCompleted *)v5 initWithData:v6];

  v8 = pu_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 context];
    v10 = [v9 outgoingResponseIdentifier];
    v22 = 138412546;
    v23 = v4;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received protobuf: <%@> with identifier: %@", &v22, 0x16u);
  }

  v11 = [(PUProtoRequestCompleted *)v7 errorData];

  if (v11)
  {
    v12 = [NSKeyedUnarchiver alloc];
    v13 = [(PUProtoRequestCompleted *)v7 errorData];
    v14 = [v12 initForReadingFromData:v13 error:0];

    v11 = [v14 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v11 = 0;
    }
  }

  v15 = [(PUProtoRequestCompleted *)v7 messageID];
  if (v15 == 100)
  {
    v16 = [NSNumber numberWithUnsignedShort:v15];
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

      v20 = [(PUProtoRequestCompleted *)v7 passcodeState];
      v18 = [(PUPeer *)self _convertRemotePasscodeStateToRemoteDeviceState:v20];

      (v17)[2](v17, v18, v11);
    }

    else if (v19)
    {
      v22 = 67109120;
      LODWORD(v23) = 100;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Missing handler for message of type %i!", &v22, 8u);
    }
  }

  v21 = [NSNumber numberWithUnsignedShort:v15];
  [(PUPeer *)self removeResponseHandlerForRequestMessageID:v21];
}

- (void)pairForUnlockWithPasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      [(PUPeer *)self _notifyPairResult:0 error:v15 handler:v7];
    }

    goto LABEL_14;
  }

  v10 = +[MCProfileConnection sharedConnection];
  v11 = [v10 unlockDeviceWithPasscode:v6 outError:0];

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
  v18 = v7;
  [v13 enableUnlockWithDevice:v14 fromKey:0 withPasscode:v6 completionHandler:v17];

LABEL_14:
}

- (void)requestRemoteDeviceRemoteAction:(int64_t)a3 type:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = objc_alloc_init(PUProtoStartRemoteAction);
  [(PUProtoStartRemoteAction *)v9 setActionID:a3];
  [(PUProtoStartRemoteAction *)v9 setPasscodeType:a4];
  v10 = [(PUProtoStartRemoteAction *)v9 data];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000340C;
  v13[3] = &unk_100018658;
  v14 = v8;
  v11 = v8;
  v12 = [(PUPeer *)self _sendRequest:100 data:v10 reliably:0 expectResponse:1 handler:v13 error:0];
}

- (void)requestRemoteDeviceUnlockNotification
{
  v5 = objc_alloc_init(PUProtoSetShouldNotifyNextUnlock);
  [(PUProtoSetShouldNotifyNextUnlock *)v5 setShouldNotify:1];
  v3 = [(PUProtoSetShouldNotifyNextUnlock *)v5 data];
  v4 = [(PUPeer *)self _sendRequest:1 data:v3 reliably:1 expectResponse:0 handler:&stru_100018698 error:0];
}

- (void)requestRemoteDeviceDisableOnlyRemoteUnlock
{
  v5 = objc_alloc_init(PUProtoRequestDisableOnlyRemoteUnlock);
  v3 = [(PUProtoRequestDisableOnlyRemoteUnlock *)v5 data];
  v4 = [(PUPeer *)self _sendRequest:101 data:v3 reliably:1 expectResponse:0 handler:&stru_1000186B8 error:0];
}

- (void)requestRemoteDeviceRemoveLockout:(id)a3
{
  v7 = a3;
  v4 = objc_alloc_init(PUProtoRemoveLockout);
  v5 = [(PUProtoRemoveLockout *)v4 data];
  v6 = [(PUPeer *)self _sendRequest:102 data:v5 reliably:1 expectResponse:1 handler:v7 error:0];
}

- (void)unpairForUnlockWithCompletionHandler:(id)a3
{
  v4 = a3;
  v3 = +[SFUnlockManager sharedUnlockManager];
  [v3 disableUnlockWithDevice:IDSDefaultPairedDevice];

  (*(v4 + 2))(v4, 0, 0);
}

- (void)queryRemoteDeviceState:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  [(PUPeer *)self setResponseHandler:v5 forRequestMessageID:&off_1000191A0];

  v6 = objc_alloc_init(PUProtoGetPasscodeState);
  v7 = [(PUProtoGetPasscodeState *)v6 data];
  v14 = 0;
  v8 = [(PUPeer *)self _sendRequest:201 data:v7 reliably:0 expectResponse:1 handler:0 error:&v14];
  v9 = v14;

  if (v9)
  {
    [(PUPeer *)self removeResponseHandlerForRequestMessageID:&off_1000191A0];
    (*(v4 + 2))(v4, 0, v9);
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

- (void)resetDeviceWristDetectionSetting:(id)a3
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003E38;
  v11[3] = &unk_100018730;
  v3 = a3;
  v12 = v3;
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

- (id)_createAndStoreNewPasscodeWithCurrentPasscode:(id)a3
{
  v4 = a3;
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
  v11 = [v10 changePasscodeFrom:v4 to:v7 outError:0];

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
    v19 = [v18 changePasscodeFrom:v7 to:v4 outError:0];

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

- (void)completeEnableOnlyRemoteUnlockWithPasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000043A8;
  v25[3] = &unk_100018798;
  v25[4] = self;
  v7 = a4;
  v26 = v7;
  v8 = objc_retainBlock(v25);
  v9 = v6;
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
      (*(v7 + 2))(v7, 0, v16);
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
  v20 = self;
  v22 = v7;
  v16 = v12;
  [v14 enableUnlockWithDevice:v15 fromKey:0 withPasscode:v16 completionHandler:v17];

LABEL_10:
}

- (void)enableWristDetectBeforeEnableOnlyRemoteUnlockWithPasscode:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[PUPasscodeState isWristDetectionDisabled])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100004AA0;
    v10[3] = &unk_100018810;
    v12 = v7;
    v10[4] = self;
    v11 = v6;
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

    [(PUPeer *)self completeEnableOnlyRemoteUnlockWithPasscode:v6 completionHandler:v7];
  }
}

- (void)enableOnlyRemoteUnlockWithPasscode:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (+[PUPasscodeState isLocked])
  {
    v7 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:2 userInfo:0];
    v6[2](v6, 0, v7);
    goto LABEL_9;
  }

  v7 = +[MCProfileConnection sharedConnection];
  if ([v7 isPasscodeModificationAllowed])
  {
    if ([v7 unlockDeviceWithPasscode:v10 outError:0])
    {
      [(PUPeer *)self enableWristDetectBeforeEnableOnlyRemoteUnlockWithPasscode:v10 completionHandler:v6];
      goto LABEL_9;
    }

    v8 = 1;
  }

  else
  {
    v8 = 4;
  }

  v9 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:v8 userInfo:0];
  v6[2](v6, 0, v9);

LABEL_9:
}

- (id)_passcodeStringFromPasscodeData:(id)a3
{
  v3 = [a3 base64EncodedStringWithOptions:0];
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

- (void)disableOnlyRemoteUnlockWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (+[PUPasscodeState isLocked])
  {
    v5 = 2;
LABEL_8:
    v8 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:v5 userInfo:0];
    v4[2](v4, 0, v8);
    goto LABEL_16;
  }

  v6 = +[MCProfileConnection sharedConnection];
  v7 = [v6 isPasscodeModificationAllowed];

  if (!v7)
  {
    v5 = 4;
    goto LABEL_8;
  }

  v8 = [(PUPeer *)self _retrieveUnlockOnlyPasscode];
  if (v8)
  {
    v9 = +[MCProfileConnection sharedConnection];
    v16 = 0;
    v10 = [v9 changePasscodeFrom:v8 to:&stru_100018D80 outError:&v16];
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

  v4[2](v4, 0, v13);

LABEL_16:
}

- (void)notifyThisDeviceDidUnlock
{
  v5 = objc_alloc_init(PUProtoDidUnlock);
  v3 = [(PUProtoDidUnlock *)v5 data];
  v4 = [(PUPeer *)self _sendRequest:200 data:v3 reliably:0 expectResponse:0 handler:0 error:0];
}

- (void)_logProtobuf:(id)a3
{
  v3 = a3;
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 context];
    v6 = [v5 outgoingResponseIdentifier];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received protobuf: <%@> with identifier: %@", &v7, 0x16u);
  }
}

- (void)_logResponse:(id)a3
{
  v3 = a3;
  v4 = pu_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Sending repsonse protobuf: <%@>", &v5, 0xCu);
  }
}

- (void)startRemoteAction:(id)a3
{
  v4 = a3;
  [(PUPeer *)self _logProtobuf:v4];
  v5 = [v4 context];
  v6 = [v5 outgoingResponseIdentifier];

  if (+[PUPasscodeState isLocked])
  {
    v7 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:2 userInfo:0];
    [(PUPeer *)self _sendResultOfMessage:100 requestID:v6 success:0 error:v7];

    goto LABEL_40;
  }

  v8 = [PUProtoStartRemoteAction alloc];
  v9 = [v4 data];
  v10 = [(PUProtoStartRemoteAction *)v8 initWithData:v9];

  objc_initWeak(&location, self);
  v11 = [(PUProtoStartRemoteAction *)v10 actionID];
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
  v52 = v6;
  v29 = v11;
  v54[1] = v11;
  v13 = objc_retainBlock(v50);
  v14 = v13;
  switch(v11)
  {
    case 4u:
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100005EBC;
      v40[3] = &unk_1000188D0;
      v16 = v12;
      v41 = v16;
      v42 = self;
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
  v21 = [v20 isPasscodeModificationAllowed];

  if (!v21)
  {
    v23 = [NSError errorWithDomain:@"com.apple.paired-unlock" code:4 userInfo:0];
    (v14)[2](v14, 0, v23);
    goto LABEL_33;
  }

  if (v11 != 2)
  {
    if (v11 != 3)
    {
LABEL_34:
      v27 = 0;
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

  v27 = [(PUPeer *)self _retrieveUnlockOnlyPasscode];
LABEL_35:
  if (*(v56 + 24) == 1)
  {
    v28 = pu_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "putting up passcode screen", &buf, 2u);
    }

    [(PUPeerDelegate *)self->_delegate peer:self remoteDeviceRequestsRemoteAction:v29 type:[(PUProtoStartRemoteAction *)v12 passcodeType] existingPasscode:v27 completionHandler:v14];
  }

  objc_destroyWeak(v54);
  _Block_object_dispose(&v55, 8);

  objc_destroyWeak(&location);
LABEL_40:
}

- (void)disableOnlyRemoteUnlock:(id)a3
{
  [(PUPeer *)self _logProtobuf:a3];
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

- (void)removeLockout:(id)a3
{
  v4 = a3;
  [(PUPeer *)self _logProtobuf:v4];
  v5 = +[NSFileManager defaultManager];
  [v5 removeItemAtPath:@"/var/mobile/Library/Carousel/LockoutStateJournal.plist" error:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kPUDidRemoveLockoutNotification, 0, 0, 1u);
  v8 = [v4 context];

  v7 = [v8 outgoingResponseIdentifier];
  [(PUPeer *)self _sendResultOfMessage:102 requestID:v7 success:1 error:0];
}

- (void)didUnlock:(id)a3
{
  [(PUPeer *)self _logProtobuf:a3];
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_delegate;

    [(PUPeerDelegate *)v5 peerRemoteDeviceDidUnlock:self];
  }
}

- (void)setShouldNotifyNextUnlock:(id)a3
{
  v4 = a3;
  [(PUPeer *)self _logProtobuf:v4];
  v5 = [PUProtoSetShouldNotifyNextUnlock alloc];
  v6 = [v4 data];

  v7 = [(PUProtoSetShouldNotifyNextUnlock *)v5 initWithData:v6];
  [(PUPeerDelegate *)self->_delegate peer:self wantsNotificationOfNextUnlock:[(PUProtoSetShouldNotifyNextUnlock *)v7 shouldNotify]];
}

- (id)_convertToRemoteDeviceState:(id)a3
{
  v4 = a3;
  v5 = [PUProtoPasscodeState alloc];
  v6 = [v4 data];

  v7 = [(PUProtoPasscodeState *)v5 initWithData:v6];
  v8 = [(PUPeer *)self _convertRemotePasscodeStateToRemoteDeviceState:v7];

  return v8;
}

- (id)_convertRemotePasscodeStateToRemoteDeviceState:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(PURemoteDeviceState);
    [v5 setVersion:self->_pairedDeviceVersion];
    [v5 setPasscodeSet:{objc_msgSend(v4, "hasPasscode")}];
    [v5 setPasscodeLocked:{objc_msgSend(v4, "isLocked")}];
    [v5 setUnlockOnly:{objc_msgSend(v4, "isUnlockOnly")}];
    if ([v4 hasPolicy])
    {
      v6 = [v4 policy];
      v7 = objc_alloc_init(PURemotePasscodePolicy);
      [v7 setModificationAllowed:{objc_msgSend(v6, "modificationAllowed")}];
      [v7 setPasscodeMinimumLength:{objc_msgSend(v6, "minimumLength")}];
      [v5 setPasscodePolicy:v7];
    }

    if ([v4 hasIsWristDetectionEnabled])
    {
      [v5 setWristDetectEnabled:{objc_msgSend(v4, "isWristDetectionEnabled")}];
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

- (void)didGetPasscodeState:(id)a3
{
  v11 = a3;
  [(PUPeer *)self _logProtobuf:v11];
  v4 = [(PUPeer *)self _convertToRemoteDeviceState:v11];
  v5 = [(PUPeer *)self responseHandlerForRequestMessageID:&off_1000191A0];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v4, 0);
    [(PUPeer *)self removeResponseHandlerForRequestMessageID:&off_1000191A0];
  }

  v7 = [v11 context];
  v8 = [v7 incomingResponseIdentifier];

  if (!v8)
  {
    [(PUPeerDelegate *)self->_delegate peer:self didNotifyRemoteState:v4 error:0];
  }

  v9 = [v4 isUnlockOnly];
  v10 = &kCFBooleanTrue;
  if (!v9)
  {
    v10 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"IsUnlockOnly", *v10, @"com.apple.paired-unlock");
}

- (void)getPasscodeState:(id)a3
{
  v4 = a3;
  [(PUPeer *)self _logProtobuf:v4];
  v8 = +[PUPasscodeState toProtobuf];
  +[PUConnection syncPasscodeState];
  [(PUPeer *)self _logResponse:v8];
  v5 = [v4 context];

  v6 = [v5 outgoingResponseIdentifier];
  v7 = [v8 data];
  [(PUPeer *)self _sendResponse:202 toRequestID:v6 data:v7 error:0];
}

@end