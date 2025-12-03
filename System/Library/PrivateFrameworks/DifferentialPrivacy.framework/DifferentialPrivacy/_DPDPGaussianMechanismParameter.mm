@interface _DPDPGaussianMechanismParameter
- (BOOL)isValid;
- (_DPDPGaussianMechanismParameter)initWithV1Metadata:(id)metadata maxCentralEpsilon:(double)epsilon maxCentralDelta:(double)delta;
- (_DPDPGaussianMechanismParameter)initWithV2Metadata:(id)metadata maxCentralEpsilon:(double)epsilon maxCentralDelta:(double)delta;
- (id)auditedMetadata;
- (void)isValid;
@end

@implementation _DPDPGaussianMechanismParameter

- (_DPDPGaussianMechanismParameter)initWithV1Metadata:(id)metadata maxCentralEpsilon:(double)epsilon maxCentralDelta:(double)delta
{
  metadataCopy = metadata;
  v51.receiver = self;
  v51.super_class = _DPDPGaussianMechanismParameter;
  v9 = [(_DPDPGaussianMechanismParameter *)&v51 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_23;
  }

  v9->_maxCentralEpsilon = epsilon;
  v9->_maxCentralDelta = delta;
  v11 = [metadataCopy objectForKeyedSubscript:@"AlgorithmParameters"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v44 = +[_DPLog framework];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [_DPDPGaussianMechanismParameter initWithV1Metadata:maxCentralEpsilon:maxCentralDelta:];
    }

    goto LABEL_36;
  }

  v12 = [v11 objectForKeyedSubscript:@"Mechanism"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_27:
    v44 = +[_DPLog framework];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [_DPDPGaussianMechanismParameter initWithV1Metadata:maxCentralEpsilon:maxCentralDelta:];
    }

    goto LABEL_36;
  }

  v13 = [v11 objectForKeyedSubscript:@"Mechanism"];
  v14 = [v13 isEqualToString:@"GaussianFromSigma"];

  if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

  v15 = [v11 objectForKeyedSubscript:@"OverallEpsilon"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_33:

LABEL_34:
    v44 = +[_DPLog framework];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [_DPDPGaussianMechanismParameter initWithV1Metadata:maxCentralEpsilon:maxCentralDelta:];
    }

    goto LABEL_36;
  }

  v16 = [v11 objectForKeyedSubscript:@"OverallDelta"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_32:

    goto LABEL_33;
  }

  v17 = [v11 objectForKeyedSubscript:@"ClippingBound"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_31:

    goto LABEL_32;
  }

  v18 = [v11 objectForKeyedSubscript:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  v19 = [v11 objectForKeyedSubscript:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_30;
  }

  v47 = [v11 objectForKeyedSubscript:?];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_34;
  }

  v20 = [v11 objectForKeyedSubscript:@"OverallEpsilon"];
  [v20 doubleValue];
  v10->_overallEpsilon = v21;

  v22 = [v11 objectForKeyedSubscript:@"OverallDelta"];
  [v22 doubleValue];
  v10->_overallDelta = v23;

  v24 = [v11 objectForKeyedSubscript:@"SigmaAfterNormalizing"];
  [v24 doubleValue];
  v10->_sigmaAfterNormalization = v25;

  v26 = [v11 objectForKeyedSubscript:@"NumChunks"];
  v10->_numChunks = [v26 intValue];

  v27 = [v11 objectForKeyedSubscript:@"ClippingBound"];
  [v27 doubleValue];
  v10->_clippingBound = v28;

  v29 = [v11 objectForKeyedSubscript:@"OverallClippingBound"];
  [v29 doubleValue];
  v10->_overallClippingBound = v30;

  *&v10->_isMomentsAccountantAlgorithm = 0;
  v31 = [metadataCopy copy];
  metadata = v10->_metadata;
  v10->_metadata = v31;

  v33 = [v11 objectForKeyedSubscript:@"CurrentCohortSize"];
  if (v33 || ([v11 objectForKeyedSubscript:@"MaxCohortSize"], (v33 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v11, "objectForKeyedSubscript:", @"PopulationSize"), (v33 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v11, "objectForKeyedSubscript:", @"RenyiOrder"), (v33 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v46 = [v11 objectForKeyedSubscript:@"NumIterations"];

    if (!v46)
    {
      goto LABEL_22;
    }
  }

  v34 = [v11 objectForKeyedSubscript:@"CurrentCohortSize"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_41;
  }

  v35 = [v11 objectForKeyedSubscript:@"MaxCohortSize"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_40:

LABEL_41:
LABEL_42:
    v44 = +[_DPLog framework];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [_DPDPGaussianMechanismParameter initWithV1Metadata:maxCentralEpsilon:maxCentralDelta:];
    }

LABEL_36:

    v43 = 0;
    goto LABEL_37;
  }

  v36 = [v11 objectForKeyedSubscript:@"PopulationSize"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_39:

    goto LABEL_40;
  }

  v37 = [v11 objectForKeyedSubscript:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_39;
  }

  v49 = [v11 objectForKeyedSubscript:?];
  objc_opt_class();
  v50 = objc_opt_isKindOfClass();

  if ((v50 & 1) == 0)
  {
    goto LABEL_42;
  }

  v10->_isMomentsAccountantAlgorithm = 1;
  v38 = [v11 objectForKeyedSubscript:@"CurrentCohortSize"];
  v10->_currentCohortSize = [v38 longLongValue];

  v39 = [v11 objectForKeyedSubscript:@"MaxCohortSize"];
  v10->_maxCohortSize = [v39 longLongValue];

  v40 = [v11 objectForKeyedSubscript:@"PopulationSize"];
  v10->_populationSize = [v40 longLongValue];

  v41 = [v11 objectForKeyedSubscript:@"NumIterations"];
  v10->_numIterations = [v41 longLongValue];

  v42 = [v11 objectForKeyedSubscript:@"RenyiOrder"];
  v10->_renyiOrder = [v42 intValue];

LABEL_22:
LABEL_23:
  v43 = v10;
LABEL_37:

  return v43;
}

