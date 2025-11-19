@interface EDMessageCategorizationResultMetadata
+ (id)log;
- (BOOL)isEqual:(id)a3;
- (EDMessageCategorizationResultMetadata)initWithCoder:(id)a3;
- (EDMessageCategorizationResultMetadata)initWithScore:(double)a3 senderScore:(double)a4 tsScore:(double)a5 reasonCodes:(id)a6 modelVersion:(id)a7 senderModelVersion:(id)a8 tsModelVersion:(id)a9 finalRuleVersion:(id)a10 experimentID:(id)a11 experimentDeploymentID:(id)a12 experimentTreatmentID:(id)a13 rolloutID:(id)a14 rolloutDeploymentID:(id)a15 rolloutFactorPackID:(id)a16;
- (id)_dictionaryRepresentation;
- (id)stringRepresentationWithError:(id *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EDMessageCategorizationResultMetadata

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__EDMessageCategorizationResultMetadata_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (EDMessageCategorizationResultMetadata)initWithScore:(double)a3 senderScore:(double)a4 tsScore:(double)a5 reasonCodes:(id)a6 modelVersion:(id)a7 senderModelVersion:(id)a8 tsModelVersion:(id)a9 finalRuleVersion:(id)a10 experimentID:(id)a11 experimentDeploymentID:(id)a12 experimentTreatmentID:(id)a13 rolloutID:(id)a14 rolloutDeploymentID:(id)a15 rolloutFactorPackID:(id)a16
{
  v40 = a6;
  v31 = a7;
  v39 = a7;
  v38 = a8;
  v37 = a9;
  v36 = a10;
  v35 = a11;
  v34 = a12;
  v33 = a13;
  v24 = a14;
  v25 = a15;
  v26 = a16;
  v41.receiver = self;
  v41.super_class = EDMessageCategorizationResultMetadata;
  v27 = [(EDMessageCategorizationResultMetadata *)&v41 init];
  v28 = v27;
  if (v27)
  {
    v27->_score = a3;
    v27->_senderScore = a4;
    v27->_tsScore = a5;
    objc_storeStrong(&v27->_reasonCodes, a6);
    objc_storeStrong(&v28->_modelVersion, v31);
    objc_storeStrong(&v28->_senderModelVersion, a8);
    objc_storeStrong(&v28->_tsModelVersion, a9);
    objc_storeStrong(&v28->_finalRuleVersion, a10);
    objc_storeStrong(&v28->_experimentID, a11);
    objc_storeStrong(&v28->_experimentDeploymentID, a12);
    objc_storeStrong(&v28->_experimentTreatmentID, a13);
    objc_storeStrong(&v28->_rolloutID, a14);
    objc_storeStrong(&v28->_rolloutDeploymentID, a15);
    objc_storeStrong(&v28->_rolloutFactorPackID, a16);
  }

  return v28;
}

- (id)_dictionaryRepresentation
{
  v63[14] = *MEMORY[0x1E69E9840];
  v62[0] = @"score";
  v3 = MEMORY[0x1E696AD98];
  [(EDMessageCategorizationResultMetadata *)self score];
  v4 = [v3 numberWithDouble:?];
  v5 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v4;
  v63[0] = v4;
  v62[1] = @"senderScore";
  v6 = MEMORY[0x1E696AD98];
  [(EDMessageCategorizationResultMetadata *)self senderScore];
  v7 = [v6 numberWithDouble:?];
  v51 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v7;
  v63[1] = v7;
  v62[2] = @"tsScore";
  v8 = MEMORY[0x1E696AD98];
  [(EDMessageCategorizationResultMetadata *)self tsScore];
  v9 = [v8 numberWithDouble:?];
  v49 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v9;
  v63[2] = v9;
  v62[3] = @"reasonCodes";
  v10 = [(EDMessageCategorizationResultMetadata *)self reasonCodes];
  v50 = v10;
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v10;
  v63[3] = v10;
  v62[4] = @"modelVersion";
  v11 = [(EDMessageCategorizationResultMetadata *)self modelVersion];
  v52 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v11;
  v63[4] = v11;
  v62[5] = @"senderModelVersion";
  v12 = [(EDMessageCategorizationResultMetadata *)self senderModelVersion];
  v53 = v12;
  if (!v12)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v12;
  v63[5] = v12;
  v62[6] = @"tsModelVersion";
  v13 = [(EDMessageCategorizationResultMetadata *)self tsModelVersion];
  v54 = v13;
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v13;
  v63[6] = v13;
  v62[7] = @"finalRuleVersion";
  v14 = [(EDMessageCategorizationResultMetadata *)self finalRuleVersion];
  v55 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v14;
  v63[7] = v14;
  v62[8] = @"experimentID";
  v15 = [(EDMessageCategorizationResultMetadata *)self experimentID];
  v56 = v15;
  if (!v15)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v15;
  v63[8] = v15;
  v62[9] = @"experimentDeploymentID";
  v16 = [(EDMessageCategorizationResultMetadata *)self experimentDeploymentID];
  v17 = v16;
  if (!v16)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v17;
  v63[9] = v17;
  v62[10] = @"experimentTreatmentID";
  v18 = [(EDMessageCategorizationResultMetadata *)self experimentTreatmentID];
  v19 = v18;
  if (!v18)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v19;
  v63[10] = v19;
  v62[11] = @"rolloutID";
  v20 = [(EDMessageCategorizationResultMetadata *)self rolloutID];
  v21 = v20;
  if (!v20)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v63[11] = v21;
  v62[12] = @"rolloutDeploymentID";
  v22 = [(EDMessageCategorizationResultMetadata *)self rolloutDeploymentID];
  v23 = v22;
  if (!v22)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v63[12] = v23;
  v62[13] = @"rolloutFactorPackID";
  v24 = [(EDMessageCategorizationResultMetadata *)self rolloutFactorPackID];
  v25 = v24;
  if (!v24)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v63[13] = v25;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:14];
  if (!v24)
  {
  }

  if (!v22)
  {
  }

  if (!v20)
  {
  }

  if (!v18)
  {
  }

  if (!v16)
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

  v26 = [MEMORY[0x1E695DF90] dictionary];
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

        v33 = [MEMORY[0x1E695DFB0] null];
        v34 = v32 == v33;

        if (!v34)
        {
          [v26 setObject:v32 forKey:v31];
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v28);
  }

  v35 = *MEMORY[0x1E69E9840];

  return v26;
}

