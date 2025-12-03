@interface SFSearchFieldIconContainerView
- (SFSearchFieldIconContainerView)initWithCoder:(id)coder;
- (SFUnifiedTabBarItemTitleContainerViewTheme)theme;
- (UIImage)icon;
- (void)layoutSubviews;
- (void)setIcon:(id)icon;
- (void)setTheme:(id)theme;
@end

@implementation SFSearchFieldIconContainerView

- (SFSearchFieldIconContainerView)initWithCoder:(id)coder
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
  selfCopy = self;
  iconView = [(SFSearchFieldIconContainerView *)selfCopy iconView];
  icon = [(SFFaviconView *)iconView icon];

  return icon;
}

- (void)setIcon:(id)icon
{
  selfCopy = self;
  iconCopy = icon;
  iconView = [(SFSearchFieldIconContainerView *)selfCopy iconView];
  [(SFFaviconView *)iconView setIcon:iconCopy];

  iconView2 = [(SFSearchFieldIconContainerView *)selfCopy iconView];
  if (iconCopy && [iconCopy isSymbolImage])
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  [(SFFaviconView *)iconView2 setIconContentMode:v7];
}

- (SFUnifiedTabBarItemTitleContainerViewTheme)theme
{
  v3 = OBJC_IVAR___SFSearchFieldIconContainerView_theme;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setTheme:(id)theme
{
  v5 = OBJC_IVAR___SFSearchFieldIconContainerView_theme;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = theme;
  themeCopy = theme;
  selfCopy = self;

  sub_18BC14A60();
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SFSearchFieldIconContainerView;
  selfCopy = self;
  [(SFSearchFieldIconContainerView *)&v9 layoutSubviews];
  v3 = [(SFSearchFieldIconContainerView *)selfCopy iconView:v9.receiver];
  [(SFSearchFieldIconContainerView *)selfCopy bounds];
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