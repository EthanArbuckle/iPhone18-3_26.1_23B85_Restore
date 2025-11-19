@interface FANetworkService
- (FANetworkService)initWithAccount:(id)a3 deviceInfo:(id)a4 urlProvider:(id)a5 urlSession:(id)a6 familyRefreshActivityScheduler:(id)a7;
- (id)_convertServerResponse:(id)a3 toFormat:(int64_t)a4;
- (id)dataWithRequest:(id)a3;
- (id)ensureAccount;
- (id)ensureDeviceUnlockedSinceBoot;
- (id)plistWithRequest:(id)a3;
- (id)serverRequest:(id)a3 toFormat:(int64_t)a4;
- (id)signedRequestWithEndpoint:(id)a3 method:(id)a4 headers:(id)a5 plistBody:(id)a6;
- (id)signedRequestWithURL:(id)a3 method:(id)a4 headers:(id)a5 plistBody:(id)a6 requestFormat:(int64_t)a7 responseFormat:(int64_t)a8;
- (id)standardPlistRequestWithUrl:(id)a3 method:(id)a4 plistBody:(id)a5;
- (id)standardRequestWithEndpoint:(id)a3 method:(id)a4 plistBody:(id)a5 requestFormat:(int64_t)a6 responseFormat:(int64_t)a7;
- (id)standardRequestWithURL:(id)a3 grandSlamSigner:(id)a4 familyGrandSlamSigner:(id)a5 method:(id)a6 body:(id)a7;
- (id)standardRequestWithURL:(id)a3 grandSlamSigner:(id)a4 familyGrandSlamSigner:(id)a5 method:(id)a6 body:(id)a7 requestFormat:(int64_t)a8 responseFormat:(int64_t)a9;
- (id)standardRequestWithURL:(id)a3 method:(id)a4 body:(id)a5 requestFormat:(int64_t)a6 responseFormat:(int64_t)a7;
- (void)setAcceptHeaderForRequest:(id)a3 format:(int64_t)a4;
- (void)setContentTypeHeaderForRequest:(id)a3 format:(int64_t)a4;
@end

@implementation FANetworkService

- (id)ensureDeviceUnlockedSinceBoot
{
  v3 = [(FANetworkService *)self deviceInfo];
  if (v3 && (v4 = v3, -[FANetworkService deviceInfo](self, "deviceInfo"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 unlockedSinceBoot], v5, v4, v6))
  {
    v7 = [[AAFPromise alloc] initWithValue:&__kCFBooleanTrue];
  }

  else
  {
    v8 = _FALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100079704(v8);
    }

    v9 = [NSError fa_familyErrorWithCode:-1010];
    v7 = [[AAFPromise alloc] initWithError:v9];
  }

  return v7;
}

- (id)ensureAccount
{
  if (self->_account)
  {
    v2 = [[AAFPromise alloc] initWithValue:self->_account];
  }

  else
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100002E08(v3);
    }

    v4 = [NSError fa_familyErrorWithCode:-1004];
    v2 = [[AAFPromise alloc] initWithError:v4];
  }

  return v2;
}

- (FANetworkService)initWithAccount:(id)a3 deviceInfo:(id)a4 urlProvider:(id)a5 urlSession:(id)a6 familyRefreshActivityScheduler:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = FANetworkService;
  v17 = [(FANetworkService *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_account, a3);
    objc_storeStrong(&v18->_urlProvider, a5);
    objc_storeStrong(&v18->_urlSession, a6);
    objc_storeStrong(&v18->_deviceInfo, a4);
    objc_storeStrong(&v18->_familyRefreshActivityScheduler, a7);
  }

  return v18;
}

- (id)signedRequestWithEndpoint:(id)a3 method:(id)a4 headers:(id)a5 plistBody:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(FANetworkService *)self urlProvider];
  v15 = [v14 URLForEndpoint:v13];

  v16 = [v15 then];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001E92C;
  v23[3] = &unk_1000A7308;
  v23[4] = self;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v17 = v16[2];
  v18 = v12;
  v19 = v11;
  v20 = v10;
  v21 = v17(v16, v23);

  return v21;
}

- (void)setAcceptHeaderForRequest:(id)a3 format:(int64_t)a4
{
  v5 = a3;
  if (a4 == 2)
  {
    v6 = @"application/json";
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v6 = @"application/x-plist";
  }

  v7 = v5;
  [v5 setValue:v6 forHTTPHeaderField:@"Accept"];
  v5 = v7;
LABEL_6:
}

- (void)setContentTypeHeaderForRequest:(id)a3 format:(int64_t)a4
{
  v5 = a3;
  if (a4 == 2)
  {
    v6 = @"application/json";
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v6 = @"application/x-plist";
  }

  v7 = v5;
  [v5 setValue:v6 forHTTPHeaderField:@"Content-Type"];
  v5 = v7;
LABEL_6:
}

