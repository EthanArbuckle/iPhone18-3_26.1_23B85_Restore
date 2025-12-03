@interface SearchViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC18HealthExperienceUI20SearchViewController)initWithCoder:(id)coder;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didPresentSearchController:(id)controller;
- (void)restoreUserActivityState:(id)state;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)willDismissSearchController:(id)controller;
@end

@implementation SearchViewController

- (_TtC18HealthExperienceUI20SearchViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA3CD150();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  selfCopy = self;
  sub_1BA4A71E8();
  v9 = 2;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for SearchViewController();
  v8.receiver = selfCopy;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:appearingCopy];
}

- (void)willDismissSearchController:(id)controller
{
  v4 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  v8 = sub_1B9F2192C();
  searchBar = [v8 searchBar];

  [searchBar resignFirstResponder];
  swift_storeEnumTagMultiPayload();
  sub_1BA3CC650(v6);

  sub_1BA3D29CC(v6, type metadata accessor for SearchDataSource.State);
}

- (void)didPresentSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1BA3D239C(controllerCopy);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1BA4A18F8();
  v13 = type metadata accessor for SearchViewController();
  v14.receiver = selfCopy;
  v14.super_class = v13;
  [(CompoundDataSourceCollectionViewController *)&v14 collectionView:viewCopy didSelectItemAtIndexPath:v12];

  SearchViewController.didSelectItem()();
  (*(v7 + 8))(v9, v6);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;
  selfCopy = self;
  sub_1BA3CE94C(v5, v7, 0);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  text = [returnCopy text];
  if (text)
  {
    v7 = text;
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v9;

    sub_1BA3CE94C(v8, v10, 1);
  }

  return 1;
}

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  SearchViewController.restoreUserActivityState(_:)(stateCopy);
}

@end