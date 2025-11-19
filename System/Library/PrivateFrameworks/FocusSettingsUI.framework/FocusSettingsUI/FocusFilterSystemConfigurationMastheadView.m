@interface FocusFilterSystemConfigurationMastheadView
- (NSString)title;
- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithCoder:(id)a3;
- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithFrame:(CGRect)a3;
- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithTitle:(id)a3 subtitle:(id)a4 symbolName:(id)a5 color:(id)a6;
@end

@implementation FocusFilterSystemConfigurationMastheadView

- (NSString)title
{

  v2 = sub_24BAA9FDC();

  return v2;
}

- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithTitle:(id)a3 subtitle:(id)a4 symbolName:(id)a5 color:(id)a6
{
  v9 = sub_24BAAA01C();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  a4 = sub_24BAAA01C();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  a5 = sub_24BAAA01C();
  v15 = v14;
LABEL_6:
  v16 = a6;
  FocusFilterSystemConfigurationMastheadView.init(title:subtitle:symbolName:color:)(v9, v11, a4, v13, a5, v15, a6);
  return result;
}

- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_rootView) = 0;
  result = sub_24BAAA6CC();
  __break(1u);
  return result;
}

- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end