@interface UtilityServices
+ (BOOL)isSupportedInRegion:(id)region;
+ (NSURLSession)defaultURLSession;
+ (id)environment;
+ (id)userDSID;
+ (void)allUtilitiesInRegion:(NSString *)region :(NSURLSession *)a4 completionHandler:(id)handler;
+ (void)authorizeAndSubscribeToSinglePremise:(NSString *)premise utilityID:(NSString *)d authCode:(NSString *)code completionHandler:(id)handler;
+ (void)clearServiceConfigCache;
+ (void)configuration:(NSURLSession *)configuration completionHandler:(id)handler;
+ (void)fetchPrivateAccessToken:(NSArray *)token completionHandler:(id)handler;
+ (void)generateGrandSlamTokenWithCompletionHandler:(id)handler;
+ (void)getUtilityInformation:(NSString *)information completionHandler:(id)handler;
+ (void)internalFrameworkConfiguration:(NSURLSession *)configuration completionHandler:(id)handler;
+ (void)searchUtilitiesNearLocation:(CLLocation *)location completionHandler:(id)handler;
+ (void)subscribePremiseToUsageData:(NSString *)data utilityID:(NSString *)d utilityHomeID:(NSString *)iD completionHandler:(id)handler;
+ (void)tafAuthorizeAndSubscribeToSinglePremise:(NSString *)premise utilityID:(NSString *)d fields:(NSDictionary *)fields completionHandler:(id)handler;
+ (void)utilityConfigurationFor:(NSString *)for withSession:(NSURLSession *)session completionHandler:(id)handler;
+ (void)utilityIDLookupFor:(CLLocationCoordinate2D)for withSession:(NSURLSession *)session completionHandler:(id)handler;
+ (void)verifyServiceAddress:(_TtC19HomeUtilityServices21UtilityServiceAddress *)address withSession:(NSURLSession *)session completionHandler:(id)handler;
- (_TtC19HomeUtilityServices15UtilityServices)init;
@end

@implementation UtilityServices

+ (void)verifyServiceAddress:(_TtC19HomeUtilityServices21UtilityServiceAddress *)address withSession:(NSURLSession *)session completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = address;
  v14[3] = session;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_20E0094C4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00B200;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00C080;
  v17[5] = v16;
  addressCopy = address;
  sessionCopy = session;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00B210, v17);
}

+ (NSURLSession)defaultURLSession
{
  ephemeralSessionConfiguration = [objc_opt_self() ephemeralSessionConfiguration];
  sessionWithConfiguration_ = [objc_opt_self() sessionWithConfiguration_];

  return sessionWithConfiguration_;
}

+ (void)configuration:(NSURLSession *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_20E0094C4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20E00C0F0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00C0F8;
  v15[5] = v14;
  configurationCopy = configuration;
  sub_20DFF7DC8(0, 0, v10, &unk_20E00C100, v15);
}

+ (BOOL)isSupportedInRegion:(id)region
{
  v3 = sub_20E0091D4();
  v5 = v4;
  v6 = sub_20DF9D3A0();
  LOBYTE(v3) = sub_20DF6C41C(v3, v5, v6);

  return v3 & 1;
}

- (_TtC19HomeUtilityServices15UtilityServices)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UtilityServices();
  return [(UtilityServices *)&v3 init];
}

+ (void)utilityIDLookupFor:(CLLocationCoordinate2D)for withSession:(NSURLSession *)session completionHandler:(id)handler
{
  longitude = for.longitude;
  latitude = for.latitude;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = latitude;
  v15[3] = longitude;
  *(v15 + 4) = session;
  *(v15 + 5) = v14;
  *(v15 + 6) = self;
  v16 = sub_20E0094C4();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00C0D0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E00C0D8;
  v18[5] = v17;
  sessionCopy = session;
  sub_20DFF7DC8(0, 0, v13, &unk_20E00C0E0, v18);
}