- (id)signedRequestWithURL:(id)a3 method:(id)a4 headers:(id)a5 plistBody:(id)a6 requestFormat:(int64_t)a7 responseFormat:(int64_t)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a5;
  v17 = [NSMutableURLRequest requestWithURL:a3];
  v18 = [(FANetworkService *)self account];

  if (v18)
  {
    v19 = [(FANetworkService *)self account];
    [v17 aa_addBasicAuthorizationHeaderWithAccount:v19 preferUsingPassword:0];

    [v17 ak_addAnisetteHeaders];
  }

  [v17 ak_addClientInfoHeader];
  if (_os_feature_enabled_impl())
  {
    [v17 setValue:@"true" forHTTPHeaderField:@"X-iCloud-Experiment-Mode"];
  }

  [(FANetworkService *)self setContentTypeHeaderForRequest:v17 format:a7];
  [(FANetworkService *)self setAcceptHeaderForRequest:v17 format:a8];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001ECD8;
  v30[3] = &unk_1000A7330;
  v20 = v17;
  v31 = v20;
  [v16 enumerateKeysAndObjectsUsingBlock:v30];

  if (v14)
  {
    [v20 setHTTPMethod:v14];
  }

  if (v15)
  {
    if (a7 == 2)
    {
      v29 = 0;
      v21 = [NSJSONSerialization dataWithJSONObject:v15 options:0 error:&v29];
      v22 = v29;
    }

    else
    {
      v28 = 0;
      v21 = [NSPropertyListSerialization dataWithPropertyList:v15 format:100 options:0 error:&v28];
      v22 = v28;
    }

    v23 = v22;
    if (v23)
    {
      v24 = v23;
      v25 = [[AAFPromise alloc] initWithError:v23];

      goto LABEL_15;
    }

    [v20 setHTTPBody:v21];
  }

  v26 = [AAFPromise alloc];
  v24 = [v20 copy];
  v25 = [v26 initWithValue:v24];
LABEL_15:

  return v25;
}

- (id)dataWithRequest:(id)a3
{
  v4 = a3;
  v5 = [AAFPromise alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001EDAC;
  v9[3] = &unk_1000A6120;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

- (id)plistWithRequest:(id)a3
{
  v4 = [(FANetworkService *)self dataWithRequest:a3];
  v5 = [v4 then];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001F020;
  v8[3] = &unk_1000A7380;
  v8[4] = self;
  v6 = (v5)[2](v5, v8);

  return v6;
}

- (id)serverRequest:(id)a3 toFormat:(int64_t)a4
{
  v6 = [(FANetworkService *)self dataWithRequest:a3];
  v7 = [v6 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001F268;
  v10[3] = &unk_1000A73A8;
  v10[4] = self;
  v10[5] = a4;
  v8 = (v7)[2](v7, v10);

  return v8;
}

- (id)_convertServerResponse:(id)a3 toFormat:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 body];

  if (v6)
  {
    v7 = [v5 body];
    if (a4 == 2)
    {
      v22 = 0;
      v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v22];
      v9 = v22;
    }

    else
    {
      v21 = 0;
      v8 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:&v21];
      v9 = v21;
    }

    v11 = v9;

    if (v11)
    {
      v12 = [NSString alloc];
      v13 = [v5 body];
      v14 = [v12 initWithData:v13 encoding:4];

      v15 = _FALogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = v16;
        v18 = [v5 HTTPResponse];
        v19 = [v18 allHeaderFields];
        *buf = 138413058;
        v24 = v16;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: Failed to parse server response with error %@ - %@ - %@", buf, 0x2Au);
      }

      v10 = [[AAFPromise alloc] initWithError:v11];
    }

    else
    {
      v10 = [[AAFPromise alloc] initWithValue:v8];
    }
  }

  else
  {
    v10 = [[AAFPromise alloc] initWithValue:&__NSDictionary0__struct];
  }

  return v10;
}

