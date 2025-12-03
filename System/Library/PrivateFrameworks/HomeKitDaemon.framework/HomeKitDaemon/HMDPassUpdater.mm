@interface HMDPassUpdater
+ (HMDPassUpdater)shared;
- (HMDPassUpdater)init;
- (void)hasAtLeastOneWalletKeyWithCompletionHandler:(id)handler;
- (void)passWithExpressConfigurationWithSerialNumber:(NSString *)number completionHandler:(id)handler;
- (void)passWithPassTypeIdentifier:(NSString *)identifier withSerialNumber:(NSString *)number completionHandler:(id)handler;
- (void)removeOrphanedHomeKeyMiscInfoIncludingHomeUUID:(NSUUID *)d withFlow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)removeOrphanedPassesWithFlow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)setExpressSettingsForPassSerialNumber:(NSString *)number enableNFCExpress:(BOOL)express enableUWB:(BOOL)b authData:(NSData *)data flow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)uniqueIDOfPassWithPassTypeIdentifier:(NSString *)identifier withSerialNumber:(NSString *)number withFlow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)updatePassForHomeUUID:(NSUUID *)d isOnboarding:(BOOL)onboarding ignoreCache:(BOOL)cache flow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)updatePassForHomeUUID:(NSUUID *)d isOnboarding:(BOOL)onboarding optionsRawValue:(int64_t)value ignoreCache:(BOOL)cache flow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)updatePassOnKeychainUpdateForHomeUUID:(NSUUID *)d flow:(HMFFlow *)flow completionHandler:(id)handler;
@end

@implementation HMDPassUpdater

+ (HMDPassUpdater)shared
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  return v2;
}

- (void)hasAtLeastOneWalletKeyWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A585ED8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A585EE0;
  v13[5] = v12;

  sub_229859F70(0, 0, v8, &unk_22A585EE8, v13);
}

- (void)updatePassOnKeychainUpdateForHomeUUID:(NSUUID *)d flow:(HMFFlow *)flow completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = flow;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22A4DD9DC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22A585EB8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22A585EC0;
  v17[5] = v16;
  dCopy = d;
  flowCopy = flow;

  sub_229859F70(0, 0, v12, &unk_22A585EC8, v17);
}

- (void)updatePassForHomeUUID:(NSUUID *)d isOnboarding:(BOOL)onboarding ignoreCache:(BOOL)cache flow:(HMFFlow *)flow completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  *(v18 + 16) = d;
  *(v18 + 24) = onboarding;
  *(v18 + 25) = cache;
  *(v18 + 32) = flow;
  *(v18 + 40) = v17;
  *(v18 + 48) = self;
  v19 = sub_22A4DD9DC();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_22A585E98;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22A585EA0;
  v21[5] = v20;
  dCopy = d;
  flowCopy = flow;

  sub_229859F70(0, 0, v16, &unk_22A585EA8, v21);
}

- (void)updatePassForHomeUUID:(NSUUID *)d isOnboarding:(BOOL)onboarding optionsRawValue:(int64_t)value ignoreCache:(BOOL)cache flow:(HMFFlow *)flow completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v26 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = d;
  *(v20 + 24) = onboarding;
  *(v20 + 32) = value;
  *(v20 + 40) = cache;
  *(v20 + 48) = flow;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_22A4DD9DC();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22A585E78;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22A585E80;
  v23[5] = v22;
  dCopy = d;
  flowCopy = flow;

  sub_229859F70(0, 0, v18, &unk_22A585E88, v23);
}

- (void)removeOrphanedPassesWithFlow:(HMFFlow *)flow completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = flow;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A585E50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A585E58;
  v15[5] = v14;
  flowCopy = flow;

  sub_229859F70(0, 0, v10, &unk_22A585E60, v15);
}

- (void)setExpressSettingsForPassSerialNumber:(NSString *)number enableNFCExpress:(BOOL)express enableUWB:(BOOL)b authData:(NSData *)data flow:(HMFFlow *)flow completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = number;
  *(v20 + 24) = express;
  *(v20 + 25) = b;
  *(v20 + 32) = data;
  *(v20 + 40) = flow;
  *(v20 + 48) = v19;
  *(v20 + 56) = self;
  v21 = sub_22A4DD9DC();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22A585E28;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22A585E30;
  v23[5] = v22;
  numberCopy = number;
  dataCopy = data;
  flowCopy = flow;

  sub_229859F70(0, 0, v18, &unk_22A585E38, v23);
}

- (void)removeOrphanedHomeKeyMiscInfoIncludingHomeUUID:(NSUUID *)d withFlow:(HMFFlow *)flow completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = d;
  v14[3] = flow;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22A4DD9DC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22A585E00;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22A585E08;
  v17[5] = v16;
  dCopy = d;
  flowCopy = flow;

  sub_229859F70(0, 0, v12, &unk_22A585E10, v17);
}

- (void)passWithPassTypeIdentifier:(NSString *)identifier withSerialNumber:(NSString *)number completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = identifier;
  v14[3] = number;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_22A4DD9DC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22A585DD8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22A585DE0;
  v17[5] = v16;
  identifierCopy = identifier;
  numberCopy = number;

  sub_229859F70(0, 0, v12, &unk_22A585DE8, v17);
}

- (void)uniqueIDOfPassWithPassTypeIdentifier:(NSString *)identifier withSerialNumber:(NSString *)number withFlow:(HMFFlow *)flow completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = identifier;
  v16[3] = number;
  v16[4] = flow;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22A4DD9DC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22A585DB8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22A585DC0;
  v19[5] = v18;
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;

  sub_229859F70(0, 0, v14, &unk_22A585DC8, v19);
}

- (void)passWithExpressConfigurationWithSerialNumber:(NSString *)number completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = number;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A585D68;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A57B590;
  v15[5] = v14;
  numberCopy = number;

  sub_229859F70(0, 0, v10, &unk_22A581CC0, v15);
}

- (HMDPassUpdater)init
{
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v3 = sub_22A4DBA1C();
  v4 = MEMORY[0x277D84F98];
  *&self->_anon_60[8] = v3;
  *self->queue = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PassUpdater();
  return [(HMDPassUpdater *)&v6 init];
}

@end