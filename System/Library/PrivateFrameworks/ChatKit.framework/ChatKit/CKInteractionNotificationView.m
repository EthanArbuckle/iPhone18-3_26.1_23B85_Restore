@interface CKInteractionNotificationView
- (_TtC7ChatKit29CKInteractionNotificationView)initWithCoder:(id)a3;
- (_TtC7ChatKit29CKInteractionNotificationView)initWithFrame:(CGRect)a3;
- (_TtP7ChatKit37CKInteractionNotificationViewDelegate_)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)addPassthroughView:(id)a3;
- (void)cleanUpTextSelectionInteractionListeners;
- (void)clearPassthroughViews;
- (void)isolatePassthroughView:(id)a3;
- (void)removePassthroughView:(id)a3;
@end

@implementation CKInteractionNotificationView

- (_TtP7ChatKit37CKInteractionNotificationViewDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)addPassthroughView:(id)a3
{
  swift_beginAccess();
  v5 = a3;
  v6 = self;
  sub_1908AA72C(&v8, v5);
  v7 = v8;
  swift_endAccess();
}

- (void)clearPassthroughViews
{
  v3 = OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews;
  swift_beginAccess();
  *(self + v3) = MEMORY[0x1E69E7CD0];
}

- (void)isolatePassthroughView:(id)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews;
  swift_beginAccess();
  *(self + v5) = MEMORY[0x1E69E7CD0];
  v6 = a3;
  v7 = self;

  v8 = v6;
  sub_1908AA72C(&v10, v8);
  v9 = v10;
  swift_endAccess();
}

- (void)removePassthroughView:(id)a3
{
  swift_beginAccess();
  v5 = a3;
  v6 = self;
  v7 = sub_1908AE37C(v5);
  swift_endAccess();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  sub_190C87414(a4, x, y);

  return 0;
}

- (void)cleanUpTextSelectionInteractionListeners
{
  v2 = self;
  sub_190C877F4();
}

- (_TtC7ChatKit29CKInteractionNotificationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews) = MEMORY[0x1E69E7CD0];
  v9.receiver = self;
  v9.super_class = type metadata accessor for CKInteractionNotificationView();
  return [(CKInteractionNotificationView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKit29CKInteractionNotificationView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7ChatKit29CKInteractionNotificationView_passthroughViews) = MEMORY[0x1E69E7CD0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for CKInteractionNotificationView();
  v5 = a3;
  v6 = [(CKInteractionNotificationView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end