@interface DBFocusController
- (BSInvalidatable)_focusDeferral;
- (DBFocusController)init;
- (NSArray)_assertions;
- (UIWindow)focusWindow;
- (id)deferFocusToScene:(id)scene priority:(unint64_t)priority reason:(id)reason;
- (id)deferFocusToScene:(id)scene priority:(unint64_t)priority reason:(id)reason heading:(unint64_t)heading focusedFrame:(CGRect)frame;
- (id)deferFocusToWindow:(id)window priority:(unint64_t)priority reason:(id)reason;
- (id)deferFocusToWindow:(id)window scene:(id)scene priority:(unint64_t)priority reason:(id)reason;
- (id)deferFocusToWindow:(id)window scene:(id)scene priority:(unint64_t)priority reason:(id)reason heading:(unint64_t)heading focusedFrame:(CGRect)frame;
- (id)suspendFocusWithPriority:(unint64_t)priority reason:(id)reason;
- (id)suspendFocusWithPriority:(unint64_t)priority reason:(id)reason heading:(unint64_t)heading focusedFrame:(CGRect)frame;
- (void)carPlaySession:(id)session performFeedbackOfType:(unint64_t)type forTouchpad:(id)touchpad;
- (void)invalidate;
- (void)set_assertions:(id)set_assertions;
- (void)set_focusDeferral:(id)deferral;
- (void)set_lastAssertion:(id)assertion;
@end

@implementation DBFocusController

- (NSArray)_assertions
{
  type metadata accessor for _DBFocusAssertion();

  v2 = sub_248383B00();

  return v2;
}

- (UIWindow)focusWindow
{
  selfCopy = self;
  v3 = sub_24814F470();

  return v3;
}

- (BSInvalidatable)_focusDeferral
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)set_focusDeferral:(id)deferral
{
  *(self + OBJC_IVAR___DBFocusController__focusDeferral) = deferral;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)set_assertions:(id)set_assertions
{
  type metadata accessor for _DBFocusAssertion();
  *(self + OBJC_IVAR___DBFocusController__assertions) = sub_248383B10();
}

- (void)set_lastAssertion:(id)assertion
{
  v4 = *(self + OBJC_IVAR___DBFocusController__lastAssertion);
  *(self + OBJC_IVAR___DBFocusController__lastAssertion) = assertion;
  assertionCopy = assertion;
}

- (id)deferFocusToScene:(id)scene priority:(unint64_t)priority reason:(id)reason
{
  v5 = [(DBFocusController *)self deferFocusToScene:scene priority:priority reason:reason heading:0 focusedFrame:0.0, 0.0, 0.0, 0.0];

  return v5;
}

- (id)deferFocusToScene:(id)scene priority:(unint64_t)priority reason:(id)reason heading:(unint64_t)heading focusedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15 = sub_248383960();
  v17 = v16;
  sceneCopy = scene;
  selfCopy = self;
  sub_2481557C0(sceneCopy, priority, v15, v17, heading, x, y, width, height);
  v21 = v20;

  return v21;
}

- (id)deferFocusToWindow:(id)window priority:(unint64_t)priority reason:(id)reason
{
  v5 = [(DBFocusController *)self deferFocusToWindow:window scene:0 priority:priority reason:reason heading:0 focusedFrame:0.0, 0.0, 0.0, 0.0];

  return v5;
}

- (id)deferFocusToWindow:(id)window scene:(id)scene priority:(unint64_t)priority reason:(id)reason
{
  v6 = [(DBFocusController *)self deferFocusToWindow:window scene:scene priority:priority reason:reason heading:0 focusedFrame:0.0, 0.0, 0.0, 0.0];

  return v6;
}

- (id)deferFocusToWindow:(id)window scene:(id)scene priority:(unint64_t)priority reason:(id)reason heading:(unint64_t)heading focusedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17 = sub_248383960();
  v19 = v18;
  windowCopy = window;
  sceneCopy = scene;
  selfCopy = self;
  sub_248295F04(windowCopy, scene, priority, v17, v19, heading, x, y, width, height);
  v24 = v23;

  return v24;
}

- (id)suspendFocusWithPriority:(unint64_t)priority reason:(id)reason
{
  v4 = [(DBFocusController *)self suspendFocusWithPriority:priority reason:reason heading:0 focusedFrame:0.0, 0.0, 0.0, 0.0];

  return v4;
}

- (id)suspendFocusWithPriority:(unint64_t)priority reason:(id)reason heading:(unint64_t)heading focusedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13 = sub_248383960();
  v15 = v14;
  selfCopy = self;
  v17 = sub_248296308(priority, v13, v15, heading, x, y, width, height);

  return v17;
}

- (void)invalidate
{
  selfCopy = self;
  sub_2482964E8();
}

- (void)carPlaySession:(id)session performFeedbackOfType:(unint64_t)type forTouchpad:(id)touchpad
{
  swift_unknownObjectRetain();
  touchpadCopy = touchpad;
  selfCopy = self;
  sub_248296B88(type, touchpadCopy);
  swift_unknownObjectRelease();
}

- (DBFocusController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end