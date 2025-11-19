@interface HMDACWGKeyManager
+ (HMDACWGKeyManager)shared;
- (HMDACWGKeyManager)init;
- (void)getIssuerKeyPairExternalRepresentationFromKeychainForHomeUUID:(NSUUID *)a3 completionHandler:(id)a4;
- (void)getOrCreateIssuerKeyAndSaveIfNeededWithHome:(NSUUID *)a3 user:(NSUUID *)a4 context:(HMCContext *)a5 shouldRoll:(BOOL)a6 completionHandler:(id)a7;
- (void)getOrCreateIssuerKeyAndSaveToSharedUserReverseShareWithHomeUUID:(NSUUID *)a3 context:(HMCContext *)a4 shouldUpdateLocks:(BOOL)a5 shouldRoll:(BOOL)a6 flow:(HMFFlow *)a7 requireCloudFetch:(BOOL)a8 isOnSharedUserAcceptance:(BOOL)a9 completionHandler:(id)a10;
- (void)getOrCreateIssuerKeyPairExternalRepresentationWithHomeUUID:(NSUUID *)a3 shouldRoll:(BOOL)a4 flow:(HMFFlow *)a5 requireCloudFetch:(BOOL)a6 shouldAwaitOnPush:(BOOL)a7 completionHandler:(id)a8;
@end

@implementation HMDACWGKeyManager

+ (HMDACWGKeyManager)shared
{
  if (qword_281402D28 != -1)
  {
    swift_once();
  }

  return v2;
}

- (void)getOrCreateIssuerKeyPairExternalRepresentationWithHomeUUID:(NSUUID *)a3 shouldRoll:(BOOL)a4 flow:(HMFFlow *)a5 requireCloudFetch:(BOOL)a6 shouldAwaitOnPush:(BOOL)a7 completionHandler:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 41) = a7;
  *(v20 + 48) = v19;
  *(v20 + 56) = self;
  v21 = sub_22A4DD9DC();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22A57E5B0;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22A57E5B8;
  v23[5] = v22;
  v24 = a3;
  v25 = a5;

  sub_229859F70(0, 0, v18, &unk_22A57E5C0, v23);
}

- (void)getOrCreateIssuerKeyAndSaveToSharedUserReverseShareWithHomeUUID:(NSUUID *)a3 context:(HMCContext *)a4 shouldUpdateLocks:(BOOL)a5 shouldRoll:(BOOL)a6 flow:(HMFFlow *)a7 requireCloudFetch:(BOOL)a8 isOnSharedUserAcceptance:(BOOL)a9 completionHandler:(id)a10
{
  HIDWORD(v28) = a8;
  v29 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - v18;
  v20 = _Block_copy(a10);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 33) = a6;
  *(v21 + 40) = a7;
  *(v21 + 48) = BYTE4(v28);
  *(v21 + 49) = a9;
  *(v21 + 56) = v20;
  *(v21 + 64) = self;
  v22 = sub_22A4DD9DC();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22A57E590;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22A57E598;
  v24[5] = v23;
  v25 = v29;
  v26 = a4;
  v27 = a7;

  sub_229859F70(0, 0, v19, &unk_22A57E5A0, v24);
}

- (void)getOrCreateIssuerKeyAndSaveIfNeededWithHome:(NSUUID *)a3 user:(NSUUID *)a4 context:(HMCContext *)a5 shouldRoll:(BOOL)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = v17;
  *(v18 + 56) = self;
  v19 = sub_22A4DD9DC();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_22A57E570;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22A57E578;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;

  sub_229859F70(0, 0, v16, &unk_22A57E580, v21);
}

- (void)getIssuerKeyPairExternalRepresentationFromKeychainForHomeUUID:(NSUUID *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A57E560;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A57B590;
  v15[5] = v14;
  v16 = a3;

  sub_229859F70(0, 0, v10, &unk_22A581CC0, v15);
}

- (HMDACWGKeyManager)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end