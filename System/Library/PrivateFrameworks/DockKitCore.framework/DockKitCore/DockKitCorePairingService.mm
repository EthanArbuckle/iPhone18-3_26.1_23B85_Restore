@interface DockKitCorePairingService
- (void)dealloc;
- (void)pairingStatusWithInfo:(id)info state:(int64_t)state metadata:(id)metadata error:(id)error;
- (void)setSetupPayloadWithUri:(NSURL *)uri completionHandler:(id)handler;
@end

@implementation DockKitCorePairingService

- (void)dealloc
{
  swift_unknownObjectWeakAssign();
  v4.receiver = self;
  v4.super_class = type metadata accessor for DockKitCorePairingService();
  selfCopy = self;
  [(DockKitCorePairingService *)&v4 dealloc];
}

- (void)setSetupPayloadWithUri:(NSURL *)uri completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = uri;
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
  uriCopy = uri;
  selfCopy = self;
  sub_224616E14(0, 0, v9, &unk_22462F560, v14);
}

- (void)pairingStatusWithInfo:(id)info state:(int64_t)state metadata:(id)metadata error:(id)error
{
  sub_224627CD8();
  sub_224627C58();
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  errorCopy = error;
  if (Strong && (swift_unknownObjectRelease(), (v11 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v12 = v11;
    v13 = sub_224627CB8();
    v14 = sub_224627C48();
    [v12 pairingStatusWithInfo:v13 state:state metadata:v14 error:errorCopy];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

@end