@interface LCFELModelTrainingEvent
- (id)init:(id)init batchProviderInfo:(id)info succeeded:(id)succeeded trainingError:(id)error;
@end

@implementation LCFELModelTrainingEvent

- (id)init:(id)init batchProviderInfo:(id)info succeeded:(id)succeeded trainingError:(id)error
{
  initCopy = init;
  infoCopy = info;
  succeededCopy = succeeded;
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = LCFELModelTrainingEvent;
  v15 = [(LCFELModelTrainingEvent *)&v21 init];
  if (v15)
  {
    v16 = +[LCFFeatureStoreContextId getContextId];
    contextId = v15->_contextId;
    v15->_contextId = v16;

    uUID = [MEMORY[0x277CCAD78] UUID];
    eventId = v15->_eventId;
    v15->_eventId = uUID;

    objc_storeStrong(&v15->_modelName, init);
    objc_storeStrong(&v15->_bachProviderInfo, info);
    objc_storeStrong(&v15->_succeeded, succeeded);
    objc_storeStrong(&v15->_trainingError, error);
  }

  return v15;
}

@end