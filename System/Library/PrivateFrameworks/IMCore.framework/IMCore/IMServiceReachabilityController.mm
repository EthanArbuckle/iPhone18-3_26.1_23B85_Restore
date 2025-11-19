@interface IMServiceReachabilityController
+ (IMServiceReachabilityController)sharedController;
- (IMServiceReachabilityController)init;
- (IMServiceReachabilityController)initWithDelegate:(id)a3;
- (id)reachabilityContextForChat:(id)a3;
- (void)calculateServiceForSendingToChat:(id)a3 completionBlock:(id)a4;
- (void)calculateServiceForSendingToHandles:(id)a3 withContext:(id)a4 completionBlock:(id)a5;
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

- (IMServiceReachabilityController)initWithDelegate:(id)a3
{
  v5 = OBJC_IVAR___IMServiceReachabilityController_taskIDToTask;
  swift_unknownObjectRetain();
  *(&self->super.isa + v5) = sub_1A83EC56C(MEMORY[0x1E69E7CC0]);
  *(&self->super.isa + OBJC_IVAR___IMServiceReachabilityController_delegate) = a3;
  v7.receiver = self;
  v7.super_class = IMServiceReachabilityController;
  return [(IMServiceReachabilityController *)&v7 init];
}

- (id)reachabilityContextForChat:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1A8455BD8(v4);

  return v6;
}

- (void)calculateServiceForSendingToChat:(id)a3 completionBlock:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1A84538C0(v8, sub_1A8457AF4, v7);
}

- (void)calculateServiceForSendingToHandles:(id)a3 withContext:(id)a4 completionBlock:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1A84E5FFC();
  _Block_copy(v7);
  v9 = a4;
  v10 = self;
  sub_1A8456A54(v8, v9, v10, v7);
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