- (id)stringRepresentationWithError:(id *)a3
{
  v4 = MEMORY[0x1E696ACB0];
  v5 = [(EDMessageCategorizationResultMetadata *)self _dictionaryRepresentation];
  v6 = [v4 dataWithJSONObject:v5 options:0 error:a3];

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
  v9 = [(EDMessageCategorizationResultMetadata *)self reasonCodes];
  v10 = [v9 hash];

  v11 = [(EDMessageCategorizationResultMetadata *)self modelVersion];
  v12 = [v11 hash];

  v13 = [(EDMessageCategorizationResultMetadata *)self senderModelVersion];
  v14 = [v13 hash];

  v15 = [(EDMessageCategorizationResultMetadata *)self tsModelVersion];
  v16 = [v15 hash];

  v17 = [(EDMessageCategorizationResultMetadata *)self finalRuleVersion];
  v18 = [v17 hash];

  v19 = [(EDMessageCategorizationResultMetadata *)self experimentID];
  v40 = [v19 hash];
  v41 = v18;

  v20 = [(EDMessageCategorizationResultMetadata *)self experimentDeploymentID];
  v21 = [v20 hash];
  v22 = v14;

  v23 = [(EDMessageCategorizationResultMetadata *)self experimentTreatmentID];
  v24 = [v23 hash];
  v25 = v12;

  v26 = [(EDMessageCategorizationResultMetadata *)self rolloutID];
  v27 = [v26 hash];

  v28 = [(EDMessageCategorizationResultMetadata *)self rolloutDeploymentID];
  v29 = [v28 hash];

  v30 = [(EDMessageCategorizationResultMetadata *)self rolloutFactorPackID];
  v31 = [v30 hash];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
        v18 = [(EDMessageCategorizationResultMetadata *)self reasonCodes];
        v19 = [(EDMessageCategorizationResultMetadata *)v5 reasonCodes];
        if ([v18 isEqualToArray:v19])
        {
          v20 = [(EDMessageCategorizationResultMetadata *)self modelVersion];
          v21 = [(EDMessageCategorizationResultMetadata *)v5 modelVersion];
          if ([v20 isEqualToString:v21])
          {
            v22 = [(EDMessageCategorizationResultMetadata *)self senderModelVersion];
            v23 = [(EDMessageCategorizationResultMetadata *)v5 senderModelVersion];
            if ([v22 isEqualToString:v23])
            {
              v41 = [(EDMessageCategorizationResultMetadata *)self tsModelVersion];
              v24 = [(EDMessageCategorizationResultMetadata *)v5 tsModelVersion];
              if ([v41 isEqualToString:v24])
              {
                v40 = [(EDMessageCategorizationResultMetadata *)self finalRuleVersion];
                v39 = [(EDMessageCategorizationResultMetadata *)v5 finalRuleVersion];
                if ([v40 isEqualToString:?])
                {
                  v38 = [(EDMessageCategorizationResultMetadata *)self experimentID];
                  v37 = [(EDMessageCategorizationResultMetadata *)v5 experimentID];
                  if ([v38 isEqualToString:?])
                  {
                    v36 = [(EDMessageCategorizationResultMetadata *)self experimentDeploymentID];
                    v35 = [(EDMessageCategorizationResultMetadata *)v5 experimentDeploymentID];
                    if ([v36 isEqualToString:?])
                    {
                      v34 = [(EDMessageCategorizationResultMetadata *)self experimentTreatmentID];
                      v33 = [(EDMessageCategorizationResultMetadata *)v5 experimentTreatmentID];
                      if ([v34 isEqualToString:?])
                      {
                        v32 = [(EDMessageCategorizationResultMetadata *)self rolloutID];
                        v31 = [(EDMessageCategorizationResultMetadata *)v5 rolloutID];
                        if ([v32 isEqualToString:v31])
                        {
                          v30 = [(EDMessageCategorizationResultMetadata *)self rolloutDeploymentID];
                          v29 = [(EDMessageCategorizationResultMetadata *)v5 rolloutDeploymentID];
                          if ([v30 isEqualToString:v29])
                          {
                            v28 = [(EDMessageCategorizationResultMetadata *)self rolloutFactorPackID];
                            v27 = [(EDMessageCategorizationResultMetadata *)v5 rolloutFactorPackID];
                            v25 = [v28 isEqualToString:v27];
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

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  [(EDMessageCategorizationResultMetadata *)self score];
  [v15 encodeDouble:@"EFPropertyKey_score" forKey:?];
  [(EDMessageCategorizationResultMetadata *)self senderScore];
  [v15 encodeDouble:@"EFPropertyKey_senderScore" forKey:?];
  [(EDMessageCategorizationResultMetadata *)self tsScore];
  [v15 encodeDouble:@"EFPropertyKey_tsScore" forKey:?];
  v4 = [(EDMessageCategorizationResultMetadata *)self reasonCodes];
  [v15 encodeObject:v4 forKey:@"EFPropertyKey_reasonCodes"];

  v5 = [(EDMessageCategorizationResultMetadata *)self modelVersion];
  [v15 encodeObject:v5 forKey:@"EFPropertyKey_modelVersion"];

  v6 = [(EDMessageCategorizationResultMetadata *)self senderModelVersion];
  [v15 encodeObject:v6 forKey:@"EFPropertyKey_senderModelVersion"];

  v7 = [(EDMessageCategorizationResultMetadata *)self tsModelVersion];
  [v15 encodeObject:v7 forKey:@"EFPropertyKey_tsModelVersion"];

  v8 = [(EDMessageCategorizationResultMetadata *)self finalRuleVersion];
  [v15 encodeObject:v8 forKey:@"EFPropertyKey_finalRuleVersion"];

  v9 = [(EDMessageCategorizationResultMetadata *)self experimentID];
  [v15 encodeObject:v9 forKey:@"EFPropertyKey_experimentID"];

  v10 = [(EDMessageCategorizationResultMetadata *)self experimentDeploymentID];
  [v15 encodeObject:v10 forKey:@"EFPropertyKey_experimentDeploymentID"];

  v11 = [(EDMessageCategorizationResultMetadata *)self experimentTreatmentID];
  [v15 encodeObject:v11 forKey:@"EFPropertyKey_experimentTreatmentID"];

  v12 = [(EDMessageCategorizationResultMetadata *)self rolloutID];
  [v15 encodeObject:v12 forKey:@"EFPropertyKey_rolloutID"];

  v13 = [(EDMessageCategorizationResultMetadata *)self rolloutDeploymentID];
  [v15 encodeObject:v13 forKey:@"EFPropertyKey_rolloutDeploymentID"];

  v14 = [(EDMessageCategorizationResultMetadata *)self rolloutFactorPackID];
  [v15 encodeObject:v14 forKey:@"EFPropertyKey_rolloutFactorPackID"];
}

- (EDMessageCategorizationResultMetadata)initWithCoder:(id)a3
{
  v47 = a3;
  [v47 decodeDoubleForKey:@"EFPropertyKey_score"];
  v5 = v4;
  [v47 decodeDoubleForKey:@"EFPropertyKey_senderScore"];
  v7 = v6;
  [v47 decodeDoubleForKey:@"EFPropertyKey_tsScore"];
  v9 = v8;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v47 decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_reasonCodes"];
  reasonCodes = self->_reasonCodes;
  self->_reasonCodes = v13;

  v46 = v13;
  v15 = [v47 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_modelVersion"];
  modelVersion = self->_modelVersion;
  self->_modelVersion = v15;

  v45 = v15;
  v17 = [v47 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_senderModelVersion"];
  senderModelVersion = self->_senderModelVersion;
  self->_senderModelVersion = v17;

  v44 = v17;
  v19 = [v47 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_tsModelVersion"];
  tsModelVersion = self->_tsModelVersion;
  self->_tsModelVersion = v19;

  v43 = v19;
  v21 = [v47 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_finalRuleVersion"];
  finalRuleVersion = self->_finalRuleVersion;
  self->_finalRuleVersion = v21;

  v42 = v21;
  v23 = [v47 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_experimentID"];
  experimentID = self->_experimentID;
  self->_experimentID = v23;

  v41 = v23;
  v25 = [v47 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_experimentDeploymentID"];
  experimentDeploymentID = self->_experimentDeploymentID;
  self->_experimentDeploymentID = v25;

  v27 = v25;
  v28 = [v47 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_experimentTreatmentID"];
  experimentTreatmentID = self->_experimentTreatmentID;
  self->_experimentTreatmentID = v28;

  v40 = v28;
  v30 = [v47 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rolloutID"];
  rolloutID = self->_rolloutID;
  self->_rolloutID = v30;

  v32 = v30;
  v33 = [v47 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rolloutDeploymentID"];
  rolloutDeploymentID = self->_rolloutDeploymentID;
  self->_rolloutDeploymentID = v33;

  v35 = v33;
  v36 = [v47 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_rolloutFactorPackID"];
  rolloutFactorPackID = self->_rolloutFactorPackID;
  self->_rolloutFactorPackID = v36;

  v39 = [(EDMessageCategorizationResultMetadata *)self initWithScore:v46 senderScore:v45 tsScore:v44 reasonCodes:v43 modelVersion:v42 senderModelVersion:v41 tsModelVersion:v5 finalRuleVersion:v7 experimentID:v9 experimentDeploymentID:v27 experimentTreatmentID:v40 rolloutID:v32 rolloutDeploymentID:v35 rolloutFactorPackID:v36];
  return v39;
}

@end