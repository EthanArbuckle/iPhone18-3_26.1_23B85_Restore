@interface UIView(CCUIAdditions_Private)
- (void)_controlCenterApplyPrimaryContentShadow;
@end

@implementation UIView(CCUIAdditions_Private)

- (void)_controlCenterApplyPrimaryContentShadow
{
  layer = [self layer];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

  layer2 = [self layer];
  LODWORD(v5) = 1045220557;
  [layer2 setShadowOpacity:v5];

  layer3 = [self layer];
  [layer3 setShadowRadius:20.0];

  layer4 = [self layer];
  [layer4 setShadowOffset:{0.0, 2.0}];
}

@end