- (id)standardRequestWithEndpoint:(id)a3 method:(id)a4 plistBody:(id)a5 requestFormat:(int64_t)a6 responseFormat:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v31 = [(FANetworkService *)self ensureDeviceUnlockedSinceBoot];
  v15 = [v31 then];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10001F96C;
  v40[3] = &unk_1000A5F78;
  v40[4] = self;
  v30 = (v15)[2](v15, v40);
  v16 = [v30 then];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10001F974;
  v38[3] = &unk_1000A73D0;
  v38[4] = self;
  v39 = v12;
  v17 = v16[2];
  v29 = v12;
  v18 = v17(v16, v38);
  v19 = [v18 then];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10001F9CC;
  v33[3] = &unk_1000A73F8;
  v33[4] = self;
  v34 = v13;
  v35 = v14;
  v36 = a6;
  v37 = a7;
  v20 = v19[2];
  v28 = v14;
  v27 = v13;
  v21 = v20(v19, v33);
  v22 = [v21 then];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001F9EC;
  v32[3] = &unk_1000A7420;
  v32[4] = self;
  v32[5] = a7;
  v23 = (v22)[2](v22, v32);
  v24 = [v23 then];
  v25 = (v24)[2](v24, &stru_1000A7440);

  return v25;
}

- (id)standardRequestWithURL:(id)a3 method:(id)a4 body:(id)a5 requestFormat:(int64_t)a6 responseFormat:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v28 = [(FANetworkService *)self ensureDeviceUnlockedSinceBoot];
  v15 = [v28 then];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10001FC6C;
  v36[3] = &unk_1000A5F78;
  v36[4] = self;
  v16 = (v15)[2](v15, v36);
  v17 = [v16 then];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001FC74;
  v30[3] = &unk_1000A7468;
  v30[4] = self;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = a6;
  v35 = a7;
  v18 = v17[2];
  v27 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v18(v17, v30);
  v22 = [v21 then];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10001FC90;
  v29[3] = &unk_1000A7420;
  v29[4] = self;
  v29[5] = a7;
  v23 = (v22)[2](v22, v29);
  v24 = [v23 then];
  v25 = (v24)[2](v24, &stru_1000A7488);

  return v25;
}

- (id)standardRequestWithURL:(id)a3 grandSlamSigner:(id)a4 familyGrandSlamSigner:(id)a5 method:(id)a6 body:(id)a7 requestFormat:(int64_t)a8 responseFormat:(int64_t)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v36 = [(FANetworkService *)self ensureDeviceUnlockedSinceBoot];
  v34 = [v36 then];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10001FF70;
  v48[3] = &unk_1000A5F78;
  v48[4] = self;
  v35 = (v34)[2](v34, v48);
  v19 = [v35 then];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10001FF78;
  v42[3] = &unk_1000A7468;
  v42[4] = self;
  v43 = v14;
  v44 = v17;
  v45 = v18;
  v46 = a8;
  v47 = a9;
  v20 = v19[2];
  v33 = v18;
  v31 = v17;
  v30 = v14;
  v21 = v20(v19, v42);
  v22 = [v21 then];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10001FF94;
  v37[3] = &unk_1000A74B0;
  v38 = v16;
  v39 = v15;
  v40 = self;
  v41 = a9;
  v23 = v22[2];
  v24 = v15;
  v25 = v16;
  v26 = v23(v22, v37);
  v27 = [v26 then];
  v28 = (v27)[2](v27, &stru_1000A74D0);

  return v28;
}

- (id)standardPlistRequestWithUrl:(id)a3 method:(id)a4 plistBody:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = [(FANetworkService *)self ensureDeviceUnlockedSinceBoot];
  v11 = [v24 then];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100020268;
  v30[3] = &unk_1000A5F78;
  v30[4] = self;
  v12 = (v11)[2](v11, v30);
  v13 = [v12 then];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100020270;
  v26[3] = &unk_1000A74F8;
  v26[4] = self;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v14 = v13[2];
  v23 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v14(v13, v26);
  v18 = [v17 then];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100020284;
  v25[3] = &unk_1000A7520;
  v25[4] = self;
  v19 = (v18)[2](v18, v25);
  v20 = [v19 then];
  v21 = (v20)[2](v20, &stru_1000A7540);

  return v21;
}

- (id)standardRequestWithURL:(id)a3 grandSlamSigner:(id)a4 familyGrandSlamSigner:(id)a5 method:(id)a6 body:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31 = [(FANetworkService *)self ensureDeviceUnlockedSinceBoot];
  v30 = [v31 then];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100020590;
  v40[3] = &unk_1000A5F78;
  v40[4] = self;
  v17 = (v30)[2](v30, v40);
  v18 = [v17 then];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100020598;
  v36[3] = &unk_1000A74F8;
  v36[4] = self;
  v37 = v12;
  v38 = v15;
  v39 = v16;
  v19 = v18[2];
  v29 = v16;
  v20 = v15;
  v21 = v12;
  v22 = v19(v18, v36);
  v23 = [v22 then];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000205B8;
  v32[3] = &unk_1000A7568;
  v33 = v14;
  v34 = v13;
  v35 = self;
  v24 = v23[2];
  v25 = v13;
  v26 = v14;
  v27 = v24(v23, v32);

  return v27;
}

@end