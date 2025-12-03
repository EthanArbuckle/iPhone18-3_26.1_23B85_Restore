@interface IDSEncryptionController
+ (IDSEncryptionController)sharedInstance;
- (BOOL)markForStateResetWithOurURI:(id)i ourPushToken:(id)token theirURI:(id)rI theirPushToken:(id)pushToken service:(id)service;
- (BOOL)publicKeyVerifySignedData:(id)data matchesData:(id)matchesData forSignatureType:(int64_t)type endpoint:(id)endpoint withKeyType:(unsigned int)keyType keyDiversifier:(id)diversifier priority:(int64_t)priority error:(id *)self0;
- (IDSEncryptionController)init;
- (IDSEncryptionController)initWithPeerIDManager:(id)manager registrationKeyManager:(id)keyManager OTRController:(id)controller publicKeyStorage:(id)storage accountController:(id)accountController serviceController:(id)serviceController queueManager:(id)queueManager failedTokenCache:(id)self0;
- (id)OTRDecryptData:(id)data OTRToken:(id)token priority:(int64_t)priority error:(int64_t *)error;
- (id)OTREncryptData:(id)data OTRToken:(id)token priority:(int64_t)priority error:(int64_t *)error;
- (id)legacyPublicKeyDecryptData:(id)data toDeviceID:(id)d priority:(int64_t)priority error:(id *)error;
- (id)legacyPublicKeyEncryptData:(id)data withEncryptedAttributes:(id)attributes toDeviceID:(id)d priority:(int64_t)priority error:(id *)error;
- (id)legacyPublicKeyEncryptData:(id)data withEncryptedAttributes:(id)attributes toEndpoint:(id)endpoint priority:(int64_t)priority error:(id *)error;
- (id)offGridKeyDistributionEncryptData:(id)data encryptionContext:(id)context toEndpoint:(id)endpoint priority:(int64_t)priority error:(id *)error;
- (id)publicKeyBatchSignDatas:(id)datas withSignatureType:(int64_t)type keyType:(unsigned int)keyType keyDiversifier:(id)diversifier service:(id)service priority:(int64_t)priority error:(id *)error;
- (id)publicKeyDecryptData:(id)data fromEndpoint:(id)endpoint pkType:(int64_t)type priority:(int64_t)priority error:(id *)error;
- (id)publicKeyEncryptData:(id)data encryptionContext:(id)context forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)state withEncryptedAttributes:(id)attributes toEndpoint:(id)endpoint usedEncryptionType:(int64_t *)type priority:(int64_t)self0 metadata:(id *)self1 error:(id *)self2;
- (id)publicKeySignData:(id)data withSignatureType:(int64_t)type keyType:(unsigned int)keyType keyDiversifier:(id)diversifier service:(id)service priority:(int64_t)priority error:(id *)error;
- (void)_decryptData:(id)data decryptionContext:(id)context encrypter:(id)encrypter pkType:(int64_t)type isRetry:(BOOL)retry priority:(int64_t)priority replayKey:(id)key completion:(id)self0;
- (void)_decryptData:(id)data encrypter:(id)encrypter pkType:(int64_t)type isRetry:(BOOL)retry priority:(int64_t)priority replayKey:(id)key completion:(id)completion;
- (void)_legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes encrypter:(id)encrypter priority:(int64_t)priority completion:(id)completion;
- (void)legacyPublicKeyDecryptData:(id)data fromURI:(id)i identity:(id)identity toURI:(id)rI pushToken:(id)token service:(id)service priority:(int64_t)priority isRetry:(BOOL)self0 replayKey:(id)self1 completionBlock:(id)self2 avoidMainQueue:(BOOL)self3;
- (void)legacyPublicKeyDecryptData:(id)data toDeviceID:(id)d priority:(int64_t)priority completionBlock:(id)block;
- (void)legacyPublicKeyEncryptData:(id)data withEncryptedAttributes:(id)attributes fromURI:(id)i identity:(id)identity toURI:(id)rI pushToken:(id)token service:(id)service priority:(int64_t)self0 completionBlock:(id)self1 avoidMainQueue:(BOOL)self2;
- (void)legacyPublicKeyEncryptData:(id)data withEncryptedAttributes:(id)attributes toDeviceID:(id)d priority:(int64_t)priority completionBlock:(id)block;
- (void)logEncryptionErrorForToken:(id)token deviceID:(id)d forURI:(id)i fromURI:(id)rI forService:(id)service messageData:(id)data type:(int64_t)type;
- (void)logRemoteDecryptionErrorForToken:(id)token deviceID:(id)d forURI:(id)i fromURI:(id)rI forService:(id)service messageData:(id)data type:(int64_t)type;
- (void)performAsyncBlock:(id)block priority:(int64_t)priority;
- (void)performSyncBlock:(id)block priority:(int64_t)priority;
- (void)publicKeyDecryptData:(id)data decryptionContext:(id)context identity:(id)identity service:(id)service priority:(int64_t)priority isRetry:(BOOL)retry replayKey:(id)key publicKeyType:(int64_t)self0 completionBlock:(id)self1 avoidMainQueue:(BOOL)self2;
- (void)publicKeyDecryptData:(id)data fromEndpoint:(id)endpoint pkType:(int64_t)type priority:(int64_t)priority replayKey:(id)key completionBlock:(id)block;
- (void)publicKeyVerifySignedData:(id)data matchesData:(id)matchesData forSignatureType:(int64_t)type identity:(id)identity forURI:(id)i pushToken:(id)token service:(id)service localURI:(id)self0 priority:(int64_t)self1 completion:(id)self2 avoidMainQueue:(BOOL)self3;
- (void)publicKeyVerifySignedData:(id)data matchesData:(id)matchesData forSignatureType:(int64_t)type identity:(id)identity toURI:(id)i pushToken:(id)token service:(id)service localURI:(id)self0 withKeyType:(unsigned int)self1 keyDiversifier:(id)self2 priority:(int64_t)self3 completion:(id)self4 avoidMainQueue:(BOOL)self5;
- (void)publicKeyVerifySignedPayloads:(id)payloads forSignatureType:(int64_t)type identity:(id)identity service:(id)service localURI:(id)i withKeyType:(unsigned int)keyType keyDiversifier:(id)diversifier priority:(int64_t)self0 completion:(id)self1 avoidMainQueue:(BOOL)self2;
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
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 6;
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

  v12 = [v4 initWithLimit:integerValue timeLimit:v11];
  v13 = +[IDSPeerIDManager sharedInstance];
  v14 = +[IDSRegistrationKeyManager sharedInstance];
  v15 = +[IDSOTRController sharedInstance];
  v16 = +[IDSPublicKeyStorage sharedInstance];
  v17 = +[IDSDAccountController sharedInstance];
  v18 = +[IDSDServiceController sharedInstance];
  v19 = [(IDSEncryptionController *)self initWithPeerIDManager:v13 registrationKeyManager:v14 OTRController:v15 publicKeyStorage:v16 accountController:v17 serviceController:v18 queueManager:v3 failedTokenCache:v12];

  return v19;
}

