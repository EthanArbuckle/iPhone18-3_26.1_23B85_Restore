@interface IDSEncrypterBuilder
+ (IDSEncrypterBuilder)builderWithPublicKeyStorage:(id)storage peerIDManager:(id)manager accountController:(id)controller registrationKeyManager:(id)keyManager rateLimiter:(id)limiter OTRController:(id)rController serviceController:(id)serviceController avoidMainQueue:(BOOL)self0 forceEncryptionType:(int64_t)self1;
- (IDSEncrypterBuilder)initWithPublicKeyStorage:(id)storage peerIDManager:(id)manager accountController:(id)controller registrationKeyManager:(id)keyManager rateLimiter:(id)limiter OTRController:(id)rController serviceController:(id)serviceController avoidMainQueue:(BOOL)self0 forceEncryptionType:(int64_t)self1;
- (id)_createHashingDeviceIdentityEncrypter;
- (id)encrypterWithDeviceID:(id)d;
- (id)encrypterWithEndpoint:(id)endpoint;
- (id)encrypterWithLocalURI:(id)i remoteURI:(id)rI pushToken:(id)token service:(id)service cert:(id)cert;
- (id)encrypterWithOTRToken:(id)token;
- (id)fullDeviceIdentitySigner;
- (id)signerWithKeyType:(unsigned int)type keyDiversifier:(id)diversifier service:(id)service;
- (id)verifierWithEndpoint:(id)endpoint keyType:(unsigned int)type keyDiversifier:(id)diversifier;
- (id)verifierWithLocalURI:(id)i remoteURI:(id)rI pushToken:(id)token service:(id)service cert:(id)cert keyType:(unsigned int)type keyDiversifier:(id)diversifier;
@end

@implementation IDSEncrypterBuilder

+ (IDSEncrypterBuilder)builderWithPublicKeyStorage:(id)storage peerIDManager:(id)manager accountController:(id)controller registrationKeyManager:(id)keyManager rateLimiter:(id)limiter OTRController:(id)rController serviceController:(id)serviceController avoidMainQueue:(BOOL)self0 forceEncryptionType:(int64_t)self1
{
  serviceControllerCopy = serviceController;
  rControllerCopy = rController;
  limiterCopy = limiter;
  keyManagerCopy = keyManager;
  controllerCopy = controller;
  managerCopy = manager;
  storageCopy = storage;
  LOBYTE(v27) = queue;
  v25 = [[self alloc] initWithPublicKeyStorage:storageCopy peerIDManager:managerCopy accountController:controllerCopy registrationKeyManager:keyManagerCopy rateLimiter:limiterCopy OTRController:rControllerCopy serviceController:serviceControllerCopy avoidMainQueue:v27 forceEncryptionType:type];

  return v25;
}

- (IDSEncrypterBuilder)initWithPublicKeyStorage:(id)storage peerIDManager:(id)manager accountController:(id)controller registrationKeyManager:(id)keyManager rateLimiter:(id)limiter OTRController:(id)rController serviceController:(id)serviceController avoidMainQueue:(BOOL)self0 forceEncryptionType:(int64_t)self1
{
  storageCopy = storage;
  managerCopy = manager;
  controllerCopy = controller;
  keyManagerCopy = keyManager;
  limiterCopy = limiter;
  rControllerCopy = rController;
  serviceControllerCopy = serviceController;
  v28.receiver = self;
  v28.super_class = IDSEncrypterBuilder;
  v20 = [(IDSEncrypterBuilder *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_publicKeyStorage, storage);
    objc_storeStrong(&v21->_peerIDManager, manager);
    objc_storeStrong(&v21->_accountController, controller);
    objc_storeStrong(&v21->_registrationKeyManager, keyManager);
    objc_storeStrong(&v21->_rateLimiter, limiter);
    objc_storeStrong(&v21->_OTRController, rController);
    objc_storeStrong(&v21->_serviceController, serviceController);
    v21->_avoidMainQueue = queue;
    v21->_forceEncryptionType = type;
  }

  return v21;
}

- (id)_createHashingDeviceIdentityEncrypter
{
  v3 = [[IDSMPFullDeviceIdentityContainerEncrypter alloc] initWithRegistrationKeyManager:self->_registrationKeyManager];
  v4 = [[IDSMessageHashChecker alloc] initWithRegistrationKeyManager:self->_registrationKeyManager];
  v5 = [[IDSHashingDeviceIdentityEncrypter alloc] initWithDeviceIdentityContainerEncrypter:v3 messageHashChecker:v4];

  return v5;
}

