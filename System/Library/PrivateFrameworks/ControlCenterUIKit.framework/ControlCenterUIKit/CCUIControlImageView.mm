@interface CCUIControlImageView
- (BOOL)ccui_configureForPunchOutRendering:(BOOL)a3;
- (CCUIControlImageView)initWithCoder:(id)a3;
- (CCUIControlImageView)initWithFrame:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)systemImageName;
- (id)ccui_punchOutCompensatingCopy;
- (id)copyWithZone:(void *)a3;
- (void)ccui_applyGlyphTintColor:(id)a3;
- (void)ccui_applyGlyphTintColor:(id)a3 isActive:(BOOL)a4;
- (void)ccui_setCompensationAlpha:(double)a3;
- (void)ccui_updatePunchOutCompensationIfNecessary;
- (void)layoutSubviews;
- (void)setActive:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setGlyphTintColor:(id)a3;
- (void)setSystemImageName:(id)a3;
@end

@implementation CCUIControlImageView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CCUIControlImageView;
  v2 = self;
  [(CCUIControlImageView *)&v4 layoutSubviews];
  v3 = *(v2 + OBJC_IVAR___CCUIControlImageView_hostingView);
  [(CCUIControlImageView *)v2 bounds:v4.receiver];
  [v3 setFrame_];
}

- (void)setGlyphTintColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D168F1D0(a3, &OBJC_IVAR___CCUIControlImageView_glyphTintColor, &unk_1EC640AC8, 0x1E69DC888, sub_1D168FA54);
}

- (void)setActive:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR___CCUIControlImageView__isActive);
  *(self + OBJC_IVAR___CCUIControlImageView__isActive) = a3;
  if (v4 != a3)
  {
    v5 = self;
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

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_1D1690294(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_1D16CC6E4();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

- (void)setFont:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D168F1D0(a3, &OBJC_IVAR___CCUIControlImageView_font, &unk_1EC640AE0, 0x1E69DB878, sub_1D168FD84);
}

- (void)setSystemImageName:(id)a3
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
    v11 = self;

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  [*(self + OBJC_IVAR___CCUIControlImageView_hostingView) sizeThatFits_];
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)ccui_configureForPunchOutRendering:(BOOL)a3
{
  v3 = a3;
  v4 = [(CCUIControlImageView *)self layer];
  v5 = v4;
  if (v3)
  {
    v6 = *MEMORY[0x1E69798E8];
  }

  else
  {
    v6 = 0;
  }

  [v4 setCompositingFilter:v6];
  v7 = [v5 superlayer];
  [v7 setAllowsGroupOpacity:!v3];
  [v7 setAllowsGroupBlending:!v3];

  return 1;
}

- (void)ccui_setCompensationAlpha:(double)a3
{
  if (a3 > 0.4)
  {
    a3 = 0.4;
  }

  [(CCUIControlImageView *)self setAlpha:a3];
}

- (void)ccui_applyGlyphTintColor:(id)a3
{
  [(CCUIControlImageView *)self setGlyphTintColor:a3];

  [(CCUIControlImageView *)self setActive:1];
}

- (void)ccui_applyGlyphTintColor:(id)a3 isActive:(BOOL)a4
{
  v4 = a4;
  [(CCUIControlImageView *)self setGlyphTintColor:a3];

  [(CCUIControlImageView *)self setActive:v4];
}

- (CCUIControlImageView)initWithCoder:(id)a3
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

- (CCUIControlImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end