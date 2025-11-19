@interface FocusFilterConfigurationMastheadView
- (NSString)subtitle;
- (_TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView)initWithBundleIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5;
- (_TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView)initWithCoder:(id)a3;
- (_TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView)initWithFrame:(CGRect)a3;
@end

@implementation FocusFilterConfigurationMastheadView

- (NSString)subtitle
{
  if (*(self + OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_subtitle + 8))
  {

    v2 = sub_24BAA9FDC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView)initWithBundleIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v6 = sub_24BAAA01C();
  v8 = v7;
  v9 = sub_24BAAA01C();
  v11 = v10;
  if (a5)
  {
    v12 = sub_24BAAA01C();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  FocusFilterConfigurationMastheadView.init(bundleIdentifier:title:subtitle:)(v6, v8, v9, v11, v12, v14);
  return result;
}

- (_TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_rootView) = 0;
  result = sub_24BAAA6CC();
  __break(1u);
  return result;
}

- (_TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end