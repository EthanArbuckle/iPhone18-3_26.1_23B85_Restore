@interface UIImageView(CCUIGroupRenderingSupport)
- (id)ccui_punchOutCompensatingCopy;
- (uint64_t)ccui_configureForPunchOutRendering:()CCUIGroupRenderingSupport;
- (uint64_t)ccui_setCompensationAlpha:()CCUIGroupRenderingSupport;
@end

@implementation UIImageView(CCUIGroupRenderingSupport)

- (uint64_t)ccui_configureForPunchOutRendering:()CCUIGroupRenderingSupport
{
  layer = [self layer];
  v5 = layer;
  if (a3)
  {
    v6 = *MEMORY[0x1E69798E8];
  }

  else
  {
    v6 = 0;
  }

  [layer setCompositingFilter:v6];
  superlayer = [v5 superlayer];
  [superlayer setAllowsGroupOpacity:a3 ^ 1u];
  [superlayer setAllowsGroupBlending:a3 ^ 1u];

  return 1;
}

- (id)ccui_punchOutCompensatingCopy
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  image = [self image];
  v4 = [v2 initWithImage:image];

  [self frame];
  [v4 setFrame:?];
  v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [v4 ccui_applyGlyphTintColor:v5];

  [self alpha];
  [v4 ccui_setCompensationAlpha:?];

  return v4;
}

- (uint64_t)ccui_setCompensationAlpha:()CCUIGroupRenderingSupport
{
  if (a3 > 0.4)
  {
    a3 = 0.4;
  }

  return [self setAlpha:a3];
}

@end