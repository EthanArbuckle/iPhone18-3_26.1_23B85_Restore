@interface _PBUIWallpaperRemoteViewControllerSceneModeAssertion
- (_PBUIWallpaperRemoteViewControllerSceneModeAssertion)initWithIdentifier:(id)identifier forReason:(id)reason sceneMode:(int64_t)mode invalidationBlock:(id)block;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation _PBUIWallpaperRemoteViewControllerSceneModeAssertion

- (_PBUIWallpaperRemoteViewControllerSceneModeAssertion)initWithIdentifier:(id)identifier forReason:(id)reason sceneMode:(int64_t)mode invalidationBlock:(id)block
{
  v8.receiver = self;
  v8.super_class = _PBUIWallpaperRemoteViewControllerSceneModeAssertion;
  result = [(BSSimpleAssertion *)&v8 initWithIdentifier:identifier forReason:reason invalidationBlock:block];
  if (result)
  {
    result->_sceneMode = mode;
  }

  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9.receiver = self;
  v9.super_class = _PBUIWallpaperRemoteViewControllerSceneModeAssertion;
  v4 = [(BSSimpleAssertion *)&v9 descriptionBuilderWithMultilinePrefix:prefix];
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