@interface HMBMutableModelContainer
- (void)setTypeName:(id)name forModelClass:(Class)class;
@end

@implementation HMBMutableModelContainer

- (void)setTypeName:(id)name forModelClass:(Class)class
{
  nameCopy = name;
  nameToClassTransform = [(HMBModelContainer *)self nameToClassTransform];
  [nameToClassTransform setObject:class forKey:nameCopy];

  classToNameTransform = [(HMBModelContainer *)self classToNameTransform];
  [classToNameTransform setObject:nameCopy forKey:class];
}

@end