@interface IDSEncryptionController
+ (IDSEncryptionController)sharedInstance;
- (BOOL)markForStateResetWithOurURI:(id)a3 ourPushToken:(id)a4 theirURI:(id)a5 theirPushToken:(id)a6 service:(id)a7;
- (BOOL)publicKeyVerifySignedData:(id)a3 matchesData:(id)a4 forSignatureType:(int64_t)a5 endpoint:(id)a6 withKeyType:(unsigned int)a7 keyDiversifier:(id)a8 priority:(int64_t)a9 error:(id *)a10;
- (IDSEncryptionController)init;
- (IDSEncryptionController)initWithPeerIDManager:(id)a3 registrationKeyManager:(id)a4 OTRController:(id)a5 publicKeyStorage:(id)a6 accountController:(id)a7 serviceController:(id)a8 queueManager:(id)a9 failedTokenCache:(id)a10;
- (id)OTRDecryptData:(id)a3 OTRToken:(id)a4 priority:(int64_t)a5 error:(int64_t *)a6;
- (id)OTREncryptData:(id)a3 OTRToken:(id)a4 priority:(int64_t)a5 error:(int64_t *)a6;
- (id)legacyPublicKeyDecryptData:(id)a3 toDeviceID:(id)a4 priority:(int64_t)a5 error:(id *)a6;
- (id)legacyPublicKeyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 toDeviceID:(id)a5 priority:(int64_t)a6 error:(id *)a7;
- (id)legacyPublicKeyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 toEndpoint:(id)a5 priority:(int64_t)a6 error:(id *)a7;
- (id)offGridKeyDistributionEncryptData:(id)a3 encryptionContext:(id)a4 toEndpoint:(id)a5 priority:(int64_t)a6 error:(id *)a7;
- (id)publicKeyBatchSignDatas:(id)a3 withSignatureType:(int64_t)a4 keyType:(unsigned int)a5 keyDiversifier:(id)a6 service:(id)a7 priority:(int64_t)a8 error:(id *)a9;
- (id)publicKeyDecryptData:(id)a3 fromEndpoint:(id)a4 pkType:(int64_t)a5 priority:(int64_t)a6 error:(id *)a7;
- (id)publicKeyEncryptData:(id)a3 encryptionContext:(id)a4 forceSizeOptimizations:(BOOL)a5 resetState:(BOOL)a6 withEncryptedAttributes:(id)a7 toEndpoint:(id)a8 usedEncryptionType:(int64_t *)a9 priority:(int64_t)a10 metadata:(id *)a11 error:(id *)a12;
- (id)publicKeySignData:(id)a3 withSignatureType:(int64_t)a4 keyType:(unsigned int)a5 keyDiversifier:(id)a6 service:(id)a7 priority:(int64_t)a8 error:(id *)a9;
- (void)_decryptData:(id)a3 decryptionContext:(id)a4 encrypter:(id)a5 pkType:(int64_t)a6 isRetry:(BOOL)a7 priority:(int64_t)a8 replayKey:(id)a9 completion:(id)a10;
- (void)_decryptData:(id)a3 encrypter:(id)a4 pkType:(int64_t)a5 isRetry:(BOOL)a6 priority:(int64_t)a7 replayKey:(id)a8 completion:(id)a9;
- (void)_legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 encrypter:(id)a5 priority:(int64_t)a6 completion:(id)a7;
- (void)legacyPublicKeyDecryptData:(id)a3 fromURI:(id)a4 identity:(id)a5 toURI:(id)a6 pushToken:(id)a7 service:(id)a8 priority:(int64_t)a9 isRetry:(BOOL)a10 replayKey:(id)a11 completionBlock:(id)a12 avoidMainQueue:(BOOL)a13;
- (void)legacyPublicKeyDecryptData:(id)a3 toDeviceID:(id)a4 priority:(int64_t)a5 completionBlock:(id)a6;
- (void)legacyPublicKeyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 fromURI:(id)a5 identity:(id)a6 toURI:(id)a7 pushToken:(id)a8 service:(id)a9 priority:(int64_t)a10 completionBlock:(id)a11 avoidMainQueue:(BOOL)a12;
- (void)legacyPublicKeyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 toDeviceID:(id)a5 priority:(int64_t)a6 completionBlock:(id)a7;
- (void)logEncryptionErrorForToken:(id)a3 deviceID:(id)a4 forURI:(id)a5 fromURI:(id)a6 forService:(id)a7 messageData:(id)a8 type:(int64_t)a9;
- (void)logRemoteDecryptionErrorForToken:(id)a3 deviceID:(id)a4 forURI:(id)a5 fromURI:(id)a6 forService:(id)a7 messageData:(id)a8 type:(int64_t)a9;
- (void)performAsyncBlock:(id)a3 priority:(int64_t)a4;
- (void)performSyncBlock:(id)a3 priority:(int64_t)a4;
- (void)publicKeyDecryptData:(id)a3 decryptionContext:(id)a4 identity:(id)a5 service:(id)a6 priority:(int64_t)a7 isRetry:(BOOL)a8 replayKey:(id)a9 publicKeyType:(int64_t)a10 completionBlock:(id)a11 avoidMainQueue:(BOOL)a12;
- (void)publicKeyDecryptData:(id)a3 fromEndpoint:(id)a4 pkType:(int64_t)a5 priority:(int64_t)a6 replayKey:(id)a7 completionBlock:(id)a8;
- (void)publicKeyVerifySignedData:(id)a3 matchesData:(id)a4 forSignatureType:(int64_t)a5 identity:(id)a6 forURI:(id)a7 pushToken:(id)a8 service:(id)a9 localURI:(id)a10 priority:(int64_t)a11 completion:(id)a12 avoidMainQueue:(BOOL)a13;
- (void)publicKeyVerifySignedData:(id)a3 matchesData:(id)a4 forSignatureType:(int64_t)a5 identity:(id)a6 toURI:(id)a7 pushToken:(id)a8 service:(id)a9 localURI:(id)a10 withKeyType:(unsigned int)a11 keyDiversifier:(id)a12 priority:(int64_t)a13 completion:(id)a14 avoidMainQueue:(BOOL)a15;
- (void)publicKeyVerifySignedPayloads:(id)a3 forSignatureType:(int64_t)a4 identity:(id)a5 service:(id)a6 localURI:(id)a7 withKeyType:(unsigned int)a8 keyDiversifier:(id)a9 priority:(int64_t)a10 completion:(id)a11 avoidMainQueue:(BOOL)a12;
@end