- (IDSEncryptionController)initWithPeerIDManager:(id)manager registrationKeyManager:(id)keyManager OTRController:(id)controller publicKeyStorage:(id)storage accountController:(id)accountController serviceController:(id)serviceController queueManager:(id)queueManager failedTokenCache:(id)self0
{
  managerCopy = manager;
  keyManagerCopy = keyManager;
  controllerCopy = controller;
  storageCopy = storage;
  accountControllerCopy = accountController;
  serviceControllerCopy = serviceController;
  queueManagerCopy = queueManager;
  cacheCopy = cache;
  v28.receiver = self;
  v28.super_class = IDSEncryptionController;
  v19 = [(IDSEncryptionController *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_peerIDManager, manager);
    objc_storeStrong(&v20->_registrationKeyManager, keyManager);
    objc_storeStrong(&v20->_OTRController, controller);
    objc_storeStrong(&v20->_publicKeyStorage, storage);
    objc_storeStrong(&v20->_accountController, accountController);
    objc_storeStrong(&v20->_serviceController, serviceController);
    objc_storeStrong(&v20->_queueManager, queueManager);
    objc_storeStrong(&v20->_failedTokenCache, cache);
  }

  return v20;
}

- (id)publicKeyEncryptData:(id)data encryptionContext:(id)context forceSizeOptimizations:(BOOL)optimizations resetState:(BOOL)state withEncryptedAttributes:(id)attributes toEndpoint:(id)endpoint usedEncryptionType:(int64_t *)type priority:(int64_t)self0 metadata:(id *)self1 error:(id *)self2
{
  optimizationsCopy = optimizations;
  stateCopy = state;
  endpointCopy = endpoint;
  attributesCopy = attributes;
  contextCopy = context;
  dataCopy = data;
  v20 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v21 = [v20 encrypterWithEndpoint:endpointCopy];

  v28 = 0;
  v22 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:priority];
  v23 = [v21 encryptData:dataCopy encryptionContext:contextCopy forceSizeOptimizations:optimizationsCopy resetState:stateCopy withEncryptedAttributes:attributesCopy usedIdentifier:&v28 onQueue:v22 metadata:metadata error:error];

  v24 = v28;
  if (type)
  {
    *type = sub_1005C25FC(v24);
  }

  return v23;
}

