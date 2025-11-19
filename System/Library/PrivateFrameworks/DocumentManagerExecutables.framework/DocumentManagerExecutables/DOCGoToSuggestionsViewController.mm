@interface DOCGoToSuggestionsViewController
- (NSArray)keyCommands;
- (_TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController)initWithCollectionViewLayout:(id)a3;
- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)performKeyCommand:(id)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation DOCGoToSuggestionsViewController

- (id)_newCollectionViewWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self;
  v9 = DOCGoToSuggestionsViewController.createLayout()();
  v10 = [objc_allocWithZone(type metadata accessor for DOCGoToSuggestionsCollectionView()) initWithFrame:v9 collectionViewLayout:{x, y, width, height}];

  v11 = &v10[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_03A6F4A3946F5CAF17EC184247B3DEF332DOCGoToSuggestionsCollectionView_focusableCollectionViewDelegate];
  swift_beginAccess();
  *v11 = v8;
  v11[1] = &protocol witness table for DOCGoToSuggestionsViewController;
  swift_unknownObjectRelease();
  return v10;
}

- (void)viewDidLoad
{
  v2 = self;
  DOCGoToSuggestionsViewController.viewDidLoad()();
}

- (void)viewLayoutMarginsDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCGoToSuggestionsViewController();
  v2 = v6.receiver;
  [(DOCGoToSuggestionsViewController *)&v6 viewLayoutMarginsDidChange];
  v3 = [v2 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0xC8);
  v4 = self;
  if (v3())
  {
    v5 = 1;
  }

  else
  {
    v5 = (*(&v4->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections))[2];
  }

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = specialized DOCGoToSuggestionsViewController.collectionView(_:numberOfItemsInSection:)(a4);

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = DOCGoToSuggestionsViewController.collectionView(_:cellForItemAt:)(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = self;
  v17 = DOCGoToSuggestionsViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(v15, v12, v14);

  (*(v8 + 8))(v11, v7);

  return v17;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  specialized DOCGoToSuggestionsViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v10, v6);
}

- (_TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)keyCommands
{
  v2 = self;
  v3 = DOCGoToSuggestionsViewController.keyCommands.getter();

  if (v3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)performKeyCommand:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = [(DOCGoToSuggestionsViewController *)v9 collectionView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v8 + 104))(v4, ObjectType, v8);
}

@end