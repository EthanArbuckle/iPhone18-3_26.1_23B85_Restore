@interface HMDACWGKeyManager
+ (HMDACWGKeyManager)shared;
- (HMDACWGKeyManager)init;
- (void)getIssuerKeyPairExternalRepresentationFromKeychainForHomeUUID:(NSUUID *)d completionHandler:(id)handler;
- (void)getOrCreateIssuerKeyAndSaveIfNeededWithHome:(NSUUID *)home user:(NSUUID *)user context:(HMCContext *)context shouldRoll:(BOOL)roll completionHandler:(id)handler;
- (void)getOrCreateIssuerKeyAndSaveToSharedUserReverseShareWithHomeUUID:(NSUUID *)d context:(HMCContext *)context shouldUpdateLocks:(BOOL)locks shouldRoll:(BOOL)roll flow:(HMFFlow *)flow requireCloudFetch:(BOOL)fetch isOnSharedUserAcceptance:(BOOL)acceptance completionHandler:(id)self0;
- (void)getOrCreateIssuerKeyPairExternalRepresentationWithHomeUUID:(NSUUID *)d shouldRoll:(BOOL)roll flow:(HMFFlow *)flow requireCloudFetch:(BOOL)fetch shouldAwaitOnPush:(BOOL)push completionHandler:(id)handler;
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

- (void)getOrCreateIssuerKeyPairExternalRepresentationWithHomeUUID:(NSUUID *)d shouldRoll:(BOOL)roll flow:(HMFFlow *)flow requireCloudFetch:(BOOL)fetch shouldAwaitOnPush:(BOOL)push completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = d;
  *(v20 + 24) = roll;
  *(v20 + 32) = flow;
  *(v20 + 40) = fetch;
  *(v20 + 41) = push;
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
  dCopy = d;
  flowCopy = flow;

  sub_229859F70(0, 0, v18, &unk_22A57E5C0, v23);
}

- (void)getOrCreateIssuerKeyAndSaveToSharedUserReverseShareWithHomeUUID:(NSUUID *)d context:(HMCContext *)context shouldUpdateLocks:(BOOL)locks shouldRoll:(BOOL)roll flow:(HMFFlow *)flow requireCloudFetch:(BOOL)fetch isOnSharedUserAcceptance:(BOOL)acceptance completionHandler:(id)self0
{
  HIDWORD(v28) = fetch;
  dCopy = d;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v28 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  *(v21 + 16) = d;
  *(v21 + 24) = context;
  *(v21 + 32) = locks;
  *(v21 + 33) = roll;
  *(v21 + 40) = flow;
  *(v21 + 48) = BYTE4(v28);
  *(v21 + 49) = acceptance;
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
  v25 = dCopy;
  contextCopy = context;
  flowCopy = flow;

  sub_229859F70(0, 0, v19, &unk_22A57E5A0, v24);
}

- (void)getOrCreateIssuerKeyAndSaveIfNeededWithHome:(NSUUID *)home user:(NSUUID *)user context:(HMCContext *)context shouldRoll:(BOOL)roll completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  *(v18 + 16) = home;
  *(v18 + 24) = user;
  *(v18 + 32) = context;
  *(v18 + 40) = roll;
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
  homeCopy = home;
  userCopy = user;
  contextCopy = context;

  sub_229859F70(0, 0, v16, &unk_22A57E580, v21);
}

- (void)getIssuerKeyPairExternalRepresentationFromKeychainForHomeUUID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = d;
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
  dCopy = d;

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