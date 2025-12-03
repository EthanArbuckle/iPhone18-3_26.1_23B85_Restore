@interface DOCFeatureRequirement
- (DOCFeatureRequirement)initWithName:(id)name requirementValidationBlock:(id)block;
@end

@implementation DOCFeatureRequirement

- (DOCFeatureRequirement)initWithName:(id)name requirementValidationBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = DOCFeatureRequirement;
  v9 = [(DOCFeatureRequirement *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v11 = _Block_copy(blockCopy);
    requirementValidationBlock = v10->_requirementValidationBlock;
    v10->_requirementValidationBlock = v11;
  }

  return v10;
}

@end