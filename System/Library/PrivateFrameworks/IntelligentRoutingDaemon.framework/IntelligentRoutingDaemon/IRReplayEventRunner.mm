@interface IRReplayEventRunner
- (IRReplayEventRunner)initWithServicePackage:(int64_t)package;
- (void)runSingleReplayEvent:(id)event withHistoryEventsContainer:(id)container;
@end

@implementation IRReplayEventRunner

- (IRReplayEventRunner)initWithServicePackage:(int64_t)package
{
  v8.receiver = self;
  v8.super_class = IRReplayEventRunner;
  v4 = [(IRReplayEventRunner *)&v8 init];
  if (v4)
  {
    v5 = [[IRPolicyEngine alloc] initWithServicePackage:package];
    policyEngine = v4->_policyEngine;
    v4->_policyEngine = v5;
  }

  return v4;
}

- (void)runSingleReplayEvent:(id)event withHistoryEventsContainer:(id)container
{
  policyEngine = self->_policyEngine;
  containerCopy = container;
  eventCopy = event;
  date = [eventCopy date];
  candidatesContainer = [eventCopy candidatesContainer];
  systemState = [eventCopy systemState];
  miloLslPrediction = [eventCopy miloLslPrediction];
  nearbyDeviceContainerDO = [eventCopy nearbyDeviceContainerDO];
  LOBYTE(v20) = 1;
  [(IRPolicyEngine *)policyEngine updateContextWithDate:date candidatesContainer:candidatesContainer historyEventsContainer:containerCopy systemState:systemState miloProviderLslPredictionResults:miloLslPrediction nearbyDeviceContainer:nearbyDeviceContainerDO fillInspection:v20];

  v14 = [IRContextInspection alloc];
  date2 = [eventCopy date];
  policyInspections = [(IRPolicyEngine *)self->_policyEngine policyInspections];
  systemState2 = [eventCopy systemState];

  appInFocusBundleID = [systemState2 appInFocusBundleID];
  v18 = [(IRContextInspection *)v14 initWithDate:date2 policies:policyInspections foregroundApp:appInFocusBundleID];
  contextsInspection = self->_contextsInspection;
  self->_contextsInspection = v18;
}

@end