- (id)legacyPublicKeyEncryptData:(id)data withEncryptedAttributes:(id)attributes toEndpoint:(id)endpoint priority:(int64_t)priority error:(id *)error
{
  endpointCopy = endpoint;
  attributesCopy = attributes;
  dataCopy = data;
  v15 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:1];
  v16 = [v15 encrypterWithEndpoint:endpointCopy];

  v17 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:priority];
  v18 = [v16 legacyEncryptData:dataCopy withEncryptedAttributes:attributesCopy onQueue:v17 error:error];

  return v18;
}

- (id)offGridKeyDistributionEncryptData:(id)data encryptionContext:(id)context toEndpoint:(id)endpoint priority:(int64_t)priority error:(id *)error
{
  endpointCopy = endpoint;
  contextCopy = context;
  dataCopy = data;
  v15 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:6];
  v16 = [v15 encrypterWithEndpoint:endpointCopy];

  v20 = 0;
  v17 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:priority];
  v18 = [v16 encryptData:dataCopy encryptionContext:contextCopy forceSizeOptimizations:0 resetState:0 withEncryptedAttributes:0 usedIdentifier:&v20 onQueue:v17 metadata:0 error:error];

  return v18;
}

- (id)publicKeyDecryptData:(id)data fromEndpoint:(id)endpoint pkType:(int64_t)type priority:(int64_t)priority error:(id *)error
{
  endpointCopy = endpoint;
  dataCopy = data;
  v14 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v15 = [v14 encrypterWithEndpoint:endpointCopy];

  v16 = sub_1005C2E54(type);
  v17 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:priority];
  v18 = [v15 decryptData:dataCopy usingIdentifier:v16 isRetry:0 onQueue:v17 error:error];

  return v18;
}

- (void)publicKeyDecryptData:(id)data fromEndpoint:(id)endpoint pkType:(int64_t)type priority:(int64_t)priority replayKey:(id)key completionBlock:(id)block
{
  endpointCopy = endpoint;
  blockCopy = block;
  keyCopy = key;
  dataCopy = data;
  v18 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v19 = [v18 encrypterWithEndpoint:endpointCopy];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005C2FF0;
  v22[3] = &unk_100BE1080;
  v23 = endpointCopy;
  v24 = blockCopy;
  v20 = endpointCopy;
  v21 = blockCopy;
  [(IDSEncryptionController *)self _decryptData:dataCopy encrypter:v19 pkType:type isRetry:0 priority:priority replayKey:keyCopy completion:v22];
}

- (void)legacyPublicKeyEncryptData:(id)data withEncryptedAttributes:(id)attributes fromURI:(id)i identity:(id)identity toURI:(id)rI pushToken:(id)token service:(id)service priority:(int64_t)self0 completionBlock:(id)self1 avoidMainQueue:(BOOL)self2
{
  tokenCopy = token;
  blockCopy = block;
  serviceCopy = service;
  rICopy = rI;
  identityCopy = identity;
  iCopy = i;
  attributesCopy = attributes;
  dataCopy = data;
  v25 = [(IDSEncryptionController *)self _builderAvoidMainQueue:queue forceEncryptionType:1];
  v26 = [v25 encrypterWithLocalURI:iCopy remoteURI:rICopy pushToken:tokenCopy service:serviceCopy cert:identityCopy];

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1005C3250;
  v30[3] = &unk_100BE10A8;
  v31 = tokenCopy;
  v32 = blockCopy;
  v27 = tokenCopy;
  v28 = blockCopy;
  [(IDSEncryptionController *)self _legacyEncryptData:dataCopy withEncryptedAttributes:attributesCopy encrypter:v26 priority:priority completion:v30];
}

