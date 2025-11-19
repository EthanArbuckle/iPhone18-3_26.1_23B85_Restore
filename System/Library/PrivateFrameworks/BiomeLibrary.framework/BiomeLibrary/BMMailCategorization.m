@interface BMMailCategorization
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMailCategorization)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMailCategorization)initWithMessageId:(id)a3 eventType:(id)a4 trialExperimentId:(id)a5 trialExperimentDeploymentId:(id)a6 trialExperimentTreatmentId:(id)a7 trialRolloutId:(id)a8 trialRolloutDeploymentId:(id)a9 trialRolloutFactorPackId:(id)a10 predictedCategory:(int)a11 blackPearlModelVersion:(id)a12 blackPearlSenderModelVersion:(id)a13 blackPearlFinalRuleVersion:(id)a14 blackPearlBreakthroughVersion:(id)a15 reasonCodes:(id)a16 currCategoryView:(int)a17 prevCategoryView:(int)a18 isBreakthrough:(id)a19 isBlackPearlEnabled:(id)a20 elapsedTimeSinceEmailReceived:(id)a21 recategorizationBy:(int)a22 isThread:(id)a23 senderId:(id)a24 receivingAccountDomain:(int)a25 hasIcloudAccountEnabled:(id)a26;
- (BMMailCategorization)initWithMessageId:(id)a3 eventType:(id)a4 trialExperimentId:(id)a5 trialExperimentDeploymentId:(id)a6 trialExperimentTreatmentId:(id)a7 trialRolloutId:(id)a8 trialRolloutDeploymentId:(id)a9 trialRolloutFactorPackId:(id)a10 predictedCategory:(int)a11 blackPearlModelVersion:(id)a12 blackPearlSenderModelVersion:(id)a13 blackPearlFinalRuleVersion:(id)a14 blackPearlBreakthroughVersion:(id)a15 reasonCodes:(id)a16 currMailbox:(int)a17 prevMailbox:(int)a18 isBreakthrough:(id)a19 isBlackPearlEnabled:(id)a20 elapsedTimeSinceEmailReceived:(id)a21 recategorizationBy:(int)a22 isThread:(id)a23;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMailCategorization

