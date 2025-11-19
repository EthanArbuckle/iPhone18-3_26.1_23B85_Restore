@interface CIDVUIInternalIdentityProofingDataSharingFlowManager
- (_TtC9CoreIDVUI52CIDVUIInternalIdentityProofingDataSharingFlowManager)init;
- (void)checkUserConsentWithCompletionHandler:(id)a3;
- (void)didChangeUserConsentWithConsent:(unint64_t)a3 completionHandler:(id)a4;
- (void)fetchUserConsentWithCompletionHandler:(id)a3;
@end

@implementation CIDVUIInternalIdentityProofingDataSharingFlowManager

- (_TtC9CoreIDVUI52CIDVUIInternalIdentityProofingDataSharingFlowManager)init
{
  sub_24590E4D4();
  swift_allocObject();
  v3 = sub_24590E4C4();
  type metadata accessor for IdentityProofingDataSharingFlowManager();
  v4 = swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC9CoreIDVUI52CIDVUIInternalIdentityProofingDataSharingFlowManager_dataSharingFlowManager) = sub_2458C5430(v3, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for CIDVUIInternalIdentityProofingDataSharingFlowManager();
  return [(CIDVUIInternalIdentityProofingDataSharingFlowManager *)&v6 init];
}

- (void)checkUserConsentWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_245910D64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24591CF30;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24591CF38;
  v12[5] = v11;
  v13 = self;
  sub_2459090D0(0, 0, v7, &unk_24591CF40, v12);
}

- (void)fetchUserConsentWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_245910D64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24591CF10;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24591CF18;
  v12[5] = v11;
  v13 = self;
  sub_2459090D0(0, 0, v7, &unk_24591CF20, v12);
}

- (void)didChangeUserConsentWithConsent:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_245910D64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24591CF00;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24591D030;
  v14[5] = v13;
  v15 = self;
  sub_2459090D0(0, 0, v9, &unk_24591CD60, v14);
}

@end