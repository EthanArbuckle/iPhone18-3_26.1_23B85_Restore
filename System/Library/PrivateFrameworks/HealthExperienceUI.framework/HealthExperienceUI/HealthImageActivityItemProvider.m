@interface HealthImageActivityItemProvider
- (_TtC18HealthExperienceUI31HealthImageActivityItemProvider)initWithPlaceholderItem:(id)a3;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
- (id)activityViewControllerLinkMetadata:(id)a3;
@end

@implementation HealthImageActivityItemProvider

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BA3759E8();

  return v6;
}

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1BA375AD0();

  return v10;
}

- (_TtC18HealthExperienceUI31HealthImageActivityItemProvider)initWithPlaceholderItem:(id)a3
{
  swift_unknownObjectRetain();
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end