@implementation IDSEncryptionController

+ (IDSEncryptionController)sharedInstance
{
  if (qword_100CBF110 != -1)
  {
    sub_10092BDC4();
  }

  v3 = qword_100CBF118;

  return v3;
}

- (IDSEncryptionController)init
{
  v3 = objc_alloc_init(IDSEncryptionQueueManager);
  v4 = [IDSRateLimiter alloc];
  v5 = [IDSServerBag sharedInstanceForBagType:0];
  v6 = [v5 objectForKey:@"neg-token-fail-limit"];

  if (v6)
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 6;
  }

  v8 = [IDSServerBag sharedInstanceForBagType:0];
  v9 = [v8 objectForKey:@"neg-token-time-limit"];

  if (v9)
  {
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    v11 = 300.0;
  }

  v12 = [v4 initWithLimit:v7 timeLimit:v11];
  v13 = +[IDSPeerIDManager sharedInstance];
  v14 = +[IDSRegistrationKeyManager sharedInstance];
  v15 = +[IDSOTRController sharedInstance];
  v16 = +[IDSPublicKeyStorage sharedInstance];
  v17 = +[IDSDAccountController sharedInstance];
  v18 = +[IDSDServiceController sharedInstance];
  v19 = [(IDSEncryptionController *)self initWithPeerIDManager:v13 registrationKeyManager:v14 OTRController:v15 publicKeyStorage:v16 accountController:v17 serviceController:v18 queueManager:v3 failedTokenCache:v12];

  return v19;
}

