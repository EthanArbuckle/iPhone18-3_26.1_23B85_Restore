@interface ICTextElementAnimator
- (ICTextElementAnimator)init;
- (ICTextElementAnimator)initWithTextView:(id)a3 originTrackedParagraphs:(id)a4 destinationTrackedParagraphs:(id)a5;
- (void)animateWithCompletion:(id)a3;
@end

@implementation ICTextElementAnimator

- (ICTextElementAnimator)initWithTextView:(id)a3 originTrackedParagraphs:(id)a4 destinationTrackedParagraphs:(id)a5
{
  ObjectType = swift_getObjectType();
  sub_2151A6C9C(0, &qword_27CA5D958);
  v8 = sub_2154A1F4C();
  v9 = sub_2154A1F4C();
  *(&self->super.isa + OBJC_IVAR___ICTextElementAnimator_textView) = a3;
  *(&self->super.isa + OBJC_IVAR___ICTextElementAnimator_originTrackedParagraphs) = v8;
  *(&self->super.isa + OBJC_IVAR___ICTextElementAnimator_destinationTrackedParagraphs) = v9;
  v10 = a3;
  *(&self->super.isa + OBJC_IVAR___ICTextElementAnimator_uuidsToElementAnimationConfigurations) = sub_215328A80(MEMORY[0x277D84F90]);
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = [(ICTextElementAnimator *)&v13 init];
  sub_215421DB4();

  return v11;
}

- (void)animateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_215424DA0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  TextElementAnimator.animate(completion:)(v7, v6);
  sub_21532594C(v7);
}

- (ICTextElementAnimator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end