@interface HRERecommendableObjectTypeRule
+ (id)ruleWithRequiredType:(id)a3;
- (BOOL)passesWithHomeObjects:(id)a3;
- (BOOL)passesWithObject:(id)a3;
- (HRERecommendableObjectTypeRule)initWithRequiredType:(id)a3;
@end

@implementation HRERecommendableObjectTypeRule

- (HRERecommendableObjectTypeRule)initWithRequiredType:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HRERecommendableObjectTypeRule;
  v5 = [(HRERule *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    requiredType = v5->_requiredType;
    v5->_requiredType = v6;
  }

  return v5;
}

+ (id)ruleWithRequiredType:(id)a3
{
  v3 = a3;
  v4 = [[HRERecommendableObjectTypeRule alloc] initWithRequiredType:v3];

  return v4;
}

- (BOOL)passesWithHomeObjects:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = MEMORY[0x277CBEB98];
  v7 = [(HRERecommendableObjectTypeRule *)self requiredType];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v9 = [v6 setWithArray:v8];
  v10 = [v5 _types:v9 notMatchedByObjects:v4];

  LOBYTE(v4) = [v10 count] == 0;
  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)passesWithObject:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = MEMORY[0x277CBEB98];
  v7 = [(HRERecommendableObjectTypeRule *)self requiredType];
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v9 = [v6 setWithArray:v8];
  v10 = MEMORY[0x277CBEB98];
  v16 = v4;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v12 = [v10 setWithArray:v11];

  v13 = [v5 _types:v9 notMatchedByObjects:v12];
  LOBYTE(v4) = [v13 count] == 0;

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

@end