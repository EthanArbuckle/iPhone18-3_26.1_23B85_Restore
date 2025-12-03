@interface UIScene(GameControllerSceneComponent)
- (_GCUISceneComponent)_gameControllerSceneComponent;
@end

@implementation UIScene(GameControllerSceneComponent)

- (_GCUISceneComponent)_gameControllerSceneComponent
{
  v2 = [self _sceneComponentForKey:@"com.apple.gamecontroller.scenecomponent"];
  if (!v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [[_GCUISceneComponent alloc] initWithScene:self];
      [self _registerSceneComponent:v2 forKey:@"com.apple.gamecontroller.scenecomponent"];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

@end