- (void)legacyPublicKeyDecryptData:(id)data fromURI:(id)i identity:(id)identity toURI:(id)rI pushToken:(id)token service:(id)service priority:(int64_t)priority isRetry:(BOOL)self0 replayKey:(id)self1 completionBlock:(id)self2 avoidMainQueue:(BOOL)self3
{
  tokenCopy = token;
  blockCopy = block;
  keyCopy = key;
  serviceCopy = service;
  rICopy = rI;
  identityCopy = identity;
  iCopy = i;
  dataCopy = data;
  v25 = [(IDSEncryptionController *)self _builderAvoidMainQueue:queue forceEncryptionType:-1];
  v26 = [v25 encrypterWithLocalURI:rICopy remoteURI:iCopy pushToken:tokenCopy service:serviceCopy cert:identityCopy];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1005C341C;
  v31[3] = &unk_100BE1080;
  v32 = tokenCopy;
  v33 = blockCopy;
  v27 = tokenCopy;
  v28 = blockCopy;
  [(IDSEncryptionController *)self _decryptData:dataCopy encrypter:v26 pkType:0 isRetry:retry priority:priority replayKey:keyCopy completion:v31];
}

- (void)publicKeyDecryptData:(id)data decryptionContext:(id)context identity:(id)identity service:(id)service priority:(int64_t)priority isRetry:(BOOL)retry replayKey:(id)key publicKeyType:(int64_t)self0 completionBlock:(id)self1 avoidMainQueue:(BOOL)self2
{
  retryCopy = retry;
  contextCopy = context;
  blockCopy = block;
  keyCopy = key;
  serviceCopy = service;
  identityCopy = identity;
  dataCopy = data;
  v29 = [(IDSEncryptionController *)self _builderAvoidMainQueue:queue forceEncryptionType:-1];
  receivingURI = [contextCopy receivingURI];
  sendingURI = [contextCopy sendingURI];
  sendingPushToken = [contextCopy sendingPushToken];
  rawToken = [sendingPushToken rawToken];
  v25 = [v29 encrypterWithLocalURI:receivingURI remoteURI:sendingURI pushToken:rawToken service:serviceCopy cert:identityCopy];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1005C362C;
  v33[3] = &unk_100BE1080;
  v34 = contextCopy;
  v35 = blockCopy;
  v26 = contextCopy;
  v27 = blockCopy;
  [(IDSEncryptionController *)self _decryptData:dataCopy decryptionContext:v26 encrypter:v25 pkType:type isRetry:retryCopy priority:priority replayKey:keyCopy completion:v33];
}

- (void)legacyPublicKeyEncryptData:(id)data withEncryptedAttributes:(id)attributes toDeviceID:(id)d priority:(int64_t)priority completionBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  attributesCopy = attributes;
  dataCopy = data;
  v16 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:1];
  v17 = [v16 encrypterWithDeviceID:dCopy];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1005C3824;
  v19[3] = &unk_100BE10D0;
  v20 = blockCopy;
  v18 = blockCopy;
  [(IDSEncryptionController *)self _legacyEncryptData:dataCopy withEncryptedAttributes:attributesCopy encrypter:v17 priority:priority completion:v19];
}

- (id)legacyPublicKeyEncryptData:(id)data withEncryptedAttributes:(id)attributes toDeviceID:(id)d priority:(int64_t)priority error:(id *)error
{
  dCopy = d;
  attributesCopy = attributes;
  dataCopy = data;
  v15 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:1];
  v16 = [v15 encrypterWithDeviceID:dCopy];

  v17 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:priority];
  v18 = [v16 legacyEncryptData:dataCopy withEncryptedAttributes:attributesCopy onQueue:v17 error:error];

  return v18;
}

- (void)legacyPublicKeyDecryptData:(id)data toDeviceID:(id)d priority:(int64_t)priority completionBlock:(id)block
{
  blockCopy = block;
  dCopy = d;
  dataCopy = data;
  v13 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:1];
  v14 = [v13 encrypterWithDeviceID:dCopy];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1005C3A50;
  v16[3] = &unk_100BE10F8;
  v17 = blockCopy;
  v15 = blockCopy;
  [(IDSEncryptionController *)self _decryptData:dataCopy encrypter:v14 pkType:0 isRetry:0 priority:priority replayKey:0 completion:v16];
}

