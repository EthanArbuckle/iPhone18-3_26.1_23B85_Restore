@interface FACacheImageMarqueeOperation
- (FACacheImageMarqueeOperation)init;
- (void)createAndCacheData;
- (void)createAndCacheDataWithCompletionHandler:(id)handler;
- (void)generateMarqueeWith:(unint64_t)with;
@end

@implementation FACacheImageMarqueeOperation

- (void)createAndCacheData
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_21BE28DAC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_21BC54908(0, 0, v6, &unk_21BE463C0, v8);
}

- (void)createAndCacheDataWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_21BE28DAC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21BE463B8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE32A10;
  v13[5] = v12;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v8, &unk_21BE391F0, v13);
}

- (void)generateMarqueeWith:(unint64_t)with
{
  selfCopy = self;
  sub_21BD506AC(with);
}

- (FACacheImageMarqueeOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end