- (id)encrypterWithLocalURI:(id)i remoteURI:(id)rI pushToken:(id)token service:(id)service cert:(id)cert
{
  certCopy = cert;
  serviceCopy = service;
  tokenCopy = token;
  rICopy = rI;
  iCopy = i;
  _createHashingDeviceIdentityEncrypter = [(IDSEncrypterBuilder *)self _createHashingDeviceIdentityEncrypter];
  v15 = [IDSURIEncrypter alloc];
  peerIDManager = self->_peerIDManager;
  rateLimiter = self->_rateLimiter;
  v18 = +[IDSDaemon sharedInstance];
  replayStateCommitter = [v18 replayStateCommitter];
  v20 = +[IDSPublicIdentityCache sharedInstance];
  v21 = [(IDSURIEncrypter *)v15 initWithPeerIDManager:peerIDManager fullDeviceIdentityContainerEncrypter:_createHashingDeviceIdentityEncrypter rateLimiter:rateLimiter replayCommitter:replayStateCommitter publicIdentityCache:v20 avoidMainQueue:self->_avoidMainQueue];

  [(IDSURIEncrypter *)v21 setForceLegacy:[(IDSEncrypterBuilder *)self forceEncryptionType]== 1];
  [(IDSURIEncrypter *)v21 setupWithLocalURI:iCopy remoteURI:rICopy pushToken:tokenCopy service:serviceCopy cert:certCopy];

  return v21;
}

- (id)encrypterWithDeviceID:(id)d
{
  dCopy = d;
  _createHashingDeviceIdentityEncrypter = [(IDSEncrypterBuilder *)self _createHashingDeviceIdentityEncrypter];
  v6 = [[IDSDeviceIDEncrypter alloc] initWithPublicKeyStorage:self->_publicKeyStorage accountController:self->_accountController fullDeviceIdentityContainerEncrypter:_createHashingDeviceIdentityEncrypter rateLimiter:self->_rateLimiter forceLegacy:[(IDSEncrypterBuilder *)self forceEncryptionType]== 1];
  [(IDSDeviceIDEncrypter *)v6 setDeviceID:dCopy];

  return v6;
}

- (id)encrypterWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  _createHashingDeviceIdentityEncrypter = [(IDSEncrypterBuilder *)self _createHashingDeviceIdentityEncrypter];
  v6 = [IDSEndpointEncrypter alloc];
  v7 = +[IDSDaemon sharedInstance];
  replayStateCommitter = [v7 replayStateCommitter];
  v9 = [(IDSEndpointEncrypter *)v6 initWithEndpoint:endpointCopy fullDeviceIdentityContainerEncrypter:_createHashingDeviceIdentityEncrypter replayCommitter:replayStateCommitter forceEncryptionType:[(IDSEncrypterBuilder *)self forceEncryptionType]];

  return v9;
}

- (id)encrypterWithOTRToken:(id)token
{
  tokenCopy = token;
  v5 = [[IDSOTREncrypter alloc] initWithOTRController:self->_OTRController OTRToken:tokenCopy];

  return v5;
}

- (id)signerWithKeyType:(unsigned int)type keyDiversifier:(id)diversifier service:(id)service
{
  v6 = *&type;
  serviceCopy = service;
  diversifierCopy = diversifier;
  v10 = [[IDSMPFullDeviceIdentityContainerEncrypter alloc] initWithRegistrationKeyManager:self->_registrationKeyManager];
  v11 = [[IDSSigningEncrypter alloc] initWithKeyType:v6 keyDiversifier:diversifierCopy service:serviceCopy serviceController:self->_serviceController fullDeviceIdentitySigner:v10];

  return v11;
}

- (id)fullDeviceIdentitySigner
{
  v2 = [[IDSMPFullDeviceIdentityContainerEncrypter alloc] initWithRegistrationKeyManager:self->_registrationKeyManager];

  return v2;
}

- (id)verifierWithLocalURI:(id)i remoteURI:(id)rI pushToken:(id)token service:(id)service cert:(id)cert keyType:(unsigned int)type keyDiversifier:(id)diversifier
{
  diversifierCopy = diversifier;
  certCopy = cert;
  serviceCopy = service;
  tokenCopy = token;
  rICopy = rI;
  iCopy = i;
  v19 = [[IDSMPFullDeviceIdentityContainerEncrypter alloc] initWithRegistrationKeyManager:self->_registrationKeyManager];
  v20 = [IDSURIEncrypter alloc];
  peerIDManager = self->_peerIDManager;
  rateLimiter = self->_rateLimiter;
  v23 = +[IDSPublicIdentityCache sharedInstance];
  v24 = [(IDSURIEncrypter *)v20 initWithPeerIDManager:peerIDManager fullDeviceIdentitySigner:v19 rateLimiter:rateLimiter publicIdentityCache:v23 avoidMainQueue:self->_avoidMainQueue];

  [(IDSURIEncrypter *)v24 setupWithLocalURI:iCopy remoteURI:rICopy pushToken:tokenCopy service:serviceCopy cert:certCopy keyType:type keyDiversifier:diversifierCopy];

  return v24;
}

- (id)verifierWithEndpoint:(id)endpoint keyType:(unsigned int)type keyDiversifier:(id)diversifier
{
  v5 = *&type;
  diversifierCopy = diversifier;
  endpointCopy = endpoint;
  v10 = [[IDSMPFullDeviceIdentityContainerEncrypter alloc] initWithRegistrationKeyManager:self->_registrationKeyManager];
  v11 = [[IDSEndpointEncrypter alloc] initWithEndpoint:endpointCopy fullDeviceIdentitySigner:v10 keyType:v5 keyDiversifier:diversifierCopy];

  return v11;
}

@end