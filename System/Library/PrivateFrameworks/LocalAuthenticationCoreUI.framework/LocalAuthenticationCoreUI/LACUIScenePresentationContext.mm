@interface LACUIScenePresentationContext
- (LACUIScenePresentationContext)initWithPresenter:(id)presenter scene:(id)scene;
@end

@implementation LACUIScenePresentationContext

- (LACUIScenePresentationContext)initWithPresenter:(id)presenter scene:(id)scene
{
  presenterCopy = presenter;
  sceneCopy = scene;
  v12.receiver = self;
  v12.super_class = LACUIScenePresentationContext;
  v9 = [(LACUIScenePresentationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, presenter);
    objc_storeStrong(&v10->_scene, scene);
  }

  return v10;
}

@end