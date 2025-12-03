@interface UIButton(RevealActionsButton)
+ (id)mf_revealActionsButtonWithAccessibilityIdentifier:()RevealActionsButton;
- (id)mf_revealActionButtonPointerStyleInView:()RevealActionsButton;
@end

@implementation UIButton(RevealActionsButton)

+ (id)mf_revealActionsButtonWithAccessibilityIdentifier:()RevealActionsButton
{
  v3 = MEMORY[0x277D75220];
  v4 = a3;
  v5 = [v3 buttonWithType:0];
  v6 = [MEMORY[0x277D755B8] mf_symbolConfigurationForView:17];
  [v5 setPreferredSymbolConfiguration:v6 forImageInState:0];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6810]];
  [v5 setImage:v7 forState:0];

  [v5 setAccessibilityIdentifier:v4];
  [v5 setShowsLargeContentViewer:1];

  return v5;
}

- (id)mf_revealActionButtonPointerStyleInView:()RevealActionsButton
{
  v4 = MEMORY[0x277D75858];
  v5 = MEMORY[0x277D75B90];
  v6 = a3;
  v7 = [[v5 alloc] initWithView:self];
  v8 = [v4 effectWithPreview:v7];

  imageView = [self imageView];
  [imageView frame];
  UIRectGetCenter();
  [v6 convertPoint:self fromView:?];

  [v6 mui_currentScreenScale];
  UIRectCenteredAboutPointScale();
  v15 = CGRectOffset(v14, 0.0, 1.0);
  v10 = [MEMORY[0x277D75888] shapeWithRoundedRect:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];
  v11 = [MEMORY[0x277D75890] styleWithEffect:v8 shape:v10];

  return v11;
}

@end