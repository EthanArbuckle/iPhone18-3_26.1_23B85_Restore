@interface FAICSSPresetsProvider
- (FAICSSPresetsProvider)initWithNetworkService:(id)a3 storeFrontProvider:(id)a4;
- (id)availablePresetsWithStoreFront:(id)a3 version:(id)a4;
- (void)currentConfigurationForDSID:(id)a3 completion:(id)a4;
@end

@implementation FAICSSPresetsProvider

- (FAICSSPresetsProvider)initWithNetworkService:(id)a3 storeFrontProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FAICSSPresetsProvider;
  v8 = [(FANetworkClient *)&v14 initWithNetworkService:v6];
  if (v8)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v9 = qword_1000B9940;
    v19 = qword_1000B9940;
    if (!qword_1000B9940)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000F790;
      v15[3] = &unk_1000A5EF8;
      v15[4] = &v16;
      sub_10000F790(v15);
      v9 = v17[3];
    }

    v10 = v9;
    _Block_object_dispose(&v16, 8);
    v11 = objc_alloc_init(v9);
    stPresetsClient = v8->_stPresetsClient;
    v8->_stPresetsClient = v11;

    objc_storeStrong(&v8->_storeFrontProvider, a4);
  }

  return v8;
}

- (id)availablePresetsWithStoreFront:(id)a3 version:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching available presets from icss. storeFront: %@, version: %@", buf, 0x16u);
  }

  v9 = objc_alloc_init(FASettingPresetsCache);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = sub_10000F190;
  v33 = sub_10000F1A0;
  v34 = 0;
  v22 = [(FAICSSPresetsProvider *)self storeFrontProvider];
  v10 = [v22 fetchCurrentStoreFrontWithSelectedStoreFront:v6];
  v11 = [v10 then];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000F1A8;
  v29[3] = &unk_1000A63C8;
  v29[4] = self;
  v12 = v7;
  v30 = v12;
  v13 = (v11)[2](v11, v29);
  v14 = [v13 then];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000F2B4;
  v28[3] = &unk_1000A6880;
  v28[4] = self;
  v28[5] = buf;
  v15 = (v14)[2](v14, v28);
  v16 = [v15 then];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000F340;
  v23[3] = &unk_1000A68C8;
  v17 = v9;
  v24 = v17;
  v27 = buf;
  v18 = v6;
  v25 = v18;
  v19 = v12;
  v26 = v19;
  v20 = (v16)[2](v16, v23);

  _Block_object_dispose(buf, 8);

  return v20;
}

- (void)currentConfigurationForDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching presets from screentime client", buf, 2u);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v9 = qword_1000B9950;
  v24 = qword_1000B9950;
  if (!qword_1000B9950)
  {
    *buf = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10000F958;
    v19 = &unk_1000A5EF8;
    v20 = &v21;
    sub_10000F958(buf);
    v9 = v22[3];
  }

  v10 = v9;
  _Block_object_dispose(&v21, 8);
  v11 = [[v9 alloc] initWithDSID:v6];
  v12 = [(FAICSSPresetsProvider *)self stPresetsClient];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10000F634;
  v14[3] = &unk_1000A68F0;
  v15 = v7;
  v13 = v7;
  [v12 currentConfigurationForUserID:v11 completionHandler:v14];
}

@end