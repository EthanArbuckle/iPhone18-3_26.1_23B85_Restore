@interface IDSEncrypterBuilder
+ (IDSEncrypterBuilder)builderWithPublicKeyStorage:(id)a3 peerIDManager:(id)a4 accountController:(id)a5 registrationKeyManager:(id)a6 rateLimiter:(id)a7 OTRController:(id)a8 serviceController:(id)a9 avoidMainQueue:(BOOL)a10 forceEncryptionType:(int64_t)a11;
- (IDSEncrypterBuilder)initWithPublicKeyStorage:(id)a3 peerIDManager:(id)a4 accountController:(id)a5 registrationKeyManager:(id)a6 rateLimiter:(id)a7 OTRController:(id)a8 serviceController:(id)a9 avoidMainQueue:(BOOL)a10 forceEncryptionType:(int64_t)a11;
- (id)_createHashingDeviceIdentityEncrypter;
- (id)encrypterWithDeviceID:(id)a3;
- (id)encrypterWithEndpoint:(id)a3;
- (id)encrypterWithLocalURI:(id)a3 remoteURI:(id)a4 pushToken:(id)a5 service:(id)a6 cert:(id)a7;
- (id)encrypterWithOTRToken:(id)a3;
- (id)fullDeviceIdentitySigner;
- (id)signerWithKeyType:(unsigned int)a3 keyDiversifier:(id)a4 service:(id)a5;
- (id)verifierWithEndpoint:(id)a3 keyType:(unsigned int)a4 keyDiversifier:(id)a5;
- (id)verifierWithLocalURI:(id)a3 remoteURI:(id)a4 pushToken:(id)a5 service:(id)a6 cert:(id)a7 keyType:(unsigned int)a8 keyDiversifier:(id)a9;
@end

@implementation IDSEncrypterBuilder

+ (IDSEncrypterBuilder)builderWithPublicKeyStorage:(id)a3 peerIDManager:(id)a4 accountController:(id)a5 registrationKeyManager:(id)a6 rateLimiter:(id)a7 OTRController:(id)a8 serviceController:(id)a9 avoidMainQueue:(BOOL)a10 forceEncryptionType:(int64_t)a11
{
  v18 = a9;
  v19 = a8;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  LOBYTE(v27) = a10;
  v25 = [[a1 alloc] initWithPublicKeyStorage:v24 peerIDManager:v23 accountController:v22 registrationKeyManager:v21 rateLimiter:v20 OTRController:v19 serviceController:v18 avoidMainQueue:v27 forceEncryptionType:a11];

  return v25;
}

- (IDSEncrypterBuilder)initWithPublicKeyStorage:(id)a3 peerIDManager:(id)a4 accountController:(id)a5 registrationKeyManager:(id)a6 rateLimiter:(id)a7 OTRController:(id)a8 serviceController:(id)a9 avoidMainQueue:(BOOL)a10 forceEncryptionType:(int64_t)a11
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v18 = a8;
  v19 = a9;
  v28.receiver = self;
  v28.super_class = IDSEncrypterBuilder;
  v20 = [(IDSEncrypterBuilder *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_publicKeyStorage, a3);
    objc_storeStrong(&v21->_peerIDManager, a4);
    objc_storeStrong(&v21->_accountController, a5);
    objc_storeStrong(&v21->_registrationKeyManager, a6);
    objc_storeStrong(&v21->_rateLimiter, a7);
    objc_storeStrong(&v21->_OTRController, a8);
    objc_storeStrong(&v21->_serviceController, a9);
    v21->_avoidMainQueue = a10;
    v21->_forceEncryptionType = a11;
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

- (id)encrypterWithLocalURI:(id)a3 remoteURI:(id)a4 pushToken:(id)a5 service:(id)a6 cert:(id)a7
{
  v25 = a7;
  v24 = a6;
  v23 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(IDSEncrypterBuilder *)self _createHashingDeviceIdentityEncrypter];
  v15 = [IDSURIEncrypter alloc];
  peerIDManager = self->_peerIDManager;
  rateLimiter = self->_rateLimiter;
  v18 = +[IDSDaemon sharedInstance];
  v19 = [v18 replayStateCommitter];
  v20 = +[IDSPublicIdentityCache sharedInstance];
  v21 = [(IDSURIEncrypter *)v15 initWithPeerIDManager:peerIDManager fullDeviceIdentityContainerEncrypter:v14 rateLimiter:rateLimiter replayCommitter:v19 publicIdentityCache:v20 avoidMainQueue:self->_avoidMainQueue];

  [(IDSURIEncrypter *)v21 setForceLegacy:[(IDSEncrypterBuilder *)self forceEncryptionType]== 1];
  [(IDSURIEncrypter *)v21 setupWithLocalURI:v13 remoteURI:v12 pushToken:v23 service:v24 cert:v25];

  return v21;
}

