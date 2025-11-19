@interface IMDTrustKitDecisioningManager
+ (IMDTrustKitDecisioningManager)sharedManager;
- (BOOL)isJunkFilteringEnabled;
- (BOOL)shouldSkipTrustKitDecisioningForChat:(id)a3 sender:(id)a4;
- (IMDTrustKitDecisioningManager)init;
- (IMDTrustKitDecisioningManager)initWithSyncedSettingsManager:(id)a3 spamFilterHelper:(id)a4;
- (void)requestDecisionForSender:(NSString *)a3 service:(NSString *)a4 trustIndicator:(NSString *)a5 messageBody:(NSAttributedString *)a6 countryCode:(NSString *)a7 requestReason:(int64_t)a8 containsOneTimeCode:(BOOL)a9 completionHandler:(id)a10;
@end

@implementation IMDTrustKitDecisioningManager

+ (IMDTrustKitDecisioningManager)sharedManager
{
  if (qword_28141F0C0 != -1)
  {
    swift_once();
  }

  v3 = qword_2814225C8;

  return v3;
}

- (IMDTrustKitDecisioningManager)initWithSyncedSettingsManager:(id)a3 spamFilterHelper:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return IMDTrustKitDecisioningManager.init(syncedSettingsManager:spamFilterHelper:)(a3, a4);
}

- (BOOL)isJunkFilteringEnabled
{
  v2 = self;
  v3 = sub_22B77F22C();

  return v3 & 1;
}

- (BOOL)shouldSkipTrustKitDecisioningForChat:(id)a3 sender:(id)a4
{
  sub_22B7DB6A8();
  v6 = a3;
  v7 = self;
  LOBYTE(a3) = sub_22B77F408(a3);

  return a3 & 1;
}

- (void)requestDecisionForSender:(NSString *)a3 service:(NSString *)a4 trustIndicator:(NSString *)a5 messageBody:(NSAttributedString *)a6 countryCode:(NSString *)a7 requestReason:(int64_t)a8 containsOneTimeCode:(BOOL)a9 completionHandler:(id)a10
{
  v32 = a8;
  v33 = a3;
  v16 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - v18;
  v20 = _Block_copy(a10);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  v22 = v32;
  *(v21 + 48) = a7;
  *(v21 + 56) = v22;
  *(v21 + 64) = a9;
  *(v21 + 72) = v20;
  *(v21 + 80) = self;
  v23 = sub_22B7DBA58();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_22B7FBBE0;
  v24[5] = v21;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22B7F8D08;
  v25[5] = v24;
  v26 = v33;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = self;
  sub_22B7C0EFC(0, 0, v19, &unk_22B7F8D10, v25);
}

- (IMDTrustKitDecisioningManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end