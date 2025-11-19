@interface DOCSearchController
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (_TtC26DocumentManagerExecutables19DOCSearchController)initWithSearchResultsController:(id)a3;
- (_TtP26DocumentManagerExecutables39DOCSearchControllerPresentationDelegate_)presentationDelegate;
- (void)deactivateAlongsideContainingTransitionCoordinator:(id)a3;
- (void)didDismissSearchController:(id)a3;
- (void)didPresentSearchController:(id)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleSuggestionsTypingTimeout;
- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)searchController:(id)a3 didChangeFromSearchBarPlacement:(int64_t)a4;
- (void)setDelegate:(id)a3;
- (void)setPresentationDelegate:(id)a3;
- (void)setSearchResultsUpdater:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3 selectingSearchSuggestion:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)willDismissSearchController:(id)a3;
- (void)willPresentSearchController:(id)a3;
@end

@implementation DOCSearchController

- (_TtP26DocumentManagerExecutables39DOCSearchControllerPresentationDelegate_)presentationDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setPresentationDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  DOCSearchController.presentationDelegate.setter();
}

- (void)setDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCSearchController();
  [(DOCSearchController *)&v4 setDelegate:a3];
}

- (void)setSearchResultsUpdater:(id)a3
{
  if (a3 && a3 == self)
  {
    v4.receiver = self;
    v4.super_class = type metadata accessor for DOCSearchController();
    [(DOCSearchController *)&v4 setSearchResultsUpdater:a3];
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

- (void)viewDidLoad
{
  v2 = self;
  DOCSearchController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  DOCSearchController.viewDidLayoutSubviews()();
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCSearchController();
  v6 = v8.receiver;
  v7 = a3;
  [(DOCSearchController *)&v8 viewDidMoveToWindow:v7 shouldAppearOrDisappear:v4];
  if (v7)
  {
    DOCSearchController.updateForCurrentTraitCollection()();
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCSearchController();
  v4 = v8.receiver;
  v5 = [(DOCSearchController *)&v8 viewWillAppear:v3];
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v4) + 0x328))(v5);
  (*((*v6 & *v4) + 0x3D8))(v7);
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCSearchController();
  v4 = a3;
  v5 = v6.receiver;
  [(DOCSearchController *)&v6 traitCollectionDidChange:v4];
  (*((*MEMORY[0x277D85000] & *v5) + 0x3B0))(0);
  DOCSearchController.updateForTraitCollectionChange(from:)(a3);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = self;
  if ([(DOCSearchController *)v9 isActive])
  {
    (*((*MEMORY[0x277D85000] & *v9) + 0x360))(v8, v7, v4);
LABEL_8:

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
    return;
  }

  if (v6)
  {
    v8();
    goto LABEL_8;
  }
}

- (void)deactivateAlongsideContainingTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  DOCSearchController.deactivate(alongsideContainingTransitionCoordinator:)(a3);
  swift_unknownObjectRelease();
}

- (void)searchController:(id)a3 didChangeFromSearchBarPlacement:(int64_t)a4
{
  v4 = *((*MEMORY[0x277D85000] & *self) + 0x3D8);
  v5 = self;
  v4();
}

- (void)willPresentSearchController:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & *self) + 0x278);
  v6 = self;
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      [v5 willPresentSearchController_];
    }

    swift_unknownObjectRelease();
  }
}

- (void)didPresentSearchController:(id)a3
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *self) + 0x3B0);
  v7 = self;
  v4(0);
  v5 = (*((*v3 & *v7) + 0x278))();
  if (v5)
  {
    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      [v6 didPresentSearchController_];
    }

    swift_unknownObjectRelease();
  }

  DOCSearchController.updateSearchResultsControllerVisibility()();
}

- (void)willDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCSearchController.willDismissSearchController(_:)();
}

- (void)didDismissSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCSearchController.didDismissSearchController(_:)();
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  if (*(self + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_activationTemporilyDisabled))
  {
    return 0;
  }

  else
  {
    return [a3 isEnabled];
  }
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *self) + 0x1F8);
  v6 = a3;
  v7 = self;
  v8 = v5(1);
  (*((*v4 & *v7) + 0x4C0))(v8);
  v9 = [v6 text];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  (*((*v4 & *v7) + 0x448))(v6, v11, v13);
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a3;
  v6 = self;
  specialized DOCSearchController.searchBar(_:textDidChange:)(v5);
}

- (void)handleSuggestionsTypingTimeout
{
  v2 = self;
  DOCSearchController.handleSuggestionsTypingTimeout()();
}

- (void)searchBar:(id)a3 selectedScopeButtonIndexDidChange:(int64_t)a4
{
  v5 = *((*MEMORY[0x277D85000] & *self) + 0x2E0);
  v6 = self;
  v5(a4);
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCSearchController.searchBarTextDidEndEditing(_:)();
}

- (void)updateSearchResultsForSearchController:(id)a3 selectingSearchSuggestion:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  specialized DOCSearchController.updateSearchResults(for:selecting:)(a4);

  swift_unknownObjectRelease();
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCSearchController.updateSearchResults(for:)();
}

- (_TtC26DocumentManagerExecutables19DOCSearchController)initWithSearchResultsController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end