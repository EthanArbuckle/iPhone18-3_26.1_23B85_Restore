@interface HRERecommendableObjectCountRule
+ (id)ruleWithAccessoryType:(id)a3 allowedCount:(_NSRange)a4;
- (BOOL)passesWithHomeObjects:(id)a3;
- (HRERecommendableObjectCountRule)initWithAccessoryType:(id)a3 allowedCount:(_NSRange)a4;
- (_NSRange)allowedCount;
@end

@implementation HRERecommendableObjectCountRule

- (HRERecommendableObjectCountRule)initWithAccessoryType:(id)a3 allowedCount:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7.receiver = self;
  v7.super_class = HRERecommendableObjectCountRule;
  result = [(HRERecommendableObjectTypeRule *)&v7 initWithRequiredType:a3];
  if (result)
  {
    result->_allowedCount.location = location;
    result->_allowedCount.length = length;
  }

  return result;
}

+ (id)ruleWithAccessoryType:(id)a3 allowedCount:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3;
  v7 = [[HRERecommendableObjectCountRule alloc] initWithAccessoryType:v6 allowedCount:location, length];

  return v7;
}

- (BOOL)passesWithHomeObjects:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v19 + 1) + 8 * i) hre_matchingTypes];
        v11 = [(HRERecommendableObjectTypeRule *)self requiredType];
        v12 = [v10 containsObject:v11];

        v7 += v12;
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = [(HRERecommendableObjectCountRule *)self allowedCount];
  v16 = v7 >= v13 && v7 - v13 < v14;

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (_NSRange)allowedCount
{
  p_allowedCount = &self->_allowedCount;
  location = self->_allowedCount.location;
  length = p_allowedCount->length;
  result.length = length;
  result.location = location;
  return result;
}

@end