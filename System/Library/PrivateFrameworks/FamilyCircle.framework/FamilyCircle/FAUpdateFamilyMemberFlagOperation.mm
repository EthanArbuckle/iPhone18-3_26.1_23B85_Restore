@interface FAUpdateFamilyMemberFlagOperation
- (FAUpdateFamilyMemberFlagOperation)initWithNetworkService:(id)service accountSigner:(id)signer memberDSID:(id)d flag:(id)flag enabled:(BOOL)enabled;
- (id)_flagKey;
- (id)_flagType;
- (id)updateMemberFlag;
- (id)urlByAddingParamsToURL:(id)l;
- (void)_addBodyToRequest:(id)request;
- (void)_addHeadersToRequest:(id)request;
@end

@implementation FAUpdateFamilyMemberFlagOperation

- (FAUpdateFamilyMemberFlagOperation)initWithNetworkService:(id)service accountSigner:(id)signer memberDSID:(id)d flag:(id)flag enabled:(BOOL)enabled
{
  signerCopy = signer;
  dCopy = d;
  flagCopy = flag;
  v20.receiver = self;
  v20.super_class = FAUpdateFamilyMemberFlagOperation;
  v15 = [(FANetworkClient *)&v20 initWithNetworkService:service];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dsid, d);
    v17 = objc_retainBlock(signerCopy);
    accountSigner = v16->_accountSigner;
    v16->_accountSigner = v17;

    objc_storeStrong(&v16->_flag, flag);
    v16->_enabled = enabled;
  }

  return v16;
}

- (id)updateMemberFlag
{
  networkService = [(FANetworkClient *)self networkService];
  ensureDeviceUnlockedSinceBoot = [networkService ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000D640;
  v20[3] = &unk_1000A5F78;
  v20[4] = self;
  v4 = (then)[2](then, v20);
  then2 = [v4 then];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000D690;
  v19[3] = &unk_1000A6770;
  v19[4] = self;
  v6 = (then2)[2](then2, v19);
  then3 = [v6 then];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D6E8;
  v18[3] = &unk_1000A6798;
  v18[4] = self;
  v8 = (then3)[2](then3, v18);
  then4 = [v8 then];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000D7B4;
  v17[3] = &unk_1000A67C0;
  v17[4] = self;
  v10 = (then4)[2](then4, v17);
  then5 = [v10 then];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000D820;
  v16[3] = &unk_1000A67E8;
  v16[4] = self;
  v12 = (then5)[2](then5, v16);

  return v12;
}

- (id)urlByAddingParamsToURL:(id)l
{
  lCopy = l;
  v5 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];

  v6 = [NSURLQueryItem alloc];
  stringValue = [(NSNumber *)self->_dsid stringValue];
  v8 = [v6 initWithName:@"memberId" value:stringValue];
  v9 = [NSURLQueryItem alloc];
  _flagType = [(FAUpdateFamilyMemberFlagOperation *)self _flagType];
  v11 = [v9 initWithName:@"flagType" value:_flagType];
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

- (void)_addHeadersToRequest:(id)request
{
  requestCopy = request;
  [requestCopy ak_addAnisetteHeaders];
  [requestCopy ak_addClientInfoHeader];
  [requestCopy ak_addDeviceUDIDHeader];
  [requestCopy ak_addInternalBuildHeader];
  v5 = +[NSLocale preferredLanguages];
  v6 = [v5 componentsJoinedByString:{@", "}];
  [requestCopy setValue:v6 forHTTPHeaderField:@"X-MMe-Language"];

  v7 = +[NSTimeZone systemTimeZone];
  abbreviation = [v7 abbreviation];
  [requestCopy setValue:abbreviation forHTTPHeaderField:@"X-MMe-Timezone"];

  accountSigner = [(FAUpdateFamilyMemberFlagOperation *)self accountSigner];
  accountSigner[2](accountSigner, requestCopy);
}

- (void)_addBodyToRequest:(id)request
{
  requestCopy = request;
  _flagKey = [(FAUpdateFamilyMemberFlagOperation *)self _flagKey];
  v6 = _flagKey;
  if (_flagKey)
  {
    if (self->_enabled)
    {
      v7 = @"true";
    }

    else
    {
      v7 = @"false";
    }

    v9 = _flagKey;
    v10 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [requestCopy aa_setBodyWithParameters:v8];
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