- (id)legacyPublicKeyDecryptData:(id)data toDeviceID:(id)d priority:(int64_t)priority error:(id *)error
{
  dCopy = d;
  dataCopy = data;
  v12 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:1];
  v13 = [v12 encrypterWithDeviceID:dCopy];

  v14 = IDSMPLegacyIdentityIdentifier;
  v15 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:priority];
  v16 = [v13 decryptData:dataCopy usingIdentifier:v14 isRetry:0 onQueue:v15 error:error];

  return v16;
}

- (id)publicKeySignData:(id)data withSignatureType:(int64_t)type keyType:(unsigned int)keyType keyDiversifier:(id)diversifier service:(id)service priority:(int64_t)priority error:(id *)error
{
  v11 = *&keyType;
  serviceCopy = service;
  diversifierCopy = diversifier;
  dataCopy = data;
  v18 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v19 = [v18 signerWithKeyType:v11 keyDiversifier:diversifierCopy service:serviceCopy];

  queueManager = [(IDSEncryptionController *)self queueManager];
  v21 = [queueManager syncQueueForPriority:priority];
  v22 = [v19 signData:dataCopy withType:type onQueue:v21 error:error];

  return v22;
}

- (id)publicKeyBatchSignDatas:(id)datas withSignatureType:(int64_t)type keyType:(unsigned int)keyType keyDiversifier:(id)diversifier service:(id)service priority:(int64_t)priority error:(id *)error
{
  v11 = *&keyType;
  serviceCopy = service;
  diversifierCopy = diversifier;
  datasCopy = datas;
  v18 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v19 = [v18 signerWithKeyType:v11 keyDiversifier:diversifierCopy service:serviceCopy];

  queueManager = [(IDSEncryptionController *)self queueManager];
  v21 = [queueManager syncQueueForPriority:priority];
  v22 = [v19 batchSignDatas:datasCopy withType:type onQueue:v21 error:error];

  return v22;
}

- (void)publicKeyVerifySignedData:(id)data matchesData:(id)matchesData forSignatureType:(int64_t)type identity:(id)identity forURI:(id)i pushToken:(id)token service:(id)service localURI:(id)self0 priority:(int64_t)self1 completion:(id)self2 avoidMainQueue:(BOOL)self3
{
  LOBYTE(v14) = queue;
  LODWORD(v13) = 0;
  [(IDSEncryptionController *)self publicKeyVerifySignedData:data matchesData:matchesData forSignatureType:type identity:identity toURI:i pushToken:token service:service localURI:rI withKeyType:v13 keyDiversifier:0 priority:priority completion:completion avoidMainQueue:v14];
}

- (void)publicKeyVerifySignedData:(id)data matchesData:(id)matchesData forSignatureType:(int64_t)type identity:(id)identity toURI:(id)i pushToken:(id)token service:(id)service localURI:(id)self0 withKeyType:(unsigned int)self1 keyDiversifier:(id)self2 priority:(int64_t)self3 completion:(id)self4 avoidMainQueue:(BOOL)self5
{
  completionCopy = completion;
  diversifierCopy = diversifier;
  rICopy = rI;
  serviceCopy = service;
  tokenCopy = token;
  iCopy = i;
  identityCopy = identity;
  matchesDataCopy = matchesData;
  dataCopy = data;
  v32 = [(IDSEncryptionController *)self _builderAvoidMainQueue:queue forceEncryptionType:-1];
  v29 = [v32 verifierWithLocalURI:rICopy remoteURI:iCopy pushToken:tokenCopy service:serviceCopy cert:identityCopy keyType:keyType keyDiversifier:diversifierCopy];

  queueManager = [(IDSEncryptionController *)self queueManager];
  v31 = [queueManager asyncQueueForPriority:priority];
  [v29 verifySignedData:dataCopy matchesData:matchesDataCopy forType:type onQueue:v31 withCompletion:completionCopy];
}

