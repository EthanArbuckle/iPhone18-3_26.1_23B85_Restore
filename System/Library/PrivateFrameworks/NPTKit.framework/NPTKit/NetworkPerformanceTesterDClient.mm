@interface NetworkPerformanceTesterDClient
- (void)getPrivilegedFileHandleForPacketCaptureWithCompletionHandler:(id)handler;
- (void)getPrivilegedFileHandleForPath:(NSString *)path completionHandler:(id)handler;
- (void)startLocalPerformanceTestWith:(id)with completionHandler:(id)handler;
- (void)stopLocalPerformanceTest:(id)test;
- (void)testServiceWithArguments:(NSArray *)arguments completionHandler:(id)handler;
@end

@implementation NetworkPerformanceTesterDClient

- (void)testServiceWithArguments:(NSArray *)arguments completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = arguments;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_233470D04();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_233476E70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_233476E78;
  v14[5] = v13;
  argumentsCopy = arguments;

  sub_233469230(0, 0, v9, &unk_233476E80, v14);
}

- (void)getPrivilegedFileHandleForPath:(NSString *)path completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = path;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_233470D04();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_233476E50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_233476E58;
  v14[5] = v13;
  pathCopy = path;

  sub_233469230(0, 0, v9, &unk_233476E60, v14);
}

- (void)getPrivilegedFileHandleForPacketCaptureWithCompletionHandler:(id)handler
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE0D810, &qword_233476B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_233470D04();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_233476E08;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_233476E18;
  v12[5] = v11;

  sub_233469230(0, 0, v7, &unk_233476E28, v12);
}

- (void)startLocalPerformanceTestWith:(id)with completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *self->server;
  v11[4] = sub_233468E20;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_233467918;
  v11[3] = &block_descriptor_38;
  v9 = _Block_copy(v11);
  withCopy = with;

  [v8 startLocalPerformanceTestWith:withCopy completionHandler:v9];

  _Block_release(v9);
}

- (void)stopLocalPerformanceTest:(id)test
{
  v4 = _Block_copy(test);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *self->server;
  v8[4] = sub_233468E0C;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_233467C30;
  v8[3] = &block_descriptor_32;
  v7 = _Block_copy(v8);

  [v6 stopLocalPerformanceTest_];

  _Block_release(v7);
}

@end