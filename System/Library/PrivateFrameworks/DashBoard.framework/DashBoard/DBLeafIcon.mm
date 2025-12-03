@interface DBLeafIcon
- (BOOL)isLaunchEnabled;
- (_TtC9DashBoard10DBLeafIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d;
@end

@implementation DBLeafIcon

- (BOOL)isLaunchEnabled
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x58);
  selfCopy = self;
  v4 = v2();
  isPlaceholder = [v4 isPlaceholder];

  return isPlaceholder ^ 1;
}

- (_TtC9DashBoard10DBLeafIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end