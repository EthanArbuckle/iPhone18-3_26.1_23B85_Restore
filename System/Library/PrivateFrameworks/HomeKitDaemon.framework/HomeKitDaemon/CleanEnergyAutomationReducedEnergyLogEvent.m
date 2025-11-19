@interface CleanEnergyAutomationReducedEnergyLogEvent
- (NSString)description;
- (_TtC13HomeKitDaemon42CleanEnergyAutomationReducedEnergyLogEvent)initWithHomeUUID:(id)a3;
- (_TtC13HomeKitDaemon42CleanEnergyAutomationReducedEnergyLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4;
@end

@implementation CleanEnergyAutomationReducedEnergyLogEvent

- (NSString)description
{
  v2 = self;
  sub_2297B992C();

  v3 = sub_22A4DD5AC();

  return v3;
}

- (_TtC13HomeKitDaemon42CleanEnergyAutomationReducedEnergyLogEvent)initWithHomeUUID:(id)a3
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v9 = sub_22A4DB77C();
  v10 = type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(HMMHomeLogEvent *)&v13 initWithHomeUUID:v9];

  (*(v5 + 8))(v8, v4);
  return v11;
}

- (_TtC13HomeKitDaemon42CleanEnergyAutomationReducedEnergyLogEvent)initWithStartTime:(double)a3 homeUUID:(id)a4
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v11 = sub_22A4DB77C();
  v12 = type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent();
  v15.receiver = self;
  v15.super_class = v12;
  v13 = [(HMMHomeLogEvent *)&v15 initWithStartTime:v11 homeUUID:a3];

  (*(v7 + 8))(v10, v6);
  return v13;
}

@end