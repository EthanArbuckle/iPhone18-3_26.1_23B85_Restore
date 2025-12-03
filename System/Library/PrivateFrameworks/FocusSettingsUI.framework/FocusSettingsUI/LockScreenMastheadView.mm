@interface LockScreenMastheadView
- (NSString)symbolImageName;
- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithCoder:(id)coder;
- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithFrame:(CGRect)frame;
- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithKeyColor:(id)color symbolImageName:(id)name;
@end

@implementation LockScreenMastheadView

- (NSString)symbolImageName
{

  v2 = sub_24BAA9FDC();

  return v2;
}

- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithKeyColor:(id)color symbolImageName:(id)name
{
  v5 = sub_24BAAA01C();
  v7 = v6;
  colorCopy = color;
  LockScreenMastheadView.init(keyColor:symbolImageName:)(color, v5, v7);
  return result;
}

- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_rootView) = 0;
  result = sub_24BAAA6CC();
  __break(1u);
  return result;
}

- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end