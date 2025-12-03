@interface DEDCapability
+ (id)decodeCapabilitiesString:(id)string;
+ (id)encodeCapabilitySet:(id)set;
@end

@implementation DEDCapability

+ (id)encodeCapabilitySet:(id)set
{
  allObjects = [set allObjects];
  v4 = [allObjects componentsJoinedByString:{@", "}];

  return v4;
}

+ (id)decodeCapabilitiesString:(id)string
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [string componentsSeparatedByString:{@", "}];
  v5 = [v3 setWithArray:v4];

  [v5 addObject:@"classic"];

  return v5;
}

@end