- (_DPDPGaussianMechanismParameter)initWithV2Metadata:(id)metadata maxCentralEpsilon:(double)epsilon maxCentralDelta:(double)delta
{
  metadataCopy = metadata;
  v56.receiver = self;
  v56.super_class = _DPDPGaussianMechanismParameter;
  v9 = [(_DPDPGaussianMechanismParameter *)&v56 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_17;
  }

  v9->_maxCentralEpsilon = epsilon;
  v9->_maxCentralDelta = delta;
  v11 = [metadataCopy objectForKeyedSubscript:@"DediscoTaskConfig"];
  v12 = [v11 objectForKeyedSubscript:@"DPConfig"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v50 = +[_DPLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [_DPDPGaussianMechanismParameter initWithV2Metadata:maxCentralEpsilon:maxCentralDelta:];
    }

    goto LABEL_30;
  }

  v13 = [v12 objectForKeyedSubscript:@"Mechanism"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_21:
    v50 = +[_DPLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [_DPDPGaussianMechanismParameter initWithV2Metadata:maxCentralEpsilon:maxCentralDelta:];
    }

    goto LABEL_30;
  }

  v14 = [v12 objectForKeyedSubscript:@"Mechanism"];
  v15 = [v14 isEqualToString:@"GaussianWithSubsampledMomentsAccountant"];

  if ((v15 & 1) == 0)
  {
    goto LABEL_21;
  }

  v16 = [v12 objectForKeyedSubscript:@"TargetCentralEpsilon"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_27:

LABEL_28:
    v50 = +[_DPLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [_DPDPGaussianMechanismParameter initWithV1Metadata:maxCentralEpsilon:maxCentralDelta:];
    }

    goto LABEL_30;
  }

  v17 = [v12 objectForKeyedSubscript:@"TargetCentralDelta"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

  v18 = [v12 objectForKeyedSubscript:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_25:

    goto LABEL_26;
  }

  v19 = [v12 objectForKeyedSubscript:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

  v54 = v19;
  v20 = [v12 objectForKeyedSubscript:?];
  objc_opt_class();
  v21 = v20;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v19 = v54;
    goto LABEL_24;
  }

  v22 = [v12 objectForKeyedSubscript:?];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_28;
  }

  v23 = [v12 objectForKeyedSubscript:@"TargetCentralEpsilon"];
  [v23 doubleValue];
  v10->_overallEpsilon = v24;

  v25 = [v12 objectForKeyedSubscript:@"TargetCentralDelta"];
  [v25 doubleValue];
  v10->_overallDelta = v26;

  v27 = [v12 objectForKeyedSubscript:@"SigmaAfterNormalizing"];
  [v27 doubleValue];
  v10->_sigmaAfterNormalization = v28;

  v29 = [v12 objectForKeyedSubscript:@"NumChunks"];
  v10->_numChunks = [v29 intValue];

  v30 = [v12 objectForKeyedSubscript:@"ClippingBound"];
  [v30 doubleValue];
  v10->_clippingBound = v31;

  v32 = [v12 objectForKeyedSubscript:@"OverallClippingBound"];
  [v32 doubleValue];
  v10->_overallClippingBound = v33;

  v10->_isMomentsAccountantAlgorithm = 1;
  v34 = [metadataCopy objectForKeyedSubscript:@"DediscoTaskConfig"];
  v35 = [v34 objectForKeyedSubscript:@"MinBatchSize"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_35:

LABEL_36:
    v50 = +[_DPLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [_DPDPGaussianMechanismParameter initWithV1Metadata:maxCentralEpsilon:maxCentralDelta:];
    }

LABEL_30:

    v49 = 0;
    goto LABEL_31;
  }

  v36 = [v12 objectForKeyedSubscript:@"MaxCohortSize"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_34:

    goto LABEL_35;
  }

  v37 = [v12 objectForKeyedSubscript:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_33:

    goto LABEL_34;
  }

  v53 = v37;
  v38 = [v12 objectForKeyedSubscript:?];
  objc_opt_class();
  v55 = v38;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v37 = v53;
    goto LABEL_33;
  }

  v39 = [v12 objectForKeyedSubscript:?];
  objc_opt_class();
  v40 = objc_opt_isKindOfClass();

  if ((v40 & 1) == 0)
  {
    goto LABEL_36;
  }

  v41 = [metadataCopy objectForKeyedSubscript:@"DediscoTaskConfig"];
  v42 = [v41 objectForKeyedSubscript:@"MinBatchSize"];
  v10->_currentCohortSize = [v42 longLongValue];

  v43 = [v12 objectForKeyedSubscript:@"MaxCohortSize"];
  v10->_maxCohortSize = [v43 longLongValue];

  v44 = [v12 objectForKeyedSubscript:@"PopulationSize"];
  v10->_populationSize = [v44 longLongValue];

  v45 = [v12 objectForKeyedSubscript:@"NumIterations"];
  v10->_numIterations = [v45 longLongValue];

  v46 = [v12 objectForKeyedSubscript:@"RenyiOrder"];
  v10->_renyiOrder = [v46 intValue];

  v10->_isV2 = 1;
  v47 = [metadataCopy copy];
  metadata = v10->_metadata;
  v10->_metadata = v47;

