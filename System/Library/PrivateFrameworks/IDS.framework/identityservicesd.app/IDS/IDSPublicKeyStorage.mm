@interface IDSPublicKeyStorage
+ (IDSPublicKeyStorage)sharedInstance;
- (IDSPublicKeyStorage)init;
- (IDSPublicKeyStorage)initWithPeerIDManager:(id)manager accountController:(id)controller;
- (_opaque_pthread_mutex_t)lock;
- (id)publicDeviceIdentityContainerForDeviceID:(id)d;
- (void)_removeOldPersistence;
- (void)clearCache;
- (void)dealloc;
- (void)logState;
- (void)setLock:(_opaque_pthread_mutex_t *)lock;
@end

@implementation IDSPublicKeyStorage

+ (IDSPublicKeyStorage)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100510B6C;
  block[3] = &unk_100BD75B8;
  block[4] = self;
  if (qword_100CBEE28 != -1)
  {
    dispatch_once(&qword_100CBEE28, block);
  }

  v2 = qword_100CBEE20;

  return v2;
}

- (IDSPublicKeyStorage)init
{
  v3 = +[IDSPeerIDManager sharedInstance];
  v4 = +[IDSDAccountController sharedInstance];
  v5 = [(IDSPublicKeyStorage *)self initWithPeerIDManager:v3 accountController:v4];

  return v5;
}

- (IDSPublicKeyStorage)initWithPeerIDManager:(id)manager accountController:(id)controller
{
  managerCopy = manager;
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = IDSPublicKeyStorage;
  v9 = [(IDSPublicKeyStorage *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_peerIDManager, manager);
    objc_storeStrong(&v10->_accountController, controller);
    v11 = objc_alloc_init(IDSPublicKeyStorageCache);
    cache = v10->_cache;
    v10->_cache = v11;

    pthread_mutex_init(&v10->_lock, 0);
    objc_initWeak(&location, v10);
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100510D78;
    v17 = &unk_100BDF3D0;
    objc_copyWeak(&v18, &location);
    [managerCopy addPurgeClientDataBlock:&v14 forToken:@"kIDSPublicKeyStorageToken"];
    [(IDSPublicKeyStorage *)v10 _removeOldPersistence:v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)_removeOldPersistence
{
  v2 = objc_alloc_init(IDSKeychainWrapper);
  [(IDSKeychainWrapper *)v2 removeDataForIdentifier:@"personal-public-key-cache" dataProtectionClass:2 error:0];
  [(IDSKeychainWrapper *)v2 removeDataForIdentifier:@"personal-public-key-cache-v1" dataProtectionClass:2 error:0];
  [(IDSKeychainWrapper *)v2 removeDataForIdentifier:@"personal-public-key-cache-v2" dataProtectionClass:2 error:0];
  [(IDSKeychainWrapper *)v2 removeDataForIdentifier:@"personal-public-key-cache-v3" dataProtectionClass:2 error:0];
  [(IDSKeychainWrapper *)v2 removeDataForIdentifier:@"personal-public-key-cache-v4" dataProtectionClass:2 error:0];
}

- (void)dealloc
{
  [(IDSPeerIDManager *)self->_peerIDManager removePurgeClientDataBlockForToken:@"kIDSPublicKeyStorageToken"];
  v3.receiver = self;
  v3.super_class = IDSPublicKeyStorage;
  [(IDSPublicKeyStorage *)&v3 dealloc];
}

- (void)clearCache
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing public and personal keys", v4, 2u);
  }

  pthread_mutex_lock(&self->_lock);
  [(IDSPublicKeyStorageCache *)self->_cache clearCache];
  pthread_mutex_unlock(&self->_lock);
}

- (id)publicDeviceIdentityContainerForDeviceID:(id)d
{
  dCopy = d;
  pthread_mutex_lock(&self->_lock);
  v5 = [(IDSPublicKeyStorageCache *)self->_cache cachedIdentityForDeviceID:dCopy];
  if (!v5)
  {
    v6 = [(IDSDAccountController *)self->_accountController pushTokenForDeviceID:dCopy];
    if (!v6)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = dCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "could not find the push token for {deviceID: %@}", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        v12 = dCopy;
        _IDSLogTransport();
      }
    }

    peerIDManager = self->_peerIDManager;
    v9 = [IDSPushToken pushTokenWithData:v6, v12];
    v5 = [(IDSPeerIDManager *)peerIDManager publicDeviceIdentityContainerForPushToken:v9];

    if (v5)
    {
      [(IDSPublicKeyStorageCache *)self->_cache cacheIdentity:v5 forDeviceID:dCopy andPushToken:v6];
    }

    else
    {
      v10 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = dCopy;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not find publicDeviceIdentity for {deviceID: %@}, {pushToken: %@}", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        _IDSWarnV();
        _IDSLogV();
        _IDSLogTransport();
      }
    }
  }

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (void)logState
{
  pthread_mutex_lock(&self->_lock);
  [(IDSPublicKeyStorageCache *)self->_cache logState];

  pthread_mutex_unlock(&self->_lock);
}

- (_opaque_pthread_mutex_t)lock
{
  v3 = *&self->__opaque[40];
  *&retstr->__sig = *&self->__opaque[24];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[8];
  *&retstr->__opaque[24] = *&self[1].__sig;
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[40];
  *&self->_lock.__opaque[24] = *&lock->__opaque[24];
  *&self->_lock.__opaque[40] = v5;
  *&self->_lock.__sig = v3;
  *&self->_lock.__opaque[8] = v4;
}

@end