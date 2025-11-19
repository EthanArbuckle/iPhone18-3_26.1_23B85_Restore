@interface UIImageView(CCUIGroupRenderingSupport)
- (id)ccui_punchOutCompensatingCopy;
- (uint64_t)ccui_configureForPunchOutRendering:()CCUIGroupRenderingSupport;
- (uint64_t)ccui_setCompensationAlpha:()CCUIGroupRenderingSupport;
@end

@implementation UIImageView(CCUIGroupRenderingSupport)

- (uint64_t)ccui_configureForPunchOutRendering:()CCUIGroupRenderingSupport
{
  v4 = [a1 layer];
  v5 = v4;
  if (a3)
  {
    v6 = *MEMORY[0x1E69798E8];
  }

  else
  {
    v6 = 0;
  }

  [v4 setCompositingFilter:v6];
  v7 = [v5 superlayer];
  [v7 setAllowsGroupOpacity:a3 ^ 1u];
  [v7 setAllowsGroupBlending:a3 ^ 1u];

  return 1;
}

- (id)ccui_punchOutCompensatingCopy
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v3 = [a1 image];
  v4 = [v2 initWithImage:v3];

  [a1 frame];
  [v4 setFrame:?];
  v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [v4 ccui_applyGlyphTintColor:v5];

  [a1 alpha];
  [v4 ccui_setCompensationAlpha:?];

  return v4;
}

- (uint64_t)ccui_setCompensationAlpha:()CCUIGroupRenderingSupport
{
  if (a3 > 0.4)
  {
    a3 = 0.4;
  }

  return [a1 setAlpha:a3];
}

@end