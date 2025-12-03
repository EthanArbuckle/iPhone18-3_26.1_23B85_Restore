@interface NonUIGenerator
- (void)fetchAvailableStylesWithCompletion:(id)completion;
- (void)startGenerationWithStyle:(id)style promptElements:(id)elements personalizationPolicyValue:(id)value replyHandler:(id)handler batchID:(id)d;
- (void)stopGeneration:(id)generation;
@end

@implementation NonUIGenerator

- (void)stopGeneration:(id)generation
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D2878568();
  generationCopy = generation;
  swift_retain_n();
  v10 = generationCopy;
  v11 = sub_1D2878558();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = self;
  v12[5] = v10;
  sub_1D22AE01C(0, 0, v7, &unk_1D287D3B0, v12);
}

- (void)fetchAvailableStylesWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_1D28785F8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1D2878568();
  swift_retain_n();
  sub_1D2870F78();
  v11 = sub_1D2878558();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = self;
  v12[5] = sub_1D22BCB18;
  v12[6] = v9;
  sub_1D22AE01C(0, 0, v7, &unk_1D287D3A8, v12);
}

- (void)startGenerationWithStyle:(id)style promptElements:(id)elements personalizationPolicyValue:(id)value replyHandler:(id)handler batchID:(id)d
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v28 - v13;
  v15 = _Block_copy(handler);
  sub_1D22BCFD0(0, &qword_1EC6D9418);
  v16 = sub_1D28783E8();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = sub_1D28785F8();
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  sub_1D2878568();
  styleCopy = style;
  valueCopy = value;
  dCopy = d;
  swift_retain_n();
  v22 = dCopy;
  v23 = valueCopy;
  v24 = styleCopy;
  sub_1D2870F78();
  v25 = sub_1D2878558();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v22;
  v26[5] = self;
  v26[6] = sub_1D22BCAA8;
  v26[7] = v17;
  v26[8] = v23;
  v26[9] = v24;
  v26[10] = v16;
  sub_1D22AE01C(0, 0, v14, &unk_1D287D3A0, v26);
}

@end