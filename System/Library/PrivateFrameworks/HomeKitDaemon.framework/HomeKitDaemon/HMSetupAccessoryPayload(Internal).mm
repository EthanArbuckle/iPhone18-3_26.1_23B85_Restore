@interface HMSetupAccessoryPayload(Internal)
- (id)debugDescription;
- (id)flagsDescription;
@end

@implementation HMSetupAccessoryPayload(Internal)

- (id)debugDescription
{
  v2 = isInternalBuild();
  v3 = MEMORY[0x277CCACA8];
  v4 = [a1 accessoryName];
  if (v2)
  {
    v5 = [a1 setupID];
    v6 = [a1 setupCode];
    v7 = [a1 flagsDescription];
    v8 = [a1 categoryNumber];
    v9 = [v3 stringWithFormat:@"Accessory Setup payload: Name: %@, SetupID: %@, SetupCode: %@, Flags: %@, Category: %@", v4, v5, v6, v7, v8];
  }

  else
  {
    v5 = [a1 flagsDescription];
    v9 = [v3 stringWithFormat:@"Accessory Setup payload: Name: %@, Flags: %@", v4, v5];
  }

  return v9;
}

- (id)flagsDescription
{
  v2 = [MEMORY[0x277CCAB68] string];
  if ([a1 isPaired])
  {
    [v2 appendString:@"Paired  "];
  }

  if ([a1 supportsIP])
  {
    [v2 appendString:@"IP  "];
  }

  if ([a1 supportsWAC])
  {
    [v2 appendString:@"WAC  "];
  }

  if ([a1 supportsBTLE])
  {
    [v2 appendString:@"BTLE  "];
  }

  v3 = [v2 copy];

  return v3;
}

@end