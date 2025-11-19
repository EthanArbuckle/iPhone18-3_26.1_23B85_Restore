@interface LACUISceneRootViewController
- (LACUISceneRootViewController)initWithScene:(id)a3;
- (void)dealloc;
- (void)handleSceneButton:(int64_t)a3;
@end

@implementation LACUISceneRootViewController

- (LACUISceneRootViewController)initWithScene:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACUISceneRootViewController;
  v6 = [(LACUISceneRootViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, a3);
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ was deallocated", self];
  [(LACUIScene *)self->_scene deactivateWithReason:v3];

  v4.receiver = self;
  v4.super_class = LACUISceneRootViewController;
  [(LACUISceneRootViewController *)&v4 dealloc];
}

- (void)handleSceneButton:(int64_t)a3
{
  if (!a3)
  {
    [(LACUIScene *)self->_scene deactivateWithReason:@"Home Button was pressed"];
  }
}

@end