@interface SearchViewController
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC18HealthExperienceUI20SearchViewController)initWithCoder:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didPresentSearchController:(id)a3;
- (void)restoreUserActivityState:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)willDismissSearchController:(id)a3;
@end

@implementation SearchViewController

- (_TtC18HealthExperienceUI20SearchViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI20SearchViewController____lazy_storage___searchController) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA3CD150();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = self;
  sub_1BA4A71E8();
  v9 = 2;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v7 = type metadata accessor for SearchViewController();
  v8.receiver = v6;
  v8.super_class = v7;
  [(CompoundDataSourceCollectionViewController *)&v8 viewIsAppearing:v3];
}

- (void)willDismissSearchController:(id)a3
{
  v4 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = sub_1B9F2192C();
  v9 = [v8 searchBar];

  [v9 resignFirstResponder];
  swift_storeEnumTagMultiPayload();
  sub_1BA3CC650(v6);

  sub_1BA3D29CC(v6, type metadata accessor for SearchDataSource.State);
}

- (void)didPresentSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA3D239C(v4);
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  v10 = a3;
  v11 = self;
  v12 = sub_1BA4A18F8();
  v13 = type metadata accessor for SearchViewController();
  v14.receiver = v11;
  v14.super_class = v13;
  [(CompoundDataSourceCollectionViewController *)&v14 collectionView:v10 didSelectItemAtIndexPath:v12];

  SearchViewController.didSelectItem()();
  (*(v7 + 8))(v9, v6);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v7 = v6;
  v8 = self;
  sub_1BA3CE94C(v5, v7, 0);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [v4 text];
  if (v6)
  {
    v7 = v6;
    v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v10 = v9;

    sub_1BA3CE94C(v8, v10, 1);
  }

  return 1;
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  SearchViewController.restoreUserActivityState(_:)(v4);
}

@end