- (IDSEncryptionController)initWithPeerIDManager:(id)a3 registrationKeyManager:(id)a4 OTRController:(id)a5 publicKeyStorage:(id)a6 accountController:(id)a7 serviceController:(id)a8 queueManager:(id)a9 failedTokenCache:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = IDSEncryptionController;
  v19 = [(IDSEncryptionController *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_peerIDManager, a3);
    objc_storeStrong(&v20->_registrationKeyManager, a4);
    objc_storeStrong(&v20->_OTRController, a5);
    objc_storeStrong(&v20->_publicKeyStorage, a6);
    objc_storeStrong(&v20->_accountController, a7);
    objc_storeStrong(&v20->_serviceController, a8);
    objc_storeStrong(&v20->_queueManager, a9);
    objc_storeStrong(&v20->_failedTokenCache, a10);
  }

  return v20;
}

- (id)publicKeyEncryptData:(id)a3 encryptionContext:(id)a4 forceSizeOptimizations:(BOOL)a5 resetState:(BOOL)a6 withEncryptedAttributes:(id)a7 toEndpoint:(id)a8 usedEncryptionType:(int64_t *)a9 priority:(int64_t)a10 metadata:(id *)a11 error:(id *)a12
{
  v26 = a5;
  v27 = a6;
  v16 = a8;
  v17 = a7;
  v18 = a4;
  v19 = a3;
  v20 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v21 = [v20 encrypterWithEndpoint:v16];

  v28 = 0;
  v22 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:a10];
  v23 = [v21 encryptData:v19 encryptionContext:v18 forceSizeOptimizations:v26 resetState:v27 withEncryptedAttributes:v17 usedIdentifier:&v28 onQueue:v22 metadata:a11 error:a12];

  v24 = v28;
  if (a9)
  {
    *a9 = sub_1005C25FC(v24);
  }

  return v23;
}

- (id)legacyPublicKeyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 toEndpoint:(id)a5 priority:(int64_t)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:1];
  v16 = [v15 encrypterWithEndpoint:v12];

  v17 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:a6];
  v18 = [v16 legacyEncryptData:v14 withEncryptedAttributes:v13 onQueue:v17 error:a7];

  return v18;
}

- (id)offGridKeyDistributionEncryptData:(id)a3 encryptionContext:(id)a4 toEndpoint:(id)a5 priority:(int64_t)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:6];
  v16 = [v15 encrypterWithEndpoint:v12];

  v20 = 0;
  v17 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:a6];
  v18 = [v16 encryptData:v14 encryptionContext:v13 forceSizeOptimizations:0 resetState:0 withEncryptedAttributes:0 usedIdentifier:&v20 onQueue:v17 metadata:0 error:a7];

  return v18;
}

- (id)publicKeyDecryptData:(id)a3 fromEndpoint:(id)a4 pkType:(int64_t)a5 priority:(int64_t)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a3;
  v14 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v15 = [v14 encrypterWithEndpoint:v12];

  v16 = sub_1005C2E54(a5);
  v17 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:a6];
  v18 = [v15 decryptData:v13 usingIdentifier:v16 isRetry:0 onQueue:v17 error:a7];

  return v18;
}

- (void)publicKeyDecryptData:(id)a3 fromEndpoint:(id)a4 pkType:(int64_t)a5 priority:(int64_t)a6 replayKey:(id)a7 completionBlock:(id)a8
{
  v14 = a4;
  v15 = a8;
  v16 = a7;
  v17 = a3;
  v18 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v19 = [v18 encrypterWithEndpoint:v14];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005C2FF0;
  v22[3] = &unk_100BE1080;
  v23 = v14;
  v24 = v15;
  v20 = v14;
  v21 = v15;
  [(IDSEncryptionController *)self _decryptData:v17 encrypter:v19 pkType:a5 isRetry:0 priority:a6 replayKey:v16 completion:v22];
}

