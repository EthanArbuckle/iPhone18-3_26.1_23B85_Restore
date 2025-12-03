@interface LACUISceneRootViewController
- (LACUISceneRootViewController)initWithScene:(id)scene;
- (void)dealloc;
- (void)handleSceneButton:(int64_t)button;
@end

@implementation LACUISceneRootViewController

- (LACUISceneRootViewController)initWithScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = LACUISceneRootViewController;
  v6 = [(LACUISceneRootViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, scene);
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

- (void)handleSceneButton:(int64_t)button
{
  if (!button)
  {
    [(LACUIScene *)self->_scene deactivateWithReason:@"Home Button was pressed"];
  }
}

@end