@interface HealthURLActivityItemProvider
- (_TtC18HealthExperienceUI29HealthURLActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)item;
@end

@implementation HealthURLActivityItemProvider

- (id)item
{
  v3 = sub_1BA4A15D8();
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtC18HealthExperienceUI29HealthURLActivityItemProvider_url, v3, v4);
  v7 = sub_1BA4A8398();

  return v7;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  selfCopy = self;
  v4 = sub_1BA05984C();

  return v4;
}

- (_TtC18HealthExperienceUI29HealthURLActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end