@interface FAUpdateFamilyMemberFlagOperation
- (FAUpdateFamilyMemberFlagOperation)initWithNetworkService:(id)a3 accountSigner:(id)a4 memberDSID:(id)a5 flag:(id)a6 enabled:(BOOL)a7;
- (id)_flagKey;
- (id)_flagType;
- (id)updateMemberFlag;
- (id)urlByAddingParamsToURL:(id)a3;
- (void)_addBodyToRequest:(id)a3;
- (void)_addHeadersToRequest:(id)a3;
@end

@implementation FAUpdateFamilyMemberFlagOperation

- (FAUpdateFamilyMemberFlagOperation)initWithNetworkService:(id)a3 accountSigner:(id)a4 memberDSID:(id)a5 flag:(id)a6 enabled:(BOOL)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = FAUpdateFamilyMemberFlagOperation;
  v15 = [(FANetworkClient *)&v20 initWithNetworkService:a3];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dsid, a5);
    v17 = objc_retainBlock(v12);
    accountSigner = v16->_accountSigner;
    v16->_accountSigner = v17;

    objc_storeStrong(&v16->_flag, a6);
    v16->_enabled = a7;
  }

  return v16;
}

- (id)updateMemberFlag
{
  v15 = [(FANetworkClient *)self networkService];
  v14 = [v15 ensureDeviceUnlockedSinceBoot];
  v3 = [v14 then];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000D640;
  v20[3] = &unk_1000A5F78;
  v20[4] = self;
  v4 = (v3)[2](v3, v20);
  v5 = [v4 then];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000D690;
  v19[3] = &unk_1000A6770;
  v19[4] = self;
  v6 = (v5)[2](v5, v19);
  v7 = [v6 then];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D6E8;
  v18[3] = &unk_1000A6798;
  v18[4] = self;
  v8 = (v7)[2](v7, v18);
  v9 = [v8 then];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000D7B4;
  v17[3] = &unk_1000A67C0;
  v17[4] = self;
  v10 = (v9)[2](v9, v17);
  v11 = [v10 then];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000D820;
  v16[3] = &unk_1000A67E8;
  v16[4] = self;
  v12 = (v11)[2](v11, v16);

  return v12;
}

- (id)urlByAddingParamsToURL:(id)a3
{
  v4 = a3;
  v5 = [[NSURLComponents alloc] initWithURL:v4 resolvingAgainstBaseURL:0];

  v6 = [NSURLQueryItem alloc];
  v7 = [(NSNumber *)self->_dsid stringValue];
  v8 = [v6 initWithName:@"memberId" value:v7];
  v9 = [NSURLQueryItem alloc];
  v10 = [(FAUpdateFamilyMemberFlagOperation *)self _flagType];
  v11 = [v9 initWithName:@"flagType" value:v10];
  v18[1] = v11;
  v12 = [NSURLQueryItem alloc];
  if (self->_enabled)
  {
    v13 = @"true";
  }

  else
  {
    v13 = @"false";
  }

  v14 = [v12 initWithName:@"flagValue" value:v13];
  v18[2] = v14;
  v15 = [NSArray arrayWithObjects:v18 count:3];
  [v5 setQueryItems:v15];

  v16 = [v5 URL];

  return v16;
}

- (void)_addHeadersToRequest:(id)a3
{
  v4 = a3;
  [v4 ak_addAnisetteHeaders];
  [v4 ak_addClientInfoHeader];
  [v4 ak_addDeviceUDIDHeader];
  [v4 ak_addInternalBuildHeader];
  v5 = +[NSLocale preferredLanguages];
  v6 = [v5 componentsJoinedByString:{@", "}];
  [v4 setValue:v6 forHTTPHeaderField:@"X-MMe-Language"];

  v7 = +[NSTimeZone systemTimeZone];
  v8 = [v7 abbreviation];
  [v4 setValue:v8 forHTTPHeaderField:@"X-MMe-Timezone"];

  v9 = [(FAUpdateFamilyMemberFlagOperation *)self accountSigner];
  v9[2](v9, v4);
}

- (void)_addBodyToRequest:(id)a3
{
  v4 = a3;
  v5 = [(FAUpdateFamilyMemberFlagOperation *)self _flagKey];
  v6 = v5;
  if (v5)
  {
    if (self->_enabled)
    {
      v7 = @"true";
    }

    else
    {
      v7 = @"false";
    }

    v9 = v5;
    v10 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v4 aa_setBodyWithParameters:v8];
  }
}

- (id)_flagType
{
  if ([(NSString *)self->_flag isEqualToString:FAMemberFlagScreenTime])
  {
    return @"4";
  }

  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000784DC(&self->_flag, v4);
  }

  return 0;
}

- (id)_flagKey
{
  if ([(NSString *)self->_flag isEqualToString:FAMemberFlagScreenTime])
  {
    return @"screen-time";
  }

  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1000784DC(&self->_flag, v4);
  }

  return 0;
}

@end