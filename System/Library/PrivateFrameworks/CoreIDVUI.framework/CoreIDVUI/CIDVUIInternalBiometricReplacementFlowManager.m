@interface CIDVUIInternalBiometricReplacementFlowManager
- (_TtC9CoreIDVUI45CIDVUIInternalBiometricReplacementFlowManager)init;
- (void)beginBiometricReplacementForTarget:(int64_t)a3 withAuthHandler:(id)a4 andCompletionHandler:(id)a5;
@end

@implementation CIDVUIInternalBiometricReplacementFlowManager

- (void)beginBiometricReplacementForTarget:(int64_t)a3 withAuthHandler:(id)a4 andCompletionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = _Block_copy(a4);
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v13 = sub_2458C3D38;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_245910D64();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_245910D34();
  v17 = self;

  sub_245771BB4(v13);
  v18 = sub_245910D24();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v19[5] = sub_2458C3BE0;
  v19[6] = v14;
  v19[7] = a3;
  v19[8] = v13;
  v19[9] = v15;
  sub_2458B90EC(0, 0, v11, &unk_24591CE60, v19);

  sub_245771C34(v13);
}

- (_TtC9CoreIDVUI45CIDVUIInternalBiometricReplacementFlowManager)init
{
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC9CoreIDVUI45CIDVUIInternalBiometricReplacementFlowManager_completion);
  v4 = type metadata accessor for CIDVUIInternalBiometricReplacementFlowManager();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(CIDVUIInternalBiometricFlowManager *)&v6 init];
}

@end