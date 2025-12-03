@interface FANetworkService
- (FANetworkService)initWithAccount:(id)account deviceInfo:(id)info urlProvider:(id)provider urlSession:(id)session familyRefreshActivityScheduler:(id)scheduler;
- (id)_convertServerResponse:(id)response toFormat:(int64_t)format;
- (id)dataWithRequest:(id)request;
- (id)ensureAccount;
- (id)ensureDeviceUnlockedSinceBoot;
- (id)plistWithRequest:(id)request;
- (id)serverRequest:(id)request toFormat:(int64_t)format;
- (id)signedRequestWithEndpoint:(id)endpoint method:(id)method headers:(id)headers plistBody:(id)body;
- (id)signedRequestWithURL:(id)l method:(id)method headers:(id)headers plistBody:(id)body requestFormat:(int64_t)format responseFormat:(int64_t)responseFormat;
- (id)standardPlistRequestWithUrl:(id)url method:(id)method plistBody:(id)body;
- (id)standardRequestWithEndpoint:(id)endpoint method:(id)method plistBody:(id)body requestFormat:(int64_t)format responseFormat:(int64_t)responseFormat;
- (id)standardRequestWithURL:(id)l grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner method:(id)method body:(id)body;
- (id)standardRequestWithURL:(id)l grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner method:(id)method body:(id)body requestFormat:(int64_t)format responseFormat:(int64_t)responseFormat;
- (id)standardRequestWithURL:(id)l method:(id)method body:(id)body requestFormat:(int64_t)format responseFormat:(int64_t)responseFormat;
- (void)setAcceptHeaderForRequest:(id)request format:(int64_t)format;
- (void)setContentTypeHeaderForRequest:(id)request format:(int64_t)format;
@end

@implementation FANetworkService

