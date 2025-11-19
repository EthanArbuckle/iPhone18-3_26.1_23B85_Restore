@interface CKCompositionTranslator
- (CKCompositionTranslatorDelegate)delegate;
- (void)dealloc;
- (void)resetTranslationLogIdentifier;
- (void)translate:(id)a3 into:(id)a4 from:(id)a5 version:(int64_t)a6;
@end

@implementation CKCompositionTranslator

- (CKCompositionTranslatorDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)dealloc
{
  if (*(self + OBJC_IVAR___CKCompositionTranslator_task))
  {
    v3 = self;
    sub_190D50920();
    sub_190D57330();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = CKCompositionTranslator;
  [(CKCompositionTranslator *)&v5 dealloc];
}

- (void)translate:(id)a3 into:(id)a4 from:(id)a5 version:(int64_t)a6
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_190D519C0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51970();
  if (a5)
  {
    sub_190D51970();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v14 + 56))(v12, v17, 1, v13);
  v18 = a3;
  v19 = self;
  sub_190A9A204(v18, v16, v12, a6);

  sub_19022EEA4(v12, &qword_1EAD54C10);
  (*(v14 + 8))(v16, v13);
}

- (void)resetTranslationLogIdentifier
{
  sub_190D52030();
  sub_190D52010();
  sub_190D51FF0();
}

@end