@interface ArtworkShelfViewController
- (_TtC9CarPlayUI26ArtworkShelfViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ArtworkShelfViewController

- (void)viewDidLoad
{
  v2 = self;
  ArtworkShelfViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  ArtworkShelfViewController.viewDidLayoutSubviews()();
}

- (_TtC9CarPlayUI26ArtworkShelfViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return ArtworkShelfViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = OBJC_IVAR____TtC9CarPlayUI26ArtworkShelfViewController_items;
  swift_beginAccess();
  return (*(&self->super.super.super.isa + v5))[2];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = ArtworkShelfViewController.collectionView(_:cellForItemAt:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  ArtworkShelfViewController.collectionView(_:didSelectItemAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = a3;
  v8 = self;
  specialized ArtworkShelfViewController.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(v7, &a5->x);
}

@end