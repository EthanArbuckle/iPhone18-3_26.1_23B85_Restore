@interface ManualAuthTaskDelegate
- (_TtC15CTLazuliSupport22ManualAuthTaskDelegate)init;
- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 didReceiveChallenge:(NSURLAuthenticationChallenge *)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didCreateTask:(id)a4;
@end

@implementation ManualAuthTaskDelegate

- (void)URLSession:(id)a3 didCreateTask:(id)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_task);
  *(&self->super.isa + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_task) = a4;
  v4 = a4;
}

- (void)URLSession:(NSURLSession *)a3 task:(NSURLSessionTask *)a4 didReceiveChallenge:(NSURLAuthenticationChallenge *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAE78, &qword_242739D30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
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