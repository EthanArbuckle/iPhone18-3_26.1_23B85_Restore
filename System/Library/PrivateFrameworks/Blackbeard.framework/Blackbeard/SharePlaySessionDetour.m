@interface SharePlaySessionDetour
- (_TtC10Blackbeard22SharePlaySessionDetour)init;
- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5;
@end

@implementation SharePlaySessionDetour

- (_TtC10Blackbeard22SharePlaySessionDetour)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a5;
  v14[5] = self;
  v14[6] = a3;
  v14[7] = a4;
  v15 = a3;
  v16 = a4;
  v17 = self;
  v18 = a5;
  sub_1E64B80F8(0, 0, v12, &unk_1E65EAB58, v14);
}

@end