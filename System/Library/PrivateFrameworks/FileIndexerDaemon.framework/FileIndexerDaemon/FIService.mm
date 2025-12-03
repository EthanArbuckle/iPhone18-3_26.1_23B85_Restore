@interface FIService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC17FileIndexerDaemon9FIService)init;
- (void)getItemDelayInScanWithCompletionHandler:(id)handler;
- (void)getRootsWithCompletionHandler:(id)handler;
- (void)queueScanFor:(NSURL *)for completionHandler:(id)handler;
- (void)scanStatusWithCompletionHandler:(id)handler;
- (void)setItemDelayInScan:(int64_t)scan completionHandler:(id)handler;
- (void)startScanWithCompletionHandler:(id)handler;
- (void)stopScanWithCompletionHandler:(id)handler;
@end

@implementation FIService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_24ABA26EC(connectionCopy);

  return v9 & 1;
}

- (void)getRootsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24ABAC09C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24ABAF3C0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24ABAF3C8;
  v13[5] = v12;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v8, &unk_24ABAF3D0, v13);
}

- (void)queueScanFor:(NSURL *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24ABAC09C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24ABAF3A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24ABAF3A8;
  v15[5] = v14;
  forCopy = for;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v10, &unk_24ABAF3B0, v15);
}

- (void)startScanWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24ABAC09C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24ABAF380;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24ABAF388;
  v13[5] = v12;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v8, &unk_24ABAF390, v13);
}

- (void)stopScanWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24ABAC09C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24ABAF360;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24ABAF368;
  v13[5] = v12;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v8, &unk_24ABAF370, v13);
}

- (void)scanStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24ABAC09C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24ABAF340;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24ABAF348;
  v13[5] = v12;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v8, &unk_24ABAF350, v13);
}

- (void)getItemDelayInScanWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24ABAC09C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24ABAF320;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24ABAF328;
  v13[5] = v12;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v8, &unk_24ABAF330, v13);
}

- (void)setItemDelayInScan:(int64_t)scan completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = scan;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24ABAC09C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24ABAF2D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24ABAF2E8;
  v15[5] = v14;
  selfCopy = self;
  sub_24ABA10BC(0, 0, v10, &unk_24ABAF2F8, v15);
}

- (_TtC17FileIndexerDaemon9FIService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end