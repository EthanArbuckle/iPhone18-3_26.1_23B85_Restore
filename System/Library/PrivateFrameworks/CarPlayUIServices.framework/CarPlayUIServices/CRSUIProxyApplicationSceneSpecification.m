@interface CRSUIProxyApplicationSceneSpecification
- (id)initialActionHandlers;
@end

@implementation CRSUIProxyApplicationSceneSpecification

- (id)initialActionHandlers
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v3 addObject:v4];

  v8.receiver = self;
  v8.super_class = CRSUIProxyApplicationSceneSpecification;
  v5 = [(UIApplicationSceneSpecification *)&v8 initialActionHandlers];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];

  return v6;
}

@end