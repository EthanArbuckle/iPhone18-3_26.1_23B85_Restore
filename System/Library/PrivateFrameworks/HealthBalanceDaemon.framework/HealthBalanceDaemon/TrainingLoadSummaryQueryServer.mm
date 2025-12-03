@interface TrainingLoadSummaryQueryServer
+ (Class)queryClass;
- (BOOL)_shouldListenForUpdates;
- (_TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
- (void)_queue_stop;
- (void)associationsUpdatedForObject:(id)object subObject:(id)subObject type:(unint64_t)type behavior:(unint64_t)behavior objects:(id)objects anchor:(id)anchor;
@end

@implementation TrainingLoadSummaryQueryServer

+ (Class)queryClass
{
  sub_22892E788();

  return swift_getObjCClassFromMetadata();
}

- (void)_queue_start
{
  selfCopy = self;
  sub_22890D06C();
}

- (void)_queue_stop
{
  selfCopy = self;
  sub_22890DA00();
}

- (BOOL)_shouldListenForUpdates
{
  selfCopy = self;
  configuration = [(HDQueryServer *)selfCopy configuration];
  shouldDeactivateAfterInitialResults = [(HKQueryServerConfiguration *)configuration shouldDeactivateAfterInitialResults];

  return shouldDeactivateAfterInitialResults ^ 1;
}

- (void)associationsUpdatedForObject:(id)object subObject:(id)subObject type:(unint64_t)type behavior:(unint64_t)behavior objects:(id)objects anchor:(id)anchor
{
  sub_2288BC0FC(0, &unk_27D85BD70, 0x277CCD6F0);
  v14 = sub_22892F218();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  anchorCopy = anchor;
  selfCopy = self;
  sub_22890DF08(object, subObject, type, behavior, v14, anchorCopy);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (_TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  ObjectType = swift_getObjectType();
  v11 = sub_22892DF58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892DF38();
  *(&self->super.super.isa + OBJC_IVAR____TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer____lazy_storage___loadBaselineUnit) = 0;
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  v18 = sub_22892DF18();
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(HDQueryServer *)&v21 initWithUUID:v18 configuration:configurationCopy client:clientCopy delegate:delegate];

  swift_unknownObjectRelease();
  (*(v12 + 8))(v15, v11);
  return v19;
}

@end