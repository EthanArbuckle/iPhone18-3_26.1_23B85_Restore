@interface DEDCapability
+ (id)decodeCapabilitiesString:(id)a3;
+ (id)encodeCapabilitySet:(id)a3;
@end

@implementation DEDCapability

+ (id)encodeCapabilitySet:(id)a3
{
  v3 = [a3 allObjects];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

+ (id)decodeCapabilitiesString:(id)a3
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [a3 componentsSeparatedByString:{@", "}];
  v5 = [v3 setWithArray:v4];

  [v5 addObject:@"classic"];

  return v5;
}

@end