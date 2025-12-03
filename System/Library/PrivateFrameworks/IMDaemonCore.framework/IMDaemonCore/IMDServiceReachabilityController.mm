@interface IMDServiceReachabilityController
+ (IMDServiceReachabilityController)sharedController;
- (IMDServiceReachabilityController)init;
- (id)reachabilityContextForChat:(id)chat;
- (int64_t)sortOrderForServiceName:(id)name;
- (void)calculateServiceForSendingToChat:(id)chat accounts:(id)accounts completionBlock:(id)block;
- (void)calculateServiceForSendingToHandles:(id)handles accounts:(id)accounts context:(id)context completionBlock:(id)block;
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

- (int64_t)sortOrderForServiceName:(id)name
{
  sub_22B7DB6A8();
  selfCopy = self;
  v5 = sub_22B74CA5C();

  return v5;
}

- (id)reachabilityContextForChat:(id)chat
{
  chatCopy = chat;
  selfCopy = self;
  v7 = sub_22B74CC5C(chat);

  return v7;
}

- (void)calculateServiceForSendingToChat:(id)chat accounts:(id)accounts completionBlock:(id)block
{
  v7 = _Block_copy(block);
  sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
  v8 = sub_22B7DB918();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  chatCopy = chat;
  selfCopy = self;
  sub_22B74BF9C(chatCopy, v8, sub_22B74CEA8, v9);
}

- (void)calculateServiceForSendingToHandles:(id)handles accounts:(id)accounts context:(id)context completionBlock:(id)block
{
  v8 = _Block_copy(block);
  v9 = sub_22B7DB918();
  sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
  v10 = sub_22B7DB918();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  contextCopy = context;
  selfCopy = self;
  sub_22B74C1CC(v9, v10, contextCopy, sub_22B74C9C0, v11);
}

- (IMDServiceReachabilityController)init
{
  *(&self->super.isa + OBJC_IVAR___IMDServiceReachabilityController_tasks) = MEMORY[0x277D84FA0];
  v3.receiver = self;
  v3.super_class = IMDServiceReachabilityController;
  return [(IMDServiceReachabilityController *)&v3 init];
}

@end