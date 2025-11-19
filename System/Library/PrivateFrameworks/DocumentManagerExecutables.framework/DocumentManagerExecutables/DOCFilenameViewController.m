@interface DOCFilenameViewController
- (BOOL)presentFromViewController:(id)a3 animated:(BOOL)a4;
- (NSArray)keyCommands;
- (_TtC26DocumentManagerExecutables25DOCFilenameViewController)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables25DOCFilenameViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelViewController;
- (void)effectiveAppearanceDidChange:(id)a3;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DOCFilenameViewController

- (_TtC26DocumentManagerExecutables25DOCFilenameViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear) = 2;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)presentFromViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  DOCFilenameViewController.present(from:animated:)(v6, a4);

  return 1;
}

- (void)loadView
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView);
  v4 = objc_allocWithZone(type metadata accessor for DOCSafeAreaView());
  v6 = self;
  v5 = DOCSafeAreaView.init(safeAreaView:)(v3);
  [(DOCFilenameViewController *)v6 setView:v5];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for DOCFilenameViewController();
  [(DOCFilenameViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCFilenameViewController();
  v4 = v5.receiver;
  [(DOCFilenameViewController *)&v5 viewWillAppear:v3];
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear) = [objc_opt_self() isOnScreen];
  (*((*MEMORY[0x277D85000] & *v4) + 0x118))(2);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCFilenameViewController();
  v4 = v5.receiver;
  [(DOCFilenameViewController *)&v5 viewDidDisappear:v3];
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear] = 2;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] = 0;
  DOCFilenameViewController.dismissing.didset();
}

- (void)cancelViewController
{
  v2 = self;
  DOCFilenameViewController.cancelViewController()();
}

- (NSArray)keyCommands
{
  v2 = [objc_opt_self() dismissingKeyCommandsWithAction_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCFilenameViewController();
  v6 = v9.receiver;
  v7 = a3;
  v8 = [(DOCFilenameViewController *)&v9 viewDidMoveToWindow:v7 shouldAppearOrDisappear:v4];
  if (v7)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x110))(v8);
  }
}

- (void)effectiveAppearanceDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCFilenameViewController();
  v4 = a3;
  v5 = v9.receiver;
  [(DOCFilenameViewController *)&v9 effectiveAppearanceDidChange:v4];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v6 = [v5 viewIfLoaded];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 backgroundColor];
      [v7 setBackgroundColor_];
    }
  }
}

- (_TtC26DocumentManagerExecutables25DOCFilenameViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end