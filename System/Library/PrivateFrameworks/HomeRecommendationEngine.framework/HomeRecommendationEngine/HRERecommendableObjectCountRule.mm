@interface HRERecommendableObjectCountRule
+ (id)ruleWithAccessoryType:(id)type allowedCount:(_NSRange)count;
- (BOOL)passesWithHomeObjects:(id)objects;
- (HRERecommendableObjectCountRule)initWithAccessoryType:(id)type allowedCount:(_NSRange)count;
- (_NSRange)allowedCount;
@end

@implementation HRERecommendableObjectCountRule

- (HRERecommendableObjectCountRule)initWithAccessoryType:(id)type allowedCount:(_NSRange)count
{
  length = count.length;
  location = count.location;
  v7.receiver = self;
  v7.super_class = HRERecommendableObjectCountRule;
  result = [(HRERecommendableObjectTypeRule *)&v7 initWithRequiredType:type];
  if (result)
  {
    result->_allowedCount.location = location;
    result->_allowedCount.length = length;
  }

  return result;
}

+ (id)ruleWithAccessoryType:(id)type allowedCount:(_NSRange)count
{
  length = count.length;
  location = count.location;
  typeCopy = type;
  v7 = [[HRERecommendableObjectCountRule alloc] initWithAccessoryType:typeCopy allowedCount:location, length];

  return v7;
}

- (BOOL)passesWithHomeObjects:(id)objects
{
  v24 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [objectsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(objectsCopy);
        }

        hre_matchingTypes = [*(*(&v19 + 1) + 8 * i) hre_matchingTypes];
        requiredType = [(HRERecommendableObjectTypeRule *)self requiredType];
        v12 = [hre_matchingTypes containsObject:requiredType];

        v7 += v12;
      }

      v6 = [objectsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  allowedCount = [(HRERecommendableObjectCountRule *)self allowedCount];
  v16 = v7 >= allowedCount && v7 - allowedCount < v14;

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