@interface SGQuickResponsesTransformerInstance
- (SGQuickResponsesTransformerInstance)initWithConfig:(id)config featurizer:(id)featurizer source:(id)source labeler:(id)labeler sampler:(id)sampler;
@end

@implementation SGQuickResponsesTransformerInstance

- (SGQuickResponsesTransformerInstance)initWithConfig:(id)config featurizer:(id)featurizer source:(id)source labeler:(id)labeler sampler:(id)sampler
{
  configCopy = config;
  featurizerCopy = featurizer;
  sourceCopy = source;
  labelerCopy = labeler;
  obj = sampler;
  samplerCopy = sampler;
  if (configCopy)
  {
    if (featurizerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:415 description:{@"Invalid parameter not satisfying: %@", @"config"}];

    if (featurizerCopy)
    {
LABEL_3:
      if (sourceCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"featurizer"}];

  if (sourceCopy)
  {
LABEL_4:
    if (labelerCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_15:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:417 description:{@"Invalid parameter not satisfying: %@", @"source"}];

  if (labelerCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  if ([configCopy mode] != 1)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:418 description:{@"Invalid parameter not satisfying: %@", @"labeler != nil || config.mode == SGModelModePrediction"}];
  }

LABEL_7:
  if (!samplerCopy && [configCopy mode] != 1)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:419 description:{@"Invalid parameter not satisfying: %@", @"sampler != nil || config.mode == SGModelModePrediction"}];
  }

  v28.receiver = self;
  v28.super_class = SGQuickResponsesTransformerInstance;
  v17 = [(SGQuickResponsesTransformerInstance *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_config, config);
    objc_storeStrong(&v18->_featurizer, featurizer);
    objc_storeStrong(&v18->_source, source);
    objc_storeStrong(&v18->_labeler, labeler);
    objc_storeStrong(&v18->_sampler, obj);
  }

  return v18;
}

@end