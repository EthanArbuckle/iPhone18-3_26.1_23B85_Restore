@interface AlarmActivityProviderProxy
- (_TtC18MobileTimerSupport26AlarmActivityProviderProxy)init;
- (void)alertActivityWithContext:(id)context tlConfig:(id)config completion:(id)completion;
- (void)endActivityWithId:(id)id completion:(id)completion;
- (void)updateActivityWithContext:(id)context completion:(id)completion;
@end

@implementation AlarmActivityProviderProxy

- (void)updateActivityWithContext:(id)context completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = context;
  v14[6] = sub_22D7CD9B8;
  v14[7] = v12;
  contextCopy = context;
  selfCopy = self;
  v17 = contextCopy;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v10, &unk_22D824AD8, v14);

  sub_22D764440(v10, &unk_27DA01FF0, &qword_22D81FC70);
}

- (void)alertActivityWithContext:(id)context tlConfig:(id)config completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = context;
  v16[6] = config;
  v16[7] = sub_22D7CD9B8;
  v16[8] = v14;
  contextCopy = context;
  configCopy = config;
  selfCopy = self;
  v20 = contextCopy;
  v21 = configCopy;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v12, &unk_22D824AD0, v16);

  sub_22D764440(v12, &unk_27DA01FF0, &qword_22D81FC70);
}

- (void)endActivityWithId:(id)id completion:(id)completion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(completion);
  v11 = sub_22D81B2C8();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = v11;
  v16[6] = v13;
  v16[7] = sub_22D7CD9B8;
  v16[8] = v14;
  selfCopy = self;
  sub_22D81A198();
  sub_22D7BD9C8(0, 0, v9, &unk_22D824AC8, v16);

  sub_22D764440(v9, &unk_27DA01FF0, &qword_22D81FC70);
}

- (_TtC18MobileTimerSupport26AlarmActivityProviderProxy)init
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport26AlarmActivityProviderProxy_activityActor;
  type metadata accessor for AlarmActivityProvider();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 14) = 0x6D72616C61;
  *(v4 + 15) = 0xE500000000000000;
  *(v4 + 16) = 0xD000000000000014;
  *(v4 + 17) = 0x800000022D829320;
  *(v4 + 18) = 0xD000000000000016;
  *(v4 + 19) = 0x800000022D82B260;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AlarmActivityProviderProxy();
  return [(AlarmActivityProviderProxy *)&v6 init];
}

@end