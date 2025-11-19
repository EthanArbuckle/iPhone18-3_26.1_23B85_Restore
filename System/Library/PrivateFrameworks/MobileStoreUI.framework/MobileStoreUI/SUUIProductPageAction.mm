@interface SUUIProductPageAction
+ (id)actionWithType:(int64_t)a3;
- (UIViewController)viewController;
@end

@implementation SUUIProductPageAction

+ (id)actionWithType:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  [v4 setActionType:a3];

  return v4;
}

- (UIViewController)viewController
{
  viewControllerBlock = self->_viewControllerBlock;
  if (viewControllerBlock)
  {
    viewControllerBlock = (viewControllerBlock)[2](viewControllerBlock, a2);
    v2 = vars8;
  }

  return viewControllerBlock;
}

@end