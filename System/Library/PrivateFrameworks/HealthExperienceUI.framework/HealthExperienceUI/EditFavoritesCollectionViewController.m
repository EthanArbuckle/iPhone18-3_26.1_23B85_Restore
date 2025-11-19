@interface EditFavoritesCollectionViewController
- (_TtC18HealthExperienceUI37EditFavoritesCollectionViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI37EditFavoritesCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (void)doneButtonTapped;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation EditFavoritesCollectionViewController

- (_TtC18HealthExperienceUI37EditFavoritesCollectionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA0D7FEC();
}

- (void)doneButtonTapped
{
  v4 = self;
  v2 = sub_1BA0D7B3C();
  v3 = [v2 isActive];

  if (v3)
  {
    [*(&v4->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) dismissViewControllerAnimated:0 completion:0];
  }

  [(EditFavoritesCollectionViewController *)v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA0D83F4(v4);
}

- (_TtC18HealthExperienceUI37EditFavoritesCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end