@interface FAUpdateFamilyMemberFlagsOperation
- (FAUpdateFamilyMemberFlagsOperation)initWithNetworkService:(id)service grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner memberDSID:(id)d flags:(id)flags;
- (id)updateMemberFlags;
- (void)_addBodyToRequest:(id)request;
- (void)_addHeadersToRequest:(id)request;
@end

@implementation FAUpdateFamilyMemberFlagsOperation

- (FAUpdateFamilyMemberFlagsOperation)initWithNetworkService:(id)service grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner memberDSID:(id)d flags:(id)flags
{
  signerCopy = signer;
  slamSignerCopy = slamSigner;
  dCopy = d;
  flagsCopy = flags;
  v20.receiver = self;
  v20.super_class = FAUpdateFamilyMemberFlagsOperation;
  v17 = [(FANetworkClient *)&v20 initWithNetworkService:service];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_dsid, d);
    objc_storeStrong(&v18->_flags, flags);
    objc_storeStrong(&v18->_grandSlamSigner, signer);
    objc_storeStrong(&v18->_familyGrandSlamSigner, slamSigner);
  }

  return v18;
}

- (id)updateMemberFlags
{
  networkService = [(FANetworkClient *)self networkService];
  ensureDeviceUnlockedSinceBoot = [networkService ensureDeviceUnlockedSinceBoot];
  then = [ensureDeviceUnlockedSinceBoot then];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100013D58;
  v20[3] = &unk_1000A5F78;
  v20[4] = self;
  v4 = (then)[2](then, v20);
  then2 = [v4 then];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100013DA8;
  v19[3] = &unk_1000A6770;
  v19[4] = self;
  v6 = (then2)[2](then2, v19);
  then3 = [v6 then];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100013E00;
  v18[3] = &unk_1000A6798;
  v18[4] = self;
  v8 = (then3)[2](then3, v18);
  then4 = [v8 then];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100013E74;
  v17[3] = &unk_1000A67C0;
  v17[4] = self;
  v10 = (then4)[2](then4, v17);
  then5 = [v10 then];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100013EE0;
  v16[3] = &unk_1000A6AF0;
  v16[4] = self;
  v12 = (then5)[2](then5, v16);

  return v12;
}

- (void)_addHeadersToRequest:(id)request
{
  requestCopy = request;
  networkService = [(FANetworkClient *)self networkService];
  account = [networkService account];
  [requestCopy aa_addBasicAuthorizationHeaderWithAccount:account preferUsingPassword:0];

  networkService2 = [(FANetworkClient *)self networkService];
  account2 = [networkService2 account];
  [requestCopy aa_addLoggedInAppleIDHeaderWithAccount:account2];

  [requestCopy ak_addAnisetteHeaders];
  [requestCopy ak_addClientInfoHeader];
  [requestCopy ak_addDeviceUDIDHeader];
  [requestCopy ak_addInternalBuildHeader];
  v8 = +[NSLocale preferredLanguages];
  v9 = [v8 componentsJoinedByString:{@", "}];
  [requestCopy setValue:v9 forHTTPHeaderField:@"X-MMe-Language"];

  v10 = +[NSTimeZone systemTimeZone];
  abbreviation = [v10 abbreviation];
  [requestCopy setValue:abbreviation forHTTPHeaderField:@"X-MMe-Timezone"];

  [requestCopy setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  [(AAGrandSlamSigner *)self->_grandSlamSigner signURLRequest:requestCopy];
  [(AAGrandSlamSigner *)self->_familyGrandSlamSigner signURLRequest:requestCopy];
}

- (void)_addBodyToRequest:(id)request
{
  requestCopy = request;
  allKeys = [(NSDictionary *)self->_flags allKeys];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [allKeys count]);
  if ([allKeys count])
  {
    v6 = 0;
    do
    {
      v7 = [allKeys objectAtIndexedSubscript:v6];
      v15[1] = @"flagValue";
      v16[0] = v7;
      v15[0] = @"flagName";
      v8 = [(NSDictionary *)self->_flags objectForKeyedSubscript:v7];
      v16[1] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
      [v5 setObject:v9 atIndexedSubscript:v6];

      ++v6;
    }

    while ([allKeys count] > v6);
  }

  dsid = self->_dsid;
  v13[0] = @"memberDSID";
  v13[1] = @"memberFlags";
  v14[0] = dsid;
  v14[1] = v5;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  [requestCopy aa_setBodyWithParameters:v11];
}

@end