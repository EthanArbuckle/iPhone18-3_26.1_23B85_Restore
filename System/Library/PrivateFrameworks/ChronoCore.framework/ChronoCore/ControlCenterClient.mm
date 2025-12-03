@interface ControlCenterClient
- (_TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient)init;
- (void)currentConfigurations:(id)configurations;
- (void)reloadAllControlsForBundleIdentifier:(id)identifier;
- (void)reloadControlsOfKind:(id)kind;
@end

@implementation ControlCenterClient

- (void)reloadControlsOfKind:(id)kind
{
  v4 = sub_224DAEE18();
  v6 = v5;
  selfCopy = self;
  sub_224A3869C(v4, v6);
}

- (_TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)reloadAllControlsForBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_224DAEE18();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_224D22324(v4, v6);
}

- (void)currentConfigurations:(id)configurations
{
  v4 = _Block_copy(configurations);
  _Block_copy(v4);
  selfCopy = self;
  sub_224D23260(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end