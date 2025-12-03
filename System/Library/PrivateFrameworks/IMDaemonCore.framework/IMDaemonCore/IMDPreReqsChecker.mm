@interface IMDPreReqsChecker
- (_TtC12IMDaemonCore17IMDPreReqsChecker)init;
- (void)verifyAllPreReqsWithRequireEnablement:(BOOL)enablement completionHandler:(id)handler;
@end

@implementation IMDPreReqsChecker

- (void)verifyAllPreReqsWithRequireEnablement:(BOOL)enablement completionHandler:(id)handler
{
  v7 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = enablement;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_22B7DBA58();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22B7FA7A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22B7F8D08;
  v15[5] = v14;
  selfCopy = self;
  sub_22B7C0EFC(0, 0, v10, &unk_22B7F8D10, v15);
}

- (_TtC12IMDaemonCore17IMDPreReqsChecker)init
{
  sub_22B7DB288();
  sub_22B7DB2A8();
  v4.receiver = self;
  v4.super_class = type metadata accessor for IMDPreReqsChecker(0);
  return [(IMDPreReqsChecker *)&v4 init];
}

@end