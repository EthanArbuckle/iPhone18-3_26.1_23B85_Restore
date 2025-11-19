@interface IRHistoryEventMO
+ (IRHistoryEventMO)historyEventMOWithhistoryEventDO:(id)a3 historyEventsContainerMO:(id)a4 inManagedObjectContext:(id)a5;
+ (void)setPropertiesOfhistoryEventMO:(id)a3 withhistoryEventDO:(id)a4 inManagedObjectContext:(id)a5;
- (id)convert;
@end

@implementation IRHistoryEventMO

+ (IRHistoryEventMO)historyEventMOWithhistoryEventDO:(id)a3 historyEventsContainerMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRHistoryEventMO alloc] initWithContext:v7];
  [(IRHistoryEventMO *)v10 setHistoryEventsContainer:v8];

  [IRHistoryEventMO setPropertiesOfhistoryEventMO:v10 withhistoryEventDO:v9 inManagedObjectContext:v7];

  return v10;
}

+ (void)setPropertiesOfhistoryEventMO:(id)a3 withhistoryEventDO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v8 date];
  [v9 setDate:v10];

  v11 = [v8 event];
  v12 = [IREventMO IREventMOWithIREventDO:v11 historyEventMO:v9 inManagedObjectContext:v7];
  [v9 setEvent:v12];

  v13 = [v8 miloPredictionEvent];
  v14 = [IRMiLoPredictionEventMO miloPredictionEventMOWithmiloPredictionEventDO:v13 historyEventMO:v9 inManagedObjectContext:v7];
  [v9 setMiloPredictionEvent:v14];

  v15 = [v8 candidateIdentifier];
  [v9 setCandidateIdenfifier:v15];

  v16 = [v8 systemState];
  v17 = [IRSystemStateMO systemStateMOWithSystemStateDO:v16 historyEventMO:v9 inManagedObjectContext:v7];

  [v9 setSystemState:v17];
  v18 = [v8 sharingPolicy];

  [v9 setSharingPolicy:v18];
}

- (id)convert
{
  v3 = [IRHistoryEventDO alloc];
  v4 = [(IRHistoryEventMO *)self date];
  v5 = [(IRHistoryEventMO *)self candidateIdenfifier];
  v6 = [(IRHistoryEventMO *)self event];
  v7 = [v6 convert];
  v8 = [(IRHistoryEventMO *)self miloPredictionEvent];
  v9 = [v8 convert];
  v10 = [(IRHistoryEventMO *)self systemState];
  v11 = [v10 convert];
  v12 = [(IRHistoryEventMO *)self sharingPolicy];
  v13 = [(IRHistoryEventDO *)v3 initWithDate:v4 candidateIdentifier:v5 event:v7 miloPredictionEvent:v9 systemState:v11 sharingPolicy:v12];

  return v13;
}

@end