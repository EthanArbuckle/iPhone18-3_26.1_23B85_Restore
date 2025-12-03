@interface HUHomeEnergyManagerHelper
+ (BOOL)characterCount:(id)count min:(int64_t)min max:(int64_t)max;
+ (BOOL)redirectToOAuth:(id)auth;
+ (BOOL)regexValidationWithPattern:(id)pattern text:(id)text;
+ (BOOL)textValidation:(id)validation field:(id)field;
+ (NSString)homeEnergyErrorDomain;
+ (id)constructServiceAddress:(id)address;
+ (id)tccApps;
+ (int64_t)toAddressMatchTypeHelper:(int64_t)helper;
+ (void)setHasDismissedConnectAccountBannerWithHome:(id)home;
+ (void)shouldShowConnectAccountBannerFor:(HMHome *)for checkLocation:(BOOL)location completionHandler:(id)handler;
+ (void)utilityInformation:(NSString *)information completionHandler:(id)handler;
- (HUHomeEnergyManagerHelper)init;
- (HUHomeEnergyManagerHelper)initWithHome:(id)home;
- (void)fetchPillAdviceWithCompletionHandler:(id)handler;
- (void)homeLocationRegionWithCompletionHandler:(id)handler;
- (void)initializeGridForecastSnapshots;
- (void)revokeSubscriptionWithCompletionHandler:(id)handler;
- (void)updateHomeEnergyAvailableFeaturesWithCompletionHandler:(id)handler;
- (void)updateHomeLocationWithCompletionHandler:(id)handler;
- (void)utilityDetailsWithCompletionHandler:(id)handler;
@end

@implementation HUHomeEnergyManagerHelper

- (HUHomeEnergyManagerHelper)initWithHome:(id)home
{
  *(&self->super.isa + OBJC_IVAR___HUHomeEnergyManagerHelper_home) = home;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HomeEnergyManagerHelper();
  homeCopy = home;
  return [(HUHomeEnergyManagerHelper *)&v6 init];
}

- (void)updateHomeEnergyAvailableFeaturesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5BE230;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5BE238;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BE240, v12);
}

- (void)fetchPillAdviceWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5BE210;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5BE218;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BE220, v12);
}

- (void)updateHomeLocationWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5BE1F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5BE1F8;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BE200, v12);
}

- (void)initializeGridForecastSnapshots
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_20D567C58();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_20CF18960(0, 0, v5, &unk_20D5BE1E0, v7);
}

- (void)homeLocationRegionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5BE1C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5BE1D0;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BE1D8, v12);
}

- (void)utilityDetailsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5BE1A0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5BE1A8;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BE1B0, v12);
}

- (void)revokeSubscriptionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5BE190;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5C5200;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BCD00, v12);
}

+ (void)setHasDismissedConnectAccountBannerWithHome:(id)home
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_20D563818();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  homeCopy = home;
  uniqueIdentifier = [homeCopy uniqueIdentifier];
  sub_20D5637E8();

  v13 = sub_20D5637B8();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  v16 = sub_20D567C58();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v13;
  v17[5] = v15;
  sub_20CF18960(0, 0, v6, &unk_20D5BE288, v17);
}

+ (void)shouldShowConnectAccountBannerFor:(HMHome *)for checkLocation:(BOOL)location completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = for;
  *(v13 + 24) = location;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_20D567C58();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20D5BE270;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20D5BE278;
  v16[5] = v15;
  forCopy = for;
  sub_20D11C1C8(0, 0, v11, &unk_20D5BE280, v16);
}

+ (void)utilityInformation:(NSString *)information completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = information;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20D567C58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20D5BE250;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20D5BE258;
  v14[5] = v13;
  informationCopy = information;
  sub_20D11C1C8(0, 0, v9, &unk_20D5BE260, v14);
}

+ (int64_t)toAddressMatchTypeHelper:(int64_t)helper
{
  if (helper == 2)
  {
    return 2;
  }

  else
  {
    return helper == 1;
  }
}

+ (id)constructServiceAddress:(id)address
{
  v3 = sub_20D567758();
  v4 = sub_20CF21F20(v3);

  return v4;
}

+ (BOOL)textValidation:(id)validation field:(id)field
{
  v4 = sub_20D567838();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

+ (BOOL)characterCount:(id)count min:(int64_t)min max:(int64_t)max
{
  v7 = sub_20D567838();
  LOBYTE(max) = sub_20CF24FF0(v7, v8, min, max);

  return max & 1;
}

+ (BOOL)regexValidationWithPattern:(id)pattern text:(id)text
{
  v4 = sub_20D567838();
  v6 = v5;
  v7 = sub_20D567838();
  LOBYTE(v4) = sub_20CF21958(v4, v6, v7, v8);

  return v4 & 1;
}

- (HUHomeEnergyManagerHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (BOOL)redirectToOAuth:(id)auth
{
  authCopy = auth;
  v4 = _s6HomeUI0A19EnergyManagerHelperC15redirectToOAuthySbs5Error_pFZ_0(authCopy);

  return v4;
}

+ (NSString)homeEnergyErrorDomain
{
  v2 = sub_20D5677F8();

  return v2;
}

+ (id)tccApps
{
  _s6HomeUI0A19EnergyManagerHelperC7tccAppsSayAA9HUAppInfoCGyFZ_0();
  type metadata accessor for HUAppInfo();
  v2 = sub_20D567A58();

  return v2;
}

@end