@interface BDSICloudIdentityToken
+ (id)tokenForCurrentIdentityIfCloudKitEnabled;
+ (id)tokenForCurrentIdentityIfICloudDriveEnabled;
- (BDSICloudIdentityToken)initWithCurrentIdentity;
- (BDSICloudIdentityToken)initWithToken:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_hashFor:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromArchive:(id)a3;
@end

@implementation BDSICloudIdentityToken

- (BDSICloudIdentityToken)initWithCurrentIdentity
{
  v3 = +[BUAccountsProvider sharedProvider];
  v4 = [v3 iCloudIdentity];

  v5 = [(BDSICloudIdentityToken *)self _hashFor:v4];
  v6 = [(BDSICloudIdentityToken *)self initWithToken:v5];

  return v6;
}

+ (id)tokenForCurrentIdentityIfCloudKitEnabled
{
  if (+[BDSSyncUserDefaults isSignedIntoICloud](BDSSyncUserDefaults, "isSignedIntoICloud") && +[BDSSyncUserDefaults isCloudKitSyncOptedIn])
  {
    v2 = [[BDSICloudIdentityToken alloc] initWithCurrentIdentity];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)tokenForCurrentIdentityIfICloudDriveEnabled
{
  v2 = +[BUAccountsProvider sharedProvider];
  if ([v2 isUserSignedInToiCloud] && +[BDSSyncUserDefaults isICloudDriveSyncOptedIn](BDSSyncUserDefaults, "isICloudDriveSyncOptedIn"))
  {
    v3 = +[BDSSyncUserDefaults isGlobalICloudDriveSyncOptedIn];

    if (v3)
    {
      v4 = [[BDSICloudIdentityToken alloc] initWithCurrentIdentity];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (BDSICloudIdentityToken)initWithToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = BDSICloudIdentityToken;
    v5 = [(BDSICloudIdentityToken *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      token = v5->_token;
      v5->_token = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)initFromArchive:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(BDSICloudIdentityToken *)self initWithToken:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BDSICloudIdentityToken *)self token];
      v6 = [(BDSICloudIdentityToken *)v4 token];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(BDSICloudIdentityToken *)self token];
  v6 = [v4 initWithToken:v5];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@=%p %@>", v4, self, self->_token];

  return v5;
}

- (id)_hashFor:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [v3 bu_md5UpperCase];

  return v4;
}

@end