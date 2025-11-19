@interface CleanEnergyAutomationConfigurationLogEventFactory
- (_TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory)init;
- (id)coalescedLogEventsFromLogEvents:(id)a3 homeUUID:(id)a4;
- (id)logEventsFromDictionary:(id)a3;
- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
- (id)serializeLogEvents:(id)a3;
- (void)observeEvent:(id)a3;
@end

@implementation CleanEnergyAutomationConfigurationLogEventFactory

- (void)observeEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2295EF130(v4);
}

- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
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
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  sub_22A4DB70C();
  v15 = self;
  v16 = sub_2295EF94C(v14, v9);

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

- (id)serializeLogEvents:(id)a3
{
  sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
  v4 = sub_22A4DD83C();
  v5 = self;
  v6 = sub_2295F232C(v4);

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
  v6 = sub_2295F25A8(v4);

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
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
  v10 = sub_22A4DD83C();
  sub_22A4DB79C();
  v11 = self;
  sub_2295F2740(v10, v9);

  (*(v6 + 8))(v9, v5);
  v12 = sub_22A4DD81C();

  return v12;
}

- (_TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end