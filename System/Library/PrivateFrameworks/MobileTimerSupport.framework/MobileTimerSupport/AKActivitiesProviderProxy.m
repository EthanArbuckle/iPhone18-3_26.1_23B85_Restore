@interface AKActivitiesProviderProxy
- (_TtC18MobileTimerSupport25AKActivitiesProviderProxy)init;
- (_TtC18MobileTimerSupport25AKActivitiesProviderProxy)initWithActivityResolver:(id)a3;
- (void)activitiesWithAlert:(BOOL)a3 type:(int64_t)a4 completion:(id)a5;
- (void)activitiesWithType:(int64_t)a3 completion:(id)a4;
- (void)endActivityWithId:(id)a3 completion:(id)a4;
@end

@implementation AKActivitiesProviderProxy

- (void)activitiesWithAlert:(BOOL)a3 type:(int64_t)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = v20 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = *(&self->super.isa + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_queue);
  v17 = swift_allocObject();
  *(v17 + 16) = self;
  *(v17 + 24) = a3;
  *(v17 + 32) = sub_22D744A94;
  *(v17 + 40) = v15;
  *(v17 + 48) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_22D826768;
  *(v18 + 24) = v17;
  v20[0] = &unk_22D826770;
  v20[1] = v18;
  v19 = self;
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  (*(v10 + 8))(v13, v9);
}

- (_TtC18MobileTimerSupport25AKActivitiesProviderProxy)initWithActivityResolver:(id)a3
{
  v4 = OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_queue;
  v5 = type metadata accessor for SerialTaskQueue();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  *(&self->super.isa + v4) = SerialTaskQueue.init()();
  type metadata accessor for ActivityKitProvider();
  v8 = swift_allocObject();
  v9 = swift_unknownObjectRetain();
  *(&self->super.isa + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor) = sub_22D7FF078(v9, v8, 0, 1);
  v12.receiver = self;
  v12.super_class = type metadata accessor for AKActivitiesProviderProxy();
  v10 = [(AKActivitiesProviderProxy *)&v12 init];
  swift_unknownObjectRelease();
  return v10;
}

- (void)endActivityWithId:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_22D81B2C8();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_22D7F9ADC(v6, v8, sub_22D8003B4, v9);
}

- (void)activitiesWithType:(int64_t)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = *(&self->super.isa + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_queue);
  v15 = swift_allocObject();
  v15[2] = self;
  v15[3] = sub_22D7CD9B4;
  v15[4] = v13;
  v15[5] = a3;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_22D826778;
  *(v16 + 24) = v15;
  v18[0] = &unk_22D826780;
  v18[1] = v16;
  v17 = self;
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  (*(v8 + 8))(v11, v7);
}

- (_TtC18MobileTimerSupport25AKActivitiesProviderProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end