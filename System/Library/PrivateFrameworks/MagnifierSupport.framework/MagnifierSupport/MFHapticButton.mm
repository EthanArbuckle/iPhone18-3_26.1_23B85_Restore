@interface MFHapticButton
- (_TtC16MagnifierSupport14MFHapticButton)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport14MFHapticButton)initWithFrame:(CGRect)frame;
- (void)shutterButtonDown:(id)down;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation MFHapticButton

- (_TtC16MagnifierSupport14MFHapticButton)initWithCoder:(id)coder
{
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  ObjectType = swift_getObjectType();
  sub_257BD2C2C(0, &qword_27F8F78B0);
  sub_257CF5978();
  sub_257ECFA70();
  eventCopy = event;
  selfCopy = self;
  v9 = sub_257ECFA60();

  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(MFHapticButton *)&v10 touchesCancelled:v9 withEvent:eventCopy];

  [*(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport14MFHapticButton_buttonFeedbackGenerator) userInteractionCancelled];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_257BD2C2C(0, &qword_27F8F78B0);
  sub_257CF5978();
  v6 = sub_257ECFA70();
  eventCopy = event;
  selfCopy = self;
  sub_257CF56F4(v6, event);
}

- (void)shutterButtonDown:(id)down
{
  if (down)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport14MFHapticButton_buttonFeedbackGenerator) userInteractionStarted];
  sub_257BE4084(&v6, &unk_27F8F62F0);
}

- (_TtC16MagnifierSupport14MFHapticButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end