+ (id)columns
{
  v31[26] = *MEMORY[0x1E69E9840];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialExperimentId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialExperimentDeploymentId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialExperimentTreatmentId" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialRolloutId" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialRolloutDeploymentId" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialRolloutFactorPackId" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictedCategory" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"blackPearlModelVersion" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"blackPearlSenderModelVersion" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"blackPearlFinalRuleVersion" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"blackPearlBreakthroughVersion" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reasonCodes" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currCategoryView" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currMailbox" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prevCategoryView" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prevMailbox" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBreakthrough" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBlackPearlEnabled" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"elapsedTimeSinceEmailReceived" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recategorizationBy" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isThread" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"senderId" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"receivingAccountDomain" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasIcloudAccountEnabled" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:12 convertedType:0];
  v31[0] = v30;
  v31[1] = v29;
  v31[2] = v28;
  v31[3] = v27;
  v31[4] = v26;
  v31[5] = v25;
  v31[6] = v24;
  v31[7] = v23;
  v31[8] = v22;
  v31[9] = v21;
  v31[10] = v20;
  v31[11] = v19;
  v31[12] = v18;
  v31[13] = v17;
  v31[14] = v16;
  v31[15] = v15;
  v31[16] = v2;
  v31[17] = v3;
  v31[18] = v4;
  v31[19] = v14;
  v31[20] = v13;
  v31[21] = v5;
  v31[22] = v6;
  v31[23] = v12;
  v31[24] = v7;
  v31[25] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:26];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)protoFields
{
  v29[24] = *MEMORY[0x1E69E9840];
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageId" number:1 type:13 subMessageClass:0];
  v29[0] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:2 type:13 subMessageClass:0];
  v29[1] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialExperimentId" number:3 type:13 subMessageClass:0];
  v29[2] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialExperimentDeploymentId" number:4 type:13 subMessageClass:0];
  v29[3] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialExperimentTreatmentId" number:5 type:13 subMessageClass:0];
  v29[4] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialRolloutId" number:6 type:13 subMessageClass:0];
  v29[5] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialRolloutDeploymentId" number:7 type:13 subMessageClass:0];
  v29[6] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialRolloutFactorPackId" number:8 type:13 subMessageClass:0];
  v29[7] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictedCategory" number:9 type:4 subMessageClass:0];
  v29[8] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"blackPearlModelVersion" number:10 type:13 subMessageClass:0];
  v29[9] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"blackPearlSenderModelVersion" number:11 type:13 subMessageClass:0];
  v29[10] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"blackPearlFinalRuleVersion" number:12 type:13 subMessageClass:0];
  v29[11] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"blackPearlBreakthroughVersion" number:13 type:13 subMessageClass:0];
  v29[12] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reasonCodes" number:14 type:13 subMessageClass:0];
  v29[13] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currCategoryView" number:15 type:4 subMessageClass:0];
  v29[14] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prevCategoryView" number:16 type:4 subMessageClass:0];
  v29[15] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBreakthrough" number:17 type:12 subMessageClass:0];
  v29[16] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBlackPearlEnabled" number:18 type:12 subMessageClass:0];
  v29[17] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"elapsedTimeSinceEmailReceived" number:19 type:13 subMessageClass:0];
  v29[18] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recategorizationBy" number:20 type:4 subMessageClass:0];
  v29[19] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isThread" number:21 type:12 subMessageClass:0];
  v29[20] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"senderId" number:22 type:13 subMessageClass:0];
  v29[21] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"receivingAccountDomain" number:23 type:4 subMessageClass:0];
  v29[22] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasIcloudAccountEnabled" number:24 type:12 subMessageClass:0];
  v29[23] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:24];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMMailCategorization)initWithMessageId:(id)a3 eventType:(id)a4 trialExperimentId:(id)a5 trialExperimentDeploymentId:(id)a6 trialExperimentTreatmentId:(id)a7 trialRolloutId:(id)a8 trialRolloutDeploymentId:(id)a9 trialRolloutFactorPackId:(id)a10 predictedCategory:(int)a11 blackPearlModelVersion:(id)a12 blackPearlSenderModelVersion:(id)a13 blackPearlFinalRuleVersion:(id)a14 blackPearlBreakthroughVersion:(id)a15 reasonCodes:(id)a16 currMailbox:(int)a17 prevMailbox:(int)a18 isBreakthrough:(id)a19 isBlackPearlEnabled:(id)a20 elapsedTimeSinceEmailReceived:(id)a21 recategorizationBy:(int)a22 isThread:(id)a23
{
  LODWORD(v26) = 0;
  LODWORD(v25) = a22;
  LODWORD(v24) = a11;
  return [(BMMailCategorization *)self initWithMessageId:a3 eventType:a4 trialExperimentId:a5 trialExperimentDeploymentId:a6 trialExperimentTreatmentId:a7 trialRolloutId:a8 trialRolloutDeploymentId:a9 trialRolloutFactorPackId:a10 predictedCategory:v24 blackPearlModelVersion:a12 blackPearlSenderModelVersion:a13 blackPearlFinalRuleVersion:a14 blackPearlBreakthroughVersion:a15 reasonCodes:a16 currCategoryView:__PAIR64__(a18 prevCategoryView:a17) isBreakthrough:a19 isBlackPearlEnabled:a20 elapsedTimeSinceEmailReceived:a21 recategorizationBy:v25 isThread:a23 senderId:0 receivingAccountDomain:v26 hasIcloudAccountEnabled:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMailCategorization *)self messageId];
    v7 = [v5 messageId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMailCategorization *)self messageId];
      v10 = [v5 messageId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_88;
      }
    }

    v13 = [(BMMailCategorization *)self eventType];
    v14 = [v5 eventType];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMailCategorization *)self eventType];
      v17 = [v5 eventType];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_88;
      }
    }

    v19 = [(BMMailCategorization *)self trialExperimentId];
    v20 = [v5 trialExperimentId];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMMailCategorization *)self trialExperimentId];
      v23 = [v5 trialExperimentId];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_88;
      }
    }

    v25 = [(BMMailCategorization *)self trialExperimentDeploymentId];
    v26 = [v5 trialExperimentDeploymentId];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMMailCategorization *)self trialExperimentDeploymentId];
      v29 = [v5 trialExperimentDeploymentId];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_88;
      }
    }

    v31 = [(BMMailCategorization *)self trialExperimentTreatmentId];
    v32 = [v5 trialExperimentTreatmentId];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMMailCategorization *)self trialExperimentTreatmentId];
      v35 = [v5 trialExperimentTreatmentId];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_88;
      }
    }

    v37 = [(BMMailCategorization *)self trialRolloutId];
    v38 = [v5 trialRolloutId];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMMailCategorization *)self trialRolloutId];
      v41 = [v5 trialRolloutId];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_88;
      }
    }

    v43 = [(BMMailCategorization *)self trialRolloutDeploymentId];
    v44 = [v5 trialRolloutDeploymentId];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMMailCategorization *)self trialRolloutDeploymentId];
      v47 = [v5 trialRolloutDeploymentId];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_88;
      }
    }

    v49 = [(BMMailCategorization *)self trialRolloutFactorPackId];
    v50 = [v5 trialRolloutFactorPackId];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMMailCategorization *)self trialRolloutFactorPackId];
      v53 = [v5 trialRolloutFactorPackId];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_88;
      }
    }

    v55 = [(BMMailCategorization *)self predictedCategory];
    if (v55 == [v5 predictedCategory])
    {
      v56 = [(BMMailCategorization *)self blackPearlModelVersion];
      v57 = [v5 blackPearlModelVersion];
      v58 = v57;
      if (v56 == v57)
      {
      }

      else
      {
        v59 = [(BMMailCategorization *)self blackPearlModelVersion];
        v60 = [v5 blackPearlModelVersion];
        v61 = [v59 isEqual:v60];

        if (!v61)
        {
          goto LABEL_88;
        }
      }

      v62 = [(BMMailCategorization *)self blackPearlSenderModelVersion];
      v63 = [v5 blackPearlSenderModelVersion];
      v64 = v63;
      if (v62 == v63)
      {
      }

      else
      {
        v65 = [(BMMailCategorization *)self blackPearlSenderModelVersion];
        v66 = [v5 blackPearlSenderModelVersion];
        v67 = [v65 isEqual:v66];

        if (!v67)
        {
          goto LABEL_88;
        }
      }

      v68 = [(BMMailCategorization *)self blackPearlFinalRuleVersion];
      v69 = [v5 blackPearlFinalRuleVersion];
      v70 = v69;
      if (v68 == v69)
      {
      }

      else
      {
        v71 = [(BMMailCategorization *)self blackPearlFinalRuleVersion];
        v72 = [v5 blackPearlFinalRuleVersion];
        v73 = [v71 isEqual:v72];

        if (!v73)
        {
          goto LABEL_88;
        }
      }

      v74 = [(BMMailCategorization *)self blackPearlBreakthroughVersion];
      v75 = [v5 blackPearlBreakthroughVersion];
      v76 = v75;
      if (v74 == v75)
      {
      }

      else
      {
        v77 = [(BMMailCategorization *)self blackPearlBreakthroughVersion];
        v78 = [v5 blackPearlBreakthroughVersion];
        v79 = [v77 isEqual:v78];

        if (!v79)
        {
          goto LABEL_88;
        }
      }

      v80 = [(BMMailCategorization *)self reasonCodes];
      v81 = [v5 reasonCodes];
      v82 = v81;
      if (v80 == v81)
      {
      }

      else
      {
        v83 = [(BMMailCategorization *)self reasonCodes];
        v84 = [v5 reasonCodes];
        v85 = [v83 isEqual:v84];

        if (!v85)
        {
          goto LABEL_88;
        }
      }

      v86 = [(BMMailCategorization *)self currCategoryView];
      if (v86 != [v5 currCategoryView])
      {
        goto LABEL_88;
      }

      v87 = [(BMMailCategorization *)self prevCategoryView];
      if (v87 != [v5 prevCategoryView])
      {
        goto LABEL_88;
      }

      if (-[BMMailCategorization hasIsBreakthrough](self, "hasIsBreakthrough") || [v5 hasIsBreakthrough])
      {
        if (![(BMMailCategorization *)self hasIsBreakthrough])
        {
          goto LABEL_88;
        }

        if (![v5 hasIsBreakthrough])
        {
          goto LABEL_88;
        }

        v88 = [(BMMailCategorization *)self isBreakthrough];
        if (v88 != [v5 isBreakthrough])
        {
          goto LABEL_88;
        }
      }

      if (-[BMMailCategorization hasIsBlackPearlEnabled](self, "hasIsBlackPearlEnabled") || [v5 hasIsBlackPearlEnabled])
      {
        if (![(BMMailCategorization *)self hasIsBlackPearlEnabled])
        {
          goto LABEL_88;
        }

        if (![v5 hasIsBlackPearlEnabled])
        {
          goto LABEL_88;
        }

        v89 = [(BMMailCategorization *)self isBlackPearlEnabled];
        if (v89 != [v5 isBlackPearlEnabled])
        {
          goto LABEL_88;
        }
      }

      v90 = [(BMMailCategorization *)self elapsedTimeSinceEmailReceived];
      v91 = [v5 elapsedTimeSinceEmailReceived];
      v92 = v91;
      if (v90 == v91)
      {
      }

      else
      {
        v93 = [(BMMailCategorization *)self elapsedTimeSinceEmailReceived];
        v94 = [v5 elapsedTimeSinceEmailReceived];
        v95 = [v93 isEqual:v94];

        if (!v95)
        {
          goto LABEL_88;
        }
      }

      v96 = [(BMMailCategorization *)self recategorizationBy];
      if (v96 != [v5 recategorizationBy])
      {
        goto LABEL_88;
      }

      if (-[BMMailCategorization hasIsThread](self, "hasIsThread") || [v5 hasIsThread])
      {
        if (![(BMMailCategorization *)self hasIsThread])
        {
          goto LABEL_88;
        }

        if (![v5 hasIsThread])
        {
          goto LABEL_88;
        }

        v97 = [(BMMailCategorization *)self isThread];
        if (v97 != [v5 isThread])
        {
          goto LABEL_88;
        }
      }

      v98 = [(BMMailCategorization *)self senderId];
      v99 = [v5 senderId];
      v100 = v99;
      if (v98 == v99)
      {
      }

      else
      {
        v101 = [(BMMailCategorization *)self senderId];
        v102 = [v5 senderId];
        v103 = [v101 isEqual:v102];

        if (!v103)
        {
          goto LABEL_88;
        }
      }

      v104 = [(BMMailCategorization *)self receivingAccountDomain];
      if (v104 == [v5 receivingAccountDomain])
      {
        if (!-[BMMailCategorization hasHasIcloudAccountEnabled](self, "hasHasIcloudAccountEnabled") && ![v5 hasHasIcloudAccountEnabled])
        {
          LOBYTE(v12) = 1;
          goto LABEL_89;
        }

        if (-[BMMailCategorization hasHasIcloudAccountEnabled](self, "hasHasIcloudAccountEnabled") && [v5 hasHasIcloudAccountEnabled])
        {
          v105 = [(BMMailCategorization *)self hasIcloudAccountEnabled];
          v12 = v105 ^ [v5 hasIcloudAccountEnabled] ^ 1;
LABEL_89:

          goto LABEL_90;
        }
      }
    }

LABEL_88:
    LOBYTE(v12) = 0;
    goto LABEL_89;
  }

  LOBYTE(v12) = 0;
LABEL_90:

  return v12;
}

