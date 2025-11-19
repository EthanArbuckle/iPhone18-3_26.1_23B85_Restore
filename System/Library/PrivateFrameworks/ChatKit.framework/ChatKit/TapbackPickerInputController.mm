@interface TapbackPickerInputController
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)supportsImagePaste;
- (NSString)textInputContextIdentifier;
- (_TtC7ChatKit28TapbackPickerInputController)initWithCoder:(id)a3;
- (_TtC7ChatKit28TapbackPickerInputController)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)handlePayload:(id)a3 withPayloadId:(id)a4;
- (void)insertAdaptiveImageGlyph:(id)a3 replacementRange:(id)a4;
@end

@implementation TapbackPickerInputController

- (BOOL)supportsImagePaste
{
  v3 = self + OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 32);
    v6 = self;
    v7 = v5();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (NSString)textInputContextIdentifier
{
  v3 = self + OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v3 + 1);
    swift_getObjectType();
    v6 = *(v5 + 40);
    v7 = self;
    v6();
    v9 = v8;

    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = sub_190D56ED0();

      Strong = v10;
    }

    else
    {
      Strong = 0;
    }
  }

  return Strong;
}

- (_TtC7ChatKit28TapbackPickerInputController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  v3 = sub_190CE8DD0();

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = sub_190CE8FD0();

  return v3 & 1;
}

- (void)handlePayload:(id)a3 withPayloadId:(id)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = sub_190D56D90();
    if (v4)
    {
LABEL_3:
      v4 = sub_190D56F10();
      v8 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = self;
  sub_190CE917C(v6, v4, v8);
}

- (void)insertAdaptiveImageGlyph:(id)a3 replacementRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_190CE9F60(v6);
}

- (_TtC7ChatKit28TapbackPickerInputController)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end