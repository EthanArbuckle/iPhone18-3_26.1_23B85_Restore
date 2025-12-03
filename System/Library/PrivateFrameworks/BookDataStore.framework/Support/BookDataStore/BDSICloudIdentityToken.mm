@interface BDSICloudIdentityToken
+ (id)tokenForCurrentIdentityIfCloudKitEnabled;
+ (id)tokenForCurrentIdentityIfICloudDriveEnabled;
- (BDSICloudIdentityToken)initWithCurrentIdentity;
- (BDSICloudIdentityToken)initWithToken:(id)token;
- (BOOL)isEqual:(id)equal;
- (id)_hashFor:(id)for;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initFromArchive:(id)archive;
@end

@implementation BDSICloudIdentityToken

- (BDSICloudIdentityToken)initWithCurrentIdentity
{
  v3 = +[BUAccountsProvider sharedProvider];
  iCloudIdentity = [v3 iCloudIdentity];

  v5 = [(BDSICloudIdentityToken *)self _hashFor:iCloudIdentity];
  v6 = [(BDSICloudIdentityToken *)self initWithToken:v5];

  return v6;
}

+ (id)tokenForCurrentIdentityIfCloudKitEnabled
{
  if (+[BDSSyncUserDefaults isSignedIntoICloud](BDSSyncUserDefaults, "isSignedIntoICloud") && +[BDSSyncUserDefaults isCloudKitSyncOptedIn])
  {
    initWithCurrentIdentity = [[BDSICloudIdentityToken alloc] initWithCurrentIdentity];
  }

  else
  {
    initWithCurrentIdentity = 0;
  }

  return initWithCurrentIdentity;
}

+ (id)tokenForCurrentIdentityIfICloudDriveEnabled
{
  v2 = +[BUAccountsProvider sharedProvider];
  if ([v2 isUserSignedInToiCloud] && +[BDSSyncUserDefaults isICloudDriveSyncOptedIn](BDSSyncUserDefaults, "isICloudDriveSyncOptedIn"))
  {
    v3 = +[BDSSyncUserDefaults isGlobalICloudDriveSyncOptedIn];

    if (v3)
    {
      initWithCurrentIdentity = [[BDSICloudIdentityToken alloc] initWithCurrentIdentity];
      goto LABEL_7;
    }
  }

  else
  {
  }

  initWithCurrentIdentity = 0;
LABEL_7:

  return initWithCurrentIdentity;
}

- (BDSICloudIdentityToken)initWithToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v10.receiver = self;
    v10.super_class = BDSICloudIdentityToken;
    v5 = [(BDSICloudIdentityToken *)&v10 init];
    if (v5)
    {
      v6 = [tokenCopy copy];
      token = v5->_token;
      v5->_token = v6;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initFromArchive:(id)archive
{
  archiveCopy = archive;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(BDSICloudIdentityToken *)self initWithToken:archiveCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v6 = selfCopy;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      token = [(BDSICloudIdentityToken *)self token];
      token2 = [(BDSICloudIdentityToken *)equalCopy token];
      v7 = [token isEqualToString:token2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  token = [(BDSICloudIdentityToken *)self token];
  v6 = [v4 initWithToken:token];

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@=%p %@>", v4, self, self->_token];

  return v5;
}

- (id)_hashFor:(id)for
{
  v3 = [for dataUsingEncoding:4];
  bu_md5UpperCase = [v3 bu_md5UpperCase];

  return bu_md5UpperCase;
}

@end