- (id)jsonDictionary
{
  v104 = *MEMORY[0x1E69E9840];
  v3 = [(BMMailCategorization *)self messageId];
  v4 = [(BMMailCategorization *)self eventType];
  v5 = [(BMMailCategorization *)self trialExperimentId];
  v6 = [(BMMailCategorization *)self trialExperimentDeploymentId];
  v7 = [(BMMailCategorization *)self trialExperimentTreatmentId];
  v8 = [(BMMailCategorization *)self trialRolloutId];
  v78 = [(BMMailCategorization *)self trialRolloutDeploymentId];
  v77 = [(BMMailCategorization *)self trialRolloutFactorPackId];
  v76 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorization predictedCategory](self, "predictedCategory")}];
  v75 = [(BMMailCategorization *)self blackPearlModelVersion];
  v74 = [(BMMailCategorization *)self blackPearlSenderModelVersion];
  v73 = [(BMMailCategorization *)self blackPearlFinalRuleVersion];
  v72 = [(BMMailCategorization *)self blackPearlBreakthroughVersion];
  v71 = [(BMMailCategorization *)self reasonCodes];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorization currCategoryView](self, "currCategoryView")}];
  v63 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorization prevCategoryView](self, "prevCategoryView")}];
  if ([(BMMailCategorization *)self hasIsBreakthrough])
  {
    v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization isBreakthrough](self, "isBreakthrough")}];
  }

  else
  {
    v70 = 0;
  }

  if ([(BMMailCategorization *)self hasIsBlackPearlEnabled])
  {
    v69 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization isBlackPearlEnabled](self, "isBlackPearlEnabled")}];
  }

  else
  {
    v69 = 0;
  }

  v68 = [(BMMailCategorization *)self elapsedTimeSinceEmailReceived];
  v67 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorization recategorizationBy](self, "recategorizationBy")}];
  if ([(BMMailCategorization *)self hasIsThread])
  {
    v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization isThread](self, "isThread")}];
  }

  else
  {
    v66 = 0;
  }

  v65 = [(BMMailCategorization *)self senderId];
  v64 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorization receivingAccountDomain](self, "receivingAccountDomain")}];
  if ([(BMMailCategorization *)self hasHasIcloudAccountEnabled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization hasIcloudAccountEnabled](self, "hasIcloudAccountEnabled")}];
  }

  else
  {
    v10 = 0;
  }

  v79[0] = @"messageId";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v11;
  v91[0] = v11;
  v79[1] = @"eventType";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = v12;
  v91[1] = v12;
  v79[2] = @"trialExperimentId";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v13;
  v91[2] = v13;
  v79[3] = @"trialExperimentDeploymentId";
  v14 = v6;
  if (!v6)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v14;
  v91[3] = v14;
  v79[4] = @"trialExperimentTreatmentId";
  v15 = v7;
  if (!v7)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = v15;
  v91[4] = v15;
  v79[5] = @"trialRolloutId";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v16;
  v91[5] = v16;
  v79[6] = @"trialRolloutDeploymentId";
  v17 = v78;
  if (!v78)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v91[6] = v17;
  v79[7] = @"trialRolloutFactorPackId";
  v18 = v77;
  if (!v77)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v91[7] = v18;
  v79[8] = @"predictedCategory";
  v19 = v76;
  if (!v76)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v19;
  v91[8] = v19;
  v79[9] = @"blackPearlModelVersion";
  v20 = v75;
  if (!v75)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = v20;
  v91[9] = v20;
  v79[10] = @"blackPearlSenderModelVersion";
  v21 = v74;
  if (!v74)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v21;
  v91[10] = v21;
  v79[11] = @"blackPearlFinalRuleVersion";
  v22 = v73;
  if (!v73)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v22;
  v91[11] = v22;
  v79[12] = @"blackPearlBreakthroughVersion";
  v23 = v72;
  if (!v72)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v23;
  v62 = v10;
  v91[12] = v23;
  v79[13] = @"reasonCodes";
  v24 = v71;
  if (!v71)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v24;
  v91[13] = v24;
  v79[14] = @"currCategoryView";
  v47 = v18;
  if (v9)
  {
    v92 = v9;
    v80 = @"currMailbox";
    v25 = v9;
  }

  else
  {
    v39 = [MEMORY[0x1E695DFB0] null];
    v92 = v39;
    v80 = @"currMailbox";
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v25;
  v93 = v25;
  v81 = @"prevCategoryView";
  if (v63)
  {
    v94 = v63;
    v82 = @"prevMailbox";
    v26 = v63;
  }

  else
  {
    v38 = [MEMORY[0x1E695DFB0] null];
    v94 = v38;
    v82 = @"prevMailbox";
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v3;
  v42 = v26;
  v95 = v26;
  v83 = @"isBreakthrough";
  v27 = v70;
  if (!v70)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v4;
  v96 = v27;
  v84 = @"isBlackPearlEnabled";
  v28 = v69;
  if (!v69)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v5;
  v97 = v28;
  v85 = @"elapsedTimeSinceEmailReceived";
  v29 = v68;
  if (!v68)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v27;
  v98 = v29;
  v86 = @"recategorizationBy";
  v30 = v67;
  if (!v67)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v8;
  v99 = v30;
  v87 = @"isThread";
  v32 = v66;
  if (!v66)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v17;
  v100 = v32;
  v88 = @"senderId";
  v33 = v65;
  if (!v65)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v28;
  v101 = v33;
  v89 = @"receivingAccountDomain";
  v34 = v64;
  if (!v64)
  {
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = v34;
  v90 = @"hasIcloudAccountEnabled";
  v35 = v62;
  if (!v62)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = v35;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v79 count:26];
  if (!v62)
  {
  }

  if (!v64)
  {
  }

  if (!v65)
  {
  }

  if (!v66)
  {
  }

  if (!v67)
  {
  }

  if (!v68)
  {
  }

  if (!v69)
  {
  }

  if (!v70)
  {
  }

  if (!v63)
  {
  }

  if (!v9)
  {
  }

  if (!v71)
  {
  }

  if (!v72)
  {
  }

  if (!v73)
  {
  }

  if (!v74)
  {
  }

  if (!v75)
  {
  }

  if (!v76)
  {
  }

  if (!v77)
  {
  }

  if (v78)
  {
    if (v31)
    {
      goto LABEL_99;
    }
  }

  else
  {

    if (v31)
    {
LABEL_99:
      if (v7)
      {
        goto LABEL_100;
      }

      goto LABEL_109;
    }
  }

  if (v7)
  {
LABEL_100:
    if (v6)
    {
      goto LABEL_101;
    }

    goto LABEL_110;
  }

LABEL_109:

  if (v6)
  {
LABEL_101:
    if (v59)
    {
      goto LABEL_102;
    }

    goto LABEL_111;
  }

LABEL_110:

  if (v59)
  {
LABEL_102:
    if (v60)
    {
      goto LABEL_103;
    }

LABEL_112:

    if (v61)
    {
      goto LABEL_104;
    }

    goto LABEL_113;
  }

LABEL_111:

  if (!v60)
  {
    goto LABEL_112;
  }

LABEL_103:
  if (v61)
  {
    goto LABEL_104;
  }

LABEL_113:

LABEL_104:
  v36 = *MEMORY[0x1E69E9840];

  return v55;
}

- (BMMailCategorization)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v261[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"messageId"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"eventType"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
LABEL_7:
      v10 = [v5 objectForKeyedSubscript:@"trialExperimentId"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v210 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v210 = v10;
LABEL_10:
        v213 = [v5 objectForKeyedSubscript:@"trialExperimentDeploymentId"];
        v205 = v6;
        if (!v213 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v208 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v208 = v213;
LABEL_13:
          v11 = [v5 objectForKeyedSubscript:@"trialExperimentTreatmentId"];
          v209 = v11;
          v202 = a4;
          if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v206 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v206 = v11;
LABEL_16:
            v12 = [v5 objectForKeyedSubscript:@"trialRolloutId"];
            v204 = v12;
            if (!v12 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v201 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v201 = v13;
LABEL_19:
              v14 = [v5 objectForKeyedSubscript:@"trialRolloutDeploymentId"];
              v198 = v7;
              v199 = v10;
              if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v200 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v200 = v14;
LABEL_22:
                v15 = [v5 objectForKeyedSubscript:@"trialRolloutFactorPackId"];
                v191 = v15;
                if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v195 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v195 = v16;
LABEL_25:
                  v17 = [v5 objectForKeyedSubscript:@"predictedCategory"];
                  v192 = v9;
                  v189 = v17;
                  if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v190 = 0;
                    goto LABEL_68;
                  }

                  v38 = v14;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v190 = v18;
LABEL_67:

LABEL_68:
                    v58 = [v5 objectForKeyedSubscript:@"blackPearlModelVersion"];
                    if (!v58 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v188 = 0;
                      goto LABEL_71;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v188 = v58;
LABEL_71:
                      v194 = [v5 objectForKeyedSubscript:@"blackPearlSenderModelVersion"];
                      if (!v194 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v187 = 0;
                        goto LABEL_74;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v187 = v194;
LABEL_74:
                        v59 = [v5 objectForKeyedSubscript:@"blackPearlFinalRuleVersion"];
                        if (!v59 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v183 = 0;
                          goto LABEL_77;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v183 = v59;
LABEL_77:
                          v60 = [v5 objectForKeyedSubscript:@"blackPearlBreakthroughVersion"];
                          v181 = v58;
                          v184 = v60;
                          if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v186 = 0;
                            goto LABEL_80;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v186 = v61;
LABEL_80:
                            v62 = [v5 objectForKeyedSubscript:@"reasonCodes"];
                            if (!v62 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v182 = 0;
                              goto LABEL_83;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v182 = v62;
LABEL_83:
                              v174 = v62;
                              v63 = [v5 objectForKeyedSubscript:@"currCategoryView"];
                              if (v63)
                              {
                                v64 = v63;
                              }

                              else
                              {
                                v64 = [v5 objectForKeyedSubscript:@"currMailbox"];

                                if (!v64)
                                {
                                  v176 = 0;
                                  goto LABEL_120;
                                }
                              }

                              objc_opt_class();
                              v176 = v64;
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v180 = v64;
                                }

                                else
                                {
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                  {
                                    if (!v202)
                                    {
                                      v180 = 0;
                                      v22 = 0;
                                      v54 = v191;
                                      v69 = v183;
                                      v76 = v174;
                                      goto LABEL_212;
                                    }

                                    v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v99 = *MEMORY[0x1E698F240];
                                    v232 = *MEMORY[0x1E696A578];
                                    v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"currCategoryView"];
                                    v233 = v175;
                                    v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
                                    v180 = 0;
                                    v22 = 0;
                                    *v202 = [v98 initWithDomain:v99 code:2 userInfo:v100];
                                    v54 = v191;
                                    v69 = v183;
                                    v84 = v100;
                                    goto LABEL_239;
                                  }

                                  v77 = v64;
                                  v180 = [MEMORY[0x1E696AD98] numberWithInt:BMMailCategorizationMailboxTypeFromString(v77)];
                                }

LABEL_121:
                                v83 = [v5 objectForKeyedSubscript:@"prevCategoryView"];
                                if (v83)
                                {
                                  v84 = v83;
                                }

                                else
                                {
                                  v84 = [v5 objectForKeyedSubscript:@"prevMailbox"];

                                  if (!v84)
                                  {
                                    v177 = 0;
                                    goto LABEL_134;
                                  }
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v177 = v84;
LABEL_134:
                                  v175 = 0;
                                  goto LABEL_135;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v175 = v84;
LABEL_130:
                                  v177 = v84;

LABEL_135:
                                  v86 = [v5 objectForKeyedSubscript:@"isBreakthrough"];
                                  v171 = v86;
                                  if (v86 && (v87 = v86, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!v202)
                                      {
                                        v173 = 0;
                                        v22 = 0;
                                        v54 = v191;
                                        v84 = v177;
                                        v69 = v183;
                                        v76 = v174;
                                        goto LABEL_209;
                                      }

                                      v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v95 = *MEMORY[0x1E698F240];
                                      v228 = *MEMORY[0x1E696A578];
                                      v96 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v152 = objc_opt_class();
                                      v97 = v96;
                                      v11 = v209;
                                      v172 = [v97 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v152, @"isBreakthrough"];
                                      v229 = v172;
                                      v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
                                      v173 = 0;
                                      v22 = 0;
                                      *v202 = [v94 initWithDomain:v95 code:2 userInfo:?];
                                      v54 = v191;
                                      goto LABEL_235;
                                    }

                                    v173 = v87;
                                  }

                                  else
                                  {
                                    v173 = 0;
                                  }

                                  v88 = [v5 objectForKeyedSubscript:@"isBlackPearlEnabled"];
                                  v170 = v88;
                                  if (!v88 || (v89 = v88, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v172 = 0;
                                    goto LABEL_141;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v172 = v89;
LABEL_141:
                                    v90 = [v5 objectForKeyedSubscript:@"elapsedTimeSinceEmailReceived"];
                                    v168 = v90;
                                    if (!v90 || (v91 = v90, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v169 = 0;
LABEL_144:
                                      v92 = [v5 objectForKeyedSubscript:@"recategorizationBy"];
                                      v179 = v59;
                                      v163 = v92;
                                      if (v92 && (v93 = v92, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v167 = v93;
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                          {
                                            if (!v202)
                                            {
                                              v167 = 0;
                                              v22 = 0;
                                              v54 = v191;
                                              v84 = v177;
                                              goto LABEL_206;
                                            }

                                            v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v147 = *MEMORY[0x1E698F240];
                                            v222 = *MEMORY[0x1E696A578];
                                            v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"recategorizationBy"];
                                            v223 = v165;
                                            v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v223 forKeys:&v222 count:1];
                                            v148 = [v146 initWithDomain:v147 code:2 userInfo:v115];
                                            v167 = 0;
                                            v22 = 0;
                                            *v202 = v148;
                                            v54 = v191;
                                            v114 = v177;
                                            goto LABEL_205;
                                          }

                                          v113 = v93;
                                          v167 = [MEMORY[0x1E696AD98] numberWithInt:BMMailCategorizationByTypeFromString(v113)];
                                        }
                                      }

                                      else
                                      {
                                        v167 = 0;
                                      }

                                      v114 = v177;
                                      v115 = [v5 objectForKeyedSubscript:@"isThread"];
                                      if (v115 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          if (!v202)
                                          {
                                            v165 = 0;
                                            v22 = 0;
                                            v54 = v191;
                                            v114 = v177;
                                            goto LABEL_205;
                                          }

                                          v166 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v121 = *MEMORY[0x1E698F240];
                                          v220 = *MEMORY[0x1E696A578];
                                          v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v154 = objc_opt_class();
                                          v123 = v122;
                                          v11 = v209;
                                          v164 = [v123 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v154, @"isThread"];
                                          v221 = v164;
                                          v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v221 forKeys:&v220 count:1];
                                          v124 = [v166 initWithDomain:v121 code:2 userInfo:?];
                                          v165 = 0;
                                          v22 = 0;
                                          *v202 = v124;
                                          v54 = v191;
                                          v114 = v177;
LABEL_204:

LABEL_205:
                                          v84 = v114;
                                          goto LABEL_206;
                                        }

                                        v160 = v115;
                                        v165 = v115;
                                      }

                                      else
                                      {
                                        v160 = v115;
                                        v165 = 0;
                                      }

                                      v116 = [v5 objectForKeyedSubscript:@"senderId"];
                                      v161 = v116;
                                      if (v116 && (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          if (!v202)
                                          {
                                            v164 = 0;
                                            v22 = 0;
                                            v54 = v191;
                                            v114 = v177;
                                            v115 = v160;
                                            goto LABEL_204;
                                          }

                                          v125 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v126 = *MEMORY[0x1E698F240];
                                          v218 = *MEMORY[0x1E696A578];
                                          v162 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"senderId"];
                                          v219 = v162;
                                          v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v219 forKeys:&v218 count:1];
                                          v164 = 0;
                                          v22 = 0;
                                          *v202 = [v125 initWithDomain:v126 code:2 userInfo:?];
                                          v54 = v191;
                                          v114 = v177;
                                          goto LABEL_203;
                                        }

                                        v164 = v117;
                                      }

                                      else
                                      {
                                        v164 = 0;
                                      }

                                      v118 = [v5 objectForKeyedSubscript:@"receivingAccountDomain"];
                                      v159 = v118;
                                      if (v118 && (v119 = v118, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        v120 = v14;
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v162 = v119;
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                          {
                                            if (!v202)
                                            {
                                              v162 = 0;
                                              v22 = 0;
                                              goto LABEL_202;
                                            }

                                            v149 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v178 = *MEMORY[0x1E698F240];
                                            v216 = *MEMORY[0x1E696A578];
                                            v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"receivingAccountDomain"];
                                            v217 = v137;
                                            v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v217 forKeys:&v216 count:1];
                                            v151 = [v149 initWithDomain:v178 code:2 userInfo:v150];
                                            v162 = 0;
                                            v22 = 0;
                                            *v202 = v151;
                                            v128 = v150;
                                            v14 = v120;
                                            goto LABEL_201;
                                          }

                                          v127 = v119;
                                          v162 = [MEMORY[0x1E696AD98] numberWithInt:BMMailCategorizationDomainFromString(v127)];
                                        }
                                      }

                                      else
                                      {
                                        v162 = 0;
                                      }

                                      v128 = [v5 objectForKeyedSubscript:@"hasIcloudAccountEnabled"];
                                      v197 = v8;
                                      if (v128 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          if (v202)
                                          {
                                            v140 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v141 = v128;
                                            v142 = *MEMORY[0x1E698F240];
                                            v214 = *MEMORY[0x1E696A578];
                                            v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasIcloudAccountEnabled"];
                                            v215 = v143;
                                            v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
                                            v145 = v142;
                                            v128 = v141;
                                            v8 = v197;
                                            *v202 = [v140 initWithDomain:v145 code:2 userInfo:v144];

                                            v11 = v209;
                                          }

                                          v137 = 0;
                                          v22 = 0;
                                          goto LABEL_201;
                                        }

                                        v129 = v200;
                                        v203 = v14;
                                        v130 = v192;
                                        v131 = self;
                                        v158 = v128;
                                        v132 = v128;
                                      }

                                      else
                                      {
                                        v158 = v128;
                                        v129 = v200;
                                        v203 = v14;
                                        v130 = v192;
                                        v131 = self;
                                        v132 = 0;
                                      }

                                      v133 = [v190 intValue];
                                      v134 = [v180 intValue];
                                      v135 = [v175 intValue];
                                      v136 = [v167 intValue];
                                      v137 = v132;
                                      LODWORD(v157) = [v162 intValue];
                                      LODWORD(v156) = v136;
                                      LODWORD(v155) = v133;
                                      v200 = v129;
                                      v22 = [(BMMailCategorization *)v131 initWithMessageId:v198 eventType:v130 trialExperimentId:v210 trialExperimentDeploymentId:v208 trialExperimentTreatmentId:v206 trialRolloutId:v201 trialRolloutDeploymentId:v129 trialRolloutFactorPackId:v195 predictedCategory:v155 blackPearlModelVersion:v188 blackPearlSenderModelVersion:v187 blackPearlFinalRuleVersion:v183 blackPearlBreakthroughVersion:v186 reasonCodes:v182 currCategoryView:__PAIR64__(v135 prevCategoryView:v134) isBreakthrough:v173 isBlackPearlEnabled:v172 elapsedTimeSinceEmailReceived:v169 recategorizationBy:v156 isThread:v165 senderId:v164 receivingAccountDomain:v157 hasIcloudAccountEnabled:v132];
                                      self = v22;
                                      v8 = v197;
                                      v11 = v209;
                                      v14 = v203;
                                      v114 = v177;
                                      v128 = v158;
LABEL_201:

LABEL_202:
                                      v54 = v191;
                                      v59 = v179;
LABEL_203:
                                      v115 = v160;

                                      goto LABEL_204;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v169 = v91;
                                      goto LABEL_144;
                                    }

                                    v101 = v59;
                                    if (v202)
                                    {
                                      v111 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v112 = *MEMORY[0x1E698F240];
                                      v224 = *MEMORY[0x1E696A578];
                                      v167 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"elapsedTimeSinceEmailReceived"];
                                      v225 = v167;
                                      v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
                                      v169 = 0;
                                      v22 = 0;
                                      *v202 = [v111 initWithDomain:v112 code:2 userInfo:?];
                                      v54 = v191;
                                      v84 = v177;
