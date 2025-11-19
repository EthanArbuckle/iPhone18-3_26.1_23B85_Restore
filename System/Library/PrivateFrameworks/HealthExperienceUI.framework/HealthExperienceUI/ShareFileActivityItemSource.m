@interface ShareFileActivityItemSource
- (_TtC18HealthExperienceUI27ShareFileActivityItemSource)init;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerPlaceholderItem:(id)a3;
@end

@implementation ShareFileActivityItemSource

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v4 = sub_1BA4A15D8();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_fileURL, v4, v5);
  v8 = sub_1BA4A8398();

  return v8;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = sub_1BA4A15D8();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), self + OBJC_IVAR____TtC18HealthExperienceUI27ShareFileActivityItemSource_fileURL, v5, v6);
  v9 = sub_1BA4A8398();

  return v9;
}

- (_TtC18HealthExperienceUI27ShareFileActivityItemSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end