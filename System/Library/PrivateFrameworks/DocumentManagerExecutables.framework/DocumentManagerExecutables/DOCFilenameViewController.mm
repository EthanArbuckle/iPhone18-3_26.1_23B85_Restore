@interface DOCFilenameViewController
- (BOOL)presentFromViewController:(id)controller animated:(BOOL)animated;
- (NSArray)keyCommands;
- (_TtC26DocumentManagerExecutables25DOCFilenameViewController)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables25DOCFilenameViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelViewController;
- (void)effectiveAppearanceDidChange:(id)change;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DOCFilenameViewController

- (_TtC26DocumentManagerExecutables25DOCFilenameViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear) = 2;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)presentFromViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  DOCFilenameViewController.present(from:animated:)(controllerCopy, animated);

  return 1;
}

- (void)loadView
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView);
  v4 = objc_allocWithZone(type metadata accessor for DOCSafeAreaView());
  selfCopy = self;
  v5 = DOCSafeAreaView.init(safeAreaView:)(v3);
  [(DOCFilenameViewController *)selfCopy setView:v5];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for DOCFilenameViewController();
  [(DOCFilenameViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCFilenameViewController();
  v4 = v5.receiver;
  [(DOCFilenameViewController *)&v5 viewWillAppear:appearCopy];
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear) = [objc_opt_self() isOnScreen];
  (*((*MEMORY[0x277D85000] & *v4) + 0x118))(2);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCFilenameViewController();
  v4 = v5.receiver;
  [(DOCFilenameViewController *)&v5 viewDidDisappear:disappearCopy];
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear] = 2;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] = 0;
  DOCFilenameViewController.dismissing.didset();
}

- (void)cancelViewController
{
  selfCopy = self;
  DOCFilenameViewController.cancelViewController()();
}

- (NSArray)keyCommands
{
  dismissingKeyCommandsWithAction_ = [objc_opt_self() dismissingKeyCommandsWithAction_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCFilenameViewController();
  v6 = v9.receiver;
  windowCopy = window;
  v8 = [(DOCFilenameViewController *)&v9 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  if (windowCopy)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x110))(v8);
  }
}

- (void)effectiveAppearanceDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCFilenameViewController();
  changeCopy = change;
  v5 = v9.receiver;
  [(DOCFilenameViewController *)&v9 effectiveAppearanceDidChange:changeCopy];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    viewIfLoaded = [v5 viewIfLoaded];
    if (viewIfLoaded)
    {
      v7 = viewIfLoaded;
      backgroundColor = [changeCopy backgroundColor];
      [v7 setBackgroundColor_];
    }
  }
}

- (_TtC26DocumentManagerExecutables25DOCFilenameViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end