LABEL_206:
                                      v76 = v174;

                                      v69 = v183;
LABEL_207:

LABEL_208:
LABEL_209:
                                      v110 = v171;
                                      goto LABEL_210;
                                    }

                                    v169 = 0;
                                    v22 = 0;
LABEL_241:
                                    v54 = v191;
                                    v59 = v101;
                                    v69 = v183;
                                    v76 = v174;
                                    v84 = v177;
                                    goto LABEL_207;
                                  }

                                  v101 = v59;
                                  if (v202)
                                  {
                                    v102 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v103 = *MEMORY[0x1E698F240];
                                    v226 = *MEMORY[0x1E696A578];
                                    v104 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v153 = objc_opt_class();
                                    v105 = v104;
                                    v11 = v209;
                                    v169 = [v105 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v153, @"isBlackPearlEnabled"];
                                    v227 = v169;
                                    v168 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v227 forKeys:&v226 count:1];
                                    v172 = 0;
                                    v22 = 0;
                                    *v202 = [v102 initWithDomain:v103 code:2 userInfo:?];
                                    goto LABEL_241;
                                  }

                                  v172 = 0;
                                  v22 = 0;
                                  v54 = v191;
LABEL_235:
                                  v69 = v183;
                                  v76 = v174;
                                  v84 = v177;
                                  goto LABEL_208;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v85 = v84;
                                  v175 = [MEMORY[0x1E696AD98] numberWithInt:BMMailCategorizationMailboxTypeFromString(v85)];

                                  goto LABEL_130;
                                }

                                if (v202)
                                {
                                  v106 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v107 = *MEMORY[0x1E698F240];
                                  v230 = *MEMORY[0x1E696A578];
                                  v173 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"prevCategoryView"];
                                  v231 = v173;
                                  v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v231 forKeys:&v230 count:1];
                                  v109 = [v106 initWithDomain:v107 code:2 userInfo:v108];
                                  v110 = v108;
                                  v175 = 0;
                                  v22 = 0;
                                  *v202 = v109;
                                  v54 = v191;
                                  v69 = v183;
                                  v76 = v174;
