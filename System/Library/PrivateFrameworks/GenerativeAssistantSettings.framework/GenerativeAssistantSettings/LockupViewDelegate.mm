@interface LockupViewDelegate
- (_TtC27GenerativeAssistantSettings18LockupViewDelegate)init;
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupViewDidFinishRequest:(id)a3;
@end

@implementation LockupViewDelegate

- (_TtC27GenerativeAssistantSettings18LockupViewDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0557D0, &qword_2230C5860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v12 = 0;
  sub_2230C39A4();
  (*(v5 + 32))(self + OBJC_IVAR____TtC27GenerativeAssistantSettings18LockupViewDelegate__hideLockup, v8, v4);
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(LockupViewDelegate *)&v11 init];
}

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_2230C3E84();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v11 = self;
  sub_2230BEA64(0, 0, v8, &unk_2230C64A0, v10);
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2230BFCB4();
}

@end