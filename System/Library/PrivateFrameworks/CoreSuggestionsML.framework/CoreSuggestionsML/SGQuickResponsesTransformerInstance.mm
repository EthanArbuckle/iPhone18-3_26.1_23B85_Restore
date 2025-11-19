@interface SGQuickResponsesTransformerInstance
- (SGQuickResponsesTransformerInstance)initWithConfig:(id)a3 featurizer:(id)a4 source:(id)a5 labeler:(id)a6 sampler:(id)a7;
@end

@implementation SGQuickResponsesTransformerInstance

- (SGQuickResponsesTransformerInstance)initWithConfig:(id)a3 featurizer:(id)a4 source:(id)a5 labeler:(id)a6 sampler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  obj = a7;
  v16 = a7;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:415 description:{@"Invalid parameter not satisfying: %@", @"config"}];

    if (v13)
    {
LABEL_3:
      if (v14)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"featurizer"}];

  if (v14)
  {
LABEL_4:
    if (v15)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

LABEL_15:
  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:417 description:{@"Invalid parameter not satisfying: %@", @"source"}];

  if (v15)
  {
    goto LABEL_7;
  }

LABEL_5:
  if ([v12 mode] != 1)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:418 description:{@"Invalid parameter not satisfying: %@", @"labeler != nil || config.mode == SGModelModePrediction"}];
  }

LABEL_7:
  if (!v16 && [v12 mode] != 1)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesModel.m" lineNumber:419 description:{@"Invalid parameter not satisfying: %@", @"sampler != nil || config.mode == SGModelModePrediction"}];
  }

  v28.receiver = self;
  v28.super_class = SGQuickResponsesTransformerInstance;
  v17 = [(SGQuickResponsesTransformerInstance *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_config, a3);
    objc_storeStrong(&v18->_featurizer, a4);
    objc_storeStrong(&v18->_source, a5);
    objc_storeStrong(&v18->_labeler, a6);
    objc_storeStrong(&v18->_sampler, obj);
  }

  return v18;
}

@end