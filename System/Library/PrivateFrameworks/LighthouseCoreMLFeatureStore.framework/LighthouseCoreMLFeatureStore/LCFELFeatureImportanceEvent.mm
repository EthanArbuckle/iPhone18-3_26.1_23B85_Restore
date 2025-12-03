@interface LCFELFeatureImportanceEvent
- (id)init:(id)init targetLabelFeatureName:(id)name results:(id)results succeeded:(id)succeeded analysisError:(id)error;
@end

@implementation LCFELFeatureImportanceEvent

- (id)init:(id)init targetLabelFeatureName:(id)name results:(id)results succeeded:(id)succeeded analysisError:(id)error
{
  initCopy = init;
  nameCopy = name;
  resultsCopy = results;
  succeededCopy = succeeded;
  errorCopy = error;
  v24.receiver = self;
  v24.super_class = LCFELFeatureImportanceEvent;
  v17 = [(LCFELFeatureImportanceEvent *)&v24 init];
  if (v17)
  {
    v18 = +[LCFFeatureStoreContextId getContextId];
    contextId = v17->_contextId;
    v17->_contextId = v18;

    uUID = [MEMORY[0x277CCAD78] UUID];
    eventId = v17->_eventId;
    v17->_eventId = uUID;

    objc_storeStrong(&v17->_inputBachProviderInfo, init);
    objc_storeStrong(&v17->_targetLabelFeatureName, name);
    objc_storeStrong(&v17->_results, results);
    objc_storeStrong(&v17->_succeeded, succeeded);
    objc_storeStrong(&v17->_analysisError, error);
  }

  return v17;
}

@end