LABEL_210:

LABEL_211:
                                  goto LABEL_212;
                                }

                                v175 = 0;
                                v22 = 0;
                                v54 = v191;
                                v69 = v183;
LABEL_239:
                                v76 = v174;
                                goto LABEL_211;
                              }

LABEL_120:
                              v180 = 0;
                              goto LABEL_121;
                            }

                            if (v202)
                            {
                              v81 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v82 = *MEMORY[0x1E698F240];
                              v234 = *MEMORY[0x1E696A578];
                              v76 = v62;
                              v180 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"reasonCodes"];
                              v235 = v180;
                              v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v235 forKeys:&v234 count:1];
                              v182 = 0;
                              v22 = 0;
                              *v202 = [v81 initWithDomain:v82 code:2 userInfo:?];
                              v54 = v191;
                              v69 = v183;
LABEL_212:

                              goto LABEL_213;
                            }

                            v182 = 0;
                            v22 = 0;
                            v54 = v191;
                            v76 = v62;
                            v69 = v183;
LABEL_213:

                            v58 = v181;
                            goto LABEL_214;
                          }

                          if (v202)
                          {
                            v74 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v75 = *MEMORY[0x1E698F240];
                            v236 = *MEMORY[0x1E696A578];
                            v182 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"blackPearlBreakthroughVersion"];
                            v237 = v182;
                            v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v237 forKeys:&v236 count:1];
                            v186 = 0;
                            v22 = 0;
                            *v202 = [v74 initWithDomain:v75 code:2 userInfo:v76];
                            v54 = v191;
                            v69 = v183;
                            goto LABEL_213;
                          }

                          v186 = 0;
                          v22 = 0;
                          v54 = v191;
                          v69 = v183;