+ (void)allUtilitiesInRegion:(NSString *)region :(NSURLSession *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = region;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_20E0094C4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00C0B0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00C0B8;
  v17[5] = v16;
  regionCopy = region;
  v19 = a4;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00C0C0, v17);
}

+ (void)utilityConfigurationFor:(NSString *)for withSession:(NSURLSession *)session completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = for;
  v14[3] = session;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_20E0094C4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00C090;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00C098;
  v17[5] = v16;
  forCopy = for;
  sessionCopy = session;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00C0A0, v17);
}

+ (void)internalFrameworkConfiguration:(NSURLSession *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_20E0094C4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20E00EBA0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00EBA8;
  v15[5] = v14;
  configurationCopy = configuration;
  sub_20DFF7DC8(0, 0, v10, &unk_20E00EBB0, v15);
}

+ (void)fetchPrivateAccessToken:(NSArray *)token completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = token;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_20E0094C4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20E00EB80;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00EB88;
  v15[5] = v14;
  tokenCopy = token;
  sub_20DFF7DC8(0, 0, v10, &unk_20E00EB90, v15);
}

+ (void)clearServiceConfigCache
{
  v2 = sub_20DF9CAE0();
  v4 = v3;
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852CF8, &qword_20E00EB58);
  v5[0] = MEMORY[0x277D84F90];
  sub_20DF9C678(v2, v4, v5);

  sub_20DF66E28(v5, &qword_27C8521F0, &unk_20E00EC00);
}

+ (void)generateGrandSlamTokenWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_20E0094C4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20E00EB70;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20E00C080;
  v13[5] = v12;
  sub_20DFF7DC8(0, 0, v8, &unk_20E00B210, v13);
}

+ (id)userDSID
{
  if (qword_27C852000 != -1)
  {
    swift_once();
  }

  sub_20DF900EC(qword_27C862620);
  if (v2)
  {
    v3 = sub_20E0091C4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)environment
{
  sub_20DFE7E38();
  v2 = sub_20E0091C4();

  return v2;
}

+ (void)searchUtilitiesNearLocation:(CLLocation *)location completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = location;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_20E0094C4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20E0135C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E00F818;
  v15[5] = v14;
  locationCopy = location;
  sub_20DFF7DC8(0, 0, v10, &unk_20E00F820, v15);
}

+ (void)getUtilityInformation:(NSString *)information completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = information;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_20E0094C4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20E0135A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_20E0135A8;
  v15[5] = v14;
  informationCopy = information;
  sub_20DFF7DC8(0, 0, v10, &unk_20E0135B0, v15);
}

+ (void)authorizeAndSubscribeToSinglePremise:(NSString *)premise utilityID:(NSString *)d authCode:(NSString *)code completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = premise;
  v16[3] = d;
  v16[4] = code;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_20E0094C4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E013580;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E013588;
  v19[5] = v18;
  premiseCopy = premise;
  dCopy = d;
  codeCopy = code;
  sub_20DFF7DC8(0, 0, v14, &unk_20E013590, v19);
}

+ (void)tafAuthorizeAndSubscribeToSinglePremise:(NSString *)premise utilityID:(NSString *)d fields:(NSDictionary *)fields completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = premise;
  v16[3] = d;
  v16[4] = fields;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_20E0094C4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E013560;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E013568;
  v19[5] = v18;
  premiseCopy = premise;
  dCopy = d;
  fieldsCopy = fields;
  sub_20DFF7DC8(0, 0, v14, &unk_20E013570, v19);
}

+ (void)subscribePremiseToUsageData:(NSString *)data utilityID:(NSString *)d utilityHomeID:(NSString *)iD completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = data;
  v16[3] = d;
  v16[4] = iD;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_20E0094C4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E013540;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E013548;
  v19[5] = v18;
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  sub_20DFF7DC8(0, 0, v14, &unk_20E013550, v19);
}

@end