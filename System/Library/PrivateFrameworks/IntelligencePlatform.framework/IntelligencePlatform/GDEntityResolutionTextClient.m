@interface GDEntityResolutionTextClient
- (GDEntityResolutionTextClient)init;
@end

@implementation GDEntityResolutionTextClient

- (GDEntityResolutionTextClient)init
{
  v6.receiver = self;
  v6.super_class = GDEntityResolutionTextClient;
  v2 = [(GDEntityResolutionTextClient *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(GDXPCEntityResolutionService);
    xpcClient = v2->xpcClient;
    v2->xpcClient = v3;
  }

  return v2;
}

@end