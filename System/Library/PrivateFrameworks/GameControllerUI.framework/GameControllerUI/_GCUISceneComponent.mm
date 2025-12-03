@interface _GCUISceneComponent
- (UIScene)_scene;
- (_GCUISceneComponent)initWithScene:(id)scene;
@end

@implementation _GCUISceneComponent

- (_GCUISceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(_GCUISceneComponent *)a2 initWithScene:?];
  }

  objc_storeWeak(&self->_scene, sceneCopy);

  return self;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)initWithScene:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCUISceneComponent.m" lineNumber:20 description:@"Only UIWindowScene is supported for game controller scene components."];
}

@end