@interface SGTransformerInstance
+ (id)defaultSessionDescriptorForModelId:(id)a3 featureVersion:(id)a4 language:(id)a5 windowAndNgrams:(id)a6;
+ (id)defaultWindowAndNgrams;
- (SGTransformerInstance)initWithTransformer:(id)a3 sessionDescriptor:(id)a4 modelClass:(Class)a5;
- (id)trainingFeaturesOf:(id)a3;
@end

@implementation SGTransformerInstance

- (id)trainingFeaturesOf:(id)a3
{
  v5 = a3;
  v6 = [(SGTransformerInstance *)self sessionDescriptor];
  v7 = [(SGTransformerInstance *)self transformer];

  if (v7)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"self.transformer"}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"sessionDescriptor"}];

LABEL_3:
  if (![(SGTransformerInstance *)self modelClass])
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"self.modelClass"}];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x277D02568]) initWithSessionDescriptor:v6 modelClass:{-[SGTransformerInstance modelClass](self, "modelClass")}];
  v10 = [(SGTransformerInstance *)self transformer];
  v11 = [v10 transform:v5];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"[vector isKindOfClass:PMLSparseVector.class]"}];
  }

  v12 = [objc_alloc(MEMORY[0x277D02560]) initWithSource:v9 vector:v11];

  objc_autoreleasePoolPop(v8);

  return v12;
}

- (SGTransformerInstance)initWithTransformer:(id)a3 sessionDescriptor:(id)a4 modelClass:(Class)a5
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"sessionDescriptor"}];

    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"transformer"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_4;
  }

LABEL_9:
  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"modelClass"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = SGTransformerInstance;
  v13 = [(SGTransformerInstance *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_transformer, a3);
    objc_storeStrong(&v14->_sessionDescriptor, a4);
    objc_storeStrong(&v14->_modelClass, a5);
  }

  return v14;
}

+ (id)defaultSessionDescriptorForModelId:(id)a3 featureVersion:(id)a4 language:(id)a5 windowAndNgrams:(id)a6
{
  v9 = MEMORY[0x277CCACA8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 alloc];
  v15 = [v10 first];
  v16 = [v10 second];

  v17 = [v14 initWithFormat:@"TW=%@&NG=%@&FV=%@", v15, v16, v12];
  v18 = [MEMORY[0x277D41F68] descriptorForName:v13 version:v17 locale:v11];

  return v18;
}

+ (id)defaultWindowAndNgrams
{
  v2 = [MEMORY[0x277D02558] rules];
  v3 = [v2 objectForKeyedSubscript:@"TOKEN_WINDOW"];
  v4 = [v3 unsignedIntegerValue];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 12;
  }

  v6 = [v2 objectForKeyedSubscript:@"NGRAMS"];
  v7 = [v6 unsignedIntegerValue];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 3;
  }

  v9 = MEMORY[0x277D42648];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v12 = [v9 tupleWithFirst:v10 second:v11];

  return v12;
}

@end