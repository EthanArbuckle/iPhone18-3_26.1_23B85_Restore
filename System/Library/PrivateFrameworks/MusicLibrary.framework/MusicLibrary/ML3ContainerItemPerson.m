@interface ML3ContainerItemPerson
+ (void)initialize;
@end

@implementation ML3ContainerItemPerson

+ (void)initialize
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v7[0] = @"container_item_person_pid";
    v7[1] = @"container_item_pid";
    v7[2] = @"person_pid";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
    v4 = ML3ContainerItemPersonAllProperties;
    ML3ContainerItemPersonAllProperties = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [a1 predisambiguateProperties:ML3ContainerItemPersonAllProperties toDictionary:v5];
    v6 = ML3ContainerItemPersonPredisambiguatedPropertyForProperties;
    ML3ContainerItemPersonPredisambiguatedPropertyForProperties = v5;
  }
}

@end