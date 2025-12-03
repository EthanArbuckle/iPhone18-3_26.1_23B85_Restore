@interface CKViewController
- (void)childViewControllersPerform:(SEL)perform;
- (void)parentControllerDidResume:(BOOL)resume animating:(BOOL)animating;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKViewController;
  [(CKViewController *)&v4 viewWillAppear:appear];
  [(CKViewController *)self setAppearing:1];
  [(CKViewController *)self setDissapearing:0];
  [(CKViewController *)self setAppeared:0];
  [(CKViewController *)self setDeferredAppeared:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CKViewController;
  [(CKViewController *)&v4 viewDidAppear:appear];
  [(CKViewController *)self setAppearing:0];
  [(CKViewController *)self setDissapearing:0];
  [(CKViewController *)self setAppeared:1];
  [(CKViewController *)self setDeferredAppeared:0];
  [(CKViewController *)self performSelector:sel_viewDidAppearDeferredSetup withObject:0 afterDelay:0.0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKViewController;
  [(CKViewController *)&v4 viewWillDisappear:disappear];
  [(CKViewController *)self setAppearing:0];
  [(CKViewController *)self setDissapearing:1];
  [(CKViewController *)self setAppeared:0];
  [(CKViewController *)self setDeferredAppeared:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKViewController;
  [(CKViewController *)&v4 viewDidDisappear:disappear];
  [(CKViewController *)self setAppearing:0];
  [(CKViewController *)self setDissapearing:0];
  [(CKViewController *)self setAppeared:0];
  [(CKViewController *)self setDeferredAppeared:0];
}

- (void)parentControllerDidResume:(BOOL)resume animating:(BOOL)animating
{
  childViewControllers = [(CKViewController *)self childViewControllers];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__CKViewController_parentControllerDidResume_animating___block_invoke;
  v7[3] = &__block_descriptor_34_e33_v32__0__UIViewController_8Q16_B24l;
  resumeCopy = resume;
  animatingCopy = animating;
  [childViewControllers enumerateObjectsUsingBlock:v7];
}

void __56__CKViewController_parentControllerDidResume_animating___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 parentControllerDidResume:*(a1 + 32) animating:*(a1 + 33)];
  }
}

- (void)childViewControllersPerform:(SEL)perform
{
  childViewControllers = [(CKViewController *)self childViewControllers];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CKViewController_childViewControllersPerform___block_invoke;
  v5[3] = &__block_descriptor_40_e33_v32__0__UIViewController_8Q16_B24l;
  v5[4] = perform;
  [childViewControllers enumerateObjectsUsingBlock:v5];
}

void __48__CKViewController_childViewControllersPerform___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 performSelector:*(a1 + 32)];
  }
}

@end