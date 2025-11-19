@interface UtilitySubscriptionService
+ (void)fetchSubscriptionDetailsWithAccessToken:(NSString *)a3 subscriptionID:(NSString *)a4 utilityID:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7;
+ (void)renewAccessTokenWithRefreshToken:(NSString *)a3 utilityID:(NSString *)a4 :(NSURLSession *)a5 completionHandler:(id)a6;
+ (void)renewAuthorizationTokenWithUtilityID:(NSString *)a3 authorizationToken:(NSString *)a4 accessToken:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7;
+ (void)resendHistoricalDataWithAccessToken:(NSString *)a3 subscriptionID:(NSString *)a4 utilityID:(NSString *)a5 start:(NSDate *)a6 end:(NSDate *)a7 :(NSURLSession *)a8 completionHandler:(id)a9;
+ (void)resendHistoricalDataWithAuthorizationToken:(NSString *)a3 subscriptionID:(NSString *)a4 utilityID:(NSString *)a5 start:(NSDate *)a6 end:(NSDate *)a7 :(NSURLSession *)a8 completionHandler:(id)a9;
+ (void)revokeSubscriptionWithAccessToken:(NSString *)a3 subscriptionID:(NSString *)a4 utilityID:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7;
+ (void)revokeSubscriptionWithAuthorizationToken:(NSString *)a3 subscriptionID:(NSString *)a4 utilityID:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7;
- (_TtC19HomeUtilityServices26UtilitySubscriptionService)init;
- (_TtC19HomeUtilityServices26UtilitySubscriptionService)initWithConfiguration:(id)a3;
- (void)authorizeAccountWithTAFWithFields:(NSDictionary *)a3 :(NSURLSession *)a4 completionHandler:(id)a5;
- (void)createAccessToken:(NSString *)a3 :(NSURLSession *)a4 completionHandler:(id)a5;
- (void)createUtilitySubscriptionWithServiceLocation:(_TtC19HomeUtilityServices22UtilityServiceLocation *)a3 accessToken:(NSString *)a4 siteID:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7;
- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)a3 accessToken:(NSString *)a4 :(NSURLSession *)a5 completionHandler:(id)a6;
- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)a3 accessToken:(NSString *)a4 siteID:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7;
- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)a3 accessToken:(NSString *)a4 zoneName:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7;
- (void)fetchServiceLocations:(NSString *)a3 :(NSURLSession *)a4 completionHandler:(id)a5;
- (void)initiateOTPForAccountForFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)a3 :(NSURLSession *)a4 completionHandler:(id)a5;
- (void)verifyOTPForAccountWithFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)a3 oneTimePasscode:(NSString *)a4 :(NSURLSession *)a5 completionHandler:(id)a6;
@end

@implementation UtilitySubscriptionService

- (_TtC19HomeUtilityServices26UtilitySubscriptionService)initWithConfiguration:(id)a3
{
  v5 = sub_20E008D04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (self + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID);
  v11 = a3;
  sub_20E008CF4();
  v12 = sub_20E008CE4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *v10 = v12;
  v10[1] = v14;
  *(&self->super.isa + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) = v11;
  v15 = type metadata accessor for UtilitySubscriptionService();
  v17.receiver = self;
  v17.super_class = v15;
  return [(UtilitySubscriptionService *)&v17 init];
}

- (void)authorizeAccountWithTAFWithFields:(NSDictionary *)a3 :(NSURLSession *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_20E0094C4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00F768;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00F770;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00F778, v17);
}

- (void)initiateOTPForAccountForFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)a3 :(NSURLSession *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_20E0094C4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00F748;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00F750;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00F758, v17);
}

- (void)createAccessToken:(NSString *)a3 :(NSURLSession *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_20E0094C4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00F728;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00F730;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00F738, v17);
}

- (void)fetchServiceLocations:(NSString *)a3 :(NSURLSession *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_20E0094C4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_20E00F708;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_20E00F710;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00F718, v17);
}

- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)a3 accessToken:(NSString *)a4 :(NSURLSession *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_20E0094C4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E00F6F8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E00C080;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_20DFF7DC8(0, 0, v14, &unk_20E00B210, v19);
}

