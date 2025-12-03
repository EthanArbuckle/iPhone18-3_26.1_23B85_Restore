@interface ECFlagChangeMessageActionResults
- (ECFlagChangeMessageActionResults)initWithBuilder:(id)builder;
@end

@implementation ECFlagChangeMessageActionResults

- (ECFlagChangeMessageActionResults)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v11.receiver = self;
  v11.super_class = ECFlagChangeMessageActionResults;
  v5 = [(ECFlagChangeMessageActionResults *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(ECFlagChangeMessageActionResultsBuilder);
    builderCopy[2](builderCopy, v6);
    completedUIDs = [(ECFlagChangeMessageActionResultsBuilder *)v6 completedUIDs];
    v8 = [completedUIDs copy];
    indexSet = v8;
    if (!v8)
    {
      indexSet = [MEMORY[0x277CCAA78] indexSet];
    }

    objc_storeStrong(&v5->_completedUIDs, indexSet);
    if (!v8)
    {
    }
  }

  return v5;
}

@end