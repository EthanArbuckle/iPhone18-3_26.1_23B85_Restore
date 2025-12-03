@interface JSUserObject
- (BOOL)isFitnessAppInstallationAllowed;
- (BOOL)isManagedAppleID;
- (BOOL)isOnDevicePersonalizationEnabled;
- (BOOL)isUnderThirteen;
- (NSString)dsid;
- (_TtC12GameStoreKit12JSUserObject)init;
- (id)onDevicePersonalizationDataContainerForAppIds:(id)ids;
- (void)queryFitnessAppInstallationAllowed;
@end

@implementation JSUserObject

- (NSString)dsid
{
  selfCopy = self;
  sub_24F2FEBF4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24F92B098();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isManagedAppleID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  selfCopy = self;
  MEMORY[0x2530504F0]();
  v7 = sub_24F92AB18();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {

    sub_24E601704(v5, &qword_27F2330E0);
    return 0;
  }

  else
  {
    v10 = sub_24F92AB08();
    (*(v8 + 8))(v5, v7);
    ams_isManagedAppleID = [v10 ams_isManagedAppleID];

    return ams_isManagedAppleID;
  }
}

- (BOOL)isUnderThirteen
{
  selfCopy = self;
  v3 = sub_24F2FF4A8(MEMORY[0x277CEE150]);

  return v3 & 1;
}

- (BOOL)isFitnessAppInstallationAllowed
{
  selfCopy = self;
  v3 = sub_24F2FEF64();

  return v3 & 1;
}

- (void)queryFitnessAppInstallationAllowed
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_24F2FFB24;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24EBFFB64;
  v7[3] = &block_descriptor_143;
  v5 = _Block_copy(v7);
  selfCopy = self;

  [v3 fetchIsFitnessAvailableForDeviceWithCompletion_];

  _Block_release(v5);
}

- (BOOL)isOnDevicePersonalizationEnabled
{
  selfCopy = self;
  v3 = sub_24F2FF4A8(MEMORY[0x277CEE148]);

  return v3 & 1;
}

- (id)onDevicePersonalizationDataContainerForAppIds:(id)ids
{
  v4 = sub_24F92B5A8();
  selfCopy = self;
  v6 = sub_24F2FF67C(v4);

  return v6;
}

- (_TtC12GameStoreKit12JSUserObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end