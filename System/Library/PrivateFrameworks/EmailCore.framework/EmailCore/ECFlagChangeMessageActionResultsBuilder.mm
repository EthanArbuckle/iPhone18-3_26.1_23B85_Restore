@interface ECFlagChangeMessageActionResultsBuilder
- (ECFlagChangeMessageActionResultsBuilder)init;
@end

@implementation ECFlagChangeMessageActionResultsBuilder

- (ECFlagChangeMessageActionResultsBuilder)init
{
  v6.receiver = self;
  v6.super_class = ECFlagChangeMessageActionResultsBuilder;
  v2 = [(ECFlagChangeMessageActionResultsBuilder *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB58] indexSet];
    completedUIDs = v2->_completedUIDs;
    v2->_completedUIDs = v3;
  }

  return v2;
}

@end