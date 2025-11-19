@interface FLHostViewController
- (id)exportedInterface;
- (id)serviceViewControllerInterface;
@end

@implementation FLHostViewController

- (id)serviceViewControllerInterface
{
  v2 = objc_opt_class();

  return [v2 serviceViewControllerInterface];
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 exportedInterface];
}

@end