@interface CCUIControlImageView
- (BOOL)ccui_configureForPunchOutRendering:(BOOL)rendering;
- (CCUIControlImageView)initWithCoder:(id)coder;
- (CCUIControlImageView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)systemImageName;
- (id)ccui_punchOutCompensatingCopy;
- (id)copyWithZone:(void *)zone;
- (void)ccui_applyGlyphTintColor:(id)color;
- (void)ccui_applyGlyphTintColor:(id)color isActive:(BOOL)active;
- (void)ccui_setCompensationAlpha:(double)alpha;
- (void)ccui_updatePunchOutCompensationIfNecessary;
- (void)layoutSubviews;
- (void)setActive:(BOOL)active;
- (void)setFont:(id)font;
- (void)setGlyphTintColor:(id)color;
- (void)setSystemImageName:(id)name;
@end

@implementation CCUIControlImageView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CCUIControlImageView;
  selfCopy = self;
  [(CCUIControlImageView *)&v4 layoutSubviews];
  v3 = *(selfCopy + OBJC_IVAR___CCUIControlImageView_hostingView);
  [(CCUIControlImageView *)selfCopy bounds:v4.receiver];
  [v3 setFrame_];
}

- (void)setGlyphTintColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1D168F1D0(color, &OBJC_IVAR___CCUIControlImageView_glyphTintColor, &unk_1EC640AC8, 0x1E69DC888, sub_1D168FA54);
}

- (void)setActive:(BOOL)active
{
  v4 = *(self + OBJC_IVAR___CCUIControlImageView__isActive);
  *(self + OBJC_IVAR___CCUIControlImageView__isActive) = active;
  if (v4 != active)
  {
    selfCopy = self;
    sub_1D168FA54();
  }
}

- (NSString)systemImageName
{

  v2 = sub_1D16CC494();

  return v2;
}

- (id)ccui_punchOutCompensatingCopy
{
  v2 = [(CCUIControlImageView *)self copy];
  [v2 ccui_updatePunchOutCompensationIfNecessary];

  return v2;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1D1690294(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1D16CC6E4();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  selfCopy = self;
  sub_1D168F1D0(font, &OBJC_IVAR___CCUIControlImageView_font, &unk_1EC640AE0, 0x1E69DB878, sub_1D168FD84);
}

- (void)setSystemImageName:(id)name
{
  v5 = sub_1D16CC4A4();
  v6 = (self + OBJC_IVAR___CCUIControlImageView_systemImageName);
  v7 = *(self + OBJC_IVAR___CCUIControlImageView_systemImageName);
  v8 = *(self + OBJC_IVAR___CCUIControlImageView_systemImageName + 8);
  *v6 = v5;
  v6[1] = v4;
  if (v7 == v5 && v8 == v4)
  {
  }

  else
  {
    v10 = sub_1D16CC6F4();
    selfCopy = self;

    if ((v10 & 1) == 0)
    {
      sub_1D168FA54();
    }
  }
}

- (void)ccui_updatePunchOutCompensationIfNecessary
{
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
  [(CCUIControlImageView *)self ccui_applyGlyphTintColor:v3];

  [(CCUIControlImageView *)self alpha];

  [(CCUIControlImageView *)self ccui_setCompensationAlpha:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [*(self + OBJC_IVAR___CCUIControlImageView_hostingView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)ccui_configureForPunchOutRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  layer = [(CCUIControlImageView *)self layer];
  v5 = layer;
  if (renderingCopy)
  {
    v6 = *MEMORY[0x1E69798E8];
  }

  else
  {
    v6 = 0;
  }

  [layer setCompositingFilter:v6];
  superlayer = [v5 superlayer];
  [superlayer setAllowsGroupOpacity:!renderingCopy];
  [superlayer setAllowsGroupBlending:!renderingCopy];

  return 1;
}

- (void)ccui_setCompensationAlpha:(double)alpha
{
  if (alpha > 0.4)
  {
    alpha = 0.4;
  }

  [(CCUIControlImageView *)self setAlpha:alpha];
}

- (void)ccui_applyGlyphTintColor:(id)color
{
  [(CCUIControlImageView *)self setGlyphTintColor:color];

  [(CCUIControlImageView *)self setActive:1];
}

- (void)ccui_applyGlyphTintColor:(id)color isActive:(BOOL)active
{
  activeCopy = active;
  [(CCUIControlImageView *)self setGlyphTintColor:color];

  [(CCUIControlImageView *)self setActive:activeCopy];
}

- (CCUIControlImageView)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR___CCUIControlImageView__isActive) = 0;
  *(self + OBJC_IVAR___CCUIControlImageView_glyphTintColor) = 0;
  *(self + OBJC_IVAR___CCUIControlImageView_font) = 0;
  v3 = (self + OBJC_IVAR___CCUIControlImageView__controlIconView);
  *v3 = 0u;
  v3[1] = 0u;
  result = sub_1D16CC694();
  __break(1u);
  return result;
}

- (CCUIControlImageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end