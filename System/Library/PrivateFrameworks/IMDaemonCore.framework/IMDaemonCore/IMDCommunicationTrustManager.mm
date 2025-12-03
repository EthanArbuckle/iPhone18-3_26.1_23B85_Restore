@interface IMDCommunicationTrustManager
+ (IMDCommunicationTrustManager)sharedManager;
- (IMDCommunicationTrustManager)init;
- (void)requestDecisionForSender:(NSString *)sender completion:(id)completion;
@end

@implementation IMDCommunicationTrustManager

+ (IMDCommunicationTrustManager)sharedManager
{
  if (qword_27D8CCBF8 != -1)
  {
    swift_once();
  }

  v3 = qword_27D8D4880;

  return v3;
}

- (void)requestDecisionForSender:(NSString *)sender completion:(id)completion
{
  v7 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = sender;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22B7DBA58();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B7F9388;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B7F8D08;
  v15[5] = v14;
  senderCopy = sender;
  selfCopy = self;
  sub_22B7C0EFC(0, 0, v10, &unk_22B7F8D10, v15);
}

- (IMDCommunicationTrustManager)init
{
  v3.receiver = self;
  v3.super_class = IMDCommunicationTrustManager;
  return [(IMDCommunicationTrustManager *)&v3 init];
}

@end