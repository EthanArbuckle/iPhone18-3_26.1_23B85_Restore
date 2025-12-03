@interface UtilitySubscriptionService
+ (void)fetchSubscriptionDetailsWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler;
+ (void)renewAccessTokenWithRefreshToken:(NSString *)token utilityID:(NSString *)d :(NSURLSession *)a5 completionHandler:(id)handler;
+ (void)renewAuthorizationTokenWithUtilityID:(NSString *)d authorizationToken:(NSString *)token accessToken:(NSString *)accessToken :(NSURLSession *)a6 completionHandler:(id)handler;
+ (void)resendHistoricalDataWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD start:(NSDate *)start end:(NSDate *)end :(NSURLSession *)a8 completionHandler:(id)handler;
+ (void)resendHistoricalDataWithAuthorizationToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD start:(NSDate *)start end:(NSDate *)end :(NSURLSession *)a8 completionHandler:(id)handler;
+ (void)revokeSubscriptionWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler;
+ (void)revokeSubscriptionWithAuthorizationToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler;
- (_TtC19HomeUtilityServices26UtilitySubscriptionService)init;
- (_TtC19HomeUtilityServices26UtilitySubscriptionService)initWithConfiguration:(id)configuration;
- (void)authorizeAccountWithTAFWithFields:(NSDictionary *)fields :(NSURLSession *)a4 completionHandler:(id)handler;
- (void)createAccessToken:(NSString *)token :(NSURLSession *)a4 completionHandler:(id)handler;
- (void)createUtilitySubscriptionWithServiceLocation:(_TtC19HomeUtilityServices22UtilityServiceLocation *)location accessToken:(NSString *)token siteID:(NSString *)d :(NSURLSession *)a6 completionHandler:(id)handler;
- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token :(NSURLSession *)a5 completionHandler:(id)handler;
- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token siteID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler;
- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token zoneName:(NSString *)name :(NSURLSession *)a6 completionHandler:(id)handler;
- (void)fetchServiceLocations:(NSString *)locations :(NSURLSession *)a4 completionHandler:(id)handler;
- (void)initiateOTPForAccountForFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)factor :(NSURLSession *)a4 completionHandler:(id)handler;
- (void)verifyOTPForAccountWithFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)factor oneTimePasscode:(NSString *)passcode :(NSURLSession *)a5 completionHandler:(id)handler;
@end

@implementation UtilitySubscriptionService

- (_TtC19HomeUtilityServices26UtilitySubscriptionService)initWithConfiguration:(id)configuration
{
  v5 = sub_20E008D04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (self + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_sessionID);
  configurationCopy = configuration;
  sub_20E008CF4();
  v12 = sub_20E008CE4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *v10 = v12;
  v10[1] = v14;
  *(&self->super.isa + OBJC_IVAR____TtC19HomeUtilityServices26UtilitySubscriptionService_configuration) = configurationCopy;
  v15 = type metadata accessor for UtilitySubscriptionService();
  v17.receiver = self;
  v17.super_class = v15;
  return [(UtilitySubscriptionService *)&v17 init];
}

- (void)authorizeAccountWithTAFWithFields:(NSDictionary *)fields :(NSURLSession *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = fields;
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
  fieldsCopy = fields;
  v19 = a4;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00F778, v17);
}

- (void)initiateOTPForAccountForFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)factor :(NSURLSession *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = factor;
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
  factorCopy = factor;
  v19 = a4;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00F758, v17);
}

- (void)createAccessToken:(NSString *)token :(NSURLSession *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = token;
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
  tokenCopy = token;
  v19 = a4;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00F738, v17);
}

- (void)fetchServiceLocations:(NSString *)locations :(NSURLSession *)a4 completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = locations;
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
  locationsCopy = locations;
  v19 = a4;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v12, &unk_20E00F718, v17);
}

- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token :(NSURLSession *)a5 completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = d;
  v16[3] = token;
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
  dCopy = d;
  tokenCopy = token;
  v22 = a5;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v14, &unk_20E00B210, v19);
}

