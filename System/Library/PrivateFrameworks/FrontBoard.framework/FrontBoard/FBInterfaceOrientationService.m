@interface FBInterfaceOrientationService
+ (id)sharedInstance;
- (FBInterfaceOrientationService)init;
@end

@implementation FBInterfaceOrientationService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[FBInterfaceOrientationService sharedInstance];
  }

  v3 = sharedInstance___SharedInstance_0;

  return v3;
}

void __47__FBInterfaceOrientationService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(FBInterfaceOrientationService);
  v1 = sharedInstance___SharedInstance_0;
  sharedInstance___SharedInstance_0 = v0;
}

- (FBInterfaceOrientationService)init
{
  v6.receiver = self;
  v6.super_class = FBInterfaceOrientationService;
  v2 = [(FBInterfaceOrientationService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(FBInterfaceOrientationServiceServer);
    server = v2->_server;
    v2->_server = v3;
  }

  return v2;
}

@end