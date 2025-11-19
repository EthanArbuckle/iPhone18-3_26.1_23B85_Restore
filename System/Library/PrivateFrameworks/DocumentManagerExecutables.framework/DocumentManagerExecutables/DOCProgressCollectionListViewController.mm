@interface DOCProgressCollectionListViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)preferredContentSize;
- (_TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController)init;
- (_TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView)primaryScrollView;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation DOCProgressCollectionListViewController

- (void)viewDidLoad
{
  v2 = self;
  DOCProgressCollectionListViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  DOCProgressCollectionListViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  DOCProgressCollectionListViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCProgressCollectionListViewController(0);
  v4 = v7.receiver;
  [(DOCViewController *)&v7 viewWillDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController_source + 8];
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(v4, 0, 0, ObjectType, v5);
}

- (CGSize)preferredContentSize
{
  v2 = self;
  v3 = DOCProgressCollectionListViewController.collectionView.getter();
  [v3 contentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCProgressCollectionListViewController(0);
  v6 = v8.receiver;
  [(DOCProgressCollectionListViewController *)&v8 setEditing:v5 animated:v4];
  v7 = DOCProgressCollectionListViewController.collectionView.getter();
  [v7 setEditing_];
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
  return 0;
}

- (_TtCC26DocumentManagerExecutables39DOCProgressCollectionListViewController19ProgressListingView)primaryScrollView
{
  v2 = self;

  v3 = DOCProgressCollectionListViewController.collectionView.getter();

  return v3;
}

- (_TtC26DocumentManagerExecutables39DOCProgressCollectionListViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end