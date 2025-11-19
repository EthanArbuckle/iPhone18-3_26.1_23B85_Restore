@interface HDOriginalFHIRResourceLastSeenEntity
+ (id)foreignKeys;
@end

@implementation HDOriginalFHIRResourceLastSeenEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"resource_id";
  v2 = +[(HDHealthEntity *)HDOriginalFHIRResourceEntity];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end