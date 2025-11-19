@interface _PBUIWallpaperRemoteViewControllerSceneModeAssertion
- (_PBUIWallpaperRemoteViewControllerSceneModeAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 sceneMode:(int64_t)a5 invalidationBlock:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation _PBUIWallpaperRemoteViewControllerSceneModeAssertion

- (_PBUIWallpaperRemoteViewControllerSceneModeAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 sceneMode:(int64_t)a5 invalidationBlock:(id)a6
{
  v8.receiver = self;
  v8.super_class = _PBUIWallpaperRemoteViewControllerSceneModeAssertion;
  result = [(BSSimpleAssertion *)&v8 initWithIdentifier:a3 forReason:a4 invalidationBlock:a6];
  if (result)
  {
    result->_sceneMode = a5;
  }

  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v9.receiver = self;
  v9.super_class = _PBUIWallpaperRemoteViewControllerSceneModeAssertion;
  v4 = [(BSSimpleAssertion *)&v9 descriptionBuilderWithMultilinePrefix:a3];
  v5 = v4;
  sceneMode = self->_sceneMode;
  if (sceneMode > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_278362EE8[sceneMode];
  }

  [v4 appendString:v7 withName:@"sceneMode"];

  return v5;
}

@end