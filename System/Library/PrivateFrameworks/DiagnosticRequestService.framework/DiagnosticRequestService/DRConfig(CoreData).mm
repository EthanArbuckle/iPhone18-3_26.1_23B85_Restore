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
  build = [v4 build];
  teamID = [v4 teamID];
  configDescription = [v4 configDescription];
  configUUID = [v4 configUUID];
  receivedDate = [v4 receivedDate];
  startDate = [v4 startDate];
  endDate = [v4 endDate];
  payload = [v4 payload];
  payloadIsJSON = [v4 payloadIsJSON];
  LOBYTE(v3) = [v4 skippedHysteresis];

  BYTE1(v15) = v3;
  LOBYTE(v15) = payloadIsJSON;
  v13 = [v17 initWithBuild:build teamID:teamID configDescription:configDescription configUUID:configUUID receivedDate:receivedDate startDate:startDate endDate:endDate payload:payload payloadIsJSON:v15 skipHysteresis:?];

  return v13;
}

- (DRConfigMO)ON_CONTEXT_QUEUE_configMOInContext:()CoreData
{
  v4 = a3;
  v5 = [[DRConfigMO alloc] initWithContext:v4];

  teamID = [self teamID];
  [(DRConfigMO *)v5 setTeamID:teamID];

  build = [self build];
  [(DRConfigMO *)v5 setBuild:build];

  configDescription = [self configDescription];
  [(DRConfigMO *)v5 setConfigDescription:configDescription];

  configUUID = [self configUUID];
  [(DRConfigMO *)v5 setConfigUUID:configUUID];

  receivedDate = [self receivedDate];
  [(DRConfigMO *)v5 setReceivedDate:receivedDate];

  startDate = [self startDate];
  [(DRConfigMO *)v5 setStartDate:startDate];

  endDate = [self endDate];
  [(DRConfigMO *)v5 setEndDate:endDate];

  payload = [self payload];
  [(DRConfigMO *)v5 setPayload:payload];

  -[DRConfigMO setPayloadIsJSON:](v5, "setPayloadIsJSON:", [self payloadIsJSON]);
  -[DRConfigMO setSkippedHysteresis:](v5, "setSkippedHysteresis:", [self skippedHysteresis]);

  return v5;
}

@end