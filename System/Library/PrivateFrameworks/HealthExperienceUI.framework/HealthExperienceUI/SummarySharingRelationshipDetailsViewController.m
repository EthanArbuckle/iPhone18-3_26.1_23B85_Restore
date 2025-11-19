@interface SummarySharingRelationshipDetailsViewController
- (_TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController)initWithCollectionViewLayout:(id)a3;
- (void)doneButtonTapped;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation SummarySharingRelationshipDetailsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA085E0C();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA086250(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA0864F4(v4);
}

- (_TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)doneButtonTapped
{
  v2 = self;
  sub_1BA088028();
}

@end