@interface MCPolarisUtils
+ (id)sharedUtils;
- (BOOL)_permissiveLocationAuthWithManager:(id)a3;
- (MCPolarisUtils)init;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation MCPolarisUtils

+ (id)sharedUtils
{
  if (qword_100023328 != -1)
  {
    sub_10000FA20();
  }

  v3 = qword_100023330;

  return v3;
}

- (BOOL)_permissiveLocationAuthWithManager:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = v3 && [v3 authorizationStatus] >= 3 && objc_msgSend(v4, "accuracyAuthorization") == 0;

  return v5;
}

- (MCPolarisUtils)init
{
  v22.receiver = self;
  v22.super_class = MCPolarisUtils;
  v2 = [(MCPolarisUtils *)&v22 init];
  if (v2)
  {
    v3 = 1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.geocorrectiond.location", v4);
    locationQueue = v2->_locationQueue;
    v2->_locationQueue = v5;

    v7 = v2->_locationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C0A0;
    block[3] = &unk_10001C650;
    v8 = v2;
    v21 = v8;
    dispatch_sync(v7, block);
    v8->_hasSufficientLocationAuth = [(MCPolarisUtils *)v8 _permissiveLocationAuthWithManager:v8->_locationManager];
    v9 = objc_alloc_init(ACAccountStore);
    v10 = [v9 aa_primaryAppleAccount];
    v8->_hasPrimaryAppleAccount = v10 != 0;
    v8->_isManagedAppleAccount = [v10 aa_isManagedAppleID];
    v11 = [v10 aa_personID];
    appleAccountPersonId = v8->_appleAccountPersonId;
    v8->_appleAccountPersonId = v11;

    v13 = [v10 aa_mapsToken];
    appleAccountMapsToken = v8->_appleAccountMapsToken;
    v8->_appleAccountMapsToken = v13;

    v15 = +[MCProfileConnection sharedConnection];
    if ([v15 userMode] != 1)
    {
      v3 = [v15 isEphemeralMultiUser];
    }

    v8->_isMultiUserMode = v3;
    BOOL = GEOConfigGetBOOL();
    v17 = +[GEOPlatform sharedPlatform];
    if ([v17 isInternalInstall])
    {
      HasValue = _GEOConfigHasValue();

      if (HasValue)
      {
        BOOL = GEOConfigGetBOOL();
      }
    }

    else
    {
    }

    v8->_isAddressCorrectionAdministrativelyDisabled = BOOL ^ 1;
    v8->_isUserOptedIn = GEOConfigGetInteger() == 2;
  }

  return v2;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = [(MCPolarisUtils *)self _permissiveLocationAuthWithManager:a3];

  [(MCPolarisUtils *)self setHasSufficientLocationAuth:v4];
}

@end