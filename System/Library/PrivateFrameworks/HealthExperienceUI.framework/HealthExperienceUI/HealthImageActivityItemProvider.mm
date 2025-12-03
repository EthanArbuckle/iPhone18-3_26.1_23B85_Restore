@interface HealthImageActivityItemProvider
- (_TtC18HealthExperienceUI31HealthImageActivityItemProvider)initWithPlaceholderItem:(id)item;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation HealthImageActivityItemProvider

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  v6 = sub_1BA3759E8();

  return v6;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  controllerCopy = controller;
  typeCopy = type;
  selfCopy = self;
  v10 = sub_1BA375AD0();

  return v10;
}

- (_TtC18HealthExperienceUI31HealthImageActivityItemProvider)initWithPlaceholderItem:(id)item
{
  swift_unknownObjectRetain();
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end