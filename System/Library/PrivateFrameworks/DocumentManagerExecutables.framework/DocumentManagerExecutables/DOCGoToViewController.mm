@interface DOCGoToViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC26DocumentManagerExecutables21DOCGoToViewController)init;
- (void)didHitDirectionalArrow;
- (void)didReturn;
- (void)didTab;
- (void)goToLocation;
- (void)inputTextFieldDidChange:(id)change;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DOCGoToViewController

- (void)loadView
{
  selfCopy = self;
  DOCGoToViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  DOCGoToViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  DOCGoToViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCGoToViewController();
  v4 = v5.receiver;
  [(DOCViewController *)&v5 viewDidDisappear:disappearCopy];
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialSuggestionsToken] = 1;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCGoToViewController();
  changeCopy = change;
  v5 = v6.receiver;
  [(DOCGoToViewController *)&v6 traitCollectionDidChange:changeCopy];
  DOCGoToViewController.updatePreferredContentSize()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCGoToViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(DOCGoToViewController *)&v8 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  DOCGoToViewController.updatePreferredContentSize()();
  swift_unknownObjectRelease();
}

- (void)goToLocation
{
  selfCopy = self;
  DOCGoToViewController.goToLocation()();
}

- (void)didHitDirectionalArrow
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x288);
  selfCopy = self;
  v2();
}

- (void)didTab
{
  selfCopy = self;
  DOCGoToViewController.selectedOrFirstSuggestion.getter(&v3);
  if (v4)
  {
    outlined init with take of DOCGoToFolderCandidate(&v3, v5);
    DOCGoToViewController.confirmSuggestion(_:)(v5);

    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {

    outlined destroy of CharacterSet?(&v3, &_s26DocumentManagerExecutables22DOCGoToFolderCandidate_pSgMd);
  }
}

- (void)didReturn
{
  selfCopy = self;
  DOCGoToViewController.didReturn()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  DOCGoToViewController.viewDidLayoutSubviews()();
}

- (_TtC26DocumentManagerExecutables21DOCGoToViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x290);
  selfCopy = self;
  v3();

  return 0;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 9 && v6 == 0xE100000000000000)
  {
    selfCopy = self;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    selfCopy2 = self;

    if ((v9 & 1) == 0)
    {
      v11 = 1;
      self = selfCopy2;
      goto LABEL_7;
    }
  }

  (*((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x288))(v8);
  v11 = 0;
LABEL_7:

  return v11;
}

- (void)inputTextFieldDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  DOCGoToViewController.inputTextFieldDidChange(_:)(changeCopy);
}

@end