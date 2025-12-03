@interface SessionsView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (void)backgroundTapAction:(id)action;
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
  layoutSubviews = [(SessionsView *)&v4 layoutSubviews];
  (*((*MEMORY[0x1E69E7D40] & **&v2[OBJC_IVAR____TtC13MediaControls12SessionsView_routePickerSessionsView]) + 0x1C8))(layoutSubviews);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1A22471B8(touchCopy);

  return v9 & 1;
}

- (void)backgroundTapAction:(id)action
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xF8);
  selfCopy = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(selfCopy, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end