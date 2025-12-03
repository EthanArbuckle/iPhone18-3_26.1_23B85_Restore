@interface LCFELShadowEvaluationEvent
- (id)init:(id)init inputBachProviderInfo:(id)info evaluatedPredictions:(id)predictions accuracy:(id)accuracy succeeded:(id)succeeded evaluationError:(id)error;
@end

@implementation LCFELShadowEvaluationEvent

- (id)init:(id)init inputBachProviderInfo:(id)info evaluatedPredictions:(id)predictions accuracy:(id)accuracy succeeded:(id)succeeded evaluationError:(id)error
{
  initCopy = init;
  infoCopy = info;
  predictionsCopy = predictions;
  accuracyCopy = accuracy;
  succeededCopy = succeeded;
  errorCopy = error;
  v27.receiver = self;
  v27.super_class = LCFELShadowEvaluationEvent;
  v18 = [(LCFELShadowEvaluationEvent *)&v27 init];
  if (v18)
  {
    v19 = +[LCFFeatureStoreContextId getContextId];
    contextId = v18->_contextId;
    v18->_contextId = v19;

    uUID = [MEMORY[0x277CCAD78] UUID];
    eventId = v18->_eventId;
    v18->_eventId = uUID;

    objc_storeStrong(&v18->_modelName, init);
    objc_storeStrong(&v18->_inputBachProviderInfo, info);
    objc_storeStrong(&v18->_evaluatedPredictions, predictions);
    objc_storeStrong(&v18->_succeeded, succeeded);
    objc_storeStrong(&v18->_evaluationError, error);
    objc_storeStrong(&v18->_accuracy, accuracy);
  }

  return v18;
}

@end