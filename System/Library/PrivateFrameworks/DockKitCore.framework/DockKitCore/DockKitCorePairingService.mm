@interface DockKitCorePairingService
- (void)dealloc;
- (void)pairingStatusWithInfo:(id)a3 state:(int64_t)a4 metadata:(id)a5 error:(id)a6;
- (void)setSetupPayloadWithUri:(NSURL *)a3 completionHandler:(id)a4;
@end

@implementation DockKitCorePairingService

- (void)dealloc
{
  swift_unknownObjectWeakAssign();
  v4.receiver = self;
  v4.super_class = type metadata accessor for DockKitCorePairingService();
  v3 = self;
  [(DockKitCorePairingService *)&v4 dealloc];
}

- (void)setSetupPayloadWithUri:(NSURL *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2246336C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2246336D0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_224616E14(0, 0, v9, &unk_22462F560, v14);
}

- (void)pairingStatusWithInfo:(id)a3 state:(int64_t)a4 metadata:(id)a5 error:(id)a6
{
  sub_224627CD8();
  sub_224627C58();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = self;
  v10 = a6;
  if (Strong && (swift_unknownObjectRelease(), (v11 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v12 = v11;
    v13 = sub_224627CB8();
    v14 = sub_224627C48();
    [v12 pairingStatusWithInfo:v13 state:a4 metadata:v14 error:v10];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

@end