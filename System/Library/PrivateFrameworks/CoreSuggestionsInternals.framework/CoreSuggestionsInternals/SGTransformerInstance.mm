@interface SGTransformerInstance
+ (id)defaultSessionDescriptorForModelId:(id)id featureVersion:(id)version language:(id)language windowAndNgrams:(id)ngrams;
+ (id)defaultWindowAndNgrams;
- (SGTransformerInstance)initWithTransformer:(id)transformer sessionDescriptor:(id)descriptor modelClass:(Class)class;
- (id)trainingFeaturesOf:(id)of;
@end

@implementation SGTransformerInstance

- (id)trainingFeaturesOf:(id)of
{
  ofCopy = of;
  sessionDescriptor = [(SGTransformerInstance *)self sessionDescriptor];
  transformer = [(SGTransformerInstance *)self transformer];

  if (transformer)
  {
    if (sessionDescriptor)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"self.transformer"}];

    if (sessionDescriptor)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"sessionDescriptor"}];

LABEL_3:
  if (![(SGTransformerInstance *)self modelClass])
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"self.modelClass"}];
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x277D02568]) initWithSessionDescriptor:sessionDescriptor modelClass:{-[SGTransformerInstance modelClass](self, "modelClass")}];
  transformer2 = [(SGTransformerInstance *)self transformer];
  v11 = [transformer2 transform:ofCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"[vector isKindOfClass:PMLSparseVector.class]"}];
  }

  v12 = [objc_alloc(MEMORY[0x277D02560]) initWithSource:v9 vector:v11];

  objc_autoreleasePoolPop(v8);

  return v12;
}

- (SGTransformerInstance)initWithTransformer:(id)transformer sessionDescriptor:(id)descriptor modelClass:(Class)class
{
  transformerCopy = transformer;
  descriptorCopy = descriptor;
  v12 = descriptorCopy;
  if (transformerCopy)
  {
    if (descriptorCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"sessionDescriptor"}];

    if (class)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:291 description:{@"Invalid parameter not satisfying: %@", @"transformer"}];

  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (class)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:293 description:{@"Invalid parameter not satisfying: %@", @"modelClass"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = SGTransformerInstance;
  v13 = [(SGTransformerInstance *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_transformer, transformer);
    objc_storeStrong(&v14->_sessionDescriptor, descriptor);
    objc_storeStrong(&v14->_modelClass, class);
  }

  return v14;
}

+ (id)defaultSessionDescriptorForModelId:(id)id featureVersion:(id)version language:(id)language windowAndNgrams:(id)ngrams
{
  v9 = MEMORY[0x277CCACA8];
  ngramsCopy = ngrams;
  languageCopy = language;
  versionCopy = version;
  idCopy = id;
  v14 = [v9 alloc];
  first = [ngramsCopy first];
  second = [ngramsCopy second];

  versionCopy = [v14 initWithFormat:@"TW=%@&NG=%@&FV=%@", first, second, versionCopy];
  v18 = [MEMORY[0x277D41F68] descriptorForName:idCopy version:versionCopy locale:languageCopy];

  return v18;
}

+ (id)defaultWindowAndNgrams
{
  rules = [MEMORY[0x277D02558] rules];
  v3 = [rules objectForKeyedSubscript:@"TOKEN_WINDOW"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];
  if (unsignedIntegerValue)
  {
    v5 = unsignedIntegerValue;
  }

  else
  {
    v5 = 12;
  }

  v6 = [rules objectForKeyedSubscript:@"NGRAMS"];
  unsignedIntegerValue2 = [v6 unsignedIntegerValue];
  if (unsignedIntegerValue2)
  {
    v8 = unsignedIntegerValue2;
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