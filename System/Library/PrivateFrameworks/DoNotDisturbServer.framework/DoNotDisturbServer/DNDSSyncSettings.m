@interface DNDSSyncSettings
- (BOOL)isEqual:(id)a3;
- (DNDSSyncSettings)initWithPairSyncEnabled:(BOOL)a3 cloudSyncEnabled:(BOOL)a4;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSSyncSettings

- (DNDSSyncSettings)initWithPairSyncEnabled:(BOOL)a3 cloudSyncEnabled:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = DNDSSyncSettings;
  result = [(DNDSSyncSettings *)&v7 init];
  if (result)
  {
    result->_pairSyncEnabled = a3;
    result->_cloudSyncEnabled = a4;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [(DNDSSyncSettings *)self isPairSyncEnabled];
  v4 = [(DNDSSyncSettings *)self isCloudSyncEnabled];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSSyncSettings *)self isPairSyncEnabled];
      if (v6 == [(DNDSSyncSettings *)v5 isPairSyncEnabled])
      {
        v8 = [(DNDSSyncSettings *)self isCloudSyncEnabled];
        v7 = v8 ^ [(DNDSSyncSettings *)v5 isCloudSyncEnabled]^ 1;
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableSyncSettings alloc];
  v5 = [(DNDSSyncSettings *)self isPairSyncEnabled];
  v6 = [(DNDSSyncSettings *)self isCloudSyncEnabled];

  return [(DNDSSyncSettings *)v4 initWithPairSyncEnabled:v5 cloudSyncEnabled:v6];
}

@end