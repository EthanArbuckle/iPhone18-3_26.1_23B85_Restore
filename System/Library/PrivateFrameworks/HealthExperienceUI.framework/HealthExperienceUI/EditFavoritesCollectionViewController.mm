@interface EditFavoritesCollectionViewController
- (_TtC18HealthExperienceUI37EditFavoritesCollectionViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI37EditFavoritesCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (void)doneButtonTapped;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation EditFavoritesCollectionViewController

- (_TtC18HealthExperienceUI37EditFavoritesCollectionViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA0D7FEC();
}

- (void)doneButtonTapped
{
  selfCopy = self;
  v2 = sub_1BA0D7B3C();
  isActive = [v2 isActive];

  if (isActive)
  {
    [*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI37EditFavoritesCollectionViewController____lazy_storage___searchController) dismissViewControllerAnimated:0 completion:0];
  }

  [(EditFavoritesCollectionViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1BA0D83F4(controllerCopy);
}

- (_TtC18HealthExperienceUI37EditFavoritesCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end