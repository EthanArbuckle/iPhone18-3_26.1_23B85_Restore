@interface _OSLastLockPredictorMetadata
- (NSString)description;
- (_OSLastLockPredictorMetadata)initWithCoder:(id)a3;
- (_OSLastLockPredictorMetadata)initWithProtocolConformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _OSLastLockPredictorMetadata

- (void)encodeWithCoder:(id)a3
{
  modelVersion = self->modelVersion;
  v5 = a3;
  [v5 encodeObject:modelVersion forKey:@"modelVersion"];
  [v5 encodeObject:self->predictorType forKey:@"predictorType"];
  [v5 encodeObject:self->queryingMechanism forKey:@"queryingMechanism"];
  [v5 encodeDouble:@"recommendedRequeryTime" forKey:self->recommendedRequeryTime];
  [v5 encodeDouble:@"longThreshold" forKey:self->longThreshold];
  [v5 encodeDouble:@"confidenceThresholdStrict" forKey:self->confidenceThresholdStrict];
  [v5 encodeDouble:@"confidenceThresholdRelaxed" forKey:self->confidenceThresholdRelaxed];
  [v5 encodeBool:self->requireEnoughHistory forKey:@"requireEnoughHistory"];
}

- (_OSLastLockPredictorMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _OSLastLockPredictorMetadata;
  v5 = [(_OSLastLockPredictorMetadata *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelVersion"];
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

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictorType"];
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

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryingMechanism"];
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

    [v4 decodeDoubleForKey:@"recommendedRequeryTime"];
    v5->recommendedRequeryTime = v15;
    [v4 decodeDoubleForKey:@"longThreshold"];
    v5->longThreshold = v16;
    [v4 decodeDoubleForKey:@"confidenceThresholdStrict"];
    v5->confidenceThresholdStrict = v17;
    [v4 decodeDoubleForKey:@"confidenceThresholdRelaxed"];
    v5->confidenceThresholdRelaxed = v18;
    v5->requireEnoughHistory = [v4 decodeBoolForKey:@"requireEnoughHistory"];
    v19 = v5;
  }

  return v5;
}

- (_OSLastLockPredictorMetadata)initWithProtocolConformer:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _OSLastLockPredictorMetadata;
  v5 = [(_OSLastLockPredictorMetadata *)&v21 init];
  if (v5)
  {
    v6 = [v4 modelVersion];
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

    v9 = [v4 predictorType];
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

    v12 = [v4 queryingMechanism];
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

    [v4 recommendedRequeryTime];
    v5->recommendedRequeryTime = v15;
    [v4 longThreshold];
    v5->longThreshold = v16;
    [v4 confidenceThresholdStrict];
    v5->confidenceThresholdStrict = v17;
    [v4 confidenceThresholdRelaxed];
    v5->confidenceThresholdRelaxed = v18;
    v5->requireEnoughHistory = [v4 requireEnoughHistory];
    v19 = v5;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(_OSLastLockPredictorMetadata *)self predictorType];
  v5 = [(_OSLastLockPredictorMetadata *)self queryingMechanism];
  [(_OSLastLockPredictorMetadata *)self recommendedRequeryTime];
  v7 = v6 / 60.0;
  [(_OSLastLockPredictorMetadata *)self longThreshold];
  v9 = v8 / 3600.0;
  [(_OSLastLockPredictorMetadata *)self confidenceThresholdRelaxed];
  v11 = v10;
  [(_OSLastLockPredictorMetadata *)self confidenceThresholdStrict];
  v13 = [v3 stringWithFormat:@"### Last Lock Predictor\n- Model Type: %@\n- How to Query: %@\n- Requery Time: %.2f minutes\n- Definition of Long Inactivity: >%.2f hours\n- Confidence Spectrum: 0 --- low --- %.2f --- medium --- %.2f --- high --- 1", v4, v5, *&v7, *&v9, v11, v12];

  return v13;
}

@end