LABEL_17:
  v49 = v10;
LABEL_31:

  return v49;
}

- (BOOL)isValid
{
  [(_DPDPGaussianMechanismParameter *)self overallEpsilon];
  [(_DPDPGaussianMechanismParameter *)self overallDelta];
  [(_DPDPGaussianMechanismParameter *)self sigmaAfterNormalization];
  [(_DPDPGaussianMechanismParameter *)self clippingBound];
  [(_DPDPGaussianMechanismParameter *)self overallClippingBound];
  [(_DPDPGaussianMechanismParameter *)self overallEpsilon];
  if (v3 <= 0.0 || ([(_DPDPGaussianMechanismParameter *)self overallDelta], v4 <= 0.0) || ([(_DPDPGaussianMechanismParameter *)self sigmaAfterNormalization], v5 <= 0.0) || ([(_DPDPGaussianMechanismParameter *)self clippingBound], v6 <= 0.0) || ([(_DPDPGaussianMechanismParameter *)self overallClippingBound], v7 <= 0.0) || [(_DPDPGaussianMechanismParameter *)self numChunks]<= 0)
  {
    v9 = +[_DPLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DPDPGaussianMechanismParameter isValid];
    }

    goto LABEL_12;
  }

  [(_DPDPGaussianMechanismParameter *)self sigmaAfterNormalization];
  if (v8 < 0.5)
  {
    v9 = +[_DPLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DPDPGaussianMechanismParameter isValid];
    }

