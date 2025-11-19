@interface ECFlagChangeMessageActionResults
- (ECFlagChangeMessageActionResults)initWithBuilder:(id)a3;
@end

@implementation ECFlagChangeMessageActionResults

- (ECFlagChangeMessageActionResults)initWithBuilder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ECFlagChangeMessageActionResults;
  v5 = [(ECFlagChangeMessageActionResults *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(ECFlagChangeMessageActionResultsBuilder);
    v4[2](v4, v6);
    v7 = [(ECFlagChangeMessageActionResultsBuilder *)v6 completedUIDs];
    v8 = [v7 copy];
    v9 = v8;
    if (!v8)
    {
      v9 = [MEMORY[0x277CCAA78] indexSet];
    }

    objc_storeStrong(&v5->_completedUIDs, v9);
    if (!v8)
    {
    }
  }

  return v5;
}

@end