- (void)legacyPublicKeyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 fromURI:(id)a5 identity:(id)a6 toURI:(id)a7 pushToken:(id)a8 service:(id)a9 priority:(int64_t)a10 completionBlock:(id)a11 avoidMainQueue:(BOOL)a12
{
  v18 = a8;
  v29 = a11;
  v19 = a9;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [(IDSEncryptionController *)self _builderAvoidMainQueue:a12 forceEncryptionType:1];
  v26 = [v25 encrypterWithLocalURI:v22 remoteURI:v20 pushToken:v18 service:v19 cert:v21];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1005C3250;
  v30[3] = &unk_100BE10A8;
  v31 = v18;
  v32 = v29;
  v27 = v18;
  v28 = v29;
  [(IDSEncryptionController *)self _legacyEncryptData:v24 withEncryptedAttributes:v23 encrypter:v26 priority:a10 completion:v30];
}

- (void)legacyPublicKeyDecryptData:(id)a3 fromURI:(id)a4 identity:(id)a5 toURI:(id)a6 pushToken:(id)a7 service:(id)a8 priority:(int64_t)a9 isRetry:(BOOL)a10 replayKey:(id)a11 completionBlock:(id)a12 avoidMainQueue:(BOOL)a13
{
  v19 = a7;
  v29 = a12;
  v30 = a11;
  v20 = a8;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [(IDSEncryptionController *)self _builderAvoidMainQueue:a13 forceEncryptionType:-1];
  v26 = [v25 encrypterWithLocalURI:v21 remoteURI:v23 pushToken:v19 service:v20 cert:v22];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1005C341C;
  v31[3] = &unk_100BE1080;
  v32 = v19;
  v33 = v29;
  v27 = v19;
  v28 = v29;
  [(IDSEncryptionController *)self _decryptData:v24 encrypter:v26 pkType:0 isRetry:a10 priority:a9 replayKey:v30 completion:v31];
}

- (void)publicKeyDecryptData:(id)a3 decryptionContext:(id)a4 identity:(id)a5 service:(id)a6 priority:(int64_t)a7 isRetry:(BOOL)a8 replayKey:(id)a9 publicKeyType:(int64_t)a10 completionBlock:(id)a11 avoidMainQueue:(BOOL)a12
{
  v31 = a8;
  v16 = a4;
  v17 = a11;
  v30 = a9;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v29 = [(IDSEncryptionController *)self _builderAvoidMainQueue:a12 forceEncryptionType:-1];
  v21 = [v16 receivingURI];
  v22 = [v16 sendingURI];
  v23 = [v16 sendingPushToken];
  v24 = [v23 rawToken];
  v25 = [v29 encrypterWithLocalURI:v21 remoteURI:v22 pushToken:v24 service:v18 cert:v19];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1005C362C;
  v33[3] = &unk_100BE1080;
  v34 = v16;
  v35 = v17;
  v26 = v16;
  v27 = v17;
  [(IDSEncryptionController *)self _decryptData:v20 decryptionContext:v26 encrypter:v25 pkType:a10 isRetry:v31 priority:a7 replayKey:v30 completion:v33];
}

- (void)legacyPublicKeyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 toDeviceID:(id)a5 priority:(int64_t)a6 completionBlock:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:1];
  v17 = [v16 encrypterWithDeviceID:v13];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1005C3824;
  v19[3] = &unk_100BE10D0;
  v20 = v12;
  v18 = v12;
  [(IDSEncryptionController *)self _legacyEncryptData:v15 withEncryptedAttributes:v14 encrypter:v17 priority:a6 completion:v19];
}

- (id)legacyPublicKeyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 toDeviceID:(id)a5 priority:(int64_t)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:1];
  v16 = [v15 encrypterWithDeviceID:v12];

  v17 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:a6];
  v18 = [v16 legacyEncryptData:v14 withEncryptedAttributes:v13 onQueue:v17 error:a7];

  return v18;
}

