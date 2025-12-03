@interface ManualAuthTaskDelegate
- (_TtC15CTLazuliSupport22ManualAuthTaskDelegate)init;
- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session didCreateTask:(id)task;
@end

@implementation ManualAuthTaskDelegate

- (void)URLSession:(id)session didCreateTask:(id)task
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_task);
  *(&self->super.isa + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_task) = task;
  taskCopy = task;
}

- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAE78, &qword_242739D30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = session;
  v16[3] = task;
  v16[4] = challenge;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_242732714();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_242738DD8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_242737A50;
  v19[5] = v18;
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  selfCopy = self;
  sub_2427160C0(0, 0, v14, &unk_242737A58, v19);
}

- (_TtC15CTLazuliSupport22ManualAuthTaskDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_task) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(ManualAuthTaskDelegate *)&v5 init];
}

@end