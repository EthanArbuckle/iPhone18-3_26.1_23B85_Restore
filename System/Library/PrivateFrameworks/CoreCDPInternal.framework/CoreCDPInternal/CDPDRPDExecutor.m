@interface CDPDRPDExecutor
- (CDPDRPDExecutor)init;
- (CDPDRPDExecutor)initWithSbDeleter:(id)a3 ledger:(id)a4 circleControl:(id)a5 cdpContext:(id)a6;
- (void)performRPDWithCompletionHandler:(id)a3;
@end

@implementation CDPDRPDExecutor

- (CDPDRPDExecutor)initWithSbDeleter:(id)a3 ledger:(id)a4 circleControl:(id)a5 cdpContext:(id)a6
{
  *(&self->super.isa + OBJC_IVAR___CDPDRPDExecutor_sbDeleter) = a3;
  *(&self->super.isa + OBJC_IVAR___CDPDRPDExecutor_ledger) = a4;
  *(&self->super.isa + OBJC_IVAR___CDPDRPDExecutor_circleControl) = a5;
  *(&self->super.isa + OBJC_IVAR___CDPDRPDExecutor_cdpContext) = a6;
  v9.receiver = self;
  v9.super_class = CDPDRPDExecutor;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = a6;
  return [(CDPDRPDExecutor *)&v9 init];
}

- (void)performRPDWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE0C2D0, &qword_245199F90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_245193974();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_245199EF0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245199FB0;
  v13[5] = v12;
  v14 = self;
  sub_24517BC80(0, 0, v8, &unk_245199FC0, v13);
}

- (CDPDRPDExecutor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end