- (id)encrypterWithDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(IDSEncrypterBuilder *)self _createHashingDeviceIdentityEncrypter];
  v6 = [[IDSDeviceIDEncrypter alloc] initWithPublicKeyStorage:self->_publicKeyStorage accountController:self->_accountController fullDeviceIdentityContainerEncrypter:v5 rateLimiter:self->_rateLimiter forceLegacy:[(IDSEncrypterBuilder *)self forceEncryptionType]== 1];
  [(IDSDeviceIDEncrypter *)v6 setDeviceID:v4];

  return v6;
}

- (id)encrypterWithEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(IDSEncrypterBuilder *)self _createHashingDeviceIdentityEncrypter];
  v6 = [IDSEndpointEncrypter alloc];
  v7 = +[IDSDaemon sharedInstance];
  v8 = [v7 replayStateCommitter];
  v9 = [(IDSEndpointEncrypter *)v6 initWithEndpoint:v4 fullDeviceIdentityContainerEncrypter:v5 replayCommitter:v8 forceEncryptionType:[(IDSEncrypterBuilder *)self forceEncryptionType]];

  return v9;
}

- (id)encrypterWithOTRToken:(id)a3
{
  v4 = a3;
  v5 = [[IDSOTREncrypter alloc] initWithOTRController:self->_OTRController OTRToken:v4];

  return v5;
}

- (id)signerWithKeyType:(unsigned int)a3 keyDiversifier:(id)a4 service:(id)a5
{
  v6 = *&a3;
  v8 = a5;
  v9 = a4;
  v10 = [[IDSMPFullDeviceIdentityContainerEncrypter alloc] initWithRegistrationKeyManager:self->_registrationKeyManager];
  v11 = [[IDSSigningEncrypter alloc] initWithKeyType:v6 keyDiversifier:v9 service:v8 serviceController:self->_serviceController fullDeviceIdentitySigner:v10];

  return v11;
}

- (id)fullDeviceIdentitySigner
{
  v2 = [[IDSMPFullDeviceIdentityContainerEncrypter alloc] initWithRegistrationKeyManager:self->_registrationKeyManager];

  return v2;
}

- (id)verifierWithLocalURI:(id)a3 remoteURI:(id)a4 pushToken:(id)a5 service:(id)a6 cert:(id)a7 keyType:(unsigned int)a8 keyDiversifier:(id)a9
{
  v26 = a9;
  v27 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[IDSMPFullDeviceIdentityContainerEncrypter alloc] initWithRegistrationKeyManager:self->_registrationKeyManager];
  v20 = [IDSURIEncrypter alloc];
  peerIDManager = self->_peerIDManager;
  rateLimiter = self->_rateLimiter;
  v23 = +[IDSPublicIdentityCache sharedInstance];
  v24 = [(IDSURIEncrypter *)v20 initWithPeerIDManager:peerIDManager fullDeviceIdentitySigner:v19 rateLimiter:rateLimiter publicIdentityCache:v23 avoidMainQueue:self->_avoidMainQueue];

  [(IDSURIEncrypter *)v24 setupWithLocalURI:v18 remoteURI:v17 pushToken:v16 service:v15 cert:v27 keyType:a8 keyDiversifier:v26];

  return v24;
}

- (id)verifierWithEndpoint:(id)a3 keyType:(unsigned int)a4 keyDiversifier:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = a3;
  v10 = [[IDSMPFullDeviceIdentityContainerEncrypter alloc] initWithRegistrationKeyManager:self->_registrationKeyManager];
  v11 = [[IDSEndpointEncrypter alloc] initWithEndpoint:v9 fullDeviceIdentitySigner:v10 keyType:v5 keyDiversifier:v8];

  return v11;
}

@end