@interface DBFocusController
- (BSInvalidatable)_focusDeferral;
- (DBFocusController)init;
- (NSArray)_assertions;
- (UIWindow)focusWindow;
- (id)deferFocusToScene:(id)a3 priority:(unint64_t)a4 reason:(id)a5;
- (id)deferFocusToScene:(id)a3 priority:(unint64_t)a4 reason:(id)a5 heading:(unint64_t)a6 focusedFrame:(CGRect)a7;
- (id)deferFocusToWindow:(id)a3 priority:(unint64_t)a4 reason:(id)a5;
- (id)deferFocusToWindow:(id)a3 scene:(id)a4 priority:(unint64_t)a5 reason:(id)a6;
- (id)deferFocusToWindow:(id)a3 scene:(id)a4 priority:(unint64_t)a5 reason:(id)a6 heading:(unint64_t)a7 focusedFrame:(CGRect)a8;
- (id)suspendFocusWithPriority:(unint64_t)a3 reason:(id)a4;
- (id)suspendFocusWithPriority:(unint64_t)a3 reason:(id)a4 heading:(unint64_t)a5 focusedFrame:(CGRect)a6;
- (void)carPlaySession:(id)a3 performFeedbackOfType:(unint64_t)a4 forTouchpad:(id)a5;
- (void)invalidate;
- (void)set_assertions:(id)a3;
- (void)set_focusDeferral:(id)a3;
- (void)set_lastAssertion:(id)a3;
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
  v2 = self;
  v3 = sub_24814F470();

  return v3;
}

- (BSInvalidatable)_focusDeferral
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)set_focusDeferral:(id)a3
{
  *(self + OBJC_IVAR___DBFocusController__focusDeferral) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)set_assertions:(id)a3
{
  type metadata accessor for _DBFocusAssertion();
  *(self + OBJC_IVAR___DBFocusController__assertions) = sub_248383B10();
}

- (void)set_lastAssertion:(id)a3
{
  v4 = *(self + OBJC_IVAR___DBFocusController__lastAssertion);
  *(self + OBJC_IVAR___DBFocusController__lastAssertion) = a3;
  v3 = a3;
}

- (id)deferFocusToScene:(id)a3 priority:(unint64_t)a4 reason:(id)a5
{
  v5 = [(DBFocusController *)self deferFocusToScene:a3 priority:a4 reason:a5 heading:0 focusedFrame:0.0, 0.0, 0.0, 0.0];

  return v5;
}

- (id)deferFocusToScene:(id)a3 priority:(unint64_t)a4 reason:(id)a5 heading:(unint64_t)a6 focusedFrame:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v15 = sub_248383960();
  v17 = v16;
  v18 = a3;
  v19 = self;
  sub_2481557C0(v18, a4, v15, v17, a6, x, y, width, height);
  v21 = v20;

  return v21;
}

- (id)deferFocusToWindow:(id)a3 priority:(unint64_t)a4 reason:(id)a5
{
  v5 = [(DBFocusController *)self deferFocusToWindow:a3 scene:0 priority:a4 reason:a5 heading:0 focusedFrame:0.0, 0.0, 0.0, 0.0];

  return v5;
}

- (id)deferFocusToWindow:(id)a3 scene:(id)a4 priority:(unint64_t)a5 reason:(id)a6
{
  v6 = [(DBFocusController *)self deferFocusToWindow:a3 scene:a4 priority:a5 reason:a6 heading:0 focusedFrame:0.0, 0.0, 0.0, 0.0];

  return v6;
}

- (id)deferFocusToWindow:(id)a3 scene:(id)a4 priority:(unint64_t)a5 reason:(id)a6 heading:(unint64_t)a7 focusedFrame:(CGRect)a8
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v17 = sub_248383960();
  v19 = v18;
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_248295F04(v20, a4, a5, v17, v19, a7, x, y, width, height);
  v24 = v23;

  return v24;
}

- (id)suspendFocusWithPriority:(unint64_t)a3 reason:(id)a4
{
  v4 = [(DBFocusController *)self suspendFocusWithPriority:a3 reason:a4 heading:0 focusedFrame:0.0, 0.0, 0.0, 0.0];

  return v4;
}

- (id)suspendFocusWithPriority:(unint64_t)a3 reason:(id)a4 heading:(unint64_t)a5 focusedFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = sub_248383960();
  v15 = v14;
  v16 = self;
  v17 = sub_248296308(a3, v13, v15, a5, x, y, width, height);

  return v17;
}

- (void)invalidate
{
  v2 = self;
  sub_2482964E8();
}

- (void)carPlaySession:(id)a3 performFeedbackOfType:(unint64_t)a4 forTouchpad:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = self;
  sub_248296B88(a4, v8);
  swift_unknownObjectRelease();
}

- (DBFocusController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end