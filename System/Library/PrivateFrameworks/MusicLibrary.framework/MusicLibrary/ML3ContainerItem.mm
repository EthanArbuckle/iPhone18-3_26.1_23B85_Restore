@interface ML3ContainerItem
+ (void)initialize;
@end

@implementation ML3ContainerItem

+ (void)initialize
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    v2 = [ML3OrderingTerm orderingTermWithProperty:@"position"];
    v5[0] = v2;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
    v4 = ML3ContainerItemDefaultOrderingTerms;
    ML3ContainerItemDefaultOrderingTerms = v3;
  }
}

@end