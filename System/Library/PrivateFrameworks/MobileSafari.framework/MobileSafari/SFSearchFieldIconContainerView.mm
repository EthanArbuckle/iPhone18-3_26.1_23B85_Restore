@interface SFSearchFieldIconContainerView
- (SFSearchFieldIconContainerView)initWithCoder:(id)a3;
- (SFUnifiedTabBarItemTitleContainerViewTheme)theme;
- (UIImage)icon;
- (void)layoutSubviews;
- (void)setIcon:(id)a3;
- (void)setTheme:(id)a3;
@end

@implementation SFSearchFieldIconContainerView

- (SFSearchFieldIconContainerView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___SFSearchFieldIconContainerView_iconView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(SFFaviconView) init];
  *(&self->super.super.super.isa + OBJC_IVAR___SFSearchFieldIconContainerView_theme) = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (UIImage)icon
{
  v2 = self;
  v3 = [(SFSearchFieldIconContainerView *)v2 iconView];
  v4 = [(SFFaviconView *)v3 icon];

  return v4;
}

- (void)setIcon:(id)a3
{
  v4 = self;
  v5 = a3;
  v6 = [(SFSearchFieldIconContainerView *)v4 iconView];
  [(SFFaviconView *)v6 setIcon:v5];

  v8 = [(SFSearchFieldIconContainerView *)v4 iconView];
  if (v5 && [v5 isSymbolImage])
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  [(SFFaviconView *)v8 setIconContentMode:v7];
}

- (SFUnifiedTabBarItemTitleContainerViewTheme)theme
{
  v3 = OBJC_IVAR___SFSearchFieldIconContainerView_theme;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTheme:(id)a3
{
  v5 = OBJC_IVAR___SFSearchFieldIconContainerView_theme;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_18BC14A60();
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SFSearchFieldIconContainerView;
  v2 = self;
  [(SFSearchFieldIconContainerView *)&v9 layoutSubviews];
  v3 = [(SFSearchFieldIconContainerView *)v2 iconView:v9.receiver];
  [(SFSearchFieldIconContainerView *)v2 bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  [(SFFaviconView *)v3 setFrame:MidX + -13.0, CGRectGetMidY(v11) + -13.0, 26.0, 26.0];
}

@end