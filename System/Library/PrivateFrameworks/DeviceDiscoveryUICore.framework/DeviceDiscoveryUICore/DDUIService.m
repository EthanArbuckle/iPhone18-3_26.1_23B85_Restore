@interface DDUIService
- (_TtC21DeviceDiscoveryUICore11DDUIService)init;
- (void)startNearFieldServerWithLocalIdentity:(OS_sec_identity *)a3 listenerUUID:(NSUUID *)a4 remotePublicKey:(NSData *)a5 contactID:(NSString *)a6 deviceModel:(NSString *)a7 deviceName:(NSString *)a8 completionHandler:(id)a9;
- (void)startServerWithCompletionHandler:(id)a3;
- (void)stopNearFieldServer;
@end

@implementation DDUIService

- (void)startServerWithCompletionHandler:(id)a3
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB826F0, &qword_230F3DD10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_230F39748();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_230F3C810;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_230F3C818;
  v12[5] = v11;
  v13 = self;
  sub_230F17254(0, 0, v7, &unk_230F3C820, v12);
}

- (void)startNearFieldServerWithLocalIdentity:(OS_sec_identity *)a3 listenerUUID:(NSUUID *)a4 remotePublicKey:(NSData *)a5 contactID:(NSString *)a6 deviceModel:(NSString *)a7 deviceName:(NSString *)a8 completionHandler:(id)a9
{
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB826F0, &qword_230F3DD10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v30 - v17;
  v19 = _Block_copy(a9);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
  v20[7] = a8;
  v20[8] = v19;
  v20[9] = self;
  v21 = sub_230F39748();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_230F3C7C8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_230F3C7D8;
  v23[5] = v22;
  swift_unknownObjectRetain();
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = self;
  sub_230F17254(0, 0, v18, &unk_230F3C7E8, v23);
}

- (void)stopNearFieldServer
{
  v2 = self;
  DDUIService.stopNearFieldServer()();
}

- (_TtC21DeviceDiscoveryUICore11DDUIService)init
{
  *(&self->super.isa + OBJC_IVAR____TtC21DeviceDiscoveryUICore11DDUIService_serverTask) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC21DeviceDiscoveryUICore11DDUIService_nearfieldServerTask) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DDUIService();
  return [(DDUIService *)&v3 init];
}

@end