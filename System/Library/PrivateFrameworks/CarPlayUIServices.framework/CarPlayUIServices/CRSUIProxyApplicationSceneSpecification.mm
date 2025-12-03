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
  initialActionHandlers = [(UIApplicationSceneSpecification *)&v8 initialActionHandlers];
  [v3 addObjectsFromArray:initialActionHandlers];

  v6 = [v3 copy];

  return v6;
}

@end