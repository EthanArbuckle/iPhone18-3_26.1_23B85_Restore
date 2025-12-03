@interface LCFELChangePointDetectionEvent
- (id)init:(id)init results:(id)results succeeded:(id)succeeded analysisError:(id)error;
@end

@implementation LCFELChangePointDetectionEvent

- (id)init:(id)init results:(id)results succeeded:(id)succeeded analysisError:(id)error
{
  initCopy = init;
  resultsCopy = results;
  succeededCopy = succeeded;
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = LCFELChangePointDetectionEvent;
  v15 = [(LCFELChangePointDetectionEvent *)&v21 init];
  if (v15)
  {
    v16 = +[LCFFeatureStoreContextId getContextId];
    contextId = v15->_contextId;
    v15->_contextId = v16;

    uUID = [MEMORY[0x277CCAD78] UUID];
    eventId = v15->_eventId;
    v15->_eventId = uUID;

    objc_storeStrong(&v15->_inputBachProviderInfo, init);
    objc_storeStrong(&v15->_results, results);
    objc_storeStrong(&v15->_succeeded, succeeded);
    objc_storeStrong(&v15->_analysisError, error);
  }

  return v15;
}

@end