@interface DOCColumnInfoViewController
- (_TtC26DocumentManagerExecutables27DOCColumnInfoViewController)initWithCoder:(id)coder;
- (_TtP26DocumentManagerExecutables34DOCBrowserContainedActionReporting_)actionReporting;
- (id)actionContextFrom:(id)from;
- (void)_doc_performLiveResizeSkipped_updateOverlay;
- (void)observeEditingStateChangedWithNotification:(id)notification;
- (void)setActionReporting:(id)reporting;
- (void)viewDidLoad;
@end

@implementation DOCColumnInfoViewController

- (_TtP26DocumentManagerExecutables34DOCBrowserContainedActionReporting_)actionReporting
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setActionReporting:(id)reporting
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCColumnInfoViewController.actionReporting.setter();
}

- (_TtC26DocumentManagerExecutables27DOCColumnInfoViewController)initWithCoder:(id)coder
{
  *&self->_TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_opaque[OBJC_IVAR____TtC26DocumentManagerExecutables27DOCColumnInfoViewController_itemInfoViewController] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)observeEditingStateChangedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  DOCColumnInfoViewController.observeEditingStateChanged(notification:)(notificationCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  DOCColumnInfoViewController.viewDidLoad()();
}

- (void)_doc_performLiveResizeSkipped_updateOverlay
{
  selfCopy = self;
  specialized DOCColumnInfoViewController.updateOverlay(animated:)();
}

- (id)actionContextFrom:(id)from
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = DOCColumnInfoViewController.actionContext(from:)();
  swift_unknownObjectRelease();

  return v5;
}

@end