- (void)legacyPublicKeyDecryptData:(id)a3 toDeviceID:(id)a4 priority:(int64_t)a5 completionBlock:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:1];
  v14 = [v13 encrypterWithDeviceID:v11];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1005C3A50;
  v16[3] = &unk_100BE10F8;
  v17 = v10;
  v15 = v10;
  [(IDSEncryptionController *)self _decryptData:v12 encrypter:v14 pkType:0 isRetry:0 priority:a5 replayKey:0 completion:v16];
}

- (id)legacyPublicKeyDecryptData:(id)a3 toDeviceID:(id)a4 priority:(int64_t)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:1];
  v13 = [v12 encrypterWithDeviceID:v10];

  v14 = IDSMPLegacyIdentityIdentifier;
  v15 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:a5];
  v16 = [v13 decryptData:v11 usingIdentifier:v14 isRetry:0 onQueue:v15 error:a6];

  return v16;
}

- (id)publicKeySignData:(id)a3 withSignatureType:(int64_t)a4 keyType:(unsigned int)a5 keyDiversifier:(id)a6 service:(id)a7 priority:(int64_t)a8 error:(id *)a9
{
  v11 = *&a5;
  v15 = a7;
  v16 = a6;
  v17 = a3;
  v18 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v19 = [v18 signerWithKeyType:v11 keyDiversifier:v16 service:v15];

  v20 = [(IDSEncryptionController *)self queueManager];
  v21 = [v20 syncQueueForPriority:a8];
  v22 = [v19 signData:v17 withType:a4 onQueue:v21 error:a9];

  return v22;
}

- (id)publicKeyBatchSignDatas:(id)a3 withSignatureType:(int64_t)a4 keyType:(unsigned int)a5 keyDiversifier:(id)a6 service:(id)a7 priority:(int64_t)a8 error:(id *)a9
{
  v11 = *&a5;
  v15 = a7;
  v16 = a6;
  v17 = a3;
  v18 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v19 = [v18 signerWithKeyType:v11 keyDiversifier:v16 service:v15];

  v20 = [(IDSEncryptionController *)self queueManager];
  v21 = [v20 syncQueueForPriority:a8];
  v22 = [v19 batchSignDatas:v17 withType:a4 onQueue:v21 error:a9];

  return v22;
}

- (void)publicKeyVerifySignedData:(id)a3 matchesData:(id)a4 forSignatureType:(int64_t)a5 identity:(id)a6 forURI:(id)a7 pushToken:(id)a8 service:(id)a9 localURI:(id)a10 priority:(int64_t)a11 completion:(id)a12 avoidMainQueue:(BOOL)a13
{
  LOBYTE(v14) = a13;
  LODWORD(v13) = 0;
  [(IDSEncryptionController *)self publicKeyVerifySignedData:a3 matchesData:a4 forSignatureType:a5 identity:a6 toURI:a7 pushToken:a8 service:a9 localURI:a10 withKeyType:v13 keyDiversifier:0 priority:a11 completion:a12 avoidMainQueue:v14];
}

- (void)publicKeyVerifySignedData:(id)a3 matchesData:(id)a4 forSignatureType:(int64_t)a5 identity:(id)a6 toURI:(id)a7 pushToken:(id)a8 service:(id)a9 localURI:(id)a10 withKeyType:(unsigned int)a11 keyDiversifier:(id)a12 priority:(int64_t)a13 completion:(id)a14 avoidMainQueue:(BOOL)a15
{
  v33 = a14;
  v21 = a12;
  v22 = a10;
  v23 = a9;
  v24 = a8;
  v25 = a7;
  v26 = a6;
  v27 = a4;
  v28 = a3;
  v32 = [(IDSEncryptionController *)self _builderAvoidMainQueue:a15 forceEncryptionType:-1];
  v29 = [v32 verifierWithLocalURI:v22 remoteURI:v25 pushToken:v24 service:v23 cert:v26 keyType:a11 keyDiversifier:v21];

  v30 = [(IDSEncryptionController *)self queueManager];
  v31 = [v30 asyncQueueForPriority:a13];
  [v29 verifySignedData:v28 matchesData:v27 forType:a5 onQueue:v31 withCompletion:v33];
}

