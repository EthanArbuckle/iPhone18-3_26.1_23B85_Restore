@interface IMServiceReachabilityController
+ (IMServiceReachabilityController)sharedController;
- (IMServiceReachabilityController)init;
- (IMServiceReachabilityController)initWithDelegate:(id)delegate;
- (id)reachabilityContextForChat:(id)chat;
- (void)calculateServiceForSendingToChat:(id)chat completionBlock:(id)block;
- (void)calculateServiceForSendingToHandles:(id)handles withContext:(id)context completionBlock:(id)block;
@end

@implementation IMServiceReachabilityController

+ (IMServiceReachabilityController)sharedController
{
  if (qword_1EB2E4718 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB2E4720;

  return v3;
}

- (IMServiceReachabilityController)initWithDelegate:(id)delegate
{
  v5 = OBJC_IVAR___IMServiceReachabilityController_taskIDToTask;
  swift_unknownObjectRetain();
  *(&self->super.isa + v5) = sub_1A83EC56C(MEMORY[0x1E69E7CC0]);
  *(&self->super.isa + OBJC_IVAR___IMServiceReachabilityController_delegate) = delegate;
  v7.receiver = self;
  v7.super_class = IMServiceReachabilityController;
  return [(IMServiceReachabilityController *)&v7 init];
}

- (id)reachabilityContextForChat:(id)chat
{
  chatCopy = chat;
  selfCopy = self;
  v6 = sub_1A8455BD8(chatCopy);

  return v6;
}

- (void)calculateServiceForSendingToChat:(id)chat completionBlock:(id)block
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  chatCopy = chat;
  selfCopy = self;
  sub_1A84538C0(chatCopy, sub_1A8457AF4, v7);
}

- (void)calculateServiceForSendingToHandles:(id)handles withContext:(id)context completionBlock:(id)block
{
  v7 = _Block_copy(block);
  v8 = sub_1A84E5FFC();
  _Block_copy(v7);
  contextCopy = context;
  selfCopy = self;
  sub_1A8456A54(v8, contextCopy, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (IMServiceReachabilityController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end