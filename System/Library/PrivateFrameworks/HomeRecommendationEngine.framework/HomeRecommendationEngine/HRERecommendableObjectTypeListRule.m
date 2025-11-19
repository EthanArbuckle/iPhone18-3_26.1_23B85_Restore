@interface HRERecommendableObjectTypeListRule
+ (id)ruleRequiringOneOfTypes:(id)a3;
- (BOOL)passesWithHomeObjects:(id)a3;
- (HRERecommendableObjectTypeListRule)initWithRequiredTypeGroup:(id)a3;
@end

@implementation HRERecommendableObjectTypeListRule

- (HRERecommendableObjectTypeListRule)initWithRequiredTypeGroup:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HRERecommendableObjectTypeListRule;
  v5 = [(HRERule *)&v9 _init];
  if (v5)
  {
    v6 = [v4 copy];
    typesSatisfyingRequirement = v5->_typesSatisfyingRequirement;
    v5->_typesSatisfyingRequirement = v6;
  }

  return v5;
}

+ (id)ruleRequiringOneOfTypes:(id)a3
{
  v3 = a3;
  v4 = [[HRERecommendableObjectTypeListRule alloc] initWithRequiredTypeGroup:v3];

  return v4;
}

- (BOOL)passesWithHomeObjects:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HRERecommendableObjectTypeListRule *)self typesSatisfyingRequirement];
  v7 = [v5 _types:v6 notMatchedByObjects:v4];

  v8 = [v7 count];
  v9 = [(HRERecommendableObjectTypeListRule *)self typesSatisfyingRequirement];
  LOBYTE(v8) = v8 < [v9 count];

  return v8;
}

@end