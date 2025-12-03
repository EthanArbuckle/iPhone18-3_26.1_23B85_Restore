@interface HRERecommendableObjectRule
+ (id)_types:(id)_types notMatchedByObjects:(id)objects;
- (BOOL)passesWithHomeObjects:(id)objects;
@end

@implementation HRERecommendableObjectRule

- (BOOL)passesWithHomeObjects:(id)objects
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HRERule.m" lineNumber:23 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HRERecommendableObjectRule passesWithHomeObjects:]", objc_opt_class()}];

  return 0;
}

+ (id)_types:(id)_types notMatchedByObjects:(id)objects
{
  objectsCopy = objects;
  v6 = [_types mutableCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HRERecommendableObjectRule__types_notMatchedByObjects___block_invoke;
  v9[3] = &unk_279776940;
  v7 = v6;
  v10 = v7;
  [objectsCopy enumerateObjectsUsingBlock:v9];

  return v7;
}

uint64_t __57__HRERecommendableObjectRule__types_notMatchedByObjects___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 hre_matchingTypes];
  [v5 minusSet:v6];

  result = [*(a1 + 32) count];
  *a3 = result == 0;
  return result;
}

@end