+ (void)renewAccessTokenWithRefreshToken:(NSString *)token utilityID:(NSString *)d :(NSURLSession *)a5 completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = token;
  v16[3] = d;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
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
  tokenCopy = token;
  dCopy = d;
  v22 = a5;
  sub_20DFF7DC8(0, 0, v14, &unk_20E00F820, v19);
}

+ (void)fetchSubscriptionDetailsWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = token;
  v18[3] = d;
  v18[4] = iD;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
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
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  v25 = a6;
  sub_20DFF7DC8(0, 0, v16, &unk_20E00F800, v21);
}

+ (void)renewAuthorizationTokenWithUtilityID:(NSString *)d authorizationToken:(NSString *)token accessToken:(NSString *)accessToken :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = d;
  v18[3] = token;
  v18[4] = accessToken;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
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
  dCopy = d;
  tokenCopy = token;
  accessTokenCopy = accessToken;
  v25 = a6;
  sub_20DFF7DC8(0, 0, v16, &unk_20E00F7E0, v21);
}

+ (void)revokeSubscriptionWithAuthorizationToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = token;
  v18[3] = d;
  v18[4] = iD;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
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
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  v25 = a6;
  sub_20DFF7DC8(0, 0, v16, &unk_20E00F7C0, v21);
}

+ (void)resendHistoricalDataWithAuthorizationToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD start:(NSDate *)start end:(NSDate *)end :(NSURLSession *)a8 completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v31 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = token;
  v21[3] = d;
  v21[4] = iD;
  v21[5] = start;
  v21[6] = end;
  v21[7] = a8;
  v21[8] = v20;
  v21[9] = self;
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
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  startCopy = start;
  endCopy = end;
  v30 = a8;
  sub_20DFF7DC8(0, 0, v19, &unk_20E00F798, v24);
}

- (_TtC19HomeUtilityServices26UtilitySubscriptionService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)createUtilitySubscriptionWithServiceLocation:(_TtC19HomeUtilityServices22UtilityServiceLocation *)location accessToken:(NSString *)token siteID:(NSString *)d :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = location;
  v18[3] = token;
  v18[4] = d;
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
  locationCopy = location;
  tokenCopy = token;
  dCopy = d;
  v25 = a6;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v16, &unk_20E013530, v21);
}

- (void)verifyOTPForAccountWithFactor:(_TtC19HomeUtilityServices21TAFVerificationFactor *)factor oneTimePasscode:(NSString *)passcode :(NSURLSession *)a5 completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = factor;
  v16[3] = passcode;
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
  factorCopy = factor;
  passcodeCopy = passcode;
  v22 = a5;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v14, &unk_20E013510, v19);
}

- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token siteID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = d;
  v18[3] = token;
  v18[4] = iD;
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
  dCopy = d;
  tokenCopy = token;
  iDCopy = iD;
  v25 = a6;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v16, &unk_20E0134F0, v21);
}

- (void)createUtilitySubscriptionWithServiceLocationID:(NSString *)d accessToken:(NSString *)token zoneName:(NSString *)name :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = d;
  v18[3] = token;
  v18[4] = name;
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
  dCopy = d;
  tokenCopy = token;
  nameCopy = name;
  v25 = a6;
  selfCopy = self;
  sub_20DFF7DC8(0, 0, v16, &unk_20E0134D0, v21);
}

+ (void)resendHistoricalDataWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD start:(NSDate *)start end:(NSDate *)end :(NSURLSession *)a8 completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v31 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  v21[2] = token;
  v21[3] = d;
  v21[4] = iD;
  v21[5] = start;
  v21[6] = end;
  v21[7] = a8;
  v21[8] = v20;
  v21[9] = self;
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
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  startCopy = start;
  endCopy = end;
  v30 = a8;
  sub_20DFF7DC8(0, 0, v19, &unk_20E0134B0, v24);
}

+ (void)revokeSubscriptionWithAccessToken:(NSString *)token subscriptionID:(NSString *)d utilityID:(NSString *)iD :(NSURLSession *)a6 completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _Block_copy(handler);
  v18 = swift_allocObject();
  v18[2] = token;
  v18[3] = d;
  v18[4] = iD;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
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
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  v25 = a6;
  sub_20DFF7DC8(0, 0, v16, &unk_20E00B210, v21);
}

@end