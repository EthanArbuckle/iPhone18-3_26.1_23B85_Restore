@interface ML3Person
+ (void)initialize;
@end

@implementation ML3Person

+ (void)initialize
{
  v7[7] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    v7[0] = @"person_pid";
    v7[1] = @"cloud_id";
    v7[2] = @"handle";
    v7[3] = @"name";
    v7[4] = @"image_url";
    v7[5] = @"image_token";
    v7[6] = @"lightweight_profile";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:7];
    v4 = ML3PersonAllProperties;
    ML3PersonAllProperties = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [self predisambiguateProperties:ML3PersonAllProperties toDictionary:v5];
    v6 = ML3PersonPredisambiguatedPropertyForProperties;
    ML3PersonPredisambiguatedPropertyForProperties = v5;
  }
}

@end