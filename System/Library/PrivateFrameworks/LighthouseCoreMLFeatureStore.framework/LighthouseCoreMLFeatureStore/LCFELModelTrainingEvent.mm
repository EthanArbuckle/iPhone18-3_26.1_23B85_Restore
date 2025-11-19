@interface LCFELModelTrainingEvent
- (id)init:(id)a3 batchProviderInfo:(id)a4 succeeded:(id)a5 trainingError:(id)a6;
@end

@implementation LCFELModelTrainingEvent

- (id)init:(id)a3 batchProviderInfo:(id)a4 succeeded:(id)a5 trainingError:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = LCFELModelTrainingEvent;
  v15 = [(LCFELModelTrainingEvent *)&v21 init];
  if (v15)
  {
    v16 = +[LCFFeatureStoreContextId getContextId];
    contextId = v15->_contextId;
    v15->_contextId = v16;

    v18 = [MEMORY[0x277CCAD78] UUID];
    eventId = v15->_eventId;
    v15->_eventId = v18;

    objc_storeStrong(&v15->_modelName, a3);
    objc_storeStrong(&v15->_bachProviderInfo, a4);
    objc_storeStrong(&v15->_succeeded, a5);
    objc_storeStrong(&v15->_trainingError, a6);
  }

  return v15;
}

@end