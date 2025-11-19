@interface UIWindow(DocumentCameraSupport)
- (BOOL)dc_requiresCompactLandscapeIcons;
@end

@implementation UIWindow(DocumentCameraSupport)

- (BOOL)dc_requiresCompactLandscapeIcons
{
  v1 = [a1 traitCollection];
  v2 = [v1 horizontalSizeClass] == 1;

  return v2;
}

@end