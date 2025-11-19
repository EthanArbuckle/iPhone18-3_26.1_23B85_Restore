@interface ControlCenterClient
- (_TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient)init;
- (void)currentConfigurations:(id)a3;
- (void)reloadAllControlsForBundleIdentifier:(id)a3;
- (void)reloadControlsOfKind:(id)a3;
@end

@implementation ControlCenterClient

- (void)reloadControlsOfKind:(id)a3
{
  v4 = sub_224DAEE18();
  v6 = v5;
  v7 = self;
  sub_224A3869C(v4, v6);
}

- (_TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)reloadAllControlsForBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_224DAEE18();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_224D22324(v4, v6);
}

- (void)currentConfigurations:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_224D23260(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end