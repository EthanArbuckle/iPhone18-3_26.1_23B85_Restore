@interface FACachedPresetsProvider
- (FACachedPresetsProvider)initWithNetworkService:(id)service cache:(id)cache storeFrontProvider:(id)provider;
- (id)availablePresetsWithStoreFront:(id)front version:(id)version;
- (void)currentConfigurationForDSID:(id)d completion:(id)completion;
@end

@implementation FACachedPresetsProvider

- (FACachedPresetsProvider)initWithNetworkService:(id)service cache:(id)cache storeFrontProvider:(id)provider
{
  serviceCopy = service;
  cacheCopy = cache;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = FACachedPresetsProvider;
  v12 = [(FACachedPresetsProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_networkService, service);
    objc_storeStrong(&v13->_cache, cache);
    objc_storeStrong(&v13->_storeFrontProvider, provider);
  }

  return v13;
}

- (id)availablePresetsWithStoreFront:(id)front version:(id)version
{
  frontCopy = front;
  versionCopy = version;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching available presets from cache.", buf, 2u);
  }

  storeFrontProvider = [(FACachedPresetsProvider *)self storeFrontProvider];
  v10 = [storeFrontProvider fetchCurrentStoreFrontWithSelectedStoreFront:frontCopy];
  then = [v10 then];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000A644;
  v25[3] = &unk_1000A63C8;
  v25[4] = self;
  v12 = versionCopy;
  v26 = v12;
  v13 = (then)[2](then, v25);
  then2 = [v13 then];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000A750;
  v22[3] = &unk_1000A63F0;
  v22[4] = self;
  v23 = frontCopy;
  v24 = v12;
  v15 = then2[2];
  v16 = v12;
  v17 = frontCopy;
  v18 = v15(then2, v22);
  then3 = [v18 then];
  v20 = (then3)[2](then3, &stru_1000A6430);

  return v20;
}

- (void)currentConfigurationForDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching current preset from FACachedPresetsProvider is not available", v6, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
}

@end