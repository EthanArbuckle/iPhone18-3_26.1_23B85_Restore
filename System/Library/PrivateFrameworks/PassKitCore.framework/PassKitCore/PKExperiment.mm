@interface PKExperiment
- (BOOL)BOOLeanForFactor:(id)factor;
- (BOOL)isTaggedForFactor:(id)factor;
- (PKExperiment)init;
- (PKExperiment)initWithClient:(id)client;
- (id)description;
- (id)experimentDetails;
- (id)filePathForFactor:(id)factor;
- (id)levelForFactor:(id)factor;
- (id)metadataForFactor:(id)factor;
- (id)stringForFactor:(id)factor;
- (void)trackExperimentExposure;
@end

@implementation PKExperiment

- (PKExperiment)init
{
  v14.receiver = self;
  v14.super_class = PKExperiment;
  v2 = [(PKExperiment *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_isExposed = 0;
    v4 = PKLogFacilityTypeGetObject(0x24uLL);
    v5 = os_signpost_id_make_with_pointer(v4, v3);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "init:trial", "", v13, 2u);
      }
    }

    v7 = [MEMORY[0x1E69DB520] clientWithIdentifier:254];
    trialClient = v3->_trialClient;
    v3->_trialClient = v7;

    v9 = v4;
    v10 = os_signpost_id_make_with_pointer(v9, v3);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_1AD337000, v9, OS_SIGNPOST_INTERVAL_END, v11, "init:trial", "", v13, 2u);
      }
    }
  }

  return v3;
}

- (PKExperiment)initWithClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = PKExperiment;
  v6 = [(PKExperiment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trialClient, client);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  namespaceName = [(PKExperiment *)self namespaceName];
  [v3 appendFormat:@"namespaceName: '%@'; ", namespaceName];

  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

- (id)experimentDetails
{
  namespaceName = [(PKExperiment *)self namespaceName];
  if (namespaceName)
  {
    v4 = [(TRIClient *)self->_trialClient experimentIdentifiersWithNamespaceName:namespaceName];
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      experimentId = [v4 experimentId];
      [v5 safelySetObject:experimentId forKey:@"experimentIdentifier"];

      treatmentId = [v4 treatmentId];
      [v5 safelySetObject:treatmentId forKey:@"treatmentIdentifier"];

      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "deploymentId")}];
      [v5 safelySetObject:v8 forKey:@"deploymentIdentifier"];

      namespaceName2 = [(PKExperiment *)self namespaceName];
      [v5 safelySetObject:namespaceName2 forKey:@"namespaceName"];

      v10 = [v5 copy];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)trackExperimentExposure
{
  experimentDetails = [(PKExperiment *)self experimentDetails];
  if (experimentDetails && !self->_isExposed)
  {
    v5 = experimentDetails;
    AnalyticsSendEvent();
    v4 = [v5 mutableCopy];
    [v4 setObject:@"userViewedExperiment" forKey:@"eventType"];
    [PKAnalyticsReporter subject:@"inApp" sendEvent:v4];
    self->_isExposed = 1;

    experimentDetails = v5;
  }
}

- (id)levelForFactor:(id)factor
{
  v5 = PKLogFacilityTypeGetObject(0x24uLL);
  factorCopy = factor;
  v7 = os_signpost_id_make_with_pointer(v5, self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v8, "get:levelForFactor", "", buf, 2u);
    }
  }

  trialClient = self->_trialClient;
  namespaceName = [(PKExperiment *)self namespaceName];
  v11 = [(TRIClient *)trialClient levelForFactor:factorCopy withNamespaceName:namespaceName];

  v12 = v5;
  v13 = os_signpost_id_make_with_pointer(v12, self);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AD337000, v12, OS_SIGNPOST_INTERVAL_END, v14, "get:levelForFactor", "", v16, 2u);
    }
  }

  return v11;
}

- (id)filePathForFactor:(id)factor
{
  v3 = [(PKExperiment *)self levelForFactor:factor];
  fileValue = [v3 fileValue];

  if ([fileValue hasPath])
  {
    path = [fileValue path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)stringForFactor:(id)factor
{
  v3 = [(PKExperiment *)self levelForFactor:factor];
  stringValue = [v3 stringValue];

  return stringValue;
}

- (BOOL)BOOLeanForFactor:(id)factor
{
  v3 = [(PKExperiment *)self levelForFactor:factor];
  bOOLeanValue = [v3 BOOLeanValue];

  return bOOLeanValue;
}

- (id)metadataForFactor:(id)factor
{
  v3 = [(PKExperiment *)self levelForFactor:factor];
  metadata = [v3 metadata];

  return metadata;
}

- (BOOL)isTaggedForFactor:(id)factor
{
  v3 = [(PKExperiment *)self metadataForFactor:factor];
  v4 = [v3 objectForKeyedSubscript:@"tag"];
  v5 = [v4 length] != 0;

  return v5;
}

@end