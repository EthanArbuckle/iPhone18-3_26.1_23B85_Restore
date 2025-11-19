@interface HMNoiseCheckService
- (_TtC13HearingModeUI19HMNoiseCheckService)init;
- (void)runNoiseCheckNudgingWithTopView:(id)a3 passAction:(id)a4;
- (void)runNoiseCheckWithCompletionHandler:(id)a3;
- (void)stopNoiseCheck;
@end

@implementation HMNoiseCheckService

- (void)stopNoiseCheck
{
  v2 = self;
  sub_25204BA58();
}

- (void)runNoiseCheckWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9ED0, &qword_2520682E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_252064864();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2520682F8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_252068308;
  v13[5] = v12;
  v14 = self;
  sub_25204CF6C(0, 0, v8, &unk_252068318, v13);
}

- (void)runNoiseCheckNudgingWithTopView:(id)a3 passAction:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_25204C624(v8, sub_25204D8DC, v7);
}

- (_TtC13HearingModeUI19HMNoiseCheckService)init
{
  v3 = OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_manager;
  *(&self->super.isa + v3) = sub_252063FE4();
  v4 = OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_observer;
  type metadata accessor for HMNoiseCheckService.NoiseCheckObserver();
  v5 = swift_allocObject();
  *(v5 + 2) = 0xD000000000000012;
  *(v5 + 3) = 0x800000025206DB70;
  *(&self->super.isa + v4) = v5;
  *(&self->super.isa + OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_noiseCheckOngoing) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC13HearingModeUI19HMNoiseCheckService_listeners) = MEMORY[0x277D84FA0];
  v7.receiver = self;
  v7.super_class = type metadata accessor for HMNoiseCheckService();
  return [(HMNoiseCheckService *)&v7 init];
}

@end