LABEL_214:

                          goto LABEL_215;
                        }

                        v69 = v202;
                        if (v202)
                        {
                          v185 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v71 = *MEMORY[0x1E698F240];
                          v238 = *MEMORY[0x1E696A578];
                          v186 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"blackPearlFinalRuleVersion"];
                          v239 = v186;
                          v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
                          v73 = v185;
                          v184 = v72;
                          v22 = 0;
                          *v202 = [v73 initWithDomain:v71 code:2 userInfo:?];
                          v69 = 0;
                          v54 = v191;
                          goto LABEL_214;
                        }

                        v22 = 0;
LABEL_164:
                        v11 = v209;
                        v54 = v191;
LABEL_215:

                        goto LABEL_216;
                      }

                      if (v202)
                      {
                        v67 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v68 = *MEMORY[0x1E698F240];
                        v240 = *MEMORY[0x1E696A578];
                        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"blackPearlSenderModelVersion"];
                        v241 = v69;
                        v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
                        v187 = 0;
                        v22 = 0;
                        *v202 = [v67 initWithDomain:v68 code:2 userInfo:v70];
                        v59 = v70;
                        goto LABEL_164;
                      }

                      v187 = 0;
                      v22 = 0;
LABEL_158:
                      v54 = v191;
LABEL_216:

                      v10 = v199;
                      goto LABEL_217;
                    }

                    if (v202)
                    {
                      v65 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v66 = *MEMORY[0x1E698F240];
                      v242 = *MEMORY[0x1E696A578];
                      v187 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"blackPearlModelVersion"];
                      v243 = v187;
                      v194 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
                      v188 = 0;
                      v22 = 0;
                      *v202 = [v65 initWithDomain:v66 code:2 userInfo:?];
                      goto LABEL_158;
                    }

                    v188 = 0;
                    v22 = 0;
LABEL_132:
                    v54 = v191;
LABEL_217:

                    v9 = v192;
                    goto LABEL_218;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v57 = v18;
                    v190 = [MEMORY[0x1E696AD98] numberWithInt:BMMailCategorizationCategoryFromString(v57)];

                    goto LABEL_67;
                  }

                  if (v202)
                  {
                    v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v79 = *MEMORY[0x1E698F240];
                    v244 = *MEMORY[0x1E696A578];
                    v188 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"predictedCategory"];
                    v245 = v188;
                    v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v245 forKeys:&v244 count:1];
                    v190 = 0;
                    v22 = 0;
                    *v202 = [v78 initWithDomain:v79 code:2 userInfo:v80];
                    v58 = v80;
                    v14 = v38;
                    goto LABEL_132;
                  }

                  v190 = 0;
                  v22 = 0;
                  v54 = v191;
LABEL_218:

                  goto LABEL_219;
                }

                if (v202)
                {
                  v196 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v55 = *MEMORY[0x1E698F240];
                  v246 = *MEMORY[0x1E696A578];
                  v54 = v191;
                  v190 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialRolloutFactorPackId"];
                  v247 = v190;
                  v189 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v247 forKeys:&v246 count:1];
                  v56 = [v196 initWithDomain:v55 code:2 userInfo:?];
                  v195 = 0;
                  v22 = 0;
                  *v202 = v56;
                  goto LABEL_218;
                }

                v195 = 0;
                v22 = 0;
                v54 = v191;
LABEL_219:

                v7 = v198;
                goto LABEL_220;
              }

              if (v202)
              {
                v51 = objc_alloc(MEMORY[0x1E696ABC0]);
                v52 = *MEMORY[0x1E698F240];
                v248 = *MEMORY[0x1E696A578];
                v195 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialRolloutDeploymentId"];
                v249 = v195;
                v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v249 forKeys:&v248 count:1];
                v200 = 0;
                v22 = 0;
                *v202 = [v51 initWithDomain:v52 code:2 userInfo:v53];
                v54 = v53;
                v11 = v209;
                goto LABEL_219;
              }

              v200 = 0;
              v22 = 0;
LABEL_220:

              v6 = v205;
              goto LABEL_221;
            }

            if (v202)
            {
              v44 = objc_alloc(MEMORY[0x1E696ABC0]);
              v45 = v7;
              v46 = v44;
              v47 = v45;
              v48 = *MEMORY[0x1E698F240];
              v250 = *MEMORY[0x1E696A578];
              v200 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialRolloutId"];
              v251 = v200;
              v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v251 forKeys:&v250 count:1];
              v50 = v46;
              v7 = v47;
              v14 = v49;
              v201 = 0;
              v22 = 0;
              *v202 = [v50 initWithDomain:v48 code:2 userInfo:v49];
              goto LABEL_220;
            }

            v201 = 0;
            v22 = 0;
LABEL_221:

            goto LABEL_222;
          }

          if (a4)
          {
            v207 = objc_alloc(MEMORY[0x1E696ABC0]);
            v193 = v9;
            v39 = v7;
            v40 = *MEMORY[0x1E698F240];
            v252 = *MEMORY[0x1E696A578];
            v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialExperimentTreatmentId"];
            v253 = v201;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v253 forKeys:&v252 count:1];
            v42 = v40;
            v7 = v39;
            v9 = v193;
            v204 = v41;
            v43 = [v207 initWithDomain:v42 code:2 userInfo:?];
            v206 = 0;
            v22 = 0;
            *a4 = v43;
            goto LABEL_221;
          }

          v206 = 0;
          v22 = 0;
LABEL_222:

          goto LABEL_223;
        }

        if (a4)
        {
          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          v33 = v7;
          v34 = v32;
          v35 = v33;
          v36 = *MEMORY[0x1E698F240];
          v254 = *MEMORY[0x1E696A578];
          v206 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialExperimentDeploymentId"];
          v255 = v206;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v255 forKeys:&v254 count:1];
          v37 = v34;
          v7 = v35;
          v6 = v205;
          v208 = 0;
          v22 = 0;
          *a4 = [v37 initWithDomain:v36 code:2 userInfo:v11];
          goto LABEL_222;
        }

        v208 = 0;
        v22 = 0;
LABEL_223:

        goto LABEL_224;
      }

      if (a4)
      {
        v211 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v256 = *MEMORY[0x1E696A578];
        v208 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialExperimentId"];
        v257 = v208;
        v213 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v257 forKeys:&v256 count:1];
        v31 = [v211 initWithDomain:v30 code:2 userInfo:v213];
        v210 = 0;
        v22 = 0;
        *a4 = v31;
        goto LABEL_223;
      }

      v210 = 0;
      v22 = 0;
LABEL_224:

      goto LABEL_225;
    }

    if (a4)
    {
      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = v7;
      v25 = v23;
      v26 = v6;
      v27 = v24;
      v28 = *MEMORY[0x1E698F240];
      v258 = *MEMORY[0x1E696A578];
      v210 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventType"];
      v259 = v210;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v259 forKeys:&v258 count:1];
      v29 = v25;
      v7 = v27;
      v6 = v26;
      v9 = 0;
      v22 = 0;
      *a4 = [v29 initWithDomain:v28 code:2 userInfo:v10];
      goto LABEL_224;
    }

    v9 = 0;
    v22 = 0;
LABEL_225:

    goto LABEL_226;
  }

  if (a4)
  {
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E698F240];
    v260 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messageId"];
    v261[0] = v9;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v261 forKeys:&v260 count:1];
    v21 = [v19 initWithDomain:v20 code:2 userInfo:v8];
    v7 = 0;
    v22 = 0;
    *a4 = v21;
    goto LABEL_225;
  }

  v7 = 0;
  v22 = 0;
