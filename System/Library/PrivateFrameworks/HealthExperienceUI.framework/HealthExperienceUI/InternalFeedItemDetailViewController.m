@interface InternalFeedItemDetailViewController
- (_TtC18HealthExperienceUI36InternalFeedItemDetailViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI36InternalFeedItemDetailViewController)initWithCollectionViewLayout:(id)a3;
- (void)didTapDone:(id)a3;
- (void)viewDidLoad;
@end

@implementation InternalFeedItemDetailViewController

- (_TtC18HealthExperienceUI36InternalFeedItemDetailViewController)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA0547C0();
}

- (void)didTapDone:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [(InternalFeedItemDetailViewController *)v4 dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI36InternalFeedItemDetailViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end