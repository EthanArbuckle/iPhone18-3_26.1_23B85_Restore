@interface HMDPassUpdater
+ (HMDPassUpdater)shared;
- (HMDPassUpdater)init;
- (void)hasAtLeastOneWalletKeyWithCompletionHandler:(id)a3;
- (void)passWithExpressConfigurationWithSerialNumber:(NSString *)a3 completionHandler:(id)a4;
- (void)passWithPassTypeIdentifier:(NSString *)a3 withSerialNumber:(NSString *)a4 completionHandler:(id)a5;
- (void)removeOrphanedHomeKeyMiscInfoIncludingHomeUUID:(NSUUID *)a3 withFlow:(HMFFlow *)a4 completionHandler:(id)a5;
- (void)removeOrphanedPassesWithFlow:(HMFFlow *)a3 completionHandler:(id)a4;
- (void)setExpressSettingsForPassSerialNumber:(NSString *)a3 enableNFCExpress:(BOOL)a4 enableUWB:(BOOL)a5 authData:(NSData *)a6 flow:(HMFFlow *)a7 completionHandler:(id)a8;
- (void)uniqueIDOfPassWithPassTypeIdentifier:(NSString *)a3 withSerialNumber:(NSString *)a4 withFlow:(HMFFlow *)a5 completionHandler:(id)a6;
- (void)updatePassForHomeUUID:(NSUUID *)a3 isOnboarding:(BOOL)a4 ignoreCache:(BOOL)a5 flow:(HMFFlow *)a6 completionHandler:(id)a7;
- (void)updatePassForHomeUUID:(NSUUID *)a3 isOnboarding:(BOOL)a4 optionsRawValue:(int64_t)a5 ignoreCache:(BOOL)a6 flow:(HMFFlow *)a7 completionHandler:(id)a8;
- (void)updatePassOnKeychainUpdateForHomeUUID:(NSUUID *)a3 flow:(HMFFlow *)a4 completionHandler:(id)a5;
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

- (void)hasAtLeastOneWalletKeyWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
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

- (void)updatePassOnKeychainUpdateForHomeUUID:(NSUUID *)a3 flow:(HMFFlow *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;

  sub_229859F70(0, 0, v12, &unk_22A585EC8, v17);
}

- (void)updatePassForHomeUUID:(NSUUID *)a3 isOnboarding:(BOOL)a4 ignoreCache:(BOOL)a5 flow:(HMFFlow *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 25) = a5;
  *(v18 + 32) = a6;
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
  v22 = a3;
  v23 = a6;

  sub_229859F70(0, 0, v16, &unk_22A585EA8, v21);
}

- (void)updatePassForHomeUUID:(NSUUID *)a3 isOnboarding:(BOOL)a4 optionsRawValue:(int64_t)a5 ignoreCache:(BOOL)a6 flow:(HMFFlow *)a7 completionHandler:(id)a8
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
  *(v20 + 48) = a7;
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
  v24 = a3;
  v25 = a7;

  sub_229859F70(0, 0, v18, &unk_22A585E88, v23);
}

- (void)removeOrphanedPassesWithFlow:(HMFFlow *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_22A585E50;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A585E58;
  v15[5] = v14;
  v16 = a3;

  sub_229859F70(0, 0, v10, &unk_22A585E60, v15);
}

- (void)setExpressSettingsForPassSerialNumber:(NSString *)a3 enableNFCExpress:(BOOL)a4 enableUWB:(BOOL)a5 authData:(NSData *)a6 flow:(HMFFlow *)a7 completionHandler:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 25) = a5;
  *(v20 + 32) = a6;
  *(v20 + 40) = a7;
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
  v24 = a3;
  v25 = a6;
  v26 = a7;

  sub_229859F70(0, 0, v18, &unk_22A585E38, v23);
}

- (void)removeOrphanedHomeKeyMiscInfoIncludingHomeUUID:(NSUUID *)a3 withFlow:(HMFFlow *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;

  sub_229859F70(0, 0, v12, &unk_22A585E10, v17);
}

- (void)passWithPassTypeIdentifier:(NSString *)a3 withSerialNumber:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;

  sub_229859F70(0, 0, v12, &unk_22A585DE8, v17);
}

- (void)uniqueIDOfPassWithPassTypeIdentifier:(NSString *)a3 withSerialNumber:(NSString *)a4 withFlow:(HMFFlow *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;

  sub_229859F70(0, 0, v14, &unk_22A585DC8, v19);
}

- (void)passWithExpressConfigurationWithSerialNumber:(NSString *)a3 completionHandler:(id)a4
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
  v14[4] = &unk_22A585D68;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A57B590;
  v15[5] = v14;
  v16 = a3;

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