- (id)ensureDeviceUnlockedSinceBoot
{
  deviceInfo = [(FANetworkService *)self deviceInfo];
  if (deviceInfo && (v4 = deviceInfo, -[FANetworkService deviceInfo](self, "deviceInfo"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 unlockedSinceBoot], v5, v4, v6))
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

- (FANetworkService)initWithAccount:(id)account deviceInfo:(id)info urlProvider:(id)provider urlSession:(id)session familyRefreshActivityScheduler:(id)scheduler
{
  accountCopy = account;
  infoCopy = info;
  providerCopy = provider;
  sessionCopy = session;
  schedulerCopy = scheduler;
  v21.receiver = self;
  v21.super_class = FANetworkService;
  v17 = [(FANetworkService *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_account, account);
    objc_storeStrong(&v18->_urlProvider, provider);
    objc_storeStrong(&v18->_urlSession, session);
    objc_storeStrong(&v18->_deviceInfo, info);
    objc_storeStrong(&v18->_familyRefreshActivityScheduler, scheduler);
  }

  return v18;
}

- (id)signedRequestWithEndpoint:(id)endpoint method:(id)method headers:(id)headers plistBody:(id)body
{
  methodCopy = method;
  headersCopy = headers;
  bodyCopy = body;
  endpointCopy = endpoint;
  urlProvider = [(FANetworkService *)self urlProvider];
  v15 = [urlProvider URLForEndpoint:endpointCopy];

  then = [v15 then];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001E92C;
  v23[3] = &unk_1000A7308;
  v23[4] = self;
  v24 = methodCopy;
  v25 = headersCopy;
  v26 = bodyCopy;
  v17 = then[2];
  v18 = bodyCopy;
  v19 = headersCopy;
  v20 = methodCopy;
  v21 = v17(then, v23);

  return v21;
}

- (void)setAcceptHeaderForRequest:(id)request format:(int64_t)format
{
  requestCopy = request;
  if (format == 2)
  {
    v6 = @"application/json";
  }

  else
  {
    if (format != 1)
    {
      goto LABEL_6;
    }

    v6 = @"application/x-plist";
  }

  v7 = requestCopy;
  [requestCopy setValue:v6 forHTTPHeaderField:@"Accept"];
  requestCopy = v7;
LABEL_6:
}

- (void)setContentTypeHeaderForRequest:(id)request format:(int64_t)format
{
  requestCopy = request;
  if (format == 2)
  {
    v6 = @"application/json";
  }

  else
  {
    if (format != 1)
    {
      goto LABEL_6;
    }

    v6 = @"application/x-plist";
  }

  v7 = requestCopy;
  [requestCopy setValue:v6 forHTTPHeaderField:@"Content-Type"];
  requestCopy = v7;
LABEL_6:
}

- (id)signedRequestWithURL:(id)l method:(id)method headers:(id)headers plistBody:(id)body requestFormat:(int64_t)format responseFormat:(int64_t)responseFormat
{
  methodCopy = method;
  bodyCopy = body;
  headersCopy = headers;
  v17 = [NSMutableURLRequest requestWithURL:l];
  account = [(FANetworkService *)self account];

  if (account)
  {
    account2 = [(FANetworkService *)self account];
    [v17 aa_addBasicAuthorizationHeaderWithAccount:account2 preferUsingPassword:0];

    [v17 ak_addAnisetteHeaders];
  }

  [v17 ak_addClientInfoHeader];
  if (_os_feature_enabled_impl())
  {
    [v17 setValue:@"true" forHTTPHeaderField:@"X-iCloud-Experiment-Mode"];
  }

  [(FANetworkService *)self setContentTypeHeaderForRequest:v17 format:format];
  [(FANetworkService *)self setAcceptHeaderForRequest:v17 format:responseFormat];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001ECD8;
  v30[3] = &unk_1000A7330;
  v20 = v17;
  v31 = v20;
  [headersCopy enumerateKeysAndObjectsUsingBlock:v30];

  if (methodCopy)
  {
    [v20 setHTTPMethod:methodCopy];
  }

  if (bodyCopy)
  {
    if (format == 2)
    {
      v29 = 0;
      v21 = [NSJSONSerialization dataWithJSONObject:bodyCopy options:0 error:&v29];
      v22 = v29;
    }

    else
    {
      v28 = 0;
      v21 = [NSPropertyListSerialization dataWithPropertyList:bodyCopy format:100 options:0 error:&v28];
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

- (id)dataWithRequest:(id)request
{
  requestCopy = request;
  v5 = [AAFPromise alloc];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001EDAC;
  v9[3] = &unk_1000A6120;
  v9[4] = self;
  v10 = requestCopy;
  v6 = requestCopy;
  v7 = [v5 initWithBlock:v9];

  return v7;
}

- (id)plistWithRequest:(id)request
{
  v4 = [(FANetworkService *)self dataWithRequest:request];
  then = [v4 then];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001F020;
  v8[3] = &unk_1000A7380;
  v8[4] = self;
  v6 = (then)[2](then, v8);

  return v6;
}

- (id)serverRequest:(id)request toFormat:(int64_t)format
{
  v6 = [(FANetworkService *)self dataWithRequest:request];
  then = [v6 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001F268;
  v10[3] = &unk_1000A73A8;
  v10[4] = self;
  v10[5] = format;
  v8 = (then)[2](then, v10);

  return v8;
}

- (id)_convertServerResponse:(id)response toFormat:(int64_t)format
{
  responseCopy = response;
  body = [responseCopy body];

  if (body)
  {
    body2 = [responseCopy body];
    if (format == 2)
    {
      v22 = 0;
      v8 = [NSJSONSerialization JSONObjectWithData:body2 options:0 error:&v22];
      v9 = v22;
    }

    else
    {
      v21 = 0;
      v8 = [NSPropertyListSerialization propertyListWithData:body2 options:0 format:0 error:&v21];
      v9 = v21;
    }

    v11 = v9;

    if (v11)
    {
      v12 = [NSString alloc];
      body3 = [responseCopy body];
      v14 = [v12 initWithData:body3 encoding:4];

      v15 = _FALogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = v16;
        hTTPResponse = [responseCopy HTTPResponse];
        allHeaderFields = [hTTPResponse allHeaderFields];
        *buf = 138413058;
        v24 = v16;
        v25 = 2112;
        v26 = v11;
        v27 = 2112;
        v28 = v14;
        v29 = 2112;
        v30 = allHeaderFields;
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

- (id)standardRequestWithEndpoint:(id)endpoint method:(id)method plistBody:(id)body requestFormat:(int64_t)format responseFormat:(int64_t)responseFormat
{
  endpointCopy = endpoint;
  methodCopy = method;
  bodyCopy = body;
  ensureDeviceUnlockedSinceBoot = [(FANetworkService *)self ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10001F96C;
  v40[3] = &unk_1000A5F78;
  v40[4] = self;
  v30 = (then)[2](then, v40);
  then2 = [v30 then];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10001F974;
  v38[3] = &unk_1000A73D0;
  v38[4] = self;
  v39 = endpointCopy;
  v17 = then2[2];
  v29 = endpointCopy;
  v18 = v17(then2, v38);
  then3 = [v18 then];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10001F9CC;
  v33[3] = &unk_1000A73F8;
  v33[4] = self;
  v34 = methodCopy;
  v35 = bodyCopy;
  formatCopy = format;
  responseFormatCopy = responseFormat;
  v20 = then3[2];
  v28 = bodyCopy;
  v27 = methodCopy;
  v21 = v20(then3, v33);
  then4 = [v21 then];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10001F9EC;
  v32[3] = &unk_1000A7420;
  v32[4] = self;
  v32[5] = responseFormat;
  v23 = (then4)[2](then4, v32);
  then5 = [v23 then];
  v25 = (then5)[2](then5, &stru_1000A7440);

  return v25;
}

- (id)standardRequestWithURL:(id)l method:(id)method body:(id)body requestFormat:(int64_t)format responseFormat:(int64_t)responseFormat
{
  lCopy = l;
  methodCopy = method;
  bodyCopy = body;
  ensureDeviceUnlockedSinceBoot = [(FANetworkService *)self ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10001FC6C;
  v36[3] = &unk_1000A5F78;
  v36[4] = self;
  v16 = (then)[2](then, v36);
  then2 = [v16 then];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001FC74;
  v30[3] = &unk_1000A7468;
  v30[4] = self;
  v31 = lCopy;
  v32 = methodCopy;
  v33 = bodyCopy;
  formatCopy = format;
  responseFormatCopy = responseFormat;
  v18 = then2[2];
  v27 = bodyCopy;
  v19 = methodCopy;
  v20 = lCopy;
  v21 = v18(then2, v30);
  then3 = [v21 then];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10001FC90;
  v29[3] = &unk_1000A7420;
  v29[4] = self;
  v29[5] = responseFormat;
  v23 = (then3)[2](then3, v29);
  then4 = [v23 then];
  v25 = (then4)[2](then4, &stru_1000A7488);

  return v25;
}

- (id)standardRequestWithURL:(id)l grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner method:(id)method body:(id)body requestFormat:(int64_t)format responseFormat:(int64_t)responseFormat
{
  lCopy = l;
  signerCopy = signer;
  slamSignerCopy = slamSigner;
  methodCopy = method;
  bodyCopy = body;
  ensureDeviceUnlockedSinceBoot = [(FANetworkService *)self ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10001FF70;
  v48[3] = &unk_1000A5F78;
  v48[4] = self;
  v35 = (then)[2](then, v48);
  then2 = [v35 then];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10001FF78;
  v42[3] = &unk_1000A7468;
  v42[4] = self;
  v43 = lCopy;
  v44 = methodCopy;
  v45 = bodyCopy;
  formatCopy = format;
  responseFormatCopy = responseFormat;
  v20 = then2[2];
  v33 = bodyCopy;
  v31 = methodCopy;
  v30 = lCopy;
  v21 = v20(then2, v42);
  then3 = [v21 then];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10001FF94;
  v37[3] = &unk_1000A74B0;
  v38 = slamSignerCopy;
  v39 = signerCopy;
  selfCopy = self;
  responseFormatCopy2 = responseFormat;
  v23 = then3[2];
  v24 = signerCopy;
  v25 = slamSignerCopy;
  v26 = v23(then3, v37);
  then4 = [v26 then];
  v28 = (then4)[2](then4, &stru_1000A74D0);

  return v28;
}

- (id)standardPlistRequestWithUrl:(id)url method:(id)method plistBody:(id)body
{
  urlCopy = url;
  methodCopy = method;
  bodyCopy = body;
  ensureDeviceUnlockedSinceBoot = [(FANetworkService *)self ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100020268;
  v30[3] = &unk_1000A5F78;
  v30[4] = self;
  v12 = (then)[2](then, v30);
  then2 = [v12 then];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100020270;
  v26[3] = &unk_1000A74F8;
  v26[4] = self;
  v27 = urlCopy;
  v28 = methodCopy;
  v29 = bodyCopy;
  v14 = then2[2];
  v23 = bodyCopy;
  v15 = methodCopy;
  v16 = urlCopy;
  v17 = v14(then2, v26);
  then3 = [v17 then];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100020284;
  v25[3] = &unk_1000A7520;
  v25[4] = self;
  v19 = (then3)[2](then3, v25);
  then4 = [v19 then];
  v21 = (then4)[2](then4, &stru_1000A7540);

  return v21;
}

- (id)standardRequestWithURL:(id)l grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner method:(id)method body:(id)body
{
  lCopy = l;
  signerCopy = signer;
  slamSignerCopy = slamSigner;
  methodCopy = method;
  bodyCopy = body;
  ensureDeviceUnlockedSinceBoot = [(FANetworkService *)self ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100020590;
  v40[3] = &unk_1000A5F78;
  v40[4] = self;
  v17 = (then)[2](then, v40);
  then2 = [v17 then];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100020598;
  v36[3] = &unk_1000A74F8;
  v36[4] = self;
  v37 = lCopy;
  v38 = methodCopy;
  v39 = bodyCopy;
  v19 = then2[2];
  v29 = bodyCopy;
  v20 = methodCopy;
  v21 = lCopy;
  v22 = v19(then2, v36);
  then3 = [v22 then];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000205B8;
  v32[3] = &unk_1000A7568;
  v33 = slamSignerCopy;
  v34 = signerCopy;
  selfCopy = self;
  v24 = then3[2];
  v25 = signerCopy;
  v26 = slamSignerCopy;
  v27 = v24(then3, v32);

  return v27;
}

@end