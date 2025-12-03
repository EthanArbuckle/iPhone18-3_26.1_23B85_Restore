@interface DNDSSyncSettings
- (BOOL)isEqual:(id)equal;
- (DNDSSyncSettings)initWithPairSyncEnabled:(BOOL)enabled cloudSyncEnabled:(BOOL)syncEnabled;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSSyncSettings

- (DNDSSyncSettings)initWithPairSyncEnabled:(BOOL)enabled cloudSyncEnabled:(BOOL)syncEnabled
{
  v7.receiver = self;
  v7.super_class = DNDSSyncSettings;
  result = [(DNDSSyncSettings *)&v7 init];
  if (result)
  {
    result->_pairSyncEnabled = enabled;
    result->_cloudSyncEnabled = syncEnabled;
  }

  return result;
}

- (unint64_t)hash
{
  isPairSyncEnabled = [(DNDSSyncSettings *)self isPairSyncEnabled];
  isCloudSyncEnabled = [(DNDSSyncSettings *)self isCloudSyncEnabled];
  v5 = 2;
  if (!isCloudSyncEnabled)
  {
    v5 = 0;
  }

  return v5 | isPairSyncEnabled;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isPairSyncEnabled = [(DNDSSyncSettings *)self isPairSyncEnabled];
      if (isPairSyncEnabled == [(DNDSSyncSettings *)v5 isPairSyncEnabled])
      {
        isCloudSyncEnabled = [(DNDSSyncSettings *)self isCloudSyncEnabled];
        v7 = isCloudSyncEnabled ^ [(DNDSSyncSettings *)v5 isCloudSyncEnabled]^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if ([(DNDSSyncSettings *)self isPairSyncEnabled])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(DNDSSyncSettings *)self isCloudSyncEnabled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@: %p; pairSyncEnabled: %@; cloudSyncEnabled: %@>", v4, self, v5, v6];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableSyncSettings alloc];
  isPairSyncEnabled = [(DNDSSyncSettings *)self isPairSyncEnabled];
  isCloudSyncEnabled = [(DNDSSyncSettings *)self isCloudSyncEnabled];

  return [(DNDSSyncSettings *)v4 initWithPairSyncEnabled:isPairSyncEnabled cloudSyncEnabled:isCloudSyncEnabled];
}

@end