LABEL_226:

  v138 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMailCategorization *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_eventType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialExperimentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialExperimentDeploymentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialExperimentTreatmentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialRolloutId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialRolloutDeploymentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_trialRolloutFactorPackId)
  {
    PBDataWriterWriteStringField();
  }

  predictedCategory = self->_predictedCategory;
  PBDataWriterWriteUint32Field();
  if (self->_blackPearlModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_blackPearlSenderModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_blackPearlFinalRuleVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_blackPearlBreakthroughVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_reasonCodes)
  {
    PBDataWriterWriteStringField();
  }

  currCategoryView = self->_currCategoryView;
  PBDataWriterWriteUint32Field();
  prevCategoryView = self->_prevCategoryView;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsBreakthrough)
  {
    isBreakthrough = self->_isBreakthrough;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBlackPearlEnabled)
  {
    isBlackPearlEnabled = self->_isBlackPearlEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_elapsedTimeSinceEmailReceived)
  {
    PBDataWriterWriteStringField();
  }

  recategorizationBy = self->_recategorizationBy;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsThread)
  {
    isThread = self->_isThread;
    PBDataWriterWriteBOOLField();
  }

  if (self->_senderId)
  {
    PBDataWriterWriteStringField();
  }

  receivingAccountDomain = self->_receivingAccountDomain;
  PBDataWriterWriteUint32Field();
  if (self->_hasHasIcloudAccountEnabled)
  {
    hasIcloudAccountEnabled = self->_hasIcloudAccountEnabled;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v75.receiver = self;
  v75.super_class = BMMailCategorization;
  v5 = [(BMEventBase *)&v75 init];
  if (!v5)
  {
    goto LABEL_151;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v76 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v76 & 0x7F) << v7;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = PBReaderReadString();
          v16 = 48;
          goto LABEL_79;
        case 2u:
          v15 = PBReaderReadString();
          v16 = 56;
          goto LABEL_79;
        case 3u:
          v15 = PBReaderReadString();
          v16 = 64;
          goto LABEL_79;
        case 4u:
          v15 = PBReaderReadString();
          v16 = 72;
          goto LABEL_79;
        case 5u:
          v15 = PBReaderReadString();
          v16 = 80;
          goto LABEL_79;
        case 6u:
          v15 = PBReaderReadString();
          v16 = 88;
          goto LABEL_79;
        case 7u:
          v15 = PBReaderReadString();
          v16 = 96;
          goto LABEL_79;
        case 8u:
          v15 = PBReaderReadString();
          v16 = 104;
          goto LABEL_79;
        case 9u:
          v49 = 0;
          v50 = 0;
          v26 = 0;
          while (1)
          {
            v76 = 0;
            v51 = [v4 position] + 1;
            if (v51 >= [v4 position] && (v52 = objc_msgSend(v4, "position") + 1, v52 <= objc_msgSend(v4, "length")))
            {
              v53 = [v4 data];
              [v53 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v26 |= (v76 & 0x7F) << v49;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v30 = v50++ > 8;
            if (v30)
            {
              goto LABEL_134;
            }
          }

          if (([v4 hasError] & 1) != 0 || v26 > 6)
          {
LABEL_134:
            LODWORD(v26) = 0;
          }

          v71 = 28;
          goto LABEL_144;
        case 0xAu:
          v15 = PBReaderReadString();
          v16 = 112;
          goto LABEL_79;
        case 0xBu:
          v15 = PBReaderReadString();
          v16 = 120;
          goto LABEL_79;
        case 0xCu:
          v15 = PBReaderReadString();
          v16 = 128;
          goto LABEL_79;
        case 0xDu:
          v15 = PBReaderReadString();
          v16 = 136;
          goto LABEL_79;
        case 0xEu:
          v15 = PBReaderReadString();
          v16 = 144;
          goto LABEL_79;
        case 0xFu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v76 = 0;
            v27 = [v4 position] + 1;
            if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v26 |= (v76 & 0x7F) << v24;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v30 = v25++ > 8;
            if (v30)
            {
              goto LABEL_122;
            }
          }

          if (([v4 hasError] & 1) != 0 || v26 > 7)
          {
LABEL_122:
            LODWORD(v26) = 0;
          }

          v71 = 32;
          goto LABEL_144;
        case 0x10u:
          v31 = 0;
          v32 = 0;
          v26 = 0;
          while (1)
          {
            v76 = 0;
            v33 = [v4 position] + 1;
            if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
            {
              v35 = [v4 data];
              [v35 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v26 |= (v76 & 0x7F) << v31;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v30 = v32++ > 8;
            if (v30)
            {
              goto LABEL_126;
            }
          }

          if (([v4 hasError] & 1) != 0 || v26 > 7)
          {
LABEL_126:
            LODWORD(v26) = 0;
          }

          v71 = 36;
          goto LABEL_144;
        case 0x11u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v5->_hasIsBreakthrough = 1;
          while (1)
          {
            v76 = 0;
            v20 = [v4 position] + 1;
            if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 1, v21 <= objc_msgSend(v4, "length")))
            {
              v22 = [v4 data];
              [v22 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v19 |= (v76 & 0x7F) << v17;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v13 = v18++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_119;
            }
          }

          v23 = (v19 != 0) & ~[v4 hasError];
LABEL_119:
          v70 = 16;
          goto LABEL_147;
        case 0x12u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v5->_hasIsBlackPearlEnabled = 1;
          while (1)
          {
            v76 = 0;
            v39 = [v4 position] + 1;
            if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 1, v40 <= objc_msgSend(v4, "length")))
            {
              v41 = [v4 data];
              [v41 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v38 |= (v76 & 0x7F) << v36;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v13 = v37++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_129;
            }
          }

          v23 = (v38 != 0) & ~[v4 hasError];
LABEL_129:
          v70 = 18;
          goto LABEL_147;
        case 0x13u:
          v15 = PBReaderReadString();
          v16 = 152;
          goto LABEL_79;
        case 0x14u:
          v59 = 0;
          v60 = 0;
          v26 = 0;
          while (1)
          {
            v76 = 0;
            v61 = [v4 position] + 1;
            if (v61 >= [v4 position] && (v62 = objc_msgSend(v4, "position") + 1, v62 <= objc_msgSend(v4, "length")))
            {
              v63 = [v4 data];
              [v63 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v26 |= (v76 & 0x7F) << v59;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v30 = v60++ > 8;
            if (v30)
            {
              goto LABEL_142;
            }
          }

          if (([v4 hasError] & 1) != 0 || v26 > 6)
          {
LABEL_142:
            LODWORD(v26) = 0;
          }

          v71 = 40;
          goto LABEL_144;
        case 0x15u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v5->_hasIsThread = 1;
          while (1)
          {
            v76 = 0;
            v45 = [v4 position] + 1;
            if (v45 >= [v4 position] && (v46 = objc_msgSend(v4, "position") + 1, v46 <= objc_msgSend(v4, "length")))
            {
              v47 = [v4 data];
              [v47 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v44 |= (v76 & 0x7F) << v42;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v13 = v43++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_131;
            }
          }

          v23 = (v44 != 0) & ~[v4 hasError];
LABEL_131:
          v70 = 20;
          goto LABEL_147;
        case 0x16u:
          v15 = PBReaderReadString();
          v16 = 160;
LABEL_79:
          v48 = *(&v5->super.super.isa + v16);
          *(&v5->super.super.isa + v16) = v15;

          goto LABEL_148;
        case 0x17u:
          v54 = 0;
          v55 = 0;
          v26 = 0;
          while (1)
          {
            v76 = 0;
            v56 = [v4 position] + 1;
            if (v56 >= [v4 position] && (v57 = objc_msgSend(v4, "position") + 1, v57 <= objc_msgSend(v4, "length")))
            {
              v58 = [v4 data];
              [v58 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v26 |= (v76 & 0x7F) << v54;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v30 = v55++ > 8;
            if (v30)
            {
              goto LABEL_138;
            }
          }

          if (([v4 hasError] & 1) != 0 || v26 > 8)
          {
LABEL_138:
            LODWORD(v26) = 0;
          }

          v71 = 44;
LABEL_144:
          *(&v5->super.super.isa + v71) = v26;
          goto LABEL_148;
        case 0x18u:
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v5->_hasHasIcloudAccountEnabled = 1;
          break;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_150;
          }

          goto LABEL_148;
      }

      while (1)
      {
        v76 = 0;
        v67 = [v4 position] + 1;
        if (v67 >= [v4 position] && (v68 = objc_msgSend(v4, "position") + 1, v68 <= objc_msgSend(v4, "length")))
        {
          v69 = [v4 data];
          [v69 getBytes:&v76 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v66 |= (v76 & 0x7F) << v64;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v64 += 7;
        v13 = v65++ >= 9;
        if (v13)
        {
          LOBYTE(v23) = 0;
          goto LABEL_146;
        }
      }

      v23 = (v66 != 0) & ~[v4 hasError];
LABEL_146:
      v70 = 22;
LABEL_147:
      *(&v5->super.super.isa + v70) = v23;
LABEL_148:
      v72 = [v4 position];
    }

    while (v72 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_150:
    v73 = 0;
  }

  else
  {
LABEL_151:
    v73 = v5;
  }

  return v73;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v29 = [(BMMailCategorization *)self messageId];
  v26 = [(BMMailCategorization *)self eventType];
  v28 = [(BMMailCategorization *)self trialExperimentId];
  v25 = [(BMMailCategorization *)self trialExperimentDeploymentId];
  v27 = [(BMMailCategorization *)self trialExperimentTreatmentId];
  v23 = [(BMMailCategorization *)self trialRolloutId];
  v24 = [(BMMailCategorization *)self trialRolloutDeploymentId];
  v17 = [(BMMailCategorization *)self trialRolloutFactorPackId];
  v22 = BMMailCategorizationCategoryAsString([(BMMailCategorization *)self predictedCategory]);
  v16 = [(BMMailCategorization *)self blackPearlModelVersion];
  v21 = [(BMMailCategorization *)self blackPearlSenderModelVersion];
  v15 = [(BMMailCategorization *)self blackPearlFinalRuleVersion];
  v20 = [(BMMailCategorization *)self blackPearlBreakthroughVersion];
  v14 = [(BMMailCategorization *)self reasonCodes];
  v12 = BMMailCategorizationMailboxTypeAsString([(BMMailCategorization *)self currCategoryView]);
  v13 = BMMailCategorizationMailboxTypeAsString([(BMMailCategorization *)self prevCategoryView]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization isBreakthrough](self, "isBreakthrough")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization isBlackPearlEnabled](self, "isBlackPearlEnabled")}];
  v3 = [(BMMailCategorization *)self elapsedTimeSinceEmailReceived];
  v9 = BMMailCategorizationByTypeAsString([(BMMailCategorization *)self recategorizationBy]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization isThread](self, "isThread")}];
  v5 = [(BMMailCategorization *)self senderId];
  v6 = BMMailCategorizationDomainAsString([(BMMailCategorization *)self receivingAccountDomain]);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization hasIcloudAccountEnabled](self, "hasIcloudAccountEnabled")}];
  v19 = [v18 initWithFormat:@"BMMailCategorization with messageId: %@, eventType: %@, trialExperimentId: %@, trialExperimentDeploymentId: %@, trialExperimentTreatmentId: %@, trialRolloutId: %@, trialRolloutDeploymentId: %@, trialRolloutFactorPackId: %@, predictedCategory: %@, blackPearlModelVersion: %@, blackPearlSenderModelVersion: %@, blackPearlFinalRuleVersion: %@, blackPearlBreakthroughVersion: %@, reasonCodes: %@, currCategoryView: %@, prevCategoryView: %@, isBreakthrough: %@, isBlackPearlEnabled: %@, elapsedTimeSinceEmailReceived: %@, recategorizationBy: %@, isThread: %@, senderId: %@, receivingAccountDomain: %@, hasIcloudAccountEnabled: %@", v29, v26, v28, v25, v27, v23, v24, v17, v22, v16, v21, v15, v20, v14, v12, v13, v11, v10, v3, v9, v4, v5, v6, v7];

  return v19;
}

