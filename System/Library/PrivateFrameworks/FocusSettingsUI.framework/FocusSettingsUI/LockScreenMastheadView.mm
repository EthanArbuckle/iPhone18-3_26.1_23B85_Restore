@interface LockScreenMastheadView
- (NSString)symbolImageName;
- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithCoder:(id)a3;
- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithFrame:(CGRect)a3;
- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithKeyColor:(id)a3 symbolImageName:(id)a4;
@end

@implementation LockScreenMastheadView

- (NSString)symbolImageName
{

  v2 = sub_24BAA9FDC();

  return v2;
}

- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithKeyColor:(id)a3 symbolImageName:(id)a4
{
  v5 = sub_24BAAA01C();
  v7 = v6;
  v8 = a3;
  LockScreenMastheadView.init(keyColor:symbolImageName:)(a3, v5, v7);
  return result;
}

- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC15FocusSettingsUI22LockScreenMastheadView_rootView) = 0;
  result = sub_24BAAA6CC();
  __break(1u);
  return result;
}

- (_TtC15FocusSettingsUI22LockScreenMastheadView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end