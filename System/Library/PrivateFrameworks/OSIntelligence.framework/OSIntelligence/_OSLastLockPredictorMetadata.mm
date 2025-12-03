@interface _OSLastLockPredictorMetadata
- (NSString)description;
- (_OSLastLockPredictorMetadata)initWithCoder:(id)coder;
- (_OSLastLockPredictorMetadata)initWithProtocolConformer:(id)conformer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _OSLastLockPredictorMetadata

- (void)encodeWithCoder:(id)coder
{
  modelVersion = self->modelVersion;
  coderCopy = coder;
  [coderCopy encodeObject:modelVersion forKey:@"modelVersion"];
  [coderCopy encodeObject:self->predictorType forKey:@"predictorType"];
  [coderCopy encodeObject:self->queryingMechanism forKey:@"queryingMechanism"];
  [coderCopy encodeDouble:@"recommendedRequeryTime" forKey:self->recommendedRequeryTime];
  [coderCopy encodeDouble:@"longThreshold" forKey:self->longThreshold];
  [coderCopy encodeDouble:@"confidenceThresholdStrict" forKey:self->confidenceThresholdStrict];
  [coderCopy encodeDouble:@"confidenceThresholdRelaxed" forKey:self->confidenceThresholdRelaxed];
  [coderCopy encodeBool:self->requireEnoughHistory forKey:@"requireEnoughHistory"];
}

- (_OSLastLockPredictorMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _OSLastLockPredictorMetadata;
  v5 = [(_OSLastLockPredictorMetadata *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelVersion"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"None";
    }

    objc_storeStrong(&v5->modelVersion, v8);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictorType"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"None";
    }

    objc_storeStrong(&v5->predictorType, v11);

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryingMechanism"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"None";
    }

    objc_storeStrong(&v5->queryingMechanism, v14);

    [coderCopy decodeDoubleForKey:@"recommendedRequeryTime"];
    v5->recommendedRequeryTime = v15;
    [coderCopy decodeDoubleForKey:@"longThreshold"];
    v5->longThreshold = v16;
    [coderCopy decodeDoubleForKey:@"confidenceThresholdStrict"];
    v5->confidenceThresholdStrict = v17;
    [coderCopy decodeDoubleForKey:@"confidenceThresholdRelaxed"];
    v5->confidenceThresholdRelaxed = v18;
    v5->requireEnoughHistory = [coderCopy decodeBoolForKey:@"requireEnoughHistory"];
    v19 = v5;
  }

  return v5;
}

- (_OSLastLockPredictorMetadata)initWithProtocolConformer:(id)conformer
{
  conformerCopy = conformer;
  v21.receiver = self;
  v21.super_class = _OSLastLockPredictorMetadata;
  v5 = [(_OSLastLockPredictorMetadata *)&v21 init];
  if (v5)
  {
    modelVersion = [conformerCopy modelVersion];
    v7 = modelVersion;
    if (modelVersion)
    {
      v8 = modelVersion;
    }

    else
    {
      v8 = @"None";
    }

    objc_storeStrong(&v5->modelVersion, v8);

    predictorType = [conformerCopy predictorType];
    v10 = predictorType;
    if (predictorType)
    {
      v11 = predictorType;
    }

    else
    {
      v11 = @"None";
    }

    objc_storeStrong(&v5->predictorType, v11);

    queryingMechanism = [conformerCopy queryingMechanism];
    v13 = queryingMechanism;
    if (queryingMechanism)
    {
      v14 = queryingMechanism;
    }

    else
    {
      v14 = @"None";
    }

    objc_storeStrong(&v5->queryingMechanism, v14);

    [conformerCopy recommendedRequeryTime];
    v5->recommendedRequeryTime = v15;
    [conformerCopy longThreshold];
    v5->longThreshold = v16;
    [conformerCopy confidenceThresholdStrict];
    v5->confidenceThresholdStrict = v17;
    [conformerCopy confidenceThresholdRelaxed];
    v5->confidenceThresholdRelaxed = v18;
    v5->requireEnoughHistory = [conformerCopy requireEnoughHistory];
    v19 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  predictorType = [(_OSLastLockPredictorMetadata *)self predictorType];
  queryingMechanism = [(_OSLastLockPredictorMetadata *)self queryingMechanism];
  [(_OSLastLockPredictorMetadata *)self recommendedRequeryTime];
  v7 = v6 / 60.0;
  [(_OSLastLockPredictorMetadata *)self longThreshold];
  v9 = v8 / 3600.0;
  [(_OSLastLockPredictorMetadata *)self confidenceThresholdRelaxed];
  v11 = v10;
  [(_OSLastLockPredictorMetadata *)self confidenceThresholdStrict];
  v13 = [v3 stringWithFormat:@"### Last Lock Predictor\n- Model Type: %@\n- How to Query: %@\n- Requery Time: %.2f minutes\n- Definition of Long Inactivity: >%.2f hours\n- Confidence Spectrum: 0 --- low --- %.2f --- medium --- %.2f --- high --- 1", predictorType, queryingMechanism, *&v7, *&v9, v11, v12];

  return v13;
}

@end