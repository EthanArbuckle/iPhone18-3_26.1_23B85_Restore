@interface CRKSandboxPrimitivesProvider
- (id)makePrimitives;
@end

@implementation CRKSandboxPrimitivesProvider

- (id)makePrimitives
{
  v2 = objc_opt_new();

  return v2;
}

@end