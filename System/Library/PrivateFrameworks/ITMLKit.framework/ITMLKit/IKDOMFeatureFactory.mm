@interface IKDOMFeatureFactory
+ (id)featureForName:(id)name withDOMNode:(id)node;
+ (void)initialize;
+ (void)registerClass:(Class)class forFeatureName:(id)name;
@end

@implementation IKDOMFeatureFactory

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = sClassMap_0;
    sClassMap_0 = v3;

    [self registerClass:objc_opt_class() forFeatureName:@"Player"];
    [self registerClass:objc_opt_class() forFeatureName:@"MenuBarDocument"];
    [self registerClass:objc_opt_class() forFeatureName:@"Keyboard"];
    [self registerClass:objc_opt_class() forFeatureName:@"leftNavigationDocument"];
    [self registerClass:objc_opt_class() forFeatureName:@"rightNavigationDocument"];
    v5 = objc_opt_class();

    [self registerClass:v5 forFeatureName:@"Browser"];
  }
}

+ (void)registerClass:(Class)class forFeatureName:(id)name
{
  nameCopy = name;
  v6 = nameCopy;
  if (class)
  {
    v7 = nameCopy;
    nameCopy = [nameCopy length];
    v6 = v7;
    if (nameCopy)
    {
      nameCopy = [sClassMap_0 setObject:class forKey:v7];
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](nameCopy, v6);
}

+ (id)featureForName:(id)name withDOMNode:(id)node
{
  nameCopy = name;
  nodeCopy = node;
  v7 = [sClassMap_0 objectForKey:nameCopy];
  if (v7)
  {
    v8 = [[v7 alloc] initWithDOMNode:nodeCopy featureName:nameCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end