- (BMMailCategorization)initWithMessageId:(id)a3 eventType:(id)a4 trialExperimentId:(id)a5 trialExperimentDeploymentId:(id)a6 trialExperimentTreatmentId:(id)a7 trialRolloutId:(id)a8 trialRolloutDeploymentId:(id)a9 trialRolloutFactorPackId:(id)a10 predictedCategory:(int)a11 blackPearlModelVersion:(id)a12 blackPearlSenderModelVersion:(id)a13 blackPearlFinalRuleVersion:(id)a14 blackPearlBreakthroughVersion:(id)a15 reasonCodes:(id)a16 currCategoryView:(int)a17 prevCategoryView:(int)a18 isBreakthrough:(id)a19 isBlackPearlEnabled:(id)a20 elapsedTimeSinceEmailReceived:(id)a21 recategorizationBy:(int)a22 isThread:(id)a23 senderId:(id)a24 receivingAccountDomain:(int)a25 hasIcloudAccountEnabled:(id)a26
{
  v56 = a3;
  v55 = a4;
  v54 = a5;
  v38 = a6;
  v53 = a6;
  v39 = a7;
  v52 = a7;
  v40 = a8;
  v51 = a8;
  v50 = a9;
  v49 = a10;
  v48 = a12;
  v47 = a13;
  v46 = a14;
  v45 = a15;
  v44 = a16;
  v31 = a19;
  v32 = a20;
  v43 = a21;
  v33 = a23;
  v42 = a24;
  v34 = a26;
  v57.receiver = self;
  v57.super_class = BMMailCategorization;
  v35 = [(BMEventBase *)&v57 init];
  if (v35)
  {
    v35->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v35->_messageId, a3);
    objc_storeStrong(&v35->_eventType, a4);
    objc_storeStrong(&v35->_trialExperimentId, a5);
    objc_storeStrong(&v35->_trialExperimentDeploymentId, v38);
    objc_storeStrong(&v35->_trialExperimentTreatmentId, v39);
    objc_storeStrong(&v35->_trialRolloutId, v40);
    objc_storeStrong(&v35->_trialRolloutDeploymentId, a9);
    objc_storeStrong(&v35->_trialRolloutFactorPackId, a10);
    v35->_predictedCategory = a11;
    objc_storeStrong(&v35->_blackPearlModelVersion, a12);
    objc_storeStrong(&v35->_blackPearlSenderModelVersion, a13);
    objc_storeStrong(&v35->_blackPearlFinalRuleVersion, a14);
    objc_storeStrong(&v35->_blackPearlBreakthroughVersion, a15);
    objc_storeStrong(&v35->_reasonCodes, a16);
    v35->_currCategoryView = a17;
    v35->_prevCategoryView = a18;
    if (v31)
    {
      v35->_hasIsBreakthrough = 1;
      v35->_isBreakthrough = [v31 BOOLValue];
    }

    else
    {
      v35->_hasIsBreakthrough = 0;
      v35->_isBreakthrough = 0;
    }

    if (v32)
    {
      v35->_hasIsBlackPearlEnabled = 1;
      v35->_isBlackPearlEnabled = [v32 BOOLValue];
    }

    else
    {
      v35->_hasIsBlackPearlEnabled = 0;
      v35->_isBlackPearlEnabled = 0;
    }

    objc_storeStrong(&v35->_elapsedTimeSinceEmailReceived, a21);
    v35->_recategorizationBy = a22;
    if (v33)
    {
      v35->_hasIsThread = 1;
      v35->_isThread = [v33 BOOLValue];
    }

    else
    {
      v35->_hasIsThread = 0;
      v35->_isThread = 0;
    }

    objc_storeStrong(&v35->_senderId, a24);
    v35->_receivingAccountDomain = a25;
    if (v34)
    {
      v35->_hasHasIcloudAccountEnabled = 1;
      v35->_hasIcloudAccountEnabled = [v34 BOOLValue];
    }

    else
    {
      v35->_hasHasIcloudAccountEnabled = 0;
      v35->_hasIcloudAccountEnabled = 0;
    }
  }

  return v35;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMMailCategorization alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end