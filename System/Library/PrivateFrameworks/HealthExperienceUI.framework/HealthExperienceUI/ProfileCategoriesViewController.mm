@interface ProfileCategoriesViewController
- (_TtC18HealthExperienceUI31ProfileCategoriesViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI31ProfileCategoriesViewController)initWithCollectionViewLayout:(id)layout;
- (void)restoreUserActivityState:(id)state;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation ProfileCategoriesViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ProfileCategoriesViewController();
  v2 = v6.receiver;
  [(CompoundDataSourceCollectionViewController *)&v6 viewDidLoad];
  collectionView = [v2 collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    systemGroupedBackgroundColor = [objc_opt_self() systemGroupedBackgroundColor];
    [v4 setBackgroundColor_];

    sub_1BA17BA4C();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18HealthExperienceUI31ProfileCategoriesViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA3F87D4(change);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1BA3F8A74(scrollCopy);
}

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1BA3F9138(stateCopy);
}

- (_TtC18HealthExperienceUI31ProfileCategoriesViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end