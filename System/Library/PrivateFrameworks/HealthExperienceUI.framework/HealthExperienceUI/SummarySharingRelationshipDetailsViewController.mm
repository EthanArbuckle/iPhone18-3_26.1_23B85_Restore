@interface SummarySharingRelationshipDetailsViewController
- (_TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController)initWithCollectionViewLayout:(id)layout;
- (void)doneButtonTapped;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation SummarySharingRelationshipDetailsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA085E0C();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA086250(change);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1BA0864F4(scrollCopy);
}

- (_TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)doneButtonTapped
{
  selfCopy = self;
  sub_1BA088028();
}

@end