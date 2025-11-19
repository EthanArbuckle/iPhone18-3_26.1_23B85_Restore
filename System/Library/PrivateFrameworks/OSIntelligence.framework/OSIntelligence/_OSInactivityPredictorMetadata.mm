@interface _OSInactivityPredictorMetadata
- (NSString)description;
- (_OSInactivityPredictorMetadata)initWithCoder:(id)a3;
- (_OSInactivityPredictorMetadata)initWithProtocolConformer:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _OSInactivityPredictorMetadata

- (void)encodeWithCoder:(id)a3
{
  modelVersion = self->modelVersion;
  v5 = a3;
  [v5 encodeObject:modelVersion forKey:@"modelVersion"];
  [v5 encodeObject:self->predictorType forKey:@"predictorType"];
  [v5 encodeObject:self->queryingMechanism forKey:@"queryingMechanism"];
  [v5 encodeDouble:@"recommendedWaitTime" forKey:self->recommendedWaitTime];
  [v5 encodeDouble:@"longThreshold" forKey:self->longThreshold];
  [v5 encodeDouble:@"confidenceThresholdStrict" forKey:self->confidenceThresholdStrict];
  [v5 encodeDouble:@"confidenceThresholdRelaxed" forKey:self->confidenceThresholdRelaxed];
  [v5 encodeBool:self->requireEnoughHistory forKey:@"requireEnoughHistory"];
}

- (_OSInactivityPredictorMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _OSInactivityPredictorMetadata;
  v5 = [(_OSInactivityPredictorMetadata *)&v21 init];
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

    [v4 decodeDoubleForKey:@"recommendedWaitTime"];
    v5->recommendedWaitTime = v15;
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

- (_OSInactivityPredictorMetadata)initWithProtocolConformer:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _OSInactivityPredictorMetadata;
  v5 = [(_OSInactivityPredictorMetadata *)&v21 init];
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

    [v4 recommendedWaitTime];
    v5->recommendedWaitTime = v15;
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
  v4 = [(_OSInactivityPredictorMetadata *)self predictorType];
  v5 = [(_OSInactivityPredictorMetadata *)self queryingMechanism];
  [(_OSInactivityPredictorMetadata *)self recommendedWaitTime];
  v7 = v6 / 60.0;
  [(_OSInactivityPredictorMetadata *)self longThreshold];
  v9 = v8 / 3600.0;
  [(_OSInactivityPredictorMetadata *)self confidenceThresholdRelaxed];
  v11 = v10;
  [(_OSInactivityPredictorMetadata *)self confidenceThresholdStrict];
  v13 = [v3 stringWithFormat:@"### Inactivity Predictor\n- Model Type: %@\n- How to Query: %@\n- Wait Time Before Query: %.2f minutes\n- Definition of Long Inactivity: >%.2f hours\n- Confidence Spectrum: 0 --- low --- %.2f --- medium --- %.2f --- high --- 1", v4, v5, *&v7, *&v9, v11, v12];

  return v13;
}

@end