LABEL_12:

    return 0;
  }

  [(_DPDPGaussianMechanismParameter *)self overallEpsilon];
  v12 = v11;
  [(_DPDPGaussianMechanismParameter *)self maxCentralEpsilon];
  if (v12 > v13)
  {
    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(_DPDPGaussianMechanismParameter *)self isValid];
    }

LABEL_20:

    return 0;
  }

  [(_DPDPGaussianMechanismParameter *)self overallDelta];
  v16 = v15;
  [(_DPDPGaussianMechanismParameter *)self maxCentralDelta];
  if (v16 > v17)
  {
    v14 = +[_DPLog framework];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(_DPDPGaussianMechanismParameter *)self isValid];
    }

    goto LABEL_20;
  }

  [(_DPDPGaussianMechanismParameter *)self sigmaAfterNormalization];
  v19 = v18;
  if ([(_DPDPGaussianMechanismParameter *)self numChunks]>= 2)
  {
    [(_DPDPGaussianMechanismParameter *)self clippingBound];
    v21 = v20;
    [(_DPDPGaussianMechanismParameter *)self overallClippingBound];
    if (v21 > v22)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_12;
    }

    [(_DPDPGaussianMechanismParameter *)self sigmaAfterNormalization];
    v24 = v23;
    [(_DPDPGaussianMechanismParameter *)self clippingBound];
    v26 = v24 * v25;
    [(_DPDPGaussianMechanismParameter *)self overallClippingBound];
    v19 = v26 / v27;
    if (fabs(v19) == INFINITY || v19 < 0.5)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_12;
    }
  }

  if ([(_DPDPGaussianMechanismParameter *)self isMomentsAccountantAlgorithm])
  {
    if ([(_DPDPGaussianMechanismParameter *)self numIterations]< 1 || [(_DPDPGaussianMechanismParameter *)self currentCohortSize]< 1 || [(_DPDPGaussianMechanismParameter *)self maxCohortSize]< 1 || [(_DPDPGaussianMechanismParameter *)self populationSize]<= 0)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_12;
    }

    currentCohortSize = [(_DPDPGaussianMechanismParameter *)self currentCohortSize];
    if (currentCohortSize > [(_DPDPGaussianMechanismParameter *)self maxCohortSize])
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_12;
    }

    maxCohortSize = [(_DPDPGaussianMechanismParameter *)self maxCohortSize];
    if (maxCohortSize > [(_DPDPGaussianMechanismParameter *)self populationSize])
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_12;
    }

    if (fabs(v19) == INFINITY || v19 < 0.5)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_12;
    }

    if ([(_DPDPGaussianMechanismParameter *)self renyiOrder]< 2 || [(_DPDPGaussianMechanismParameter *)self renyiOrder]>= 33)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_12;
    }

    if ([(_DPDPGaussianMechanismParameter *)self populationSize]>= 1400000001)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_12;
    }

    if ([(_DPDPGaussianMechanismParameter *)self numIterations]<= 0)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_12;
    }

    _DPMomentsAccountantSubSampledRenyiEpsilon([(_DPDPGaussianMechanismParameter *)self renyiOrder], [(_DPDPGaussianMechanismParameter *)self maxCohortSize]/ [(_DPDPGaussianMechanismParameter *)self populationSize], v19);
    v48 = 0;
    v34 = [[_DPRenyiDP alloc] initWithAlpha:&v48 tau:[(_DPDPGaussianMechanismParameter *)self renyiOrder] error:v33 * [(_DPDPGaussianMechanismParameter *)self numIterations]];
    v35 = v48;
    if (!v34)
    {
      v44 = +[_DPLog framework];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_75;
    }

    [(_DPDPGaussianMechanismParameter *)self overallDelta];
    v47 = v35;
    v36 = [(_DPRenyiDP *)v34 approximateDPForDelta:&v47 error:?];
    v37 = v47;

    if (!v36)
    {
      v45 = +[_DPLog framework];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      return 0;
    }

    v38 = [_DPApproximateDP alloc];
    [(_DPDPGaussianMechanismParameter *)self overallEpsilon];
    v40 = v39;
    [(_DPDPGaussianMechanismParameter *)self overallDelta];
    v46 = v37;
    v42 = [(_DPApproximateDP *)v38 initWithEpsilon:&v46 delta:v40 error:v41];
    v35 = v46;

    if (!v42)
    {
      v43 = +[_DPLog framework];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_74;
    }

    if ([v36 exceed:v42])
    {
      v43 = +[_DPLog framework];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

LABEL_74:

LABEL_75:
      return 0;
    }
  }

  else
  {
    [(_DPDPGaussianMechanismParameter *)self overallEpsilon];
    v30 = _DPGaussianMechanismMinimumDelta(v29, v19, 1.0);
    [(_DPDPGaussianMechanismParameter *)self overallDelta];
    if (v31 + 0.000000238418579 < v30)
    {
      v9 = +[_DPLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DPDPGaussianMechanismParameter isValid];
      }

      goto LABEL_12;
    }
  }

  [(_DPDPGaussianMechanismParameter *)self setCohortSigma:v19];
  return 1;
}