- (void)publicKeyVerifySignedPayloads:(id)payloads forSignatureType:(int64_t)type identity:(id)identity service:(id)service localURI:(id)i withKeyType:(unsigned int)keyType keyDiversifier:(id)diversifier priority:(int64_t)self0 completion:(id)self1 avoidMainQueue:(BOOL)self2
{
  payloadsCopy = payloads;
  identityCopy = identity;
  serviceCopy = service;
  iCopy = i;
  diversifierCopy = diversifier;
  if (queue)
  {
    completionCopy = completion;
    v23 = +[IDSFoundationLog encryptionController];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Attempting to avoid main queue on batch verification - failing because it requires using the main queue", buf, 2u);
    }

    v24 = [NSError errorWithDomain:IDSSigningErrorDomain code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, v24);
  }

  else
  {
    completionCopy2 = completion;
    v25 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
    v37 = diversifierCopy;
    v26 = identityCopy;
    v27 = [IDSBatchVerifier alloc];
    [(IDSEncryptionController *)self peerIDManager];
    typeCopy = type;
    v29 = v28 = serviceCopy;
    failedTokenCache = self->_failedTokenCache;
    v31 = +[IDSPublicIdentityCache sharedInstance];
    v32 = [(IDSBatchVerifier *)v27 initWithPeerIDManager:v29 rateLimiter:failedTokenCache localURI:iCopy service:v28 cert:v26 keyType:keyType keyDiversifier:v37 publicIdentityCache:v31 builder:v25];

    queueManager = [(IDSEncryptionController *)self queueManager];
    v34 = [queueManager asyncQueueForPriority:priority];
    [(IDSBatchVerifier *)v32 verifyPayloadsFromContexts:payloadsCopy forType:typeCopy onQueue:v34 withCompletion:completionCopy2];

    serviceCopy = v28;
    identityCopy = v26;
    diversifierCopy = v37;
  }
}

- (BOOL)publicKeyVerifySignedData:(id)data matchesData:(id)matchesData forSignatureType:(int64_t)type endpoint:(id)endpoint withKeyType:(unsigned int)keyType keyDiversifier:(id)diversifier priority:(int64_t)priority error:(id *)self0
{
  v10 = *&keyType;
  diversifierCopy = diversifier;
  endpointCopy = endpoint;
  matchesDataCopy = matchesData;
  dataCopy = data;
  v20 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v21 = [v20 verifierWithEndpoint:endpointCopy keyType:v10 keyDiversifier:diversifierCopy];

  queueManager = [(IDSEncryptionController *)self queueManager];
  v23 = [queueManager syncQueueForPriority:priority];
  LOBYTE(type) = [v21 verifySignedData:dataCopy matchesData:matchesDataCopy forType:type onQueue:v23 error:error];

  return type;
}

- (id)OTREncryptData:(id)data OTRToken:(id)token priority:(int64_t)priority error:(int64_t *)error
{
  tokenCopy = token;
  dataCopy = data;
  v12 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v13 = [v12 encrypterWithOTRToken:tokenCopy];

  v14 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:priority];
  v15 = [v13 encryptData:dataCopy onQueue:v14 error:error];

  return v15;
}

- (id)OTRDecryptData:(id)data OTRToken:(id)token priority:(int64_t)priority error:(int64_t *)error
{
  tokenCopy = token;
  dataCopy = data;
  v12 = [(IDSEncryptionController *)self _builderAvoidMainQueue:0 forceEncryptionType:-1];
  v13 = [v12 encrypterWithOTRToken:tokenCopy];

  v14 = [(IDSEncryptionQueueManager *)self->_queueManager syncQueueForPriority:priority];
  v15 = [v13 decryptData:dataCopy onQueue:v14 error:error];

  return v15;
}

- (BOOL)markForStateResetWithOurURI:(id)i ourPushToken:(id)token theirURI:(id)rI theirPushToken:(id)pushToken service:(id)service
{
  iCopy = i;
  tokenCopy = token;
  rICopy = rI;
  pushTokenCopy = pushToken;
  serviceCopy = service;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1005C4680;
  v23[3] = &unk_100BE1120;
  v23[4] = self;
  v17 = pushTokenCopy;
  v24 = v17;
  v18 = rICopy;
  v25 = v18;
  v19 = serviceCopy;
  v26 = v19;
  v20 = iCopy;
  v27 = v20;
  v21 = tokenCopy;
  v28 = v21;
  v29 = &v30;
  [(IDSEncryptionController *)self performSyncBlock:v23 priority:300];
  LOBYTE(self) = *(v31 + 24);

  _Block_object_dispose(&v30, 8);
  return self;
}

