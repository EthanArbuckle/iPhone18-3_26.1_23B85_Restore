@interface DOCColumnInfoViewController
- (_TtC26DocumentManagerExecutables27DOCColumnInfoViewController)initWithCoder:(id)a3;
- (_TtP26DocumentManagerExecutables34DOCBrowserContainedActionReporting_)actionReporting;
- (id)actionContextFrom:(id)a3;
- (void)_doc_performLiveResizeSkipped_updateOverlay;
- (void)observeEditingStateChangedWithNotification:(id)a3;
- (void)setActionReporting:(id)a3;
- (void)viewDidLoad;
@end

@implementation DOCColumnInfoViewController

- (_TtP26DocumentManagerExecutables34DOCBrowserContainedActionReporting_)actionReporting
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActionReporting:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  DOCColumnInfoViewController.actionReporting.setter();
}

- (_TtC26DocumentManagerExecutables27DOCColumnInfoViewController)initWithCoder:(id)a3
{
  *&self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)observeEditingStateChangedWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCColumnInfoViewController.observeEditingStateChanged(notification:)(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  DOCColumnInfoViewController.viewDidLoad()();
}

- (void)_doc_performLiveResizeSkipped_updateOverlay
{
  v2 = self;
  specialized DOCColumnInfoViewController.updateOverlay(animated:)();
}

- (id)actionContextFrom:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = DOCColumnInfoViewController.actionContext(from:)();
  swift_unknownObjectRelease();

  return v5;
}

@end