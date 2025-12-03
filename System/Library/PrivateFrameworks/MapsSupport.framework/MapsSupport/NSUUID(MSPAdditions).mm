@interface NSUUID(MSPAdditions)
+ (id)_maps_UUIDWithUUIDString:()MSPAdditions;
+ (id)_maps_zeroUUID;
- (uint64_t)_maps_compare:()MSPAdditions;
@end

@implementation NSUUID(MSPAdditions)

+ (id)_maps_zeroUUID
{
  if (_maps_zeroUUID_onceToken != -1)
  {
    +[NSUUID(MSPAdditions) _maps_zeroUUID];
  }

  v1 = _maps_zeroUUID_zeroUUID;

  return v1;
}

+ (id)_maps_UUIDWithUUIDString:()MSPAdditions
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:v4];

  _maps_zeroUUID = [objc_opt_class() _maps_zeroUUID];
  LOBYTE(v4) = [v5 isEqual:_maps_zeroUUID];

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (uint64_t)_maps_compare:()MSPAdditions
{
  v12 = *MEMORY[0x277D85DE8];
  *uu1 = 0;
  v11 = 0;
  *uu2 = 0;
  v9 = 0;
  v4 = a3;
  [self getUUIDBytes:uu1];
  [v4 getUUIDBytes:uu2];

  v5 = uuid_compare(uu1, uu2);
  if (v5 < 0)
  {
    result = -1;
  }

  else
  {
    result = v5 != 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end