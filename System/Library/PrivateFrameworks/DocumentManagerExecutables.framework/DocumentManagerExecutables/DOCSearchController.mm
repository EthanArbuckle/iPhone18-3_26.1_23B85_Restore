@interface DOCSearchController
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (_TtC26DocumentManagerExecutables19DOCSearchController)initWithSearchResultsController:(id)controller;
- (_TtP26DocumentManagerExecutables39DOCSearchControllerPresentationDelegate_)presentationDelegate;
- (void)deactivateAlongsideContainingTransitionCoordinator:(id)coordinator;
- (void)didDismissSearchController:(id)controller;
- (void)didPresentSearchController:(id)controller;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handleSuggestionsTypingTimeout;
- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)searchController:(id)controller didChangeFromSearchBarPlacement:(int64_t)placement;
- (void)setDelegate:(id)delegate;
- (void)setPresentationDelegate:(id)delegate;
- (void)setSearchResultsUpdater:(id)updater;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateSearchResultsForSearchController:(id)controller selectingSearchSuggestion:(id)suggestion;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation DOCSearchController

- (_TtP26DocumentManagerExecutables39DOCSearchControllerPresentationDelegate_)presentationDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setPresentationDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCSearchController.presentationDelegate.setter();
}

- (void)setDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCSearchController();
  [(DOCSearchController *)&v4 setDelegate:delegate];
}

- (void)setSearchResultsUpdater:(id)updater
{
  if (updater && updater == self)
  {
    v4.receiver = self;
    v4.super_class = type metadata accessor for DOCSearchController();
    [(DOCSearchController *)&v4 setSearchResultsUpdater:updater];
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  DOCSearchController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  DOCSearchController.viewDidLayoutSubviews()();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCSearchController();
  v6 = v8.receiver;
  windowCopy = window;
  [(DOCSearchController *)&v8 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    DOCSearchController.updateForCurrentTraitCollection()();
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCSearchController();
  v4 = v8.receiver;
  v5 = [(DOCSearchController *)&v8 viewWillAppear:appearCopy];
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v4) + 0x328))(v5);
  (*((*v6 & *v4) + 0x3D8))(v7);
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCSearchController();
  changeCopy = change;
  v5 = v6.receiver;
  [(DOCSearchController *)&v6 traitCollectionDidChange:changeCopy];
  (*((*MEMORY[0x277D85000] & *v5) + 0x3B0))(0);
  DOCSearchController.updateForTraitCollectionChange(from:)(change);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  if ([(DOCSearchController *)selfCopy isActive])
  {
    (*((*MEMORY[0x277D85000] & *selfCopy) + 0x360))(v8, v7, animatedCopy);
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

- (void)deactivateAlongsideContainingTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCSearchController.deactivate(alongsideContainingTransitionCoordinator:)(coordinator);
  swift_unknownObjectRelease();
}

- (void)searchController:(id)controller didChangeFromSearchBarPlacement:(int64_t)placement
{
  v4 = *((*MEMORY[0x277D85000] & *self) + 0x3D8);
  selfCopy = self;
  v4();
}

- (void)willPresentSearchController:(id)controller
{
  v3 = *((*MEMORY[0x277D85000] & *self) + 0x278);
  selfCopy = self;
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

- (void)didPresentSearchController:(id)controller
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *self) + 0x3B0);
  selfCopy = self;
  v4(0);
  v5 = (*((*v3 & *selfCopy) + 0x278))();
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

- (void)willDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCSearchController.willDismissSearchController(_:)();
}

- (void)didDismissSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCSearchController.didDismissSearchController(_:)();
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  if (*(self + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchController_activationTemporilyDisabled))
  {
    return 0;
  }

  else
  {
    return [editing isEnabled];
  }
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *self) + 0x1F8);
  editingCopy = editing;
  selfCopy = self;
  v8 = v5(1);
  (*((*v4 & *selfCopy) + 0x4C0))(v8);
  text = [editingCopy text];
  if (text)
  {
    v10 = text;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  (*((*v4 & *selfCopy) + 0x448))(editingCopy, v11, v13);
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  selfCopy = self;
  specialized DOCSearchController.searchBar(_:textDidChange:)(barCopy);
}

- (void)handleSuggestionsTypingTimeout
{
  selfCopy = self;
  DOCSearchController.handleSuggestionsTypingTimeout()();
}

- (void)searchBar:(id)bar selectedScopeButtonIndexDidChange:(int64_t)change
{
  v5 = *((*MEMORY[0x277D85000] & *self) + 0x2E0);
  selfCopy = self;
  v5(change);
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  specialized DOCSearchController.searchBarTextDidEndEditing(_:)();
}

- (void)updateSearchResultsForSearchController:(id)controller selectingSearchSuggestion:(id)suggestion
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCSearchController.updateSearchResults(for:selecting:)(suggestion);

  swift_unknownObjectRelease();
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCSearchController.updateSearchResults(for:)();
}

- (_TtC26DocumentManagerExecutables19DOCSearchController)initWithSearchResultsController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end