@interface DMCAppWait
+ (void)waitForDDMAppConfigurationsWithProfileIdentifier:(NSString *)a3 completionHandler:(id)a4;
+ (void)waitForMADAppStatusWithCompletionHandler:(id)a3;
- (DMCAppWait)init;
@end

@implementation DMCAppWait

+ (void)waitForDDMAppConfigurationsWithProfileIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8B0);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = sub_247ECC784();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_247ED4480;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_247ED4488;
  v13[5] = v12;
  v14 = a3;
  sub_247EC6A04(0, 0, v8, &unk_247ED4490, v13);
}

+ (void)waitForMADAppStatusWithCompletionHandler:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7E8B0);
  MEMORY[0x28223BE20]();
  v6 = &v12 - v5;
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = sub_247ECC784();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_247ED4430;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_247ED4440;
  v11[5] = v10;
  sub_247EC6A04(0, 0, v6, &unk_247ED4450, v11);
}

- (DMCAppWait)init
{
  v3.receiver = self;
  v3.super_class = DMCAppWait;
  return [(DMCAppWait *)&v3 init];
}

@end