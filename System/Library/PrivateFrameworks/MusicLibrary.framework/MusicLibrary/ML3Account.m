@interface ML3Account
+ (void)initialize;
@end

@implementation ML3Account

+ (void)initialize
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v7[0] = @"dsid";
    v7[1] = @"alt_dsid";
    v7[2] = @"apple_id";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
    v4 = ML3AccountAllProperties;
    ML3AccountAllProperties = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [a1 predisambiguateProperties:ML3AccountAllProperties toDictionary:v5];
    v6 = ML3AccountPredisambiguatedPropertyForProperties;
    ML3AccountPredisambiguatedPropertyForProperties = v5;
  }
}

@end