@interface DOCGoToViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC26DocumentManagerExecutables21DOCGoToViewController)init;
- (void)didHitDirectionalArrow;
- (void)didReturn;
- (void)didTab;
- (void)goToLocation;
- (void)inputTextFieldDidChange:(id)a3;
- (void)loadView;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation DOCGoToViewController

- (void)loadView
{
  v2 = self;
  DOCGoToViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  DOCGoToViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  DOCGoToViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCGoToViewController();
  v4 = v5.receiver;
  [(DOCViewController *)&v5 viewDidDisappear:v3];
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCGoToViewController_initialSuggestionsToken] = 1;
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCGoToViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(DOCGoToViewController *)&v6 traitCollectionDidChange:v4];
  DOCGoToViewController.updatePreferredContentSize()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCGoToViewController();
  swift_unknownObjectRetain();
  v7 = v8.receiver;
  [(DOCGoToViewController *)&v8 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  DOCGoToViewController.updatePreferredContentSize()();
  swift_unknownObjectRelease();
}

- (void)goToLocation
{
  v2 = self;
  DOCGoToViewController.goToLocation()();
}

- (void)didHitDirectionalArrow
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x288);
  v3 = self;
  v2();
}

- (void)didTab
{
  v2 = self;
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
  v2 = self;
  DOCGoToViewController.didReturn()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  DOCGoToViewController.viewDidLayoutSubviews()();
}

- (_TtC26DocumentManagerExecutables21DOCGoToViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x290);
  v4 = self;
  v3();

  return 0;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 9 && v6 == 0xE100000000000000)
  {
    v7 = self;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10 = self;

    if ((v9 & 1) == 0)
    {
      v11 = 1;
      self = v10;
      goto LABEL_7;
    }
  }

  (*((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x288))(v8);
  v11 = 0;
LABEL_7:

  return v11;
}

- (void)inputTextFieldDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCGoToViewController.inputTextFieldDidChange(_:)(v4);
}

@end