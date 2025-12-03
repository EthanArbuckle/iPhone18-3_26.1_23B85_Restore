@interface UIWindow(DocumentCameraSupport)
- (BOOL)dc_requiresCompactLandscapeIcons;
@end

@implementation UIWindow(DocumentCameraSupport)

- (BOOL)dc_requiresCompactLandscapeIcons
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection horizontalSizeClass] == 1;

  return v2;
}

@end