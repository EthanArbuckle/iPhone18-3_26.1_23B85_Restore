@interface HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory
- (HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory)init;
- (HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory)initWithCameraRecordingEventObserver:(id)a3;
- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4;
- (id)logEventsFromDictionary:(id)a3;
- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (id)serializeLogEvents:(id)a3;
- (void)setCameraRecordingEventObserver:(id)a3;
@end

@implementation HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory

- (void)setCameraRecordingEventObserver:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory_cameraRecordingEventObserver);
  *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory_cameraRecordingEventObserver) = a3;
  v3 = a3;
}

- (HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory)initWithCameraRecordingEventObserver:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory_cameraRecordingEventObserver) = a3;
  v5.receiver = self;
  v5.super_class = HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory;
  v3 = a3;
  return [(HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory *)&v5 init];
}

- (id)serializeLogEvents:(id)a3
{
  sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
  v4 = sub_22A4DD83C();
  v5 = self;
  v6 = sub_22957AE68(v4);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v7 = sub_22A4DD47C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)logEventsFromDictionary:(id)a3
{
  v4 = sub_22A4DD49C();
  v5 = self;
  v6 = sub_22957B11C(v4);

  if (v6)
  {
    sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
    v7 = sub_22A4DD81C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
  v10 = sub_22A4DD83C();
  sub_22A4DB79C();
  v11 = self;
  sub_22957B390(v10, v9);

  (*(v6 + 8))(v9, v5);
  v12 = sub_22A4DD81C();

  return v12;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  sub_22A4DB70C();
  v15 = self;
  v16 = [(HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory *)v15 cameraRecordingEventObserver];
  v17 = sub_2296BD35C(v14);

  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22A576190;
    *(v18 + 32) = v17;

    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v10);
    sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
    v19 = sub_22A4DD81C();
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v10);
    v19 = 0;
  }

  return v19;
}

- (HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end