@interface HFHomeEnergyManager
+ (void)utilityConfiguration:(NSString *)a3 completionHandler:(id)a4;
- (BOOL)cachedHasEnergySite;
- (BOOL)cachedHasUtilitySubscription;
- (BOOL)effectiveGridForecastSupported;
- (BOOL)hasElectricityRatesEnabled;
- (BOOL)isGridForecastEnabled;
- (BOOL)isGridForecastVisible;
- (BOOL)isHomeElectricitySupported;
- (BOOL)isHomeEnergyVisible;
- (CLLocation)temporaryLocation;
- (_TtC4Home19HFHomeEnergyManager)init;
- (_TtC4Home19HFHomeEnergyManager)initWithHome:(id)a3;
- (void)createUtilitySubscriptionWithHomeID:(NSString *)a3 utilityID:(NSString *)a4 serviceLocationID:(NSString *)a5 accessToken:(NSString *)a6 accessTokenExpirationDate:(NSDate *)a7 refreshToken:(NSString *)a8 address:(NSString *)a9 utilityCustomerName:(NSString *)a10 completionHandler:(id)a11;
- (void)homeRegionWithCompletionHandler:(id)a3;
- (void)isGridForecastSupportedInHomeRegionWithCompletionHandler:(id)a3;
- (void)isHomeElectricitySupportedInHomeRegionWithCompletionHandler:(id)a3;
- (void)revokeSubscriptionWithCompletionHandler:(id)a3;
- (void)setCachedHasEnergySite:(BOOL)a3;
- (void)setHasElectricityRatesEnabled:(BOOL)a3;
- (void)setIsGridForecastEnabled:(BOOL)a3;
- (void)setIsHomeElectricitySupported:(BOOL)a3;
- (void)setTemporaryLocation:(id)a3;
- (void)updateHomeEnergyAvailableFeaturesWithCompletionHandler:(id)a3;
- (void)updateIncludeElectricityRates:(BOOL)a3 completionHandler:(id)a4;
- (void)utilityDetailsWithCompletionHandler:(id)a3;
@end

@implementation HFHomeEnergyManager

- (_TtC4Home19HFHomeEnergyManager)initWithHome:(id)a3
{
  v4 = objc_allocWithZone(MEMORY[0x277CBFBE8]);
  v5 = a3;
  v6 = [v4 init];
  type metadata accessor for RealUtilityServices();
  v7 = swift_allocObject();
  v8 = objc_allocWithZone(type metadata accessor for HFHomeEnergyManager());
  v9 = sub_20DAB3898(v5, v6, v7, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (CLLocation)temporaryLocation
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTemporaryLocation:(id)a3
{
  v5 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_temporaryLocation;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (BOOL)isGridForecastVisible
{
  v2 = self;
  v3 = sub_20DAA35CC();

  return v3 & 1;
}

- (BOOL)isGridForecastEnabled
{
  v2 = self;
  v3 = sub_20DAA36DC();

  return v3 & 1;
}

- (void)setIsGridForecastEnabled:(BOOL)a3
{
  v4 = self;
  sub_20DAA3940(a3);
}

- (BOOL)effectiveGridForecastSupported
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_isGridForecastSupported;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4 == 2)
  {
    v5 = self;
    LOBYTE(v4) = sub_20DAA3D58();
  }

  return v4 & 1;
}

- (void)updateHomeEnergyAvailableFeaturesWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD97120;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD97128;
  v13[5] = v12;
  v14 = self;
  sub_20DAB35AC(0, 0, v8, &unk_20DD97130, v13);
}

- (BOOL)isHomeElectricitySupported
{
  v2 = self;
  v3 = sub_20DAA4D14();

  return v3 & 1;
}

- (void)setIsHomeElectricitySupported:(BOOL)a3
{
  v4 = self;
  sub_20DAA4D74(a3);
}

- (BOOL)cachedHasEnergySite
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCachedHasEnergySite:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_cachedHasEnergySite;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)cachedHasUtilitySubscription
{
  v2 = self;
  v3 = sub_20DAA519C();

  return v3 & 1;
}

- (BOOL)isHomeEnergyVisible
{
  v2 = self;
  if (sub_20DAA35CC())
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_20DAA519C();
  }

  return v3 & 1;
}

- (BOOL)hasElectricityRatesEnabled
{
  v3 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHasElectricityRatesEnabled:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC4Home19HFHomeEnergyManager_hasElectricityRatesEnabled;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
  v6 = self;
  sub_20DAA59DC();
}

- (void)updateIncludeElectricityRates:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_20DD65114();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD97100;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20DD97108;
  v15[5] = v14;
  v16 = self;
  sub_20DAB35AC(0, 0, v10, &unk_20DD97110, v15);
}

- (void)isHomeElectricitySupportedInHomeRegionWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD970E0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD970E8;
  v13[5] = v12;
  v14 = self;
  sub_20DAB35AC(0, 0, v8, &unk_20DD970F0, v13);
}

- (void)utilityDetailsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD970C0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD970C8;
  v13[5] = v12;
  v14 = self;
  sub_20DAB35AC(0, 0, v8, &unk_20DD970D0, v13);
}

- (void)revokeSubscriptionWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD970A0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD970A8;
  v13[5] = v12;
  v14 = self;
  sub_20DAB35AC(0, 0, v8, &unk_20DD970B0, v13);
}

- (void)isGridForecastSupportedInHomeRegionWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD97080;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD97088;
  v13[5] = v12;
  v14 = self;
  sub_20DAB35AC(0, 0, v8, &unk_20DD97090, v13);
}

- (void)homeRegionWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20DD97060;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD97068;
  v13[5] = v12;
  v14 = self;
  sub_20DAB35AC(0, 0, v8, &unk_20DD97070, v13);
}

+ (void)utilityConfiguration:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_20DD65114();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD97140;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20DD97148;
  v15[5] = v14;
  v16 = a3;
  sub_20DAB35AC(0, 0, v10, &unk_20DD97150, v15);
}

- (void)createUtilitySubscriptionWithHomeID:(NSString *)a3 utilityID:(NSString *)a4 serviceLocationID:(NSString *)a5 accessToken:(NSString *)a6 accessTokenExpirationDate:(NSDate *)a7 refreshToken:(NSString *)a8 address:(NSString *)a9 utilityCustomerName:(NSString *)a10 completionHandler:(id)a11
{
  v36 = self;
  v37 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - v18;
  v20 = _Block_copy(a11);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v22 = v36;
  v23 = v37;
  v21[6] = a7;
  v21[7] = v23;
  v21[8] = a9;
  v21[9] = a10;
  v21[10] = v20;
  v21[11] = v22;
  v24 = sub_20DD65114();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_20DD97018;
  v25[5] = v21;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_20DD94D90;
  v26[5] = v25;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = v37;
  v33 = a9;
  v34 = a10;
  v35 = v36;
  sub_20DAB35AC(0, 0, v19, &unk_20DD95520, v26);
}

- (_TtC4Home19HFHomeEnergyManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end