@interface MFHapticButton
- (_TtC16MagnifierSupport14MFHapticButton)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport14MFHapticButton)initWithFrame:(CGRect)a3;
- (void)shutterButtonDown:(id)a3;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation MFHapticButton

- (_TtC16MagnifierSupport14MFHapticButton)initWithCoder:(id)a3
{
  result = sub_257ED0410();
  __break(1u);
  return result;
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_257BD2C2C(0, &qword_27F8F78B0);
  sub_257CF5978();
  sub_257ECFA70();
  v7 = a4;
  v8 = self;
  v9 = sub_257ECFA60();

  v10.receiver = v8;
  v10.super_class = ObjectType;
  [(MFHapticButton *)&v10 touchesCancelled:v9 withEvent:v7];

  [*(&v8->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport14MFHapticButton_buttonFeedbackGenerator) userInteractionCancelled];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  sub_257BD2C2C(0, &qword_27F8F78B0);
  sub_257CF5978();
  v6 = sub_257ECFA70();
  v7 = a4;
  v8 = self;
  sub_257CF56F4(v6, a4);
}

- (void)shutterButtonDown:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport14MFHapticButton_buttonFeedbackGenerator) userInteractionStarted];
  sub_257BE4084(&v6, &unk_27F8F62F0);
}

- (_TtC16MagnifierSupport14MFHapticButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end