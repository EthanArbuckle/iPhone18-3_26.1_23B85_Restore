@interface IMDTrustKitDecisioningManager
+ (IMDTrustKitDecisioningManager)sharedManager;
- (BOOL)isJunkFilteringEnabled;
- (BOOL)shouldSkipTrustKitDecisioningForChat:(id)chat sender:(id)sender;
- (IMDTrustKitDecisioningManager)init;
- (IMDTrustKitDecisioningManager)initWithSyncedSettingsManager:(id)manager spamFilterHelper:(id)helper;
- (void)requestDecisionForSender:(NSString *)sender service:(NSString *)service trustIndicator:(NSString *)indicator messageBody:(NSAttributedString *)body countryCode:(NSString *)code requestReason:(int64_t)reason containsOneTimeCode:(BOOL)timeCode completionHandler:(id)self0;
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

- (IMDTrustKitDecisioningManager)initWithSyncedSettingsManager:(id)manager spamFilterHelper:(id)helper
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return IMDTrustKitDecisioningManager.init(syncedSettingsManager:spamFilterHelper:)(manager, helper);
}

- (BOOL)isJunkFilteringEnabled
{
  selfCopy = self;
  v3 = sub_22B77F22C();

  return v3 & 1;
}

- (BOOL)shouldSkipTrustKitDecisioningForChat:(id)chat sender:(id)sender
{
  sub_22B7DB6A8();
  chatCopy = chat;
  selfCopy = self;
  LOBYTE(chat) = sub_22B77F408(chat);

  return chat & 1;
}

- (void)requestDecisionForSender:(NSString *)sender service:(NSString *)service trustIndicator:(NSString *)indicator messageBody:(NSAttributedString *)body countryCode:(NSString *)code requestReason:(int64_t)reason containsOneTimeCode:(BOOL)timeCode completionHandler:(id)self0
{
  reasonCopy = reason;
  senderCopy = sender;
  v16 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &reasonCopy - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  *(v21 + 16) = sender;
  *(v21 + 24) = service;
  *(v21 + 32) = indicator;
  *(v21 + 40) = body;
  v22 = reasonCopy;
  *(v21 + 48) = code;
  *(v21 + 56) = v22;
  *(v21 + 64) = timeCode;
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
  v26 = senderCopy;
  serviceCopy = service;
  indicatorCopy = indicator;
  bodyCopy = body;
  codeCopy = code;
  selfCopy = self;
  sub_22B7C0EFC(0, 0, v19, &unk_22B7F8D10, v25);
}

- (IMDTrustKitDecisioningManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end