@interface CKInteractionNotificationView
- (_TtC7ChatKit29CKInteractionNotificationView)initWithCoder:(id)coder;
- (_TtC7ChatKit29CKInteractionNotificationView)initWithFrame:(CGRect)frame;
- (_TtP7ChatKit37CKInteractionNotificationViewDelegate_)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)addPassthroughView:(id)view;
- (void)cleanUpTextSelectionInteractionListeners;
- (void)clearPassthroughViews;
- (void)isolatePassthroughView:(id)view;
- (void)removePassthroughView:(id)view;
@end

@implementation CKInteractionNotificationView

- (_TtP7ChatKit37CKInteractionNotificationViewDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)addPassthroughView:(id)view
{
  swift_beginAccess();
  viewCopy = view;
  selfCopy = self;
  sub_1908AA72C(&v8, viewCopy);
  v7 = v8;
  swift_endAccess();
}

- (void)clearPassthroughViews
{
  v3 = OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews;
  swift_beginAccess();
  *(self + v3) = MEMORY[0x1E69E7CD0];
}

- (void)isolatePassthroughView:(id)view
{
  v5 = OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews;
  swift_beginAccess();
  *(self + v5) = MEMORY[0x1E69E7CD0];
  viewCopy = view;
  selfCopy = self;

  v8 = viewCopy;
  sub_1908AA72C(&v10, v8);
  v9 = v10;
  swift_endAccess();
}

- (void)removePassthroughView:(id)view
{
  swift_beginAccess();
  viewCopy = view;
  selfCopy = self;
  v7 = sub_1908AE37C(viewCopy);
  swift_endAccess();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  sub_190C87414(event, x, y);

  return 0;
}

- (void)cleanUpTextSelectionInteractionListeners
{
  selfCopy = self;
  sub_190C877F4();
}

- (_TtC7ChatKit29CKInteractionNotificationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews) = MEMORY[0x1E69E7CD0];
  v9.receiver = self;
  v9.super_class = type metadata accessor for CKInteractionNotificationView();
  return [(CKInteractionNotificationView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKit29CKInteractionNotificationView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews) = MEMORY[0x1E69E7CD0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKInteractionNotificationView();
  coderCopy = coder;
  v6 = [(CKInteractionNotificationView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end