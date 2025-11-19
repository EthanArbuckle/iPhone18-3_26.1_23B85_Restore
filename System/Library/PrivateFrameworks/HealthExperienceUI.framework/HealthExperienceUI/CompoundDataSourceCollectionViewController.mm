@interface CompoundDataSourceCollectionViewController
- (_TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)observedTraitsDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation CompoundDataSourceCollectionViewController

- (_TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  v4 = a3;
  v5 = sub_1B9F0F3F4(a3);

  return v5;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1B9F23808();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1B9F53348(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  v4 = v6.receiver;
  v5 = [(CompoundDataSourceCollectionViewController *)&v6 viewDidAppear:v3];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x108))(v5);
}

- (void)observedTraitsDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  sub_1B9F46930(a3, v7);
  swift_unknownObjectRelease();
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  v2 = v5.receiver;
  [(CompoundDataSourceCollectionViewController *)&v5 viewDidLayoutSubviews];
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  swift_beginAccess();
  if (*(v2 + v3) == 1)
  {
    v4 = [v2 traitCollection];
    sub_1BA4A7368();

    sub_1BA4A7248();
  }
}

- (_TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  v10 = a3;
  v11 = self;
  CompoundDataSourceCollectionViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = sub_1BA4A1998();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  v11 = a3;
  v12 = self;
  v13 = _s18HealthExperienceUI42CompoundDataSourceCollectionViewControllerC010collectionH0_33contextMenuConfigurationForItemAt5pointSo09UIContextlM0CSgSo012UICollectionH0C_10Foundation9IndexPathVSo7CGPointVtF_0(v11);

  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v7 = sub_1BA4A1998();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  sub_1BA4A1918();
  sub_1BA4A1918();
  sub_1BA4A1918();
  v20 = self;
  v21 = *sub_1B9F23FB0();
  v22 = (*(v21 + 360))(v16, v10);

  v23 = *(v8 + 8);
  v23(v13, v7);
  if (v22)
  {
    v24 = v16;
  }

  else
  {
    v24 = v10;
  }

  if (v22)
  {
    v25 = v10;
  }

  else
  {
    v25 = v16;
  }

  v23(v24, v7);
  (*(v8 + 32))(v19, v25, v7);
  v26 = sub_1BA4A18F8();
  v23(v19, v7);

  return v26;
}

@end