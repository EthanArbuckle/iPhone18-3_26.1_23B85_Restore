@interface HMSetupAccessoryPayload(Internal)
- (id)debugDescription;
- (id)flagsDescription;
@end

@implementation HMSetupAccessoryPayload(Internal)

- (id)debugDescription
{
  v2 = isInternalBuild();
  v3 = MEMORY[0x277CCACA8];
  accessoryName = [self accessoryName];
  if (v2)
  {
    setupID = [self setupID];
    setupCode = [self setupCode];
    flagsDescription = [self flagsDescription];
    categoryNumber = [self categoryNumber];
    v9 = [v3 stringWithFormat:@"Accessory Setup payload: Name: %@, SetupID: %@, SetupCode: %@, Flags: %@, Category: %@", accessoryName, setupID, setupCode, flagsDescription, categoryNumber];
  }

  else
  {
    setupID = [self flagsDescription];
    v9 = [v3 stringWithFormat:@"Accessory Setup payload: Name: %@, Flags: %@", accessoryName, setupID];
  }

  return v9;
}

- (id)flagsDescription
{
  string = [MEMORY[0x277CCAB68] string];
  if ([self isPaired])
  {
    [string appendString:@"Paired  "];
  }

  if ([self supportsIP])
  {
    [string appendString:@"IP  "];
  }

  if ([self supportsWAC])
  {
    [string appendString:@"WAC  "];
  }

  if ([self supportsBTLE])
  {
    [string appendString:@"BTLE  "];
  }

  v3 = [string copy];

  return v3;
}

@end