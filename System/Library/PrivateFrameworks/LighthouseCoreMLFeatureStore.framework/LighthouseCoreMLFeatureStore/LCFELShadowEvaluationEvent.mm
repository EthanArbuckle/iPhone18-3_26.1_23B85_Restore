@interface LCFELShadowEvaluationEvent
- (id)init:(id)a3 inputBachProviderInfo:(id)a4 evaluatedPredictions:(id)a5 accuracy:(id)a6 succeeded:(id)a7 evaluationError:(id)a8;
@end

@implementation LCFELShadowEvaluationEvent

- (id)init:(id)a3 inputBachProviderInfo:(id)a4 evaluatedPredictions:(id)a5 accuracy:(id)a6 succeeded:(id)a7 evaluationError:(id)a8
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v27.receiver = self;
  v27.super_class = LCFELShadowEvaluationEvent;
  v18 = [(LCFELShadowEvaluationEvent *)&v27 init];
  if (v18)
  {
    v19 = +[LCFFeatureStoreContextId getContextId];
    contextId = v18->_contextId;
    v18->_contextId = v19;

    v21 = [MEMORY[0x277CCAD78] UUID];
    eventId = v18->_eventId;
    v18->_eventId = v21;

    objc_storeStrong(&v18->_modelName, a3);
    objc_storeStrong(&v18->_inputBachProviderInfo, a4);
    objc_storeStrong(&v18->_evaluatedPredictions, a5);
    objc_storeStrong(&v18->_succeeded, a7);
    objc_storeStrong(&v18->_evaluationError, a8);
    objc_storeStrong(&v18->_accuracy, a6);
  }

  return v18;
}

@end