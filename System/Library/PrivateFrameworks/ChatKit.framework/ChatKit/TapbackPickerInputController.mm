@interface TapbackPickerInputController
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)supportsImagePaste;
- (NSString)textInputContextIdentifier;
- (_TtC7ChatKit28TapbackPickerInputController)initWithCoder:(id)coder;
- (_TtC7ChatKit28TapbackPickerInputController)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)handlePayload:(id)payload withPayloadId:(id)id;
- (void)insertAdaptiveImageGlyph:(id)glyph replacementRange:(id)range;
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
    selfCopy = self;
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
    selfCopy = self;
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

- (_TtC7ChatKit28TapbackPickerInputController)initWithCoder:(id)coder
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
  selfCopy = self;
  v3 = sub_190CE8DD0();

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v3 = sub_190CE8FD0();

  return v3 & 1;
}

- (void)handlePayload:(id)payload withPayloadId:(id)id
{
  idCopy = id;
  if (payload)
  {
    v6 = sub_190D56D90();
    if (idCopy)
    {
LABEL_3:
      idCopy = sub_190D56F10();
      v8 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (id)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  selfCopy = self;
  sub_190CE917C(v6, idCopy, v8);
}

- (void)insertAdaptiveImageGlyph:(id)glyph replacementRange:(id)range
{
  glyphCopy = glyph;
  rangeCopy = range;
  selfCopy = self;
  sub_190CE9F60(glyphCopy);
}

- (_TtC7ChatKit28TapbackPickerInputController)initWithFrame:(CGRect)frame textContainer:(id)container
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end