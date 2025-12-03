@interface HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory
- (HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory)init;
- (HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory)initWithDataSource:(id)source;
- (HMDHouseholdMetricsDataSource)dataSource;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
@end

@implementation HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory

- (HMDHouseholdMetricsDataSource)dataSource
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory_dataSource);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory)initWithDataSource:(id)source
{
  *(&self->super.super.isa + OBJC_IVAR___HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory_dataSource) = source;
  v4.receiver = self;
  v4.super_class = HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory;
  swift_unknownObjectRetain();
  return [(HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory *)&v4 init];
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22A4DB79C();
  sub_22A4DB70C();
  selfCopy = self;
  v16 = sub_2295F5FE4(v14);

  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  if (v16)
  {
    sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
    v17 = sub_22A4DD81C();
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end