@interface UtilityServices
+ (BOOL)isSupportedInRegion:(id)a3;
+ (NSURLSession)defaultURLSession;
+ (id)environment;
+ (id)userDSID;
+ (void)allUtilitiesInRegion:(NSString *)a3 :(NSURLSession *)a4 completionHandler:(id)a5;
+ (void)authorizeAndSubscribeToSinglePremise:(NSString *)a3 utilityID:(NSString *)a4 authCode:(NSString *)a5 completionHandler:(id)a6;
+ (void)clearServiceConfigCache;
+ (void)configuration:(NSURLSession *)a3 completionHandler:(id)a4;
+ (void)fetchPrivateAccessToken:(NSArray *)a3 completionHandler:(id)a4;
+ (void)generateGrandSlamTokenWithCompletionHandler:(id)a3;
+ (void)getUtilityInformation:(NSString *)a3 completionHandler:(id)a4;
+ (void)internalFrameworkConfiguration:(NSURLSession *)a3 completionHandler:(id)a4;
+ (void)searchUtilitiesNearLocation:(CLLocation *)a3 completionHandler:(id)a4;
+ (void)subscribePremiseToUsageData:(NSString *)a3 utilityID:(NSString *)a4 utilityHomeID:(NSString *)a5 completionHandler:(id)a6;
+ (void)tafAuthorizeAndSubscribeToSinglePremise:(NSString *)a3 utilityID:(NSString *)a4 fields:(NSDictionary *)a5 completionHandler:(id)a6;
+ (void)utilityConfigurationFor:(NSString *)a3 withSession:(NSURLSession *)a4 completionHandler:(id)a5;
+ (void)utilityIDLookupFor:(CLLocationCoordinate2D)a3 withSession:(NSURLSession *)a4 completionHandler:(id)a5;
+ (void)verifyServiceAddress:(_TtC19HomeUtilityServices21UtilityServiceAddress *)a3 withSession:(NSURLSession *)a4 completionHandler:(id)a5;
- (_TtC19HomeUtilityServices15UtilityServices)init;
@end

@implementation UtilityServices

+ (void)verifyServiceAddress:(_TtC19HomeUtilityServices21UtilityServiceAddress *)a3 withSession:(NSURLSession *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = a1;
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
  v18 = a3;
  v19 = a4;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00B210, v17);
}

+ (NSURLSession)defaultURLSession
{
  v2 = [objc_opt_self() ephemeralSessionConfiguration];
  v3 = [objc_opt_self() sessionWithConfiguration_];

  return v3;
}

+ (void)configuration:(NSURLSession *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
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
  v16 = a3;
  sub_20DFF7DC8(0, 0, v10, &unk_20E00C100, v15);
}

+ (BOOL)isSupportedInRegion:(id)a3
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

+ (void)utilityIDLookupFor:(CLLocationCoordinate2D)a3 withSession:(NSURLSession *)a4 completionHandler:(id)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  v15[2] = latitude;
  v15[3] = longitude;
  *(v15 + 4) = a4;
  *(v15 + 5) = v14;
  *(v15 + 6) = a1;
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
  v19 = a4;
  sub_20DFF7DC8(0, 0, v13, &unk_20E00C0E0, v18);
}

+ (void)allUtilitiesInRegion:(NSString *)a3 :(NSURLSession *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = a1;
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
  v18 = a3;
  v19 = a4;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00C0C0, v17);
}

+ (void)utilityConfigurationFor:(NSString *)a3 withSession:(NSURLSession *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = a1;
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
  v18 = a3;
  v19 = a4;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00C0A0, v17);
}

+ (void)internalFrameworkConfiguration:(NSURLSession *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
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
  v16 = a3;
  sub_20DFF7DC8(0, 0, v10, &unk_20E00EBB0, v15);
}

+ (void)fetchPrivateAccessToken:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
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
  v16 = a3;
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

+ (void)generateGrandSlamTokenWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
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

+ (void)searchUtilitiesNearLocation:(CLLocation *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
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
  v16 = a3;
  sub_20DFF7DC8(0, 0, v10, &unk_20E00F820, v15);
}

+ (void)getUtilityInformation:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
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
  v16 = a3;
  sub_20DFF7DC8(0, 0, v10, &unk_20E0135B0, v15);
}

+ (void)authorizeAndSubscribeToSinglePremise:(NSString *)a3 utilityID:(NSString *)a4 authCode:(NSString *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = a1;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_20DFF7DC8(0, 0, v14, &unk_20E013590, v19);
}

+ (void)tafAuthorizeAndSubscribeToSinglePremise:(NSString *)a3 utilityID:(NSString *)a4 fields:(NSDictionary *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = a1;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_20DFF7DC8(0, 0, v14, &unk_20E013570, v19);
}

+ (void)subscribePremiseToUsageData:(NSString *)a3 utilityID:(NSString *)a4 utilityHomeID:(NSString *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = a1;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_20DFF7DC8(0, 0, v14, &unk_20E013550, v19);
}

@end