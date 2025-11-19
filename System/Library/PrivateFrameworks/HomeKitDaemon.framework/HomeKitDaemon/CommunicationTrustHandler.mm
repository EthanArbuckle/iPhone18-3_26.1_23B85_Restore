@interface CommunicationTrustHandler
- (_TtC13HomeKitDaemon25CommunicationTrustHandler)init;
- (void)isTrustedPersonWithAccountHandles:(NSArray *)a3 completionHandler:(id)a4;
@end

@implementation CommunicationTrustHandler

- (void)isTrustedPersonWithAccountHandles:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_22A4DD9DC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A581CB0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A57B590;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_229859F70(0, 0, v10, &unk_22A581CC0, v15);
}

- (_TtC13HomeKitDaemon25CommunicationTrustHandler)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CommunicationTrustHandler *)&v3 init];
}

@end