@interface EDMessageCategorizationResultMetadata
+ (id)log;
- (BOOL)isEqual:(id)equal;
- (EDMessageCategorizationResultMetadata)initWithCoder:(id)coder;
- (EDMessageCategorizationResultMetadata)initWithScore:(double)score senderScore:(double)senderScore tsScore:(double)tsScore reasonCodes:(id)codes modelVersion:(id)version senderModelVersion:(id)modelVersion tsModelVersion:(id)tsModelVersion finalRuleVersion:(id)self0 experimentID:(id)self1 experimentDeploymentID:(id)self2 experimentTreatmentID:(id)self3 rolloutID:(id)self4 rolloutDeploymentID:(id)self5 rolloutFactorPackID:(id)self6;
- (id)_dictionaryRepresentation;
- (id)stringRepresentationWithError:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EDMessageCategorizationResultMetadata

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__EDMessageCategorizationResultMetadata_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_21 != -1)
  {
    dispatch_once(&log_onceToken_21, block);
  }

  v2 = log_log_21;

  return v2;
}

void __44__EDMessageCategorizationResultMetadata_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_21;
  log_log_21 = v1;
}

- (EDMessageCategorizationResultMetadata)initWithScore:(double)score senderScore:(double)senderScore tsScore:(double)tsScore reasonCodes:(id)codes modelVersion:(id)version senderModelVersion:(id)modelVersion tsModelVersion:(id)tsModelVersion finalRuleVersion:(id)self0 experimentID:(id)self1 experimentDeploymentID:(id)self2 experimentTreatmentID:(id)self3 rolloutID:(id)self4 rolloutDeploymentID:(id)self5 rolloutFactorPackID:(id)self6
{
  codesCopy = codes;
  versionCopy = version;
  versionCopy2 = version;
  modelVersionCopy = modelVersion;
  tsModelVersionCopy = tsModelVersion;
  ruleVersionCopy = ruleVersion;
  dCopy = d;
  iDCopy = iD;
  treatmentIDCopy = treatmentID;
  rolloutIDCopy = rolloutID;
  deploymentIDCopy = deploymentID;
  packIDCopy = packID;
  v41.receiver = self;
  v41.super_class = EDMessageCategorizationResultMetadata;
  v27 = [(EDMessageCategorizationResultMetadata *)&v41 init];
  v28 = v27;
  if (v27)
  {
    v27->_score = score;
    v27->_senderScore = senderScore;
    v27->_tsScore = tsScore;
    objc_storeStrong(&v27->_reasonCodes, codes);
    objc_storeStrong(&v28->_modelVersion, versionCopy);
    objc_storeStrong(&v28->_senderModelVersion, modelVersion);
    objc_storeStrong(&v28->_tsModelVersion, tsModelVersion);
    objc_storeStrong(&v28->_finalRuleVersion, ruleVersion);
    objc_storeStrong(&v28->_experimentID, d);
    objc_storeStrong(&v28->_experimentDeploymentID, iD);
    objc_storeStrong(&v28->_experimentTreatmentID, treatmentID);
    objc_storeStrong(&v28->_rolloutID, rolloutID);
    objc_storeStrong(&v28->_rolloutDeploymentID, deploymentID);
    objc_storeStrong(&v28->_rolloutFactorPackID, packID);
  }

  return v28;
}

