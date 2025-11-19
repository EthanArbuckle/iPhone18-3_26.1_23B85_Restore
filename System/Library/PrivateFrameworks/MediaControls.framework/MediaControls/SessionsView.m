@interface SessionsView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (void)backgroundTapAction:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation SessionsView

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SessionsView();
  v2 = v3.receiver;
  [(SessionsView *)&v3 didMoveToWindow];
  sub_1A2244CDC();
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SessionsView();
  v2 = v4.receiver;
  v3 = [(SessionsView *)&v4 layoutSubviews];
  (*((*MEMORY[0x1E69E7D40] & **&v2[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView]) + 0x1C8))(v3);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1A22471B8(v7);

  return v9 & 1;
}

- (void)backgroundTapAction:(id)a3
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xF8);
  v7 = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v7, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end