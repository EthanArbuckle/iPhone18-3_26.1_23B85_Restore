@interface IRReplayEventMO
+ (IRReplayEventMO)replayEventMOWithReplayEventDO:(id)a3 replayEventsContainerMO:(id)a4 inManagedObjectContext:(id)a5;
+ (void)setPropertiesOfReplayEventMO:(id)a3 withReplayEventDO:(id)a4 inManagedObjectContext:(id)a5;
- (id)convert;
@end

@implementation IRReplayEventMO

+ (IRReplayEventMO)replayEventMOWithReplayEventDO:(id)a3 replayEventsContainerMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRReplayEventMO alloc] initWithContext:v7];
  [(IRReplayEventMO *)v10 setReplayEventsContainer:v8];

  [IRReplayEventMO setPropertiesOfReplayEventMO:v10 withReplayEventDO:v9 inManagedObjectContext:v7];

  return v10;
}

+ (void)setPropertiesOfReplayEventMO:(id)a3 withReplayEventDO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v8 date];
  [v9 setDate:v10];

  v11 = [v8 contextChangeReason];
  [v9 setContextChangeReason:v11];

  v12 = [v8 systemState];
  v13 = [IRSystemStateMO systemStateMOWithSystemStateDO:v12 replayEventMO:v9 inManagedObjectContext:v7];
  [v9 setSystemState:v13];

  v14 = [v8 miloLslPrediction];
  v15 = [IRMiLoLSLPredictionMO miLoLSLPredictionMOWithMiLoLSLPredictionDO:v14 replayEvent:v9 inManagedObjectContext:v7];
  [v9 setMiloLslPrediction:v15];

  v16 = [v8 nearbyDeviceContainerDO];
  v17 = [IRNearbyDeviceContainerMO nearbyDeviceContainerMOWithNearbyDeviceContainerDO:v16 replayEvent:v9 inManagedObjectContext:v7];
  [v9 setNearbyDeviceContainer:v17];

  v19 = [v8 candidatesContainer];

  v18 = [IRCandidatesContainerMO candidatesContainerMOFromCandidatesContainerDO:v19 withReplayEventMO:v9 managedObjectContext:v7];

  [v9 setCandidatesContainer:v18];
}

- (id)convert
{
  v15 = [IRReplayEventDO alloc];
  v14 = [(IRReplayEventMO *)self date];
  v3 = [(IRReplayEventMO *)self contextChangeReason];
  v4 = [(IRReplayEventMO *)self candidatesContainer];
  v5 = [v4 convert];
  v6 = [(IRReplayEventMO *)self miloLslPrediction];
  v7 = [v6 convert];
  v8 = [(IRReplayEventMO *)self systemState];
  v9 = [v8 convert];
  v10 = [(IRReplayEventMO *)self nearbyDeviceContainer];
  v11 = [v10 convert];
  v12 = [(IRReplayEventDO *)v15 initWithDate:v14 contextChangeReason:v3 candidatesContainer:v5 miloLslPrediction:v7 systemState:v9 nearbyDeviceContainerDO:v11];

  return v12;
}

@end