@interface DBLeafIcon
- (BOOL)isLaunchEnabled;
- (_TtC9DashBoard10DBLeafIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4;
@end

@implementation DBLeafIcon

- (BOOL)isLaunchEnabled
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x58);
  v3 = self;
  v4 = v2();
  v5 = [v4 isPlaceholder];

  return v5 ^ 1;
}

- (_TtC9DashBoard10DBLeafIcon)initWithLeafIdentifier:(id)a3 applicationBundleID:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end