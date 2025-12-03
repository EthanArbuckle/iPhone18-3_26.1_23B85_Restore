@interface LACUISceneSpringBoardAdapter
- (LACUISceneSpringBoardAdapter)initWithScene:(id)scene;
- (int64_t)statusBarStyle;
@end

@implementation LACUISceneSpringBoardAdapter

- (LACUISceneSpringBoardAdapter)initWithScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = LACUISceneSpringBoardAdapter;
  v6 = [(LACUISceneSpringBoardAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, scene);
  }

  return v7;
}

- (int64_t)statusBarStyle
{
  statusBarManager = [(SBSUIRemoteAlertScene *)self->_scene statusBarManager];
  statusBarStyle = [statusBarManager statusBarStyle];

  return statusBarStyle;
}

@end