@interface IKDOMFeatureFactory
+ (id)featureForName:(id)a3 withDOMNode:(id)a4;
+ (void)initialize;
+ (void)registerClass:(Class)a3 forFeatureName:(id)a4;
@end

@implementation IKDOMFeatureFactory

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = sClassMap_0;
    sClassMap_0 = v3;

    [a1 registerClass:objc_opt_class() forFeatureName:@"Player"];
    [a1 registerClass:objc_opt_class() forFeatureName:@"MenuBarDocument"];
    [a1 registerClass:objc_opt_class() forFeatureName:@"Keyboard"];
    [a1 registerClass:objc_opt_class() forFeatureName:@"leftNavigationDocument"];
    [a1 registerClass:objc_opt_class() forFeatureName:@"rightNavigationDocument"];
    v5 = objc_opt_class();

    [a1 registerClass:v5 forFeatureName:@"Browser"];
  }
}

+ (void)registerClass:(Class)a3 forFeatureName:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = v5;
    v5 = [v5 length];
    v6 = v7;
    if (v5)
    {
      v5 = [sClassMap_0 setObject:a3 forKey:v7];
      v6 = v7;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

+ (id)featureForName:(id)a3 withDOMNode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [sClassMap_0 objectForKey:v5];
  if (v7)
  {
    v8 = [[v7 alloc] initWithDOMNode:v6 featureName:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end