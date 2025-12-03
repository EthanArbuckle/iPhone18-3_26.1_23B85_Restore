@interface TimerActivityProviderProxy
- (_TtC18MobileTimerSupport26TimerActivityProviderProxy)init;
- (void)alertActivityWithContext:(id)context tlConfig:(id)config completion:(id)completion;
- (void)endActivityWithId:(id)id completion:(id)completion;
@end

@implementation TimerActivityProviderProxy

- (void)alertActivityWithContext:(id)context tlConfig:(id)config completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
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
  sub_22D75D890(0, 0, v12, &unk_22D824A98, v16);
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
  v16[7] = sub_22D7CD47C;
  v16[8] = v14;
  selfCopy = self;
  sub_22D75D890(0, 0, v9, &unk_22D824A90, v16);
}

- (_TtC18MobileTimerSupport26TimerActivityProviderProxy)init
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport26TimerActivityProviderProxy_activityActor;
  type metadata accessor for TimerActivityProvider();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 14) = 0x72656D6974;
  *(v4 + 15) = 0xE500000000000000;
  *(v4 + 16) = 0xD000000000000014;
  *(v4 + 17) = 0x800000022D829320;
  *(&self->super.isa + v3) = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TimerActivityProviderProxy();
  return [(TimerActivityProviderProxy *)&v6 init];
}

@end