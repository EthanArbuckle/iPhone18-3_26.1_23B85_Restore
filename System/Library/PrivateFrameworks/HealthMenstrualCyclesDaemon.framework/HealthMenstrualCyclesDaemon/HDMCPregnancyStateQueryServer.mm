@interface HDMCPregnancyStateQueryServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (Class)queryClass;
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (NSSet)objectTypes;
- (_TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)_queue_start;
- (void)_queue_stop;
- (void)pregnancyModelDidUpdate:(id)a3;
@end

@implementation HDMCPregnancyStateQueryServer

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  sub_2293D2E78(v7);

  return 1;
}

+ (Class)queryClass
{
  sub_2293D30DC(0, &unk_2813DBE58, 0x277CCD5B0);

  return swift_getObjCClassFromMetadata();
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v10 = sub_22944F0B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22944F094();
  swift_getObjCClassMetadata();
  v15 = a4;
  v16 = a5;
  swift_unknownObjectRetain();
  v17 = static HDMCPregnancyStateQueryServer.createTaskServer(with:configuration:client:delegate:)(v14, a4, v16, a6);
  (*(v11 + 8))(v14, v10);
  swift_unknownObjectRelease();

  return v17;
}

- (NSSet)objectTypes
{
  sub_2293D3AA0(0, &qword_2813DBDA0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_229454440;
  sub_2293D30DC(0, &qword_2813DBED0, 0x277CCD0C0);
  *(inited + 32) = MEMORY[0x22AACB900](*MEMORY[0x277CCBA68]);
  sub_2293D3B3C(inited);
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  sub_2293D30DC(0, &qword_2813DBEE0, 0x277CCD720);
  sub_2293D3E94();
  v4 = sub_22944F9A4();

  return v4;
}

- (void)_queue_start
{
  v2 = self;
  HDMCPregnancyStateQueryServer._queue_start()();
}

- (void)pregnancyModelDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  HDMCPregnancyStateQueryServer.pregnancyModelDidUpdate(_:)(v4);
}

- (_TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v6 = sub_22944F0B4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22944F094();
  result = sub_22944FD44();
  __break(1u);
  return result;
}

- (void)_queue_stop
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon29HDMCPregnancyStateQueryServer_pregnancyManager);
  v3 = *(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_observers);
  v4 = self;
  [v3 unregisterObserver_];
  [*(v2 + OBJC_IVAR____TtC27HealthMenstrualCyclesDaemon20HDMCPregnancyManager_userInitiatedObservers) unregisterObserver_];
}

@end