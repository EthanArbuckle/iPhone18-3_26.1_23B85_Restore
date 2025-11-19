@interface InterstitialCollectionViewController
- (_TtC9MomentsUI36InterstitialCollectionViewController)initWithCoder:(id)a3;
- (_TtC9MomentsUI36InterstitialCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation InterstitialCollectionViewController

- (_TtC9MomentsUI36InterstitialCollectionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_collectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_sections) = MEMORY[0x277D84F90];
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_selectionTracking) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for InterstitialCollectionViewController();
  v2 = v10.receiver;
  [(InterstitialCollectionViewController *)&v10 viewDidLoad];
  InterstitialCollectionViewController.configureCollectionView()();
  v3 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0xF0))(v4, v5);
  v7 = *(v2 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource);
  *(v2 + OBJC_IVAR____TtC9MomentsUI36InterstitialCollectionViewController_dataSource) = v6;

  (*((*v3 & *v2) + 0xF8))(v8, v9);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  InterstitialCollectionViewController.viewWillAppear(_:)(a3);
}

- (_TtC9MomentsUI36InterstitialCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  InterstitialCollectionViewController.toggleSelectionForAsset(at:)(v8);

  (*(v6 + 8))(v8, v5);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x108);
  v12 = a4;
  v13 = self;
  v11(v12, v10);

  (*(v8 + 8))(v10, v7);
}

@end