+ (void)renewAccessTokenWithRefreshToken:(NSString *)a3 utilityID:(NSString *)a4 :(NSURLSession *)a5 completionHandler:(id)a6
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
  v18[4] = &unk_20E00F810;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E00F818;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_20DFF7DC8(0, 0, v14, &unk_20E00F820, v19);
}

+ (void)fetchSubscriptionDetailsWithAccessToken:(NSString *)a3 subscriptionID:(NSString *)a4 utilityID:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = a1;
  v19 = sub_20E0094C4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E00F7F0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_20E00F7F8;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  sub_20DFF7DC8(0, 0, v16, &unk_20E00F800, v21);
}

+ (void)renewAuthorizationTokenWithUtilityID:(NSString *)a3 authorizationToken:(NSString *)a4 accessToken:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = a1;
  v19 = sub_20E0094C4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E00F7D0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_20E00F7D8;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  sub_20DFF7DC8(0, 0, v16, &unk_20E00F7E0, v21);
}

+ (void)revokeSubscriptionWithAuthorizationToken:(NSString *)a3 subscriptionID:(NSString *)a4 utilityID:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = a1;
  v19 = sub_20E0094C4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E00F7B0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_20E00F7B8;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  sub_20DFF7DC8(0, 0, v16, &unk_20E00F7C0, v21);
}

+ (void)resendHistoricalDataWithAuthorizationToken:(NSString *)a3 subscriptionID:(NSString *)a4 utilityID:(NSString *)a5 start:(NSDate *)a6 end:(NSDate *)a7 :(NSURLSession *)a8 completionHandler:(id)a9
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v31 - v18;
  v20 = _Block_copy(a9);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
  v21[8] = v20;
  v21[9] = a1;
  v22 = sub_20E0094C4();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_20E00F788;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_20E00F790;
  v24[5] = v23;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  sub_20DFF7DC8(0, 0, v19, &unk_20E00F798, v24);
}

- (_TtC19HomeUtilityServices26UtilitySubscriptionService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)createUtilitySubscriptionWithServiceLocation:(_TtC19HomeUtilityServices22UtilityServiceLocation *)a3 accessToken:(NSString *)a4 siteID:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_20E0094C4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E013520;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_20E013528;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = self;
  sub_20DFF7DC8(0, 0, v16, &unk_20E013530, v21);
}

- (void)verifyOTPForAccountWithFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)a3 oneTimePasscode:(NSString *)a4 :(NSURLSession *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_20E0094C4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_20E013500;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20E013508;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_20DFF7DC8(0, 0, v14, &unk_20E013510, v19);
}

- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)a3 accessToken:(NSString *)a4 siteID:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_20E0094C4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E0134E0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_20E0134E8;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = self;
  sub_20DFF7DC8(0, 0, v16, &unk_20E0134F0, v21);
}

- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)a3 accessToken:(NSString *)a4 zoneName:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_20E0094C4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E0134C0;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_20E0134C8;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = self;
  sub_20DFF7DC8(0, 0, v16, &unk_20E0134D0, v21);
}

+ (void)resendHistoricalDataWithAccessToken:(NSString *)a3 subscriptionID:(NSString *)a4 utilityID:(NSString *)a5 start:(NSDate *)a6 end:(NSDate *)a7 :(NSURLSession *)a8 completionHandler:(id)a9
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v31 - v18;
  v20 = _Block_copy(a9);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
  v21[8] = v20;
  v21[9] = a1;
  v22 = sub_20E0094C4();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_20E0134A0;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_20E0134A8;
  v24[5] = v23;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  sub_20DFF7DC8(0, 0, v19, &unk_20E0134B0, v24);
}

+ (void)revokeSubscriptionWithAccessToken:(NSString *)a3 subscriptionID:(NSString *)a4 utilityID:(NSString *)a5 :(NSURLSession *)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = a1;
  v19 = sub_20E0094C4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20E013468;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_20E00C080;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  sub_20DFF7DC8(0, 0, v16, &unk_20E00B210, v21);
}

@end