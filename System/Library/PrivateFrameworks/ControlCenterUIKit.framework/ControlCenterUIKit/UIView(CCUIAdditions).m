@interface UIView(CCUIAdditions)
- (void)controlCenterApplyPrimaryContentShadow;
@end

@implementation UIView(CCUIAdditions)

- (void)controlCenterApplyPrimaryContentShadow
{
  [a1 _controlCenterApplyPrimaryContentShadow];
  v2 = [a1 layer];
  [v2 setShadowPathIsBounds:1];
}

@end