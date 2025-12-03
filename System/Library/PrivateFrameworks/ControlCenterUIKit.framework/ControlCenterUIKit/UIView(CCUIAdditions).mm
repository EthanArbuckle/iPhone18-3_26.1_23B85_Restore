@interface UIView(CCUIAdditions)
- (void)controlCenterApplyPrimaryContentShadow;
@end

@implementation UIView(CCUIAdditions)

- (void)controlCenterApplyPrimaryContentShadow
{
  [self _controlCenterApplyPrimaryContentShadow];
  layer = [self layer];
  [layer setShadowPathIsBounds:1];
}

@end