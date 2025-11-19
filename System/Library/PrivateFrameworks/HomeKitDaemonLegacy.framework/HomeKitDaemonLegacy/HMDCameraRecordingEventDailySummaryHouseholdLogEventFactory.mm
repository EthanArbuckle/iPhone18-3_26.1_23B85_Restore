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
  sub_253200644(0, &unk_27F5A31A0, 0x277D17DC0);
  v4 = sub_253CD0A58();
  v5 = self;
  v6 = sub_253219AB8(v4);

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
    v7 = sub_253CD08B8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)logEventsFromDictionary:(id)a3
{
  v4 = sub_253CD08D8();
  v5 = self;
  v6 = sub_253219D6C(v4);

  if (v6)
  {
    sub_253200644(0, &unk_27F5A31A0, 0x277D17DC0);
    v7 = sub_253CD0A38();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4
{
  v5 = sub_253CCFF58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_253200644(0, &unk_27F5A31A0, 0x277D17DC0);
  v10 = sub_253CD0A58();
  sub_253CCFF38();
  v11 = self;
  sub_253219FE0(v10, v9);

  (*(v6 + 8))(v9, v5);
  v12 = sub_253CD0A38();

  return v12;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v5 = sub_253CCFEE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_253CCFF58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFF38();
  sub_253CCFEA8();
  v15 = self;
  v16 = [(HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory *)v15 cameraRecordingEventObserver];
  v17 = sub_253210CE0(v14);

  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_253D48D90;
    *(v18 + 32) = v17;

    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v10);
    sub_253200644(0, &unk_27F5A31A0, 0x277D17DC0);
    v19 = sub_253CD0A38();
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