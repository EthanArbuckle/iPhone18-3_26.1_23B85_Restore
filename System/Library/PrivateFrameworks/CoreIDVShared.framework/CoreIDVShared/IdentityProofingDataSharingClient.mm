@interface IdentityProofingDataSharingClient
- (void)checkUserConsentWithCompletionHandler:(id)handler;
- (void)didChangeUserConsentWithStatus:(int64_t)status completionHandler:(id)handler;
- (void)fetchUserConsentWithCompletionHandler:(id)handler;
@end

@implementation IdentityProofingDataSharingClient

- (void)fetchUserConsentWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02C98;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225D02CA0;
  v13[5] = v12;

  sub_225CBCC70(0, 0, v8, &unk_225D02CA8, v13);
}

- (void)didChangeUserConsentWithStatus:(int64_t)status completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = status;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_225CCE994();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_225D02C78;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_225D02C80;
  v15[5] = v14;

  sub_225CBCC70(0, 0, v10, &unk_225D02C88, v15);
}

- (void)checkUserConsentWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_225CCE994();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_225D02C68;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_225CF9CD0;
  v13[5] = v12;

  sub_225CBCC70(0, 0, v8, &unk_225D02030, v13);
}

@end