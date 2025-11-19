@interface AppDistributorWrapper
+ (void)handleEmergencyResetWithCompletionHandler:(id)a3;
- (_TtC19DigitalSeparationUI21AppDistributorWrapper)init;
@end

@implementation AppDistributorWrapper

+ (void)handleEmergencyResetWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EECB368, &qword_248CDE7F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_248CD46CC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_248CDEEB0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_248CDEEC0;
  v13[5] = v12;
  sub_248CC6CC0(0, 0, v8, &unk_248CDEED0, v13);
}

- (_TtC19DigitalSeparationUI21AppDistributorWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDistributorWrapper();
  return [(AppDistributorWrapper *)&v3 init];
}

@end