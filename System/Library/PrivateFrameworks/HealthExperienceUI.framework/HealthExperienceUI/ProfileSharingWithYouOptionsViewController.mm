@interface ProfileSharingWithYouOptionsViewController
- (_TtC18HealthExperienceUI42ProfileSharingWithYouOptionsViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI42ProfileSharingWithYouOptionsViewController)initWithCollectionViewLayout:(id)a3;
- (void)dismissOptions:(id)a3;
- (void)viewDidLoad;
@end

@implementation ProfileSharingWithYouOptionsViewController

- (_TtC18HealthExperienceUI42ProfileSharingWithYouOptionsViewController)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProfileSharingWithYouOptionsViewController();
  v2 = v3.receiver;
  [(CompoundDataSourceCollectionViewController *)&v3 viewDidLoad];
  sub_1BA1DE500();
}

- (void)dismissOptions:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [(ProfileSharingWithYouOptionsViewController *)v4 dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (_TtC18HealthExperienceUI42ProfileSharingWithYouOptionsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end