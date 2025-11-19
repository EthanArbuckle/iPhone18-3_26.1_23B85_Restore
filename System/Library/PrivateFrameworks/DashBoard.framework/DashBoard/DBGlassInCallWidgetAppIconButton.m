@interface DBGlassInCallWidgetAppIconButton
- (NSString)applicationBundleIdentifier;
- (void)layoutSubviews;
- (void)setApplicationBundleIdentifier:(id)a3;
- (void)updateAppIcon;
- (void)updateConfiguration;
@end

@implementation DBGlassInCallWidgetAppIconButton

- (NSString)applicationBundleIdentifier
{
  v2 = self + OBJC_IVAR____TtC9DashBoard32DBGlassInCallWidgetAppIconButton_applicationBundleIdentifier;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_248383930();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setApplicationBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_248383960();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  DBGlassInCallWidgetAppIconButton.applicationBundleIdentifier.setter(v4, v6);
}

- (void)layoutSubviews
{
  v2 = self;
  DBGlassInCallWidgetAppIconButton.layoutSubviews()();
}

- (void)updateConfiguration
{
  v2 = self;
  DBGlassInCallWidgetAppIconButton.updateConfiguration()();
}

- (void)updateAppIcon
{
  v2 = self;
  [(DBGlassInCallWidgetAppIconButton *)v2 setNeedsLayout];
  [(DBGlassInCallWidgetAppIconButton *)v2 layoutIfNeeded];
}

@end