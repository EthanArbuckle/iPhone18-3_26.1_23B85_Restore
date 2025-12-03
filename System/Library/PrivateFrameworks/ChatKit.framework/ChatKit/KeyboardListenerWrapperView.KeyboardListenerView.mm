@interface KeyboardListenerWrapperView.KeyboardListenerView
- (BOOL)resignFirstResponder;
- (NSArray)keyCommands;
- (_TtCV7ChatKit27KeyboardListenerWrapperViewP33_5345905B395817E069A47C024E09EBB320KeyboardListenerView)initWithCoder:(id)coder;
- (_TtCV7ChatKit27KeyboardListenerWrapperViewP33_5345905B395817E069A47C024E09EBB320KeyboardListenerView)initWithFrame:(CGRect)frame;
- (void)downArrowPressed;
- (void)leftArrowPressed;
- (void)rightArrowPressed;
- (void)spaceBarPressed;
- (void)upArrowPressed;
@end

@implementation KeyboardListenerWrapperView.KeyboardListenerView

- (NSArray)keyCommands
{
  sub_190B4FB30();
  sub_1902188FC(0, &qword_1EAD466C8);
  v2 = sub_190D57160();

  return v2;
}

- (BOOL)resignFirstResponder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for KeyboardListenerWrapperView.KeyboardListenerView();
  v2 = v7.receiver;
  resignFirstResponder = [(KeyboardListenerWrapperView.KeyboardListenerView *)&v7 resignFirstResponder];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    (*(Strong + 96))(Strong, v5);
    swift_unknownObjectRelease();
  }

  return resignFirstResponder;
}

- (void)spaceBarPressed
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 16);
    selfCopy = self;
    v4();
    swift_unknownObjectRelease();
  }
}

- (void)upArrowPressed
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 64);
    selfCopy = self;
    v4();
    swift_unknownObjectRelease();
  }
}

- (void)downArrowPressed
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 80);
    selfCopy = self;
    v4();
    swift_unknownObjectRelease();
  }
}

- (void)leftArrowPressed
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);
    selfCopy = self;
    v4();
    swift_unknownObjectRelease();
  }
}

- (void)rightArrowPressed
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);
    selfCopy = self;
    v4();
    swift_unknownObjectRelease();
  }
}

- (_TtCV7ChatKit27KeyboardListenerWrapperViewP33_5345905B395817E069A47C024E09EBB320KeyboardListenerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtCV7ChatKit27KeyboardListenerWrapperViewP33_5345905B395817E069A47C024E09EBB320KeyboardListenerView_keyboardListenerDelegate) = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for KeyboardListenerWrapperView.KeyboardListenerView();
  return [(KeyboardListenerWrapperView.KeyboardListenerView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtCV7ChatKit27KeyboardListenerWrapperViewP33_5345905B395817E069A47C024E09EBB320KeyboardListenerView)initWithCoder:(id)coder
{
  *(&self->super.super._responderFlags + OBJC_IVAR____TtCV7ChatKit27KeyboardListenerWrapperViewP33_5345905B395817E069A47C024E09EBB320KeyboardListenerView_keyboardListenerDelegate) = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for KeyboardListenerWrapperView.KeyboardListenerView();
  coderCopy = coder;
  v6 = [(KeyboardListenerWrapperView.KeyboardListenerView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end