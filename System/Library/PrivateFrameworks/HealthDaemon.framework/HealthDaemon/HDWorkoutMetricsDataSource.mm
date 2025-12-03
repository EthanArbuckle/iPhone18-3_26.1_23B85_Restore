@interface HDWorkoutMetricsDataSource
+ (Class)configurationClass;
+ (NSString)taskIdentifier;
+ (id)requiredEntitlements;
- (NSUUID)workoutDataProcessorUUID;
- (_TtC12HealthDaemon26HDWorkoutMetricsDataSource)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (id)workoutDataFlowLink;
- (void)onDemandSwimmingDataDidUpdate:(id)update;
- (void)remote_registerSession;
- (void)setWorkoutDataProcessorUUID:(id)d;
- (void)workoutDataDestination:(HDWorkoutDataDestination *)destination requestsFinalDataFrom:(NSDate *)from to:(NSDate *)to completion:(id)completion;
- (void)workoutDataDestination:(id)destination requestsDataFrom:(id)from to:(id)to;
@end

@implementation HDWorkoutMetricsDataSource

- (NSUUID)workoutDataProcessorUUID
{
  v3 = sub_22911B8DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_2289CD4C8(v7);

  v9 = sub_22911B8BC();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)setWorkoutDataProcessorUUID:(id)d
{
  sub_2289CFD5C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_22911B8DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B8CC();
  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v13 = OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource____lazy_storage___workoutDataProcessorUUID;
  swift_beginAccess();
  selfCopy = self;
  sub_2289D0618(v7, self + v13);
  swift_endAccess();
}

- (id)workoutDataFlowLink
{
  result = *(&self->super.super.isa + OBJC_IVAR____TtC12HealthDaemon26HDWorkoutMetricsDataSource__workoutDataFlowLink);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (_TtC12HealthDaemon26HDWorkoutMetricsDataSource)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v9 = sub_22911B8DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B8CC();
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  return sub_2289CD8A0(v12, configuration, clientCopy, delegate);
}

+ (NSString)taskIdentifier
{
  sub_22911C22C();
  sub_22911C1FC();
  v2 = sub_22911C34C();

  return v2;
}

+ (id)requiredEntitlements
{
  sub_2289B5AD4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_229163C40;
  v3 = *MEMORY[0x277CCC8B0];
  *(v2 + 32) = sub_22911C35C();
  *(v2 + 40) = v4;
  v5 = sub_22911C44C();

  return v5;
}

+ (Class)configurationClass
{
  sub_2289B3D00(0, &qword_27D863150, 0x277CCDC50);

  return swift_getObjCClassFromMetadata();
}

- (id)exportedInterface
{
  sub_22911C22C();
  v2 = sub_22911C21C();

  return v2;
}

- (id)remoteInterface
{
  sub_22911C22C();
  v2 = MEMORY[0x22AAC5DD0]();

  return v2;
}

- (void)remote_registerSession
{
  selfCopy = self;
  sub_2289CDCE8();
}

- (void)onDemandSwimmingDataDidUpdate:(id)update
{
  type metadata accessor for HDCMSwimData();
  v4 = sub_22911C45C();
  selfCopy = self;
  sub_2289CE38C(v4);
}

- (void)workoutDataDestination:(id)destination requestsDataFrom:(id)from to:(id)to
{
  sub_2289CFD5C(0, &qword_27D862B48, MEMORY[0x277CC9578]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if (from)
  {
    sub_22911B86C();
    v14 = sub_22911B88C();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v15 = sub_22911B88C();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  if (to)
  {
    sub_22911B86C();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = MEMORY[0x277CC9578];
  sub_2289D0998(v13, &qword_27D862B48, MEMORY[0x277CC9578]);
  v18 = sub_22911B88C();
  (*(*(v18 - 8) + 56))(v11, v16, 1, v18);
  sub_2289D0998(v11, &qword_27D862B48, v17);
}

- (void)workoutDataDestination:(HDWorkoutDataDestination *)destination requestsFinalDataFrom:(NSDate *)from to:(NSDate *)to completion:(id)completion
{
  sub_2289CFD5C(0, &qword_27D8630E8, MEMORY[0x277D85720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  v16[2] = destination;
  v16[3] = from;
  v16[4] = to;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_22911C4EC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_229164648;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_229164658;
  v19[5] = v18;
  swift_unknownObjectRetain();
  fromCopy = from;
  toCopy = to;
  selfCopy = self;
  sub_2289D0074(0, 0, v14, &unk_229164668, v19);
}

@end