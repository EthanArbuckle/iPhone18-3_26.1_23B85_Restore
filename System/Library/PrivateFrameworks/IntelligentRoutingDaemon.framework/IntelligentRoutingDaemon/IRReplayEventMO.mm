@interface IRReplayEventMO
+ (IRReplayEventMO)replayEventMOWithReplayEventDO:(id)o replayEventsContainerMO:(id)mO inManagedObjectContext:(id)context;
+ (void)setPropertiesOfReplayEventMO:(id)o withReplayEventDO:(id)dO inManagedObjectContext:(id)context;
- (id)convert;
@end

@implementation IRReplayEventMO

+ (IRReplayEventMO)replayEventMOWithReplayEventDO:(id)o replayEventsContainerMO:(id)mO inManagedObjectContext:(id)context
{
  contextCopy = context;
  mOCopy = mO;
  oCopy = o;
  v10 = [[IRReplayEventMO alloc] initWithContext:contextCopy];
  [(IRReplayEventMO *)v10 setReplayEventsContainer:mOCopy];

  [IRReplayEventMO setPropertiesOfReplayEventMO:v10 withReplayEventDO:oCopy inManagedObjectContext:contextCopy];

  return v10;
}

+ (void)setPropertiesOfReplayEventMO:(id)o withReplayEventDO:(id)dO inManagedObjectContext:(id)context
{
  contextCopy = context;
  dOCopy = dO;
  oCopy = o;
  date = [dOCopy date];
  [oCopy setDate:date];

  contextChangeReason = [dOCopy contextChangeReason];
  [oCopy setContextChangeReason:contextChangeReason];

  systemState = [dOCopy systemState];
  v13 = [IRSystemStateMO systemStateMOWithSystemStateDO:systemState replayEventMO:oCopy inManagedObjectContext:contextCopy];
  [oCopy setSystemState:v13];

  miloLslPrediction = [dOCopy miloLslPrediction];
  v15 = [IRMiLoLSLPredictionMO miLoLSLPredictionMOWithMiLoLSLPredictionDO:miloLslPrediction replayEvent:oCopy inManagedObjectContext:contextCopy];
  [oCopy setMiloLslPrediction:v15];

  nearbyDeviceContainerDO = [dOCopy nearbyDeviceContainerDO];
  v17 = [IRNearbyDeviceContainerMO nearbyDeviceContainerMOWithNearbyDeviceContainerDO:nearbyDeviceContainerDO replayEvent:oCopy inManagedObjectContext:contextCopy];
  [oCopy setNearbyDeviceContainer:v17];

  candidatesContainer = [dOCopy candidatesContainer];

  v18 = [IRCandidatesContainerMO candidatesContainerMOFromCandidatesContainerDO:candidatesContainer withReplayEventMO:oCopy managedObjectContext:contextCopy];

  [oCopy setCandidatesContainer:v18];
}

- (id)convert
{
  v15 = [IRReplayEventDO alloc];
  date = [(IRReplayEventMO *)self date];
  contextChangeReason = [(IRReplayEventMO *)self contextChangeReason];
  candidatesContainer = [(IRReplayEventMO *)self candidatesContainer];
  convert = [candidatesContainer convert];
  miloLslPrediction = [(IRReplayEventMO *)self miloLslPrediction];
  convert2 = [miloLslPrediction convert];
  systemState = [(IRReplayEventMO *)self systemState];
  convert3 = [systemState convert];
  nearbyDeviceContainer = [(IRReplayEventMO *)self nearbyDeviceContainer];
  convert4 = [nearbyDeviceContainer convert];
  v12 = [(IRReplayEventDO *)v15 initWithDate:date contextChangeReason:contextChangeReason candidatesContainer:convert miloLslPrediction:convert2 systemState:convert3 nearbyDeviceContainerDO:convert4];

  return v12;
}

@end