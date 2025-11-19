@interface TrainingLoadSummaryQueryServer
+ (Class)queryClass;
- (BOOL)_shouldListenForUpdates;
- (_TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
- (void)_queue_stop;
- (void)associationsUpdatedForObject:(id)a3 subObject:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 objects:(id)a7 anchor:(id)a8;
@end

@implementation TrainingLoadSummaryQueryServer

+ (Class)queryClass
{
  sub_22892E788();

  return swift_getObjCClassFromMetadata();
}

- (void)_queue_start
{
  v2 = self;
  sub_22890D06C();
}

- (void)_queue_stop
{
  v2 = self;
  sub_22890DA00();
}

- (BOOL)_shouldListenForUpdates
{
  v2 = self;
  v3 = [(HDQueryServer *)v2 configuration];
  v4 = [(HKQueryServerConfiguration *)v3 shouldDeactivateAfterInitialResults];

  return v4 ^ 1;
}

- (void)associationsUpdatedForObject:(id)a3 subObject:(id)a4 type:(unint64_t)a5 behavior:(unint64_t)a6 objects:(id)a7 anchor:(id)a8
{
  sub_2288BC0FC(0, &unk_27D85BD70, 0x277CCD6F0);
  v14 = sub_22892F218();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = a8;
  v16 = self;
  sub_22890DF08(a3, a4, a5, a6, v14, v15);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (_TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  ObjectType = swift_getObjectType();
  v11 = sub_22892DF58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DF38();
  *(&self->super.super.isa + OBJC_IVAR____TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer____lazy_storage___loadBaselineUnit) = 0;
  v16 = a4;
  v17 = a5;
  swift_unknownObjectRetain();
  v18 = sub_22892DF18();
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(HDQueryServer *)&v21 initWithUUID:v18 configuration:v16 client:v17 delegate:a6];

  swift_unknownObjectRelease();
  (*(v12 + 8))(v15, v11);
  return v19;
}

@end