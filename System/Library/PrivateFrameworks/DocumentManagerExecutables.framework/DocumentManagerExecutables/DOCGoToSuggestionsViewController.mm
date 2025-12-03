@interface DOCGoToSuggestionsViewController
- (NSArray)keyCommands;
- (_TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController)initWithCollectionViewLayout:(id)layout;
- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)performKeyCommand:(id)command;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
@end

@implementation DOCGoToSuggestionsViewController

- (id)_newCollectionViewWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  v9 = DOCGoToSuggestionsViewController.createLayout()();
  v10 = [objc_allocWithZone(type metadata accessor for DOCGoToSuggestionsCollectionView()) initWithFrame:v9 collectionViewLayout:{x, y, width, height}];

  v11 = &v10[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_03A6F4A3946F5CAF17EC184247B3DEF332DOCGoToSuggestionsCollectionView_focusableCollectionViewDelegate];
  swift_beginAccess();
  *v11 = selfCopy;
  v11[1] = &protocol witness table for DOCGoToSuggestionsViewController;
  swift_unknownObjectRelease();
  return v10;
}

- (void)viewDidLoad
{
  selfCopy = self;
  DOCGoToSuggestionsViewController.viewDidLoad()();
}

- (void)viewLayoutMarginsDidChange
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCGoToSuggestionsViewController();
  v2 = v6.receiver;
  [(DOCGoToSuggestionsViewController *)&v6 viewLayoutMarginsDidChange];
  collectionView = [v2 collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    collectionViewLayout = [collectionView collectionViewLayout];

    [collectionViewLayout invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0xC8);
  selfCopy = self;
  if (v3())
  {
    v5 = 1;
  }

  else
  {
    v5 = (*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController_sections))[2];
  }

  return v5;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = specialized DOCGoToSuggestionsViewController.collectionView(_:numberOfItemsInSection:)(section);

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = DOCGoToSuggestionsViewController.collectionView(_:cellForItemAt:)(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v17 = DOCGoToSuggestionsViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(viewCopy, v12, v14);

  (*(v8 + 8))(v11, v7);

  return v17;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  specialized DOCGoToSuggestionsViewController.collectionView(_:didSelectItemAt:)();

  (*(v7 + 8))(v10, v6);
}

- (_TtC26DocumentManagerExecutables32DOCGoToSuggestionsViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)keyCommands
{
  selfCopy = self;
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

- (void)performKeyCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  collectionView = [(DOCGoToSuggestionsViewController *)selfCopy collectionView];
  if (!collectionView)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = collectionView;
  ObjectType = swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v8 + 104))(commandCopy, ObjectType, v8);
}

@end