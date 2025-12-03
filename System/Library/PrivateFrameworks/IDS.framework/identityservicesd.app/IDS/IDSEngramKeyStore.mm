@interface IDSEngramKeyStore
+ (id)_keychainIdentifier;
- (IDSEngramKeyStore)initWithQueue:(id)queue;
- (id)accountIdentityElector;
- (id)rollFullDeviceIdentityWithCluster:(id)cluster error:(id *)error;
- (void)accountIdentityClusterForRegistrationWithCompletion:(id)completion;
- (void)addListener:(id)listener;
- (void)existingAccountIdentityClusterWithCompletion:(id)completion;
- (void)existingFullDeviceIdentityWithCompletion:(id)completion;
- (void)notifyListenersEngramKeyStoreDidUpdateIdentities;
- (void)removeListener:(id)listener;
- (void)rollAccountIdentityWithCompletion:(id)completion;
@end

@implementation IDSEngramKeyStore

- (IDSEngramKeyStore)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = IDSEngramKeyStore;
  v6 = [(IDSEngramKeyStore *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    if (+[IMUserDefaults isEngramEnabled])
    {
      v8 = [[IDSCloudKitContainer alloc] initWithIdentifier:@"iCloud.com.apple.Engram.Development" queue:queueCopy];
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
  keychainWrapper = [(IDSEngramKeyStore *)self keychainWrapper];
  v5 = [(IDSKeychainKeyElectionStore *)v3 initWithKeychainWrapper:keychainWrapper];

  ckContainer = [(IDSEngramKeyStore *)self ckContainer];
  keyElectionStore = [ckContainer keyElectionStore];

  v8 = objc_alloc_init(IDSGroupServerKeyElectionStore);
  v9 = [[IDSAccountIdentityElector alloc] initWithKeychainElectionStore:v5 cloudKitElectionStore:keyElectionStore groupServerElectionStore:v8];

  return v9;
}

- (void)accountIdentityClusterForRegistrationWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSEngramKeyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[IMRGLog engram];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "accountIdentitiesClusterForRegistration -- start", buf, 2u);
  }

  v7 = [CUTPromiseSeal alloc];
  queue2 = [(IDSEngramKeyStore *)self queue];
  v9 = [v7 initWithQueue:queue2];
  [(IDSEngramKeyStore *)self setSeal:v9];

  if ([(IDSEngramKeyStore *)self isEngramEnabled])
  {
    accountIdentityElector = [(IDSEngramKeyStore *)self accountIdentityElector];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10044598C;
    v19[3] = &unk_100BDC538;
    v19[4] = self;
    [accountIdentityElector getKeysForServiceTypeName:IDSMPServiceIdentityTypeNameA completion:v19];
  }

  else
  {
    v22 = NSLocalizedDescriptionKey;
    v23 = @"Engram is disabled on this device";
    v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    accountIdentityElector = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-2000 userInfo:v11];

    v12 = +[IMRGLog engram];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = accountIdentityElector;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Engram inactive -- not fetching {error: %{public}@}", buf, 0xCu);
    }

    seal = [(IDSEngramKeyStore *)self seal];
    [seal failWithError:accountIdentityElector];
  }

  seal2 = [(IDSEngramKeyStore *)self seal];
  promise = [seal2 promise];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100445B34;
  v17[3] = &unk_100BD9940;
  v18 = completionCopy;
  v16 = completionCopy;
  [promise registerResultBlock:v17];
}

- (void)existingAccountIdentityClusterWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSEngramKeyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  seal = [(IDSEngramKeyStore *)self seal];

  if (!seal)
  {
    v7 = [CUTPromiseSeal alloc];
    queue2 = [(IDSEngramKeyStore *)self queue];
    v9 = [v7 initWithQueue:queue2];
    [(IDSEngramKeyStore *)self setSeal:v9];

    if ([(IDSEngramKeyStore *)self isEngramEnabled])
    {
      seal2 = [(IDSEngramKeyStore *)self seal];
      accountIdentityElector = [(IDSEngramKeyStore *)self accountIdentityElector];
      v12 = IDSMPServiceIdentityTypeNameA;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100445ECC;
      v21[3] = &unk_100BDC560;
      v21[4] = self;
      v22 = seal2;
      seal3 = seal2;
      [accountIdentityElector getKeysForServiceTypeName:v12 completion:v21];
    }

    else
    {
      v25 = NSLocalizedDescriptionKey;
      v26 = @"Engram is disabled on this device. Update UserDefaults as described in IMUserDefaults";
      v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      accountIdentityElector = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-2000 userInfo:v14];

      v15 = +[IMRGLog engram];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v24 = accountIdentityElector;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Tried to get account identity cluster with Engram disabled {error: %{public}@}", buf, 0xCu);
      }

      seal3 = [(IDSEngramKeyStore *)self seal];
      [seal3 failWithError:accountIdentityElector];
    }
  }

  seal4 = [(IDSEngramKeyStore *)self seal];
  promise = [seal4 promise];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100446064;
  v19[3] = &unk_100BD9940;
  v20 = completionCopy;
  v18 = completionCopy;
  [promise registerResultBlock:v19];
}

- (id)rollFullDeviceIdentityWithCluster:(id)cluster error:(id *)error
{
  clusterCopy = cluster;
  queue = [(IDSEngramKeyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [clusterCopy adminServiceIdentityWithType:1];

  v9 = [IDSMPFullDeviceIdentity deviceIdentityWithFullAdminServiceIdentity:v8 error:error];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 dataRepresentationWithError:error];
    if (v11 && (-[IDSEngramKeyStore keychainWrapper](self, "keychainWrapper"), v12 = objc_claimAutoreleasedReturnValue(), [objc_opt_class() _keychainIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "saveData:forIdentifier:allowSync:dataProtectionClass:error:", v11, v13, 0, 2, error), v13, v12, v14))
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

- (void)existingFullDeviceIdentityWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSEngramKeyStore *)self queue];
  dispatch_assert_queue_V2(queue);

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
  v9 = completionCopy;
  v7 = completionCopy;
  [(IDSEngramKeyStore *)self existingAccountIdentityClusterWithCompletion:v8];
}

- (void)rollAccountIdentityWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSEngramKeyStore *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = NSLocalizedDescriptionKey;
  v9 = @"Account key rolling not implemented";
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v7 = [NSError errorWithDomain:@"IDSEngramKeyStoreErrorDomain" code:-2000 userInfo:v6];

  completionCopy[2](completionCopy, 0, v7);
}

+ (id)_keychainIdentifier
{
  v2 = _IDSEngramKeyElectorVersion();
  v3 = [NSString stringWithFormat:@"%@-%@", @"kIDSEngramKeyStoreFullDeviceIdentity", v2];

  return v3;
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  listeners = [(IDSEngramKeyStore *)self listeners];
  [listeners addObject:listenerCopy];
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  listeners = [(IDSEngramKeyStore *)self listeners];
  [listeners removeObject:listenerCopy];
}

- (void)notifyListenersEngramKeyStoreDidUpdateIdentities
{
  v3 = +[IMRGLog engram];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    listeners = [(IDSEngramKeyStore *)self listeners];
    *buf = 138412290;
    v17 = listeners;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Notifying Engram key store that identities did update {listeners: %@}", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  listeners2 = [(IDSEngramKeyStore *)self listeners];
  v6 = [listeners2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(listeners2);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 engramKeyStoreDidUpdateIdentities:self];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [listeners2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end