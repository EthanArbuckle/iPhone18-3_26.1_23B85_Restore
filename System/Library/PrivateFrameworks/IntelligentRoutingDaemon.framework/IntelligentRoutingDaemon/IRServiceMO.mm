@interface IRServiceMO
+ (id)MOService:(id)a3 inManagedObjectContext:(id)a4;
+ (void)setPropertiesOfServiceMO:(id)a3 withServiceDO:(id)a4;
- (id)convert;
@end

@implementation IRServiceMO

- (id)convert
{
  v3 = [(IRServiceMO *)self lastSeenDate];
  v4 = [(IRServiceMO *)self clientIdentifier];
  v5 = [(IRServiceMO *)self serviceIdentifier];
  v6 = [IRServiceDO serviceDOWithLastSeenDate:v3 clientIdentifier:v4 serviceIdentifier:v5 servicePackage:[(IRServiceMO *)self servicePackage]];

  return v6;
}

+ (id)MOService:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[IRServiceMO alloc] initWithContext:v5];
  v8 = [[IRCandidatesContainerMO alloc] initWithContext:v5];
  [(IRServiceMO *)v7 setCandidatesContainer:v8];

  v9 = [(IRServiceMO *)v7 candidatesContainer];
  [v9 setService:v7];

  v10 = [[IRHistoryEventsContainerMO alloc] initWithContext:v5];
  [(IRServiceMO *)v7 setHistoryContainer:v10];

  v11 = [(IRServiceMO *)v7 historyContainer];
  [v11 setService:v7];

  v12 = [[IRMiLoServiceMO alloc] initWithContext:v5];
  [(IRServiceMO *)v7 setMiloService:v12];

  v13 = [(IRServiceMO *)v7 miloService];
  [v13 setService:v7];

  v14 = [[IRReplayEventsContainerMO alloc] initWithContext:v5];
  [(IRServiceMO *)v7 setReplayEventContainer:v14];

  v15 = [(IRServiceMO *)v7 replayEventContainer];
  [v15 setService:v7];

  v16 = [[IRStatisticsMO alloc] initWithContext:v5];
  [(IRServiceMO *)v7 setStatistics:v16];

  v17 = [(IRServiceMO *)v7 statistics];
  [v17 setService:v7];

  [IRServiceMO setPropertiesOfServiceMO:v7 withServiceDO:v6];

  return v7;
}

+ (void)setPropertiesOfServiceMO:(id)a3 withServiceDO:(id)a4
{
  v5 = a4;
  v10 = a3;
  v6 = [v5 lastSeenDate];
  [v10 setLastSeenDate:v6];

  v7 = [v5 serviceIdentifier];
  [v10 setServiceIdentifier:v7];

  v8 = [v5 clientIdentifier];
  [v10 setClientIdentifier:v8];

  v9 = [v5 servicePackage];
  [v10 setServicePackage:v9];
}

@end