@interface UIViewController
@end

@implementation UIViewController

uint64_t __48__UIViewController_IC__ic_viewControllerManager__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) viewIfLoaded];

  return MEMORY[0x1EEE66BB8]();
}

@end