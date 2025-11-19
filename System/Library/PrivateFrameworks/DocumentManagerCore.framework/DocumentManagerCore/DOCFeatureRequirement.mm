@interface DOCFeatureRequirement
- (DOCFeatureRequirement)initWithName:(id)a3 requirementValidationBlock:(id)a4;
@end

@implementation DOCFeatureRequirement

- (DOCFeatureRequirement)initWithName:(id)a3 requirementValidationBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DOCFeatureRequirement;
  v9 = [(DOCFeatureRequirement *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    v11 = _Block_copy(v8);
    requirementValidationBlock = v10->_requirementValidationBlock;
    v10->_requirementValidationBlock = v11;
  }

  return v10;
}

@end