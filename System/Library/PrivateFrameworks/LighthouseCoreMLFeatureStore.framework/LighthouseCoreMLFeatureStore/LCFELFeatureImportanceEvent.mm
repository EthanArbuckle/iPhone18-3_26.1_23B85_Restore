@interface LCFELFeatureImportanceEvent
- (id)init:(id)a3 targetLabelFeatureName:(id)a4 results:(id)a5 succeeded:(id)a6 analysisError:(id)a7;
@end

@implementation LCFELFeatureImportanceEvent

- (id)init:(id)a3 targetLabelFeatureName:(id)a4 results:(id)a5 succeeded:(id)a6 analysisError:(id)a7
{
  v23 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = LCFELFeatureImportanceEvent;
  v17 = [(LCFELFeatureImportanceEvent *)&v24 init];
  if (v17)
  {
    v18 = +[LCFFeatureStoreContextId getContextId];
    contextId = v17->_contextId;
    v17->_contextId = v18;

    v20 = [MEMORY[0x277CCAD78] UUID];
    eventId = v17->_eventId;
    v17->_eventId = v20;

    objc_storeStrong(&v17->_inputBachProviderInfo, a3);
    objc_storeStrong(&v17->_targetLabelFeatureName, a4);
    objc_storeStrong(&v17->_results, a5);
    objc_storeStrong(&v17->_succeeded, a6);
    objc_storeStrong(&v17->_analysisError, a7);
  }

  return v17;
}

@end