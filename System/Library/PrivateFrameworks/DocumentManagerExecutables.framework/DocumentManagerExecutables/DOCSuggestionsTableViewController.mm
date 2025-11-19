@interface DOCSuggestionsTableViewController
- (BOOL)resignFirstResponder;
- (NSArray)keyCommands;
- (_TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)keyCommandCancelSelection;
- (void)keyCommandConfirmSelection;
- (void)keyCommandMoveSelectionDown;
- (void)keyCommandMoveSelectionUp;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation DOCSuggestionsTableViewController

- (_TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestionsTableViewDelegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_suggestions) = MEMORY[0x277D84F90];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController_sortedSuggestions) = v4;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for DOCSuggestionsTableView());
  v5 = self;
  v4 = [v3 initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  [(DOCSuggestionsTableViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  DOCSuggestionsTableViewController.viewDidLoad()();
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = DOCSuggestionsTableViewController.resignFirstResponder()();

  return v3;
}

- (NSArray)keyCommands
{
  if (specialized DOCSuggestionsTableViewController.keyCommands.getter())
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)keyCommandMoveSelectionUp
{
  v2 = self;
  DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(-1, 1, 1);
}

- (void)keyCommandMoveSelectionDown
{
  v2 = self;
  DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(1, 1, 1);
}

- (void)keyCommandConfirmSelection
{
  v2 = self;
  DOCSuggestionsTableViewController.keyCommandConfirmSelection()();
}

- (void)keyCommandCancelSelection
{
  v2 = self;
  DOCSuggestionsTableViewController.changeSelection(_:notifyingDelegate:)(0, 2, 1);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  DOCSuggestionsTableViewController.notiftyDelegateForSelection(at:)();

  (*(v6 + 8))(v9, v5);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x80);
  v5 = self;
  v6 = v4();
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  DOCSuggestionsTableViewController.tableView(_:cellForRowAt:)(v11);
  v14 = v13;

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (_TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables33DOCSuggestionsTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end