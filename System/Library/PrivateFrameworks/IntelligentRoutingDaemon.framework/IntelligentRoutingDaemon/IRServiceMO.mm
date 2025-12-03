@interface IRServiceMO
+ (id)MOService:(id)service inManagedObjectContext:(id)context;
+ (void)setPropertiesOfServiceMO:(id)o withServiceDO:(id)dO;
- (id)convert;
@end

@implementation IRServiceMO

- (id)convert
{
  lastSeenDate = [(IRServiceMO *)self lastSeenDate];
  clientIdentifier = [(IRServiceMO *)self clientIdentifier];
  serviceIdentifier = [(IRServiceMO *)self serviceIdentifier];
  v6 = [IRServiceDO serviceDOWithLastSeenDate:lastSeenDate clientIdentifier:clientIdentifier serviceIdentifier:serviceIdentifier servicePackage:[(IRServiceMO *)self servicePackage]];

  return v6;
}

+ (id)MOService:(id)service inManagedObjectContext:(id)context
{
  contextCopy = context;
  serviceCopy = service;
  v7 = [[IRServiceMO alloc] initWithContext:contextCopy];
  v8 = [[IRCandidatesContainerMO alloc] initWithContext:contextCopy];
  [(IRServiceMO *)v7 setCandidatesContainer:v8];

  candidatesContainer = [(IRServiceMO *)v7 candidatesContainer];
  [candidatesContainer setService:v7];

  v10 = [[IRHistoryEventsContainerMO alloc] initWithContext:contextCopy];
  [(IRServiceMO *)v7 setHistoryContainer:v10];

  historyContainer = [(IRServiceMO *)v7 historyContainer];
  [historyContainer setService:v7];

  v12 = [[IRMiLoServiceMO alloc] initWithContext:contextCopy];
  [(IRServiceMO *)v7 setMiloService:v12];

  miloService = [(IRServiceMO *)v7 miloService];
  [miloService setService:v7];

  v14 = [[IRReplayEventsContainerMO alloc] initWithContext:contextCopy];
  [(IRServiceMO *)v7 setReplayEventContainer:v14];

  replayEventContainer = [(IRServiceMO *)v7 replayEventContainer];
  [replayEventContainer setService:v7];

  v16 = [[IRStatisticsMO alloc] initWithContext:contextCopy];
  [(IRServiceMO *)v7 setStatistics:v16];

  statistics = [(IRServiceMO *)v7 statistics];
  [statistics setService:v7];

  [IRServiceMO setPropertiesOfServiceMO:v7 withServiceDO:serviceCopy];

  return v7;
}

+ (void)setPropertiesOfServiceMO:(id)o withServiceDO:(id)dO
{
  dOCopy = dO;
  oCopy = o;
  lastSeenDate = [dOCopy lastSeenDate];
  [oCopy setLastSeenDate:lastSeenDate];

  serviceIdentifier = [dOCopy serviceIdentifier];
  [oCopy setServiceIdentifier:serviceIdentifier];

  clientIdentifier = [dOCopy clientIdentifier];
  [oCopy setClientIdentifier:clientIdentifier];

  servicePackage = [dOCopy servicePackage];
  [oCopy setServicePackage:servicePackage];
}

@end