@interface IDSEngramKeyStore
+ (id)_keychainIdentifier;
- (IDSEngramKeyStore)initWithQueue:(id)a3;
- (id)accountIdentityElector;
- (id)rollFullDeviceIdentityWithCluster:(id)a3 error:(id *)a4;
- (void)accountIdentityClusterForRegistrationWithCompletion:(id)a3;
- (void)addListener:(id)a3;
- (void)existingAccountIdentityClusterWithCompletion:(id)a3;
- (void)existingFullDeviceIdentityWithCompletion:(id)a3;
- (void)notifyListenersEngramKeyStoreDidUpdateIdentities;
- (void)removeListener:(id)a3;
- (void)rollAccountIdentityWithCompletion:(id)a3;
@end

@implementation IDSEngramKeyStore

- (IDSEngramKeyStore)initWithQueue:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = IDSEngramKeyStore;
  v6 = [(IDSEngramKeyStore *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    if (+[IMUserDefaults isEngramEnabled])
    {
      v8 = [[IDSCloudKitContainer alloc] initWithIdentifier:@"iCloud.com.apple.Engram.Development" queue:v5];
      ckContainer = v7->_ckContainer;
      v7->_ckContainer = v8;
    }

    v10 = objc_alloc_init(IDSKeychainWrapper);
    keychainWrapper = v7->_keychainWrapper;
    v7->_keychainWrapper = v10;

    v12 = +[NSHashTable weakObjectsHashTable];
    listeners = v7->_listeners;
    v7->_listeners = v12;
  }

  return v7;
}

- (id)accountIdentityElector
{
  v3 = [IDSKeychainKeyElectionStore alloc];
  v4 = [(IDSEngramKeyStore *)self keychainWrapper];
  v5 = [(IDSKeychainKeyElectionStore *)v3 initWithKeychainWrapper:v4];

  v6 = [(IDSEngramKeyStore *)self ckContainer];
  v7 = [v6 keyElectionStore];

  v8 = objc_alloc_init(IDSGroupServerKeyElectionStore);
  v9 = [[IDSAccountIdentityElector alloc] initWithKeychainElectionStore:v5 cloudKitElectionStore:v7 groupServerElectionStore:v8];

  return v9;
}

- (void)accountIdentityClusterForRegistrationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSEngramKeyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IMRGLog engram];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "accountIdentitiesClusterForRegistration -- start", buf, 2u);
  }

  v7 = [CUTPromiseSeal alloc];
  v8 = [(IDSEngramKeyStore *)self queue];
  v9 = [v7 initWithQueue:v8];
  [(IDSEngramKeyStore *)self setSeal:v9];

  if ([(IDSEngramKeyStore *)self isEngramEnabled])
  {
    v10 = [(IDSEngramKeyStore *)self accountIdentityElector];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10044598C;
    v19[3] = &unk_100BDC538;
    v19[4] = self;
    [v10 getKeysForServiceTypeName:IDSMPServiceIdentityTypeNameA completion:v19];
  }

  else
  {
    v22 = NSLocalizedDescriptionKey;
    v23 = @"Engram is disabled on this device";
    v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v10 = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-2000 userInfo:v11];

    v12 = +[IMRGLog engram];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Engram inactive -- not fetching {error: %{public}@}", buf, 0xCu);
    }

    v13 = [(IDSEngramKeyStore *)self seal];
    [v13 failWithError:v10];
  }

  v14 = [(IDSEngramKeyStore *)self seal];
  v15 = [v14 promise];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100445B34;
  v17[3] = &unk_100BD9940;
  v18 = v4;
  v16 = v4;
  [v15 registerResultBlock:v17];
}

- (void)existingAccountIdentityClusterWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSEngramKeyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IDSEngramKeyStore *)self seal];

  if (!v6)
  {
    v7 = [CUTPromiseSeal alloc];
    v8 = [(IDSEngramKeyStore *)self queue];
    v9 = [v7 initWithQueue:v8];
    [(IDSEngramKeyStore *)self setSeal:v9];

    if ([(IDSEngramKeyStore *)self isEngramEnabled])
    {
      v10 = [(IDSEngramKeyStore *)self seal];
      v11 = [(IDSEngramKeyStore *)self accountIdentityElector];
      v12 = IDSMPServiceIdentityTypeNameA;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100445ECC;
      v21[3] = &unk_100BDC560;
      v21[4] = self;
      v22 = v10;
      v13 = v10;
      [v11 getKeysForServiceTypeName:v12 completion:v21];
    }

    else
    {
      v25 = NSLocalizedDescriptionKey;
      v26 = @"Engram is disabled on this device. Update UserDefaults as described in IMUserDefaults";
      v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v11 = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-2000 userInfo:v14];

      v15 = +[IMRGLog engram];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Tried to get account identity cluster with Engram disabled {error: %{public}@}", buf, 0xCu);
      }

      v13 = [(IDSEngramKeyStore *)self seal];
      [v13 failWithError:v11];
    }
  }

  v16 = [(IDSEngramKeyStore *)self seal];
  v17 = [v16 promise];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100446064;
  v19[3] = &unk_100BD9940;
  v20 = v4;
  v18 = v4;
  [v17 registerResultBlock:v19];
}

- (id)rollFullDeviceIdentityWithCluster:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(IDSEngramKeyStore *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 adminServiceIdentityWithType:1];

  v9 = [IDSMPFullDeviceIdentity deviceIdentityWithFullAdminServiceIdentity:v8 error:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 dataRepresentationWithError:a4];
    if (v11 && (-[IDSEngramKeyStore keychainWrapper](self, "keychainWrapper"), v12 = objc_claimAutoreleasedReturnValue(), [objc_opt_class() _keychainIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "saveData:forIdentifier:allowSync:dataProtectionClass:error:", v11, v13, 0, 2, a4), v13, v12, v14))
    {
      v15 = v10;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)existingFullDeviceIdentityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSEngramKeyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IMRGLog engram];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "existingFullDeviceIdentity -- start", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100446344;
  v8[3] = &unk_100BDC588;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(IDSEngramKeyStore *)self existingAccountIdentityClusterWithCompletion:v8];
}

- (void)rollAccountIdentityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSEngramKeyStore *)self queue];
  dispatch_assert_queue_V2(v5);

  v8 = NSLocalizedDescriptionKey;
  v9 = @"Account key rolling not implemented";
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-2000 userInfo:v6];

  v4[2](v4, 0, v7);
}

+ (id)_keychainIdentifier
{
  v2 = _IDSEngramKeyElectorVersion();
  v3 = [NSString stringWithFormat:@"%@-%@", @"kIDSEngramKeyStoreFullDeviceIdentity", v2];

  return v3;
}

- (void)addListener:(id)a3
{
  v4 = a3;
  v5 = [(IDSEngramKeyStore *)self listeners];
  [v5 addObject:v4];
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = [(IDSEngramKeyStore *)self listeners];
  [v5 removeObject:v4];
}

- (void)notifyListenersEngramKeyStoreDidUpdateIdentities
{
  v3 = +[IMRGLog engram];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(IDSEngramKeyStore *)self listeners];
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Notifying Engram key store that identities did update {listeners: %@}", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(IDSEngramKeyStore *)self listeners];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 engramKeyStoreDidUpdateIdentities:self];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end