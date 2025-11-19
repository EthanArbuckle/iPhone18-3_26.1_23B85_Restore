@interface ProfileCategoriesViewController
- (_TtC18HealthExperienceUI31ProfileCategoriesViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI31ProfileCategoriesViewController)initWithCollectionViewLayout:(id)a3;
- (void)restoreUserActivityState:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation ProfileCategoriesViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ProfileCategoriesViewController();
  v2 = v6.receiver;
  [(CompoundDataSourceCollectionViewController *)&v6 viewDidLoad];
  v3 = [v2 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemGroupedBackgroundColor];
    [v4 setBackgroundColor_];

    sub_1BA17BA4C();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC18HealthExperienceUI31ProfileCategoriesViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA3F87D4(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA3F8A74(v4);
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA3F9138(v4);
}

- (_TtC18HealthExperienceUI31ProfileCategoriesViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end