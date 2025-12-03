@interface HRERecommendableObjectTypeListRule
+ (id)ruleRequiringOneOfTypes:(id)types;
- (BOOL)passesWithHomeObjects:(id)objects;
- (HRERecommendableObjectTypeListRule)initWithRequiredTypeGroup:(id)group;
@end

@implementation HRERecommendableObjectTypeListRule

- (HRERecommendableObjectTypeListRule)initWithRequiredTypeGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = HRERecommendableObjectTypeListRule;
  _init = [(HRERule *)&v9 _init];
  if (_init)
  {
    v6 = [groupCopy copy];
    typesSatisfyingRequirement = _init->_typesSatisfyingRequirement;
    _init->_typesSatisfyingRequirement = v6;
  }

  return _init;
}

+ (id)ruleRequiringOneOfTypes:(id)types
{
  typesCopy = types;
  v4 = [[HRERecommendableObjectTypeListRule alloc] initWithRequiredTypeGroup:typesCopy];

  return v4;
}

- (BOOL)passesWithHomeObjects:(id)objects
{
  objectsCopy = objects;
  v5 = objc_opt_class();
  typesSatisfyingRequirement = [(HRERecommendableObjectTypeListRule *)self typesSatisfyingRequirement];
  v7 = [v5 _types:typesSatisfyingRequirement notMatchedByObjects:objectsCopy];

  v8 = [v7 count];
  typesSatisfyingRequirement2 = [(HRERecommendableObjectTypeListRule *)self typesSatisfyingRequirement];
  LOBYTE(v8) = v8 < [typesSatisfyingRequirement2 count];

  return v8;
}

@end