- (void)publicKeyVerifySignedPayloads:(id)a3 forSignatureType:(int64_t)a4 identity:(id)a5 service:(id)a6 localURI:(id)a7 withKeyType:(unsigned int)a8 keyDiversifier:(id)a9 priority:(int64_t)a10 completion:(id)a11 avoidMainQueue:(BOOL)a12
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  if (a12)
  {
    v22 = a11;
    v23 = +[IDSFoundationLog encryptionController];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Attempting to avoid main queue on batch verification - failing because it requires using the main queue", buf, 2u);
    }

    v24 = [NSError errorWithDomain:IDSSigningErrorDomain code:1 userInfo:0];
    v22[2](v22, 0, v24);
  }

  else
  {
    v36 = a11;
    v25 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
    v37 = v21;
    v26 = v18;
    v27 = [IDSBatchVerifier alloc];
    [(IDSEncryptionController *)self peerIDManager];
    v35 = a4;
    v29 = v28 = v19;
    failedTokenCache = self->_failedTokenCache;
    v31 = +[IDSPublicIdentityCache sharedInstance];
    v32 = [(IDSBatchVerifier *)v27 initWithPeerIDManager:v29 rateLimiter:failedTokenCache localURI:v20 service:v28 cert:v26 keyType:a8 keyDiversifier:v37 publicIdentityCache:v31 builder:v25];

    v33 = [(IDSEncryptionController *)self queueManager];
    v34 = [v33 asyncQueueForPriority:a10];
    [(IDSBatchVerifier *)v32 verifyPayloadsFromContexts:v17 forType:v35 onQueue:v34 withCompletion:v36];

    v19 = v28;
    v18 = v26;
    v21 = v37;
  }
}

- (BOOL)publicKeyVerifySignedData:(id)a3 matchesData:(id)a4 forSignatureType:(int64_t)a5 endpoint:(id)a6 withKeyType:(unsigned int)a7 keyDiversifier:(id)a8 priority:(int64_t)a9 error:(id *)a10
{
  v10 = *&a7;
  v16 = a8;
  v17 = a6;
  v18 = a4;
  v19 = a3;
  v20 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v21 = [v20 verifierWithEndpoint:v17 keyType:v10 keyDiversifier:v16];

  v22 = [(IDSEncryptionController *)self queueManager];
  v23 = [v22 syncQueueForPriority:a9];
  LOBYTE(a5) = [v21 verifySignedData:v19 matchesData:v18 forType:a5 onQueue:v23 error:a10];

  return a5;
}

- (id)OTREncryptData:(id)a3 OTRToken:(id)a4 priority:(int64_t)a5 error:(int64_t *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v13 = [v12 encrypterWithOTRToken:v10];

  v14 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:a5];
  v15 = [v13 encryptData:v11 onQueue:v14 error:a6];

  return v15;
}

- (id)OTRDecryptData:(id)a3 OTRToken:(id)a4 priority:(int64_t)a5 error:(int64_t *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v13 = [v12 encrypterWithOTRToken:v10];

  v14 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:a5];
  v15 = [v13 decryptData:v11 onQueue:v14 error:a6];

  return v15;
}

- (BOOL)markForStateResetWithOurURI:(id)a3 ourPushToken:(id)a4 theirURI:(id)a5 theirPushToken:(id)a6 service:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1005C4680;
  v23[3] = &unk_100BE1120;
  v23[4] = self;
  v17 = v15;
  v24 = v17;
  v18 = v14;
  v25 = v18;
  v19 = v16;
  v26 = v19;
  v20 = v12;
  v27 = v20;
  v21 = v13;
  v28 = v21;
  v29 = &v30;
  [(IDSEncryptionController *)self performSyncBlock:v23 priority:300];
  LOBYTE(self) = *(v31 + 24);

  _Block_object_dispose(&v30, 8);
  return self;
}

