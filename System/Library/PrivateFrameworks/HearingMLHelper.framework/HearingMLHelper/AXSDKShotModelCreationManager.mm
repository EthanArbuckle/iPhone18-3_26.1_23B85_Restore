@interface AXSDKShotModelCreationManager
- (AXSDKShotModelCreationManager)init;
- (id)trainWithDetectorID:(id)d hallucinatorPath:(id)path pretrainedWeightsPath:(id)weightsPath error:(id *)error;
@end

@implementation AXSDKShotModelCreationManager

- (AXSDKShotModelCreationManager)init
{
  v3.receiver = self;
  v3.super_class = AXSDKShotModelCreationManager;
  return [(AXSDKShotModelCreationManager *)&v3 init];
}

- (id)trainWithDetectorID:(id)d hallucinatorPath:(id)path pretrainedWeightsPath:(id)weightsPath error:(id *)error
{
  v25[0] = error;
  v7 = sub_251F6B1B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v25 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  v18 = sub_251F6B250();
  v20 = v19;
  sub_251F6B1A0();
  sub_251F6B1A0();
  selfCopy = self;
  sub_251F68FA4(v18, v20, v15, v12, v17);

  v22 = *(v8 + 8);
  v22(v12, v7);
  v22(v15, v7);
  v23 = sub_251F6B190();
  v22(v17, v7);

  return v23;
}

@end