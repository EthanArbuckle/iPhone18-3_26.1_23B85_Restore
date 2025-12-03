@interface InternalFeedItemDetailViewController
- (_TtC18HealthExperienceUI36InternalFeedItemDetailViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI36InternalFeedItemDetailViewController)initWithCollectionViewLayout:(id)layout;
- (void)didTapDone:(id)done;
- (void)viewDidLoad;
@end

@implementation InternalFeedItemDetailViewController

- (_TtC18HealthExperienceUI36InternalFeedItemDetailViewController)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA0547C0();
}

- (void)didTapDone:(id)done
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [(InternalFeedItemDetailViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI36InternalFeedItemDetailViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end