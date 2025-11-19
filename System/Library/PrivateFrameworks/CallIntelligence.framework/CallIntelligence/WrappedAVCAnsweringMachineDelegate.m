@interface WrappedAVCAnsweringMachineDelegate
- (_TtC16CallIntelligence34WrappedAVCAnsweringMachineDelegate)init;
- (void)answeringMachine:(id)a3 didFinishAnnouncement:(BOOL)a4 error:(id)a5;
- (void)answeringMachine:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)answeringMachine:(id)a3 didStop:(BOOL)a4 messageRecordingURL:(id)a5 error:(id)a6;
- (void)serverDidDisconnectForAnsweringMachine:;
@end

@implementation WrappedAVCAnsweringMachineDelegate

- (_TtC16CallIntelligence34WrappedAVCAnsweringMachineDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC16CallIntelligence34WrappedAVCAnsweringMachineDelegate_onAnsweringMachineDidFinishAnnouncement);
  *v4 = nullsub_1;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(WrappedAVCAnsweringMachineDelegate *)&v6 init];
}

- (void)answeringMachine:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1D2EB95FC(a4, a5);
}

- (void)answeringMachine:(id)a3 didFinishAnnouncement:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  sub_1D2EB980C(a4, a5);
}

- (void)answeringMachine:(id)a3 didStop:(BOOL)a4 messageRecordingURL:(id)a5 error:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7393B0, &unk_1D2EF28C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  if (a5)
  {
    sub_1D2EE3D48();
    v15 = sub_1D2EE3D88();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = sub_1D2EE3D88();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  v17 = a3;
  v18 = a6;
  v19 = self;
  sub_1D2EB9A30(a4, v14, a6);

  sub_1D2E8A91C(v14);
}

- (void)serverDidDisconnectForAnsweringMachine:
{
  if (qword_1EDECFF10 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2EE4618();
  __swift_project_value_buffer(v0, qword_1EDED2DB8);
  oslog = sub_1D2EE45F8();
  v1 = sub_1D2EE4DD8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1D2E685B0(0xD000000000000019, 0x80000001D2EE7CC0, &v5);
    _os_log_impl(&dword_1D2E46000, oslog, v1, "%s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x1D38AF660](v3, -1, -1);
    MEMORY[0x1D38AF660](v2, -1, -1);
  }
}

@end