- (id)auditedMetadata
{
  if ([(_DPDPGaussianMechanismParameter *)self isValid])
  {
    isV2 = [(_DPDPGaussianMechanismParameter *)self isV2];
    metadata = [(_DPDPGaussianMechanismParameter *)self metadata];
    v5 = metadata;
    if (isV2)
    {
      v6 = [metadata objectForKeyedSubscript:@"DediscoTaskConfig"];
      v7 = [v6 objectForKeyedSubscript:@"DPConfig"];
      v8 = [v7 mutableCopy];

      v9 = MEMORY[0x277CCABB0];
      [(_DPDPGaussianMechanismParameter *)self cohortSigma];
      v10 = [v9 numberWithDouble:?];
      [v8 setObject:v10 forKeyedSubscript:@"CohortSigma"];

      metadata2 = [(_DPDPGaussianMechanismParameter *)self metadata];
      v12 = [metadata2 objectForKeyedSubscript:@"DediscoTaskConfig"];
      v13 = [v12 mutableCopy];

      [v13 setObject:v8 forKeyedSubscript:@"DPConfig"];
      metadata3 = [(_DPDPGaussianMechanismParameter *)self metadata];
      v5 = [metadata3 mutableCopy];

      [v5 setObject:v13 forKeyedSubscript:@"DediscoTaskConfig"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithV1Metadata:maxCentralEpsilon:maxCentralDelta:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithV1Metadata:maxCentralEpsilon:maxCentralDelta:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithV1Metadata:maxCentralEpsilon:maxCentralDelta:.cold.3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithV1Metadata:maxCentralEpsilon:maxCentralDelta:.cold.4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithV2Metadata:maxCentralEpsilon:maxCentralDelta:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  OUTLINED_FUNCTION_4_1(&dword_22622D000, v1, v1, "Malformed metadata entry %@.%@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithV2Metadata:maxCentralEpsilon:maxCentralDelta:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isValid
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end