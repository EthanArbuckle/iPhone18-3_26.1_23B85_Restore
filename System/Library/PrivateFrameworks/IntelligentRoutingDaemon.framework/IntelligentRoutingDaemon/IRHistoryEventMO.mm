@interface IRHistoryEventMO
+ (IRHistoryEventMO)historyEventMOWithhistoryEventDO:(id)o historyEventsContainerMO:(id)mO inManagedObjectContext:(id)context;
+ (void)setPropertiesOfhistoryEventMO:(id)o withhistoryEventDO:(id)dO inManagedObjectContext:(id)context;
- (id)convert;
@end

@implementation IRHistoryEventMO

+ (IRHistoryEventMO)historyEventMOWithhistoryEventDO:(id)o historyEventsContainerMO:(id)mO inManagedObjectContext:(id)context
{
  contextCopy = context;
  mOCopy = mO;
  oCopy = o;
  v10 = [[IRHistoryEventMO alloc] initWithContext:contextCopy];
  [(IRHistoryEventMO *)v10 setHistoryEventsContainer:mOCopy];

  [IRHistoryEventMO setPropertiesOfhistoryEventMO:v10 withhistoryEventDO:oCopy inManagedObjectContext:contextCopy];

  return v10;
}

+ (void)setPropertiesOfhistoryEventMO:(id)o withhistoryEventDO:(id)dO inManagedObjectContext:(id)context
{
  contextCopy = context;
  dOCopy = dO;
  oCopy = o;
  date = [dOCopy date];
  [oCopy setDate:date];

  event = [dOCopy event];
  v12 = [IREventMO IREventMOWithIREventDO:event historyEventMO:oCopy inManagedObjectContext:contextCopy];
  [oCopy setEvent:v12];

  miloPredictionEvent = [dOCopy miloPredictionEvent];
  v14 = [IRMiLoPredictionEventMO miloPredictionEventMOWithmiloPredictionEventDO:miloPredictionEvent historyEventMO:oCopy inManagedObjectContext:contextCopy];
  [oCopy setMiloPredictionEvent:v14];

  candidateIdentifier = [dOCopy candidateIdentifier];
  [oCopy setCandidateIdenfifier:candidateIdentifier];

  systemState = [dOCopy systemState];
  v17 = [IRSystemStateMO systemStateMOWithSystemStateDO:systemState historyEventMO:oCopy inManagedObjectContext:contextCopy];

  [oCopy setSystemState:v17];
  sharingPolicy = [dOCopy sharingPolicy];

  [oCopy setSharingPolicy:sharingPolicy];
}

- (id)convert
{
  v3 = [IRHistoryEventDO alloc];
  date = [(IRHistoryEventMO *)self date];
  candidateIdenfifier = [(IRHistoryEventMO *)self candidateIdenfifier];
  event = [(IRHistoryEventMO *)self event];
  convert = [event convert];
  miloPredictionEvent = [(IRHistoryEventMO *)self miloPredictionEvent];
  convert2 = [miloPredictionEvent convert];
  systemState = [(IRHistoryEventMO *)self systemState];
  convert3 = [systemState convert];
  sharingPolicy = [(IRHistoryEventMO *)self sharingPolicy];
  v13 = [(IRHistoryEventDO *)v3 initWithDate:date candidateIdentifier:candidateIdenfifier event:convert miloPredictionEvent:convert2 systemState:convert3 sharingPolicy:sharingPolicy];

  return v13;
}

@end