- (id)_dictionaryRepresentation
{
  v63[14] = *MEMORY[0x1E69E9840];
  v62[0] = @"score";
  v3 = MEMORY[0x1E696AD98];
  [(EDMessageCategorizationResultMetadata *)self score];
  null = [v3 numberWithDouble:?];
  v5 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v47 = null;
  v63[0] = null;
  v62[1] = @"senderScore";
  v6 = MEMORY[0x1E696AD98];
  [(EDMessageCategorizationResultMetadata *)self senderScore];
  null2 = [v6 numberWithDouble:?];
  v51 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null2;
  v63[1] = null2;
  v62[2] = @"tsScore";
  v8 = MEMORY[0x1E696AD98];
  [(EDMessageCategorizationResultMetadata *)self tsScore];
  null3 = [v8 numberWithDouble:?];
  v49 = null3;
  if (!null3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null3;
  v63[2] = null3;
  v62[3] = @"reasonCodes";
  reasonCodes = [(EDMessageCategorizationResultMetadata *)self reasonCodes];
  v50 = reasonCodes;
  if (!reasonCodes)
  {
    reasonCodes = [MEMORY[0x1E695DFB0] null];
  }

  v44 = reasonCodes;
  v63[3] = reasonCodes;
  v62[4] = @"modelVersion";
  modelVersion = [(EDMessageCategorizationResultMetadata *)self modelVersion];
  v52 = modelVersion;
  if (!modelVersion)
  {
    modelVersion = [MEMORY[0x1E695DFB0] null];
  }

  v43 = modelVersion;
  v63[4] = modelVersion;
  v62[5] = @"senderModelVersion";
  senderModelVersion = [(EDMessageCategorizationResultMetadata *)self senderModelVersion];
  v53 = senderModelVersion;
  if (!senderModelVersion)
  {
    senderModelVersion = [MEMORY[0x1E695DFB0] null];
  }

  v42 = senderModelVersion;
  v63[5] = senderModelVersion;
  v62[6] = @"tsModelVersion";
  tsModelVersion = [(EDMessageCategorizationResultMetadata *)self tsModelVersion];
  v54 = tsModelVersion;
  if (!tsModelVersion)
  {
    tsModelVersion = [MEMORY[0x1E695DFB0] null];
  }

  v41 = tsModelVersion;
  v63[6] = tsModelVersion;
  v62[7] = @"finalRuleVersion";
  finalRuleVersion = [(EDMessageCategorizationResultMetadata *)self finalRuleVersion];
  v55 = finalRuleVersion;
  if (!finalRuleVersion)
  {
    finalRuleVersion = [MEMORY[0x1E695DFB0] null];
  }

  v40 = finalRuleVersion;
  v63[7] = finalRuleVersion;
  v62[8] = @"experimentID";
  experimentID = [(EDMessageCategorizationResultMetadata *)self experimentID];
  v56 = experimentID;
  if (!experimentID)
  {
    experimentID = [MEMORY[0x1E695DFB0] null];
  }

  v39 = experimentID;
  v63[8] = experimentID;
  v62[9] = @"experimentDeploymentID";
  experimentDeploymentID = [(EDMessageCategorizationResultMetadata *)self experimentDeploymentID];
  null4 = experimentDeploymentID;
  if (!experimentDeploymentID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null4;
  v63[9] = null4;
  v62[10] = @"experimentTreatmentID";
  experimentTreatmentID = [(EDMessageCategorizationResultMetadata *)self experimentTreatmentID];
  null5 = experimentTreatmentID;
  if (!experimentTreatmentID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null5;
  v63[10] = null5;
  v62[11] = @"rolloutID";
  rolloutID = [(EDMessageCategorizationResultMetadata *)self rolloutID];
  null6 = rolloutID;
  if (!rolloutID)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v63[11] = null6;
  v62[12] = @"rolloutDeploymentID";
  rolloutDeploymentID = [(EDMessageCategorizationResultMetadata *)self rolloutDeploymentID];
  null7 = rolloutDeploymentID;
  if (!rolloutDeploymentID)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v63[12] = null7;
  v62[13] = @"rolloutFactorPackID";
  rolloutFactorPackID = [(EDMessageCategorizationResultMetadata *)self rolloutFactorPackID];
  null8 = rolloutFactorPackID;
  if (!rolloutFactorPackID)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v63[13] = null8;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:14];
  if (!rolloutFactorPackID)
  {
  }

  if (!rolloutDeploymentID)
  {
  }

  if (!rolloutID)
  {
  }

  if (!experimentTreatmentID)
  {
  }

  if (!experimentDeploymentID)
  {
  }

  if (!v56)
  {
  }

  if (!v55)
  {
  }

  if (!v54)
  {
  }

  if (!v53)
  {
  }

  if (!v52)
  {
  }

  if (!v50)
  {
  }

  if (!v49)
  {
  }

  if (!v51)
  {
  }

  if (!v5)
  {
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v27 = v48;
  v28 = [v27 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v28)
  {
    v29 = *v58;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v58 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v57 + 1) + 8 * i);
        v32 = [v27 objectForKey:v31];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v32 doubleValue];
        }

        null9 = [MEMORY[0x1E695DFB0] null];
        v34 = v32 == null9;

        if (!v34)
        {
          [dictionary setObject:v32 forKey:v31];
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v28);
  }

  v35 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)stringRepresentationWithError:(id *)error
{
  v4 = MEMORY[0x1E696ACB0];
  _dictionaryRepresentation = [(EDMessageCategorizationResultMetadata *)self _dictionaryRepresentation];
  v6 = [v4 dataWithJSONObject:_dictionaryRepresentation options:0 error:error];

  if ([v6 length])
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  [(EDMessageCategorizationResultMetadata *)self score];
  v4 = v3;
  [(EDMessageCategorizationResultMetadata *)self senderScore];
  v6 = v5;
  [(EDMessageCategorizationResultMetadata *)self tsScore];
  v8 = v7;
  reasonCodes = [(EDMessageCategorizationResultMetadata *)self reasonCodes];
  v10 = [reasonCodes hash];

  modelVersion = [(EDMessageCategorizationResultMetadata *)self modelVersion];
  v12 = [modelVersion hash];

  senderModelVersion = [(EDMessageCategorizationResultMetadata *)self senderModelVersion];
  v14 = [senderModelVersion hash];

  tsModelVersion = [(EDMessageCategorizationResultMetadata *)self tsModelVersion];
  v16 = [tsModelVersion hash];

  finalRuleVersion = [(EDMessageCategorizationResultMetadata *)self finalRuleVersion];
  v18 = [finalRuleVersion hash];

  experimentID = [(EDMessageCategorizationResultMetadata *)self experimentID];
  v40 = [experimentID hash];
  v41 = v18;

  experimentDeploymentID = [(EDMessageCategorizationResultMetadata *)self experimentDeploymentID];
  v21 = [experimentDeploymentID hash];
  v22 = v14;

  experimentTreatmentID = [(EDMessageCategorizationResultMetadata *)self experimentTreatmentID];
  v24 = [experimentTreatmentID hash];
  v25 = v12;

  rolloutID = [(EDMessageCategorizationResultMetadata *)self rolloutID];
  v27 = [rolloutID hash];

  rolloutDeploymentID = [(EDMessageCategorizationResultMetadata *)self rolloutDeploymentID];
  v29 = [rolloutDeploymentID hash];

  rolloutFactorPackID = [(EDMessageCategorizationResultMetadata *)self rolloutFactorPackID];
  v31 = [rolloutFactorPackID hash];
  v32 = round(v4);
  if (v32 < 0.0)
  {
    v32 = -v32;
  }

  v33 = 33 * v32;
  v34 = round(v6);
  if (v34 < 0.0)
  {
    v34 = -v34;
  }

  v35 = 33 * (v33 + v34);
  v36 = round(v8);
  if (v36 < 0.0)
  {
    v36 = -v36;
  }

  v37 = 33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (33 * (v35 + v36) + v10) + v25) + v22) + v16) + v41) + v40) + v21) + v24) + v27) + v29);
  v38 = v31 + 0x4BF6319E0C65F9C5;

  return v37 + v38;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      [(EDMessageCategorizationResultMetadata *)self score];
      v7 = v6;
      [(EDMessageCategorizationResultMetadata *)v5 score];
      v9 = v7 - v8;
      if (v9 < 0.0)
      {
        v9 = -v9;
      }

      if (v9 >= 2.22044605e-16)
      {
        goto LABEL_25;
      }

      [(EDMessageCategorizationResultMetadata *)self senderScore];
      v11 = v10;
      [(EDMessageCategorizationResultMetadata *)v5 senderScore];
      v13 = v11 - v12;
      if (v13 < 0.0)
      {
        v13 = -v13;
      }

      if (v13 >= 2.22044605e-16)
      {
        goto LABEL_25;
      }

      [(EDMessageCategorizationResultMetadata *)self tsScore];
      v15 = v14;
      [(EDMessageCategorizationResultMetadata *)v5 tsScore];
      v17 = v15 - v16;
      if (v17 < 0.0)
      {
        v17 = -v17;
      }

      if (v17 >= 2.22044605e-16)
      {
LABEL_25:
        v25 = 0;
      }

      else
      {
        reasonCodes = [(EDMessageCategorizationResultMetadata *)self reasonCodes];
        reasonCodes2 = [(EDMessageCategorizationResultMetadata *)v5 reasonCodes];
        if ([reasonCodes isEqualToArray:reasonCodes2])
        {
          modelVersion = [(EDMessageCategorizationResultMetadata *)self modelVersion];
          modelVersion2 = [(EDMessageCategorizationResultMetadata *)v5 modelVersion];
          if ([modelVersion isEqualToString:modelVersion2])
          {
            senderModelVersion = [(EDMessageCategorizationResultMetadata *)self senderModelVersion];
            senderModelVersion2 = [(EDMessageCategorizationResultMetadata *)v5 senderModelVersion];
            if ([senderModelVersion isEqualToString:senderModelVersion2])
            {
              tsModelVersion = [(EDMessageCategorizationResultMetadata *)self tsModelVersion];
              tsModelVersion2 = [(EDMessageCategorizationResultMetadata *)v5 tsModelVersion];
              if ([tsModelVersion isEqualToString:tsModelVersion2])
              {
                finalRuleVersion = [(EDMessageCategorizationResultMetadata *)self finalRuleVersion];
                finalRuleVersion2 = [(EDMessageCategorizationResultMetadata *)v5 finalRuleVersion];
                if ([finalRuleVersion isEqualToString:?])
                {
                  experimentID = [(EDMessageCategorizationResultMetadata *)self experimentID];
                  experimentID2 = [(EDMessageCategorizationResultMetadata *)v5 experimentID];
                  if ([experimentID isEqualToString:?])
                  {
                    experimentDeploymentID = [(EDMessageCategorizationResultMetadata *)self experimentDeploymentID];
                    experimentDeploymentID2 = [(EDMessageCategorizationResultMetadata *)v5 experimentDeploymentID];
                    if ([experimentDeploymentID isEqualToString:?])
                    {
                      experimentTreatmentID = [(EDMessageCategorizationResultMetadata *)self experimentTreatmentID];
                      experimentTreatmentID2 = [(EDMessageCategorizationResultMetadata *)v5 experimentTreatmentID];
                      if ([experimentTreatmentID isEqualToString:?])
                      {
                        rolloutID = [(EDMessageCategorizationResultMetadata *)self rolloutID];
                        rolloutID2 = [(EDMessageCategorizationResultMetadata *)v5 rolloutID];
                        if ([rolloutID isEqualToString:rolloutID2])
                        {
                          rolloutDeploymentID = [(EDMessageCategorizationResultMetadata *)self rolloutDeploymentID];
                          rolloutDeploymentID2 = [(EDMessageCategorizationResultMetadata *)v5 rolloutDeploymentID];
                          if ([rolloutDeploymentID isEqualToString:rolloutDeploymentID2])
                          {
                            rolloutFactorPackID = [(EDMessageCategorizationResultMetadata *)self rolloutFactorPackID];
                            rolloutFactorPackID2 = [(EDMessageCategorizationResultMetadata *)v5 rolloutFactorPackID];
                            v25 = [rolloutFactorPackID isEqualToString:rolloutFactorPackID2];
                          }

                          else
                          {
                            v25 = 0;
                          }
                        }

                        else
                        {
                          v25 = 0;
                        }
                      }

                      else
                      {
                        v25 = 0;
                      }
                    }

                    else
                    {
                      v25 = 0;
                    }
                  }

                  else
                  {
                    v25 = 0;
                  }
                }

                else
                {
                  v25 = 0;
                }
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(EDMessageCategorizationResultMetadata *)self score];
  [coderCopy encodeDouble:@"EFPropertyKey_score" forKey:?];
  [(EDMessageCategorizationResultMetadata *)self senderScore];
  [coderCopy encodeDouble:@"EFPropertyKey_senderScore" forKey:?];
  [(EDMessageCategorizationResultMetadata *)self tsScore];
  [coderCopy encodeDouble:@"EFPropertyKey_tsScore" forKey:?];
  reasonCodes = [(EDMessageCategorizationResultMetadata *)self reasonCodes];
  [coderCopy encodeObject:reasonCodes forKey:@"EFPropertyKey_reasonCodes"];

  modelVersion = [(EDMessageCategorizationResultMetadata *)self modelVersion];
  [coderCopy encodeObject:modelVersion forKey:@"EFPropertyKey_modelVersion"];

  senderModelVersion = [(EDMessageCategorizationResultMetadata *)self senderModelVersion];
  [coderCopy encodeObject:senderModelVersion forKey:@"EFPropertyKey_senderModelVersion"];

  tsModelVersion = [(EDMessageCategorizationResultMetadata *)self tsModelVersion];
  [coderCopy encodeObject:tsModelVersion forKey:@"EFPropertyKey_tsModelVersion"];

  finalRuleVersion = [(EDMessageCategorizationResultMetadata *)self finalRuleVersion];
  [coderCopy encodeObject:finalRuleVersion forKey:@"EFPropertyKey_finalRuleVersion"];

  experimentID = [(EDMessageCategorizationResultMetadata *)self experimentID];
  [coderCopy encodeObject:experimentID forKey:@"EFPropertyKey_experimentID"];

  experimentDeploymentID = [(EDMessageCategorizationResultMetadata *)self experimentDeploymentID];
  [coderCopy encodeObject:experimentDeploymentID forKey:@"EFPropertyKey_experimentDeploymentID"];

  experimentTreatmentID = [(EDMessageCategorizationResultMetadata *)self experimentTreatmentID];
  [coderCopy encodeObject:experimentTreatmentID forKey:@"EFPropertyKey_experimentTreatmentID"];

  rolloutID = [(EDMessageCategorizationResultMetadata *)self rolloutID];
  [coderCopy encodeObject:rolloutID forKey:@"EFPropertyKey_rolloutID"];

  rolloutDeploymentID = [(EDMessageCategorizationResultMetadata *)self rolloutDeploymentID];
  [coderCopy encodeObject:rolloutDeploymentID forKey:@"EFPropertyKey_rolloutDeploymentID"];

  rolloutFactorPackID = [(EDMessageCategorizationResultMetadata *)self rolloutFactorPackID];
  [coderCopy encodeObject:rolloutFactorPackID forKey:@"EFPropertyKey_rolloutFactorPackID"];
}

- (EDMessageCategorizationResultMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"EFPropertyKey_score"];
  v5 = v4;
  [coderCopy decodeDoubleForKey:@"EFPropertyKey_senderScore"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"EFPropertyKey_tsScore"];
  v9 = v8;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_reasonCodes"];
  reasonCodes = self->_reasonCodes;
  self->_reasonCodes = v13;

  v46 = v13;
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_modelVersion"];
  modelVersion = self->_modelVersion;
  self->_modelVersion = v15;

  v45 = v15;
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_senderModelVersion"];
  senderModelVersion = self->_senderModelVersion;
  self->_senderModelVersion = v17;

  v44 = v17;
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_tsModelVersion"];
  tsModelVersion = self->_tsModelVersion;
  self->_tsModelVersion = v19;

  v43 = v19;
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_finalRuleVersion"];
  finalRuleVersion = self->_finalRuleVersion;
  self->_finalRuleVersion = v21;

  v42 = v21;
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_experimentID"];
  experimentID = self->_experimentID;
  self->_experimentID = v23;

  v41 = v23;
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_experimentDeploymentID"];
  experimentDeploymentID = self->_experimentDeploymentID;
  self->_experimentDeploymentID = v25;

  v27 = v25;
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_experimentTreatmentID"];
  experimentTreatmentID = self->_experimentTreatmentID;
  self->_experimentTreatmentID = v28;

  v40 = v28;
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rolloutID"];
  rolloutID = self->_rolloutID;
  self->_rolloutID = v30;

  v32 = v30;
  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rolloutDeploymentID"];
  rolloutDeploymentID = self->_rolloutDeploymentID;
  self->_rolloutDeploymentID = v33;

  v35 = v33;
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rolloutFactorPackID"];
  rolloutFactorPackID = self->_rolloutFactorPackID;
  self->_rolloutFactorPackID = v36;

  v39 = [(EDMessageCategorizationResultMetadata *)self initWithScore:v46 senderScore:v45 tsScore:v44 reasonCodes:v43 modelVersion:v42 senderModelVersion:v41 tsModelVersion:v5 finalRuleVersion:v7 experimentID:v9 experimentDeploymentID:v27 experimentTreatmentID:v40 rolloutID:v32 rolloutDeploymentID:v35 rolloutFactorPackID:v36];
  return v39;
}

@end