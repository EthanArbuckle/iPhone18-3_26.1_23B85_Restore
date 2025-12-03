@interface FeedItemSuggestedActionViewController
- (_TtC18HealthExperienceUI37FeedItemSuggestedActionViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI37FeedItemSuggestedActionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC18HealthExperienceUI37FeedItemSuggestedActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation FeedItemSuggestedActionViewController

- (_TtC18HealthExperienceUI37FeedItemSuggestedActionViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_dataSourceAdaptor) = 0;
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___dataSource) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController____lazy_storage___layout) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  selfCopy = self;
  sub_1BA4A71E8();
  v9 = 7;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for FeedItemSuggestedActionViewController();
  v8.receiver = selfCopy;
  v8.super_class = v7;
  [(FeedItemSuggestedActionViewController *)&v8 viewIsAppearing:appearingCopy];
}

- (void)viewDidLoad
{
  swift_getObjectType();
  v7.receiver = self;
  v7.super_class = type metadata accessor for FeedItemSuggestedActionViewController();
  selfCopy = self;
  [(FeedItemSuggestedActionViewController *)&v7 viewDidLoad];
  sub_1BA02A1AC();
  sub_1B9F7A684();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  v5 = sub_1BA4A4858();
  v6 = MEMORY[0x1E69DC2B0];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1BA4A7228();
  swift_unknownObjectRelease();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BA02A054();
}

- (_TtC18HealthExperienceUI37FeedItemSuggestedActionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI37FeedItemSuggestedActionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end