@interface FACachedPresetsProvider
- (FACachedPresetsProvider)initWithNetworkService:(id)a3 cache:(id)a4 storeFrontProvider:(id)a5;
- (id)availablePresetsWithStoreFront:(id)a3 version:(id)a4;
- (void)currentConfigurationForDSID:(id)a3 completion:(id)a4;
@end

@implementation FACachedPresetsProvider

- (FACachedPresetsProvider)initWithNetworkService:(id)a3 cache:(id)a4 storeFrontProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FACachedPresetsProvider;
  v12 = [(FACachedPresetsProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_networkService, a3);
    objc_storeStrong(&v13->_cache, a4);
    objc_storeStrong(&v13->_storeFrontProvider, a5);
  }

  return v13;
}

- (id)availablePresetsWithStoreFront:(id)a3 version:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching available presets from cache.", buf, 2u);
  }

  v9 = [(FACachedPresetsProvider *)self storeFrontProvider];
  v10 = [v9 fetchCurrentStoreFrontWithSelectedStoreFront:v6];
  v11 = [v10 then];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000A644;
  v25[3] = &unk_1000A63C8;
  v25[4] = self;
  v12 = v7;
  v26 = v12;
  v13 = (v11)[2](v11, v25);
  v14 = [v13 then];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000A750;
  v22[3] = &unk_1000A63F0;
  v22[4] = self;
  v23 = v6;
  v24 = v12;
  v15 = v14[2];
  v16 = v12;
  v17 = v6;
  v18 = v15(v14, v22);
  v19 = [v18 then];
  v20 = (v19)[2](v19, &stru_1000A6430);

  return v20;
}

- (void)currentConfigurationForDSID:(id)a3 completion:(id)a4
{
  v4 = a4;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching current preset from FACachedPresetsProvider is not available", v6, 2u);
  }

  (*(v4 + 2))(v4, 0, 0);
}

@end