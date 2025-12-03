@interface FocusFilterSystemConfigurationMastheadView
- (NSString)title;
- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithCoder:(id)coder;
- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithFrame:(CGRect)frame;
- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithTitle:(id)title subtitle:(id)subtitle symbolName:(id)name color:(id)color;
@end

@implementation FocusFilterSystemConfigurationMastheadView

- (NSString)title
{

  v2 = sub_24BAA9FDC();

  return v2;
}

- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithTitle:(id)title subtitle:(id)subtitle symbolName:(id)name color:(id)color
{
  v9 = sub_24BAAA01C();
  v11 = v10;
  if (!subtitle)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  subtitle = sub_24BAAA01C();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  name = sub_24BAAA01C();
  v15 = v14;
LABEL_6:
  colorCopy = color;
  FocusFilterSystemConfigurationMastheadView.init(title:subtitle:symbolName:color:)(v9, v11, subtitle, v13, name, v15, color);
  return result;
}

- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR____TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView_rootView) = 0;
  result = sub_24BAAA6CC();
  __break(1u);
  return result;
}

- (_TtC15FocusSettingsUI42FocusFilterSystemConfigurationMastheadView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end