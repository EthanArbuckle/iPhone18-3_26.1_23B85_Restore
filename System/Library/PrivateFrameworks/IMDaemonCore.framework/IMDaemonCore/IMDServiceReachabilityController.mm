@interface IMDServiceReachabilityController
+ (IMDServiceReachabilityController)sharedController;
- (IMDServiceReachabilityController)init;
- (id)reachabilityContextForChat:(id)a3;
- (int64_t)sortOrderForServiceName:(id)a3;
- (void)calculateServiceForSendingToChat:(id)a3 accounts:(id)a4 completionBlock:(id)a5;
- (void)calculateServiceForSendingToHandles:(id)a3 accounts:(id)a4 context:(id)a5 completionBlock:(id)a6;
@end

@implementation IMDServiceReachabilityController

+ (IMDServiceReachabilityController)sharedController
{
  if (qword_27D8CCC28 != -1)
  {
    swift_once();
  }

  v3 = qword_27D8CEA70;

  return v3;
}

- (int64_t)sortOrderForServiceName:(id)a3
{
  sub_22B7DB6A8();
  v4 = self;
  v5 = sub_22B74CA5C();

  return v5;
}

- (id)reachabilityContextForChat:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_22B74CC5C(a3);

  return v7;
}

- (void)calculateServiceForSendingToChat:(id)a3 accounts:(id)a4 completionBlock:(id)a5
{
  v7 = _Block_copy(a5);
  sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
  v8 = sub_22B7DB918();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = self;
  sub_22B74BF9C(v10, v8, sub_22B74CEA8, v9);
}

- (void)calculateServiceForSendingToHandles:(id)a3 accounts:(id)a4 context:(id)a5 completionBlock:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_22B7DB918();
  sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
  v10 = sub_22B7DB918();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = a5;
  v13 = self;
  sub_22B74C1CC(v9, v10, v12, sub_22B74C9C0, v11);
}

- (IMDServiceReachabilityController)init
{
  *(&self->super.isa + OBJC_IVAR___IMDServiceReachabilityController_tasks) = MEMORY[0x277D84FA0];
  v3.receiver = self;
  v3.super_class = IMDServiceReachabilityController;
  return [(IMDServiceReachabilityController *)&v3 init];
}

@end