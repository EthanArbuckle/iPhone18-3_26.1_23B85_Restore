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

- (BDSICloudIdentityToken)initWithCurrentIdentity
{
  mEMORY[0x1E698F538] = [MEMORY[0x1E698F538] sharedProvider];
  iCloudIdentity = [mEMORY[0x1E698F538] iCloudIdentity];

  v5 = [(BDSICloudIdentityToken *)self _hashFor:iCloudIdentity];
  v6 = [(BDSICloudIdentityToken *)self initWithToken:v5];

  return v6;
}

+ (id)tokenForCurrentIdentityIfICloudDriveEnabled
{
  mEMORY[0x1E698F538] = [MEMORY[0x1E698F538] sharedProvider];
  if ([mEMORY[0x1E698F538] isUserSignedInToiCloud] && +[BDSSyncUserDefaults isICloudDriveSyncOptedIn](BDSSyncUserDefaults, "isICloudDriveSyncOptedIn"))
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
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@=%p %@>", v5, self, self->_token];

  return v6;
}

- (id)_hashFor:(id)for
{
  v3 = [for dataUsingEncoding:4];
  bu_md5UpperCase = [v3 bu_md5UpperCase];

  return bu_md5UpperCase;
}

@end