- (void)_legacyEncryptData:(id)data withEncryptedAttributes:(id)attributes encrypter:(id)encrypter priority:(int64_t)priority completion:(id)completion
{
  encrypterCopy = encrypter;
  completionCopy = completion;
  queueManager = self->_queueManager;
  attributesCopy = attributes;
  dataCopy = data;
  v17 = [(IDSEncryptionQueueManager *)queueManager asyncQueueForPriority:priority];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1005C49E0;
  v20[3] = &unk_100BE10A8;
  v21 = encrypterCopy;
  v22 = completionCopy;
  v18 = encrypterCopy;
  v19 = completionCopy;
  [v18 legacyEncryptData:dataCopy withEncryptedAttributes:attributesCopy onQueue:v17 withCompletion:v20];
}

- (void)_decryptData:(id)data encrypter:(id)encrypter pkType:(int64_t)type isRetry:(BOOL)retry priority:(int64_t)priority replayKey:(id)key completion:(id)completion
{
  retryCopy = retry;
  encrypterCopy = encrypter;
  completionCopy = completion;
  queueManager = self->_queueManager;
  keyCopy = key;
  dataCopy = data;
  v20 = [(IDSEncryptionQueueManager *)queueManager asyncQueueForPriority:priority];
  v21 = sub_1005C2E54(type);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1005C4B40;
  v24[3] = &unk_100BE1148;
  v26 = completionCopy;
  typeCopy = type;
  v25 = encrypterCopy;
  v22 = encrypterCopy;
  v23 = completionCopy;
  [v22 decryptData:dataCopy decryptionContext:0 usingIdentifier:v21 onQueue:v20 isRetry:retryCopy replayKey:keyCopy withCompletion:v24];
}

- (void)_decryptData:(id)data decryptionContext:(id)context encrypter:(id)encrypter pkType:(int64_t)type isRetry:(BOOL)retry priority:(int64_t)priority replayKey:(id)key completion:(id)self0
{
  retryCopy = retry;
  encrypterCopy = encrypter;
  completionCopy = completion;
  queueManager = self->_queueManager;
  keyCopy = key;
  contextCopy = context;
  dataCopy = data;
  v22 = [(IDSEncryptionQueueManager *)queueManager asyncQueueForPriority:priority];
  v23 = sub_1005C2E54(type);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1005C4DBC;
  v26[3] = &unk_100BE1148;
  v28 = completionCopy;
  typeCopy = type;
  v27 = encrypterCopy;
  v24 = encrypterCopy;
  v25 = completionCopy;
  [v24 decryptData:dataCopy decryptionContext:contextCopy usingIdentifier:v23 onQueue:v22 isRetry:retryCopy replayKey:keyCopy withCompletion:v26];
}

- (void)performAsyncBlock:(id)block priority:(int64_t)priority
{
  queueManager = self->_queueManager;
  blockCopy = block;
  v7 = [(IDSEncryptionQueueManager *)queueManager asyncQueueForPriority:priority];
  [v7 performAsyncBlock:blockCopy];
}

- (void)performSyncBlock:(id)block priority:(int64_t)priority
{
  queueManager = self->_queueManager;
  blockCopy = block;
  v7 = [(IDSEncryptionQueueManager *)queueManager syncQueueForPriority:priority];
  [v7 performSyncBlock:blockCopy];
}

- (void)logEncryptionErrorForToken:(id)token deviceID:(id)d forURI:(id)i fromURI:(id)rI forService:(id)service messageData:(id)data type:(int64_t)type
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1005C5184;
  v21[3] = &unk_100BE1170;
  tokenCopy = token;
  dCopy = d;
  iCopy = i;
  rICopy = rI;
  serviceCopy = service;
  dataCopy = data;
  typeCopy = type;
  v15 = dataCopy;
  v16 = serviceCopy;
  v17 = rICopy;
  v18 = iCopy;
  v19 = dCopy;
  v20 = tokenCopy;
  [(IDSEncryptionController *)self performSyncBlock:v21 priority:200];
}

- (void)logRemoteDecryptionErrorForToken:(id)token deviceID:(id)d forURI:(id)i fromURI:(id)rI forService:(id)service messageData:(id)data type:(int64_t)type
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1005C5334;
  v21[3] = &unk_100BE1170;
  tokenCopy = token;
  dCopy = d;
  iCopy = i;
  rICopy = rI;
  serviceCopy = service;
  dataCopy = data;
  typeCopy = type;
  v15 = dataCopy;
  v16 = serviceCopy;
  v17 = rICopy;
  v18 = iCopy;
  v19 = dCopy;
  v20 = tokenCopy;
  [(IDSEncryptionController *)self performSyncBlock:v21 priority:200];
}

@end