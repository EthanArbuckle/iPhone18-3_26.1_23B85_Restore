@interface SUUIProductPageAction
+ (id)actionWithType:(int64_t)type;
- (UIViewController)viewController;
@end

@implementation SUUIProductPageAction

+ (id)actionWithType:(int64_t)type
{
  v4 = objc_alloc_init(self);
  [v4 setActionType:type];

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