- (void)_legacyEncryptData:(id)a3 withEncryptedAttributes:(id)a4 encrypter:(id)a5 priority:(int64_t)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a7;
  queueManager = self->_queueManager;
  v15 = a4;
  v16 = a3;
  v17 = [(IDSEncryptionQueueManager *)queueManager asyncQueueForPriority:a6];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1005C49E0;
  v20[3] = &unk_100BE10A8;
  v21 = v12;
  v22 = v13;
  v18 = v12;
  v19 = v13;
  [v18 legacyEncryptData:v16 withEncryptedAttributes:v15 onQueue:v17 withCompletion:v20];
}

- (void)_decryptData:(id)a3 encrypter:(id)a4 pkType:(int64_t)a5 isRetry:(BOOL)a6 priority:(int64_t)a7 replayKey:(id)a8 completion:(id)a9
{
  v11 = a6;
  v15 = a4;
  v16 = a9;
  queueManager = self->_queueManager;
  v18 = a8;
  v19 = a3;
  v20 = [(IDSEncryptionQueueManager *)queueManager asyncQueueForPriority:a7];
  v21 = sub_1005C2E54(a5);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1005C4B40;
  v24[3] = &unk_100BE1148;
  v26 = v16;
  v27 = a5;
  v25 = v15;
  v22 = v15;
  v23 = v16;
  [v22 decryptData:v19 decryptionContext:0 usingIdentifier:v21 onQueue:v20 isRetry:v11 replayKey:v18 withCompletion:v24];
}

- (void)_decryptData:(id)a3 decryptionContext:(id)a4 encrypter:(id)a5 pkType:(int64_t)a6 isRetry:(BOOL)a7 priority:(int64_t)a8 replayKey:(id)a9 completion:(id)a10
{
  v11 = a7;
  v16 = a5;
  v17 = a10;
  queueManager = self->_queueManager;
  v19 = a9;
  v20 = a4;
  v21 = a3;
  v22 = [(IDSEncryptionQueueManager *)queueManager asyncQueueForPriority:a8];
  v23 = sub_1005C2E54(a6);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1005C4DBC;
  v26[3] = &unk_100BE1148;
  v28 = v17;
  v29 = a6;
  v27 = v16;
  v24 = v16;
  v25 = v17;
  [v24 decryptData:v21 decryptionContext:v20 usingIdentifier:v23 onQueue:v22 isRetry:v11 replayKey:v19 withCompletion:v26];
}

- (void)performAsyncBlock:(id)a3 priority:(int64_t)a4
{
  queueManager = self->_queueManager;
  v6 = a3;
  v7 = [(IDSEncryptionQueueManager *)queueManager asyncQueueForPriority:a4];
  [v7 performAsyncBlock:v6];
}

- (void)performSyncBlock:(id)a3 priority:(int64_t)a4
{
  queueManager = self->_queueManager;
  v6 = a3;
  v7 = [(IDSEncryptionQueueManager *)queueManager syncQueueForPriority:a4];
  [v7 performSyncBlock:v6];
}

- (void)logEncryptionErrorForToken:(id)a3 deviceID:(id)a4 forURI:(id)a5 fromURI:(id)a6 forService:(id)a7 messageData:(id)a8 type:(int64_t)a9
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1005C5184;
  v21[3] = &unk_100BE1170;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v15 = v27;
  v16 = v26;
  v17 = v25;
  v18 = v24;
  v19 = v23;
  v20 = v22;
  [(IDSEncryptionController *)self performSyncBlock:v21 priority:200];
}

- (void)logRemoteDecryptionErrorForToken:(id)a3 deviceID:(id)a4 forURI:(id)a5 fromURI:(id)a6 forService:(id)a7 messageData:(id)a8 type:(int64_t)a9
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1005C5334;
  v21[3] = &unk_100BE1170;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v15 = v27;
  v16 = v26;
  v17 = v25;
  v18 = v24;
  v19 = v23;
  v20 = v22;
  [(IDSEncryptionController *)self performSyncBlock:v21 priority:200];
}

@end