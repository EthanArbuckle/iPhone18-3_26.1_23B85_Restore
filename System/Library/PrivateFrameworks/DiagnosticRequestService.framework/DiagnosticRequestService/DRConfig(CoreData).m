@interface DRConfig(CoreData)
- (DRConfigMO)ON_CONTEXT_QUEUE_configMOInContext:()CoreData;
- (id)ON_CONTEXT_QUEUE_initWithConfigMO:()CoreData;
@end

@implementation DRConfig(CoreData)

- (id)ON_CONTEXT_QUEUE_initWithConfigMO:()CoreData
{
  v3 = MEMORY[0x277D051F8];
  v4 = a3;
  v17 = [v3 alloc];
  v16 = [v4 build];
  v5 = [v4 teamID];
  v6 = [v4 configDescription];
  v7 = [v4 configUUID];
  v8 = [v4 receivedDate];
  v9 = [v4 startDate];
  v10 = [v4 endDate];
  v11 = [v4 payload];
  v12 = [v4 payloadIsJSON];
  LOBYTE(v3) = [v4 skippedHysteresis];

  BYTE1(v15) = v3;
  LOBYTE(v15) = v12;
  v13 = [v17 initWithBuild:v16 teamID:v5 configDescription:v6 configUUID:v7 receivedDate:v8 startDate:v9 endDate:v10 payload:v11 payloadIsJSON:v15 skipHysteresis:?];

  return v13;
}

- (DRConfigMO)ON_CONTEXT_QUEUE_configMOInContext:()CoreData
{
  v4 = a3;
  v5 = [[DRConfigMO alloc] initWithContext:v4];

  v6 = [a1 teamID];
  [(DRConfigMO *)v5 setTeamID:v6];

  v7 = [a1 build];
  [(DRConfigMO *)v5 setBuild:v7];

  v8 = [a1 configDescription];
  [(DRConfigMO *)v5 setConfigDescription:v8];

  v9 = [a1 configUUID];
  [(DRConfigMO *)v5 setConfigUUID:v9];

  v10 = [a1 receivedDate];
  [(DRConfigMO *)v5 setReceivedDate:v10];

  v11 = [a1 startDate];
  [(DRConfigMO *)v5 setStartDate:v11];

  v12 = [a1 endDate];
  [(DRConfigMO *)v5 setEndDate:v12];

  v13 = [a1 payload];
  [(DRConfigMO *)v5 setPayload:v13];

  -[DRConfigMO setPayloadIsJSON:](v5, "setPayloadIsJSON:", [a1 payloadIsJSON]);
  -[DRConfigMO setSkippedHysteresis:](v5, "setSkippedHysteresis:", [a1 skippedHysteresis]);

  return v5;
}

@end