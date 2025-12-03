@interface BMMailCategorization
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMailCategorization)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMailCategorization)initWithMessageId:(id)id eventType:(id)type trialExperimentId:(id)experimentId trialExperimentDeploymentId:(id)deploymentId trialExperimentTreatmentId:(id)treatmentId trialRolloutId:(id)rolloutId trialRolloutDeploymentId:(id)rolloutDeploymentId trialRolloutFactorPackId:(id)self0 predictedCategory:(int)self1 blackPearlModelVersion:(id)self2 blackPearlSenderModelVersion:(id)self3 blackPearlFinalRuleVersion:(id)self4 blackPearlBreakthroughVersion:(id)self5 reasonCodes:(id)self6 currCategoryView:(int)self7 prevCategoryView:(int)self8 isBreakthrough:(id)self9 isBlackPearlEnabled:(id)enabled elapsedTimeSinceEmailReceived:(id)received recategorizationBy:(int)by isThread:(id)thread senderId:(id)senderId receivingAccountDomain:(int)domain hasIcloudAccountEnabled:(id)accountEnabled;
- (BMMailCategorization)initWithMessageId:(id)id eventType:(id)type trialExperimentId:(id)experimentId trialExperimentDeploymentId:(id)deploymentId trialExperimentTreatmentId:(id)treatmentId trialRolloutId:(id)rolloutId trialRolloutDeploymentId:(id)rolloutDeploymentId trialRolloutFactorPackId:(id)self0 predictedCategory:(int)self1 blackPearlModelVersion:(id)self2 blackPearlSenderModelVersion:(id)self3 blackPearlFinalRuleVersion:(id)self4 blackPearlBreakthroughVersion:(id)self5 reasonCodes:(id)self6 currMailbox:(int)self7 prevMailbox:(int)self8 isBreakthrough:(id)self9 isBlackPearlEnabled:(id)enabled elapsedTimeSinceEmailReceived:(id)received recategorizationBy:(int)by isThread:(id)thread;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BMMailCategorization)initWithMessageId:(id)id eventType:(id)type trialExperimentId:(id)experimentId trialExperimentDeploymentId:(id)deploymentId trialExperimentTreatmentId:(id)treatmentId trialRolloutId:(id)rolloutId trialRolloutDeploymentId:(id)rolloutDeploymentId trialRolloutFactorPackId:(id)self0 predictedCategory:(int)self1 blackPearlModelVersion:(id)self2 blackPearlSenderModelVersion:(id)self3 blackPearlFinalRuleVersion:(id)self4 blackPearlBreakthroughVersion:(id)self5 reasonCodes:(id)self6 currMailbox:(int)self7 prevMailbox:(int)self8 isBreakthrough:(id)self9 isBlackPearlEnabled:(id)enabled elapsedTimeSinceEmailReceived:(id)received recategorizationBy:(int)by isThread:(id)thread
{
  LODWORD(v26) = 0;
  LODWORD(v25) = by;
  LODWORD(v24) = category;
  return [(BMMailCategorization *)self initWithMessageId:id eventType:type trialExperimentId:experimentId trialExperimentDeploymentId:deploymentId trialExperimentTreatmentId:treatmentId trialRolloutId:rolloutId trialRolloutDeploymentId:rolloutDeploymentId trialRolloutFactorPackId:packId predictedCategory:v24 blackPearlModelVersion:version blackPearlSenderModelVersion:modelVersion blackPearlFinalRuleVersion:ruleVersion blackPearlBreakthroughVersion:breakthroughVersion reasonCodes:codes currCategoryView:__PAIR64__(prevMailbox prevCategoryView:mailbox) isBreakthrough:breakthrough isBlackPearlEnabled:enabled elapsedTimeSinceEmailReceived:received recategorizationBy:v25 isThread:thread senderId:0 receivingAccountDomain:v26 hasIcloudAccountEnabled:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    messageId = [(BMMailCategorization *)self messageId];
    messageId2 = [v5 messageId];
    v8 = messageId2;
    if (messageId == messageId2)
    {
    }

    else
    {
      messageId3 = [(BMMailCategorization *)self messageId];
      messageId4 = [v5 messageId];
      v11 = [messageId3 isEqual:messageId4];

      if (!v11)
      {
        goto LABEL_88;
      }
    }

    eventType = [(BMMailCategorization *)self eventType];
    eventType2 = [v5 eventType];
    v15 = eventType2;
    if (eventType == eventType2)
    {
    }

    else
    {
      eventType3 = [(BMMailCategorization *)self eventType];
      eventType4 = [v5 eventType];
      v18 = [eventType3 isEqual:eventType4];

      if (!v18)
      {
        goto LABEL_88;
      }
    }

    trialExperimentId = [(BMMailCategorization *)self trialExperimentId];
    trialExperimentId2 = [v5 trialExperimentId];
    v21 = trialExperimentId2;
    if (trialExperimentId == trialExperimentId2)
    {
    }

    else
    {
      trialExperimentId3 = [(BMMailCategorization *)self trialExperimentId];
      trialExperimentId4 = [v5 trialExperimentId];
      v24 = [trialExperimentId3 isEqual:trialExperimentId4];

      if (!v24)
      {
        goto LABEL_88;
      }
    }

    trialExperimentDeploymentId = [(BMMailCategorization *)self trialExperimentDeploymentId];
    trialExperimentDeploymentId2 = [v5 trialExperimentDeploymentId];
    v27 = trialExperimentDeploymentId2;
    if (trialExperimentDeploymentId == trialExperimentDeploymentId2)
    {
    }

    else
    {
      trialExperimentDeploymentId3 = [(BMMailCategorization *)self trialExperimentDeploymentId];
      trialExperimentDeploymentId4 = [v5 trialExperimentDeploymentId];
      v30 = [trialExperimentDeploymentId3 isEqual:trialExperimentDeploymentId4];

      if (!v30)
      {
        goto LABEL_88;
      }
    }

    trialExperimentTreatmentId = [(BMMailCategorization *)self trialExperimentTreatmentId];
    trialExperimentTreatmentId2 = [v5 trialExperimentTreatmentId];
    v33 = trialExperimentTreatmentId2;
    if (trialExperimentTreatmentId == trialExperimentTreatmentId2)
    {
    }

    else
    {
      trialExperimentTreatmentId3 = [(BMMailCategorization *)self trialExperimentTreatmentId];
      trialExperimentTreatmentId4 = [v5 trialExperimentTreatmentId];
      v36 = [trialExperimentTreatmentId3 isEqual:trialExperimentTreatmentId4];

      if (!v36)
      {
        goto LABEL_88;
      }
    }

    trialRolloutId = [(BMMailCategorization *)self trialRolloutId];
    trialRolloutId2 = [v5 trialRolloutId];
    v39 = trialRolloutId2;
    if (trialRolloutId == trialRolloutId2)
    {
    }

    else
    {
      trialRolloutId3 = [(BMMailCategorization *)self trialRolloutId];
      trialRolloutId4 = [v5 trialRolloutId];
      v42 = [trialRolloutId3 isEqual:trialRolloutId4];

      if (!v42)
      {
        goto LABEL_88;
      }
    }

    trialRolloutDeploymentId = [(BMMailCategorization *)self trialRolloutDeploymentId];
    trialRolloutDeploymentId2 = [v5 trialRolloutDeploymentId];
    v45 = trialRolloutDeploymentId2;
    if (trialRolloutDeploymentId == trialRolloutDeploymentId2)
    {
    }

    else
    {
      trialRolloutDeploymentId3 = [(BMMailCategorization *)self trialRolloutDeploymentId];
      trialRolloutDeploymentId4 = [v5 trialRolloutDeploymentId];
      v48 = [trialRolloutDeploymentId3 isEqual:trialRolloutDeploymentId4];

      if (!v48)
      {
        goto LABEL_88;
      }
    }

    trialRolloutFactorPackId = [(BMMailCategorization *)self trialRolloutFactorPackId];
    trialRolloutFactorPackId2 = [v5 trialRolloutFactorPackId];
    v51 = trialRolloutFactorPackId2;
    if (trialRolloutFactorPackId == trialRolloutFactorPackId2)
    {
    }

    else
    {
      trialRolloutFactorPackId3 = [(BMMailCategorization *)self trialRolloutFactorPackId];
      trialRolloutFactorPackId4 = [v5 trialRolloutFactorPackId];
      v54 = [trialRolloutFactorPackId3 isEqual:trialRolloutFactorPackId4];

      if (!v54)
      {
        goto LABEL_88;
      }
    }

    predictedCategory = [(BMMailCategorization *)self predictedCategory];
    if (predictedCategory == [v5 predictedCategory])
    {
      blackPearlModelVersion = [(BMMailCategorization *)self blackPearlModelVersion];
      blackPearlModelVersion2 = [v5 blackPearlModelVersion];
      v58 = blackPearlModelVersion2;
      if (blackPearlModelVersion == blackPearlModelVersion2)
      {
      }

      else
      {
        blackPearlModelVersion3 = [(BMMailCategorization *)self blackPearlModelVersion];
        blackPearlModelVersion4 = [v5 blackPearlModelVersion];
        v61 = [blackPearlModelVersion3 isEqual:blackPearlModelVersion4];

        if (!v61)
        {
          goto LABEL_88;
        }
      }

      blackPearlSenderModelVersion = [(BMMailCategorization *)self blackPearlSenderModelVersion];
      blackPearlSenderModelVersion2 = [v5 blackPearlSenderModelVersion];
      v64 = blackPearlSenderModelVersion2;
      if (blackPearlSenderModelVersion == blackPearlSenderModelVersion2)
      {
      }

      else
      {
        blackPearlSenderModelVersion3 = [(BMMailCategorization *)self blackPearlSenderModelVersion];
        blackPearlSenderModelVersion4 = [v5 blackPearlSenderModelVersion];
        v67 = [blackPearlSenderModelVersion3 isEqual:blackPearlSenderModelVersion4];

        if (!v67)
        {
          goto LABEL_88;
        }
      }

      blackPearlFinalRuleVersion = [(BMMailCategorization *)self blackPearlFinalRuleVersion];
      blackPearlFinalRuleVersion2 = [v5 blackPearlFinalRuleVersion];
      v70 = blackPearlFinalRuleVersion2;
      if (blackPearlFinalRuleVersion == blackPearlFinalRuleVersion2)
      {
      }

      else
      {
        blackPearlFinalRuleVersion3 = [(BMMailCategorization *)self blackPearlFinalRuleVersion];
        blackPearlFinalRuleVersion4 = [v5 blackPearlFinalRuleVersion];
        v73 = [blackPearlFinalRuleVersion3 isEqual:blackPearlFinalRuleVersion4];

        if (!v73)
        {
          goto LABEL_88;
        }
      }

      blackPearlBreakthroughVersion = [(BMMailCategorization *)self blackPearlBreakthroughVersion];
      blackPearlBreakthroughVersion2 = [v5 blackPearlBreakthroughVersion];
      v76 = blackPearlBreakthroughVersion2;
      if (blackPearlBreakthroughVersion == blackPearlBreakthroughVersion2)
      {
      }

      else
      {
        blackPearlBreakthroughVersion3 = [(BMMailCategorization *)self blackPearlBreakthroughVersion];
        blackPearlBreakthroughVersion4 = [v5 blackPearlBreakthroughVersion];
        v79 = [blackPearlBreakthroughVersion3 isEqual:blackPearlBreakthroughVersion4];

        if (!v79)
        {
          goto LABEL_88;
        }
      }

      reasonCodes = [(BMMailCategorization *)self reasonCodes];
      reasonCodes2 = [v5 reasonCodes];
      v82 = reasonCodes2;
      if (reasonCodes == reasonCodes2)
      {
      }

      else
      {
        reasonCodes3 = [(BMMailCategorization *)self reasonCodes];
        reasonCodes4 = [v5 reasonCodes];
        v85 = [reasonCodes3 isEqual:reasonCodes4];

        if (!v85)
        {
          goto LABEL_88;
        }
      }

      currCategoryView = [(BMMailCategorization *)self currCategoryView];
      if (currCategoryView != [v5 currCategoryView])
      {
        goto LABEL_88;
      }

      prevCategoryView = [(BMMailCategorization *)self prevCategoryView];
      if (prevCategoryView != [v5 prevCategoryView])
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

        isBreakthrough = [(BMMailCategorization *)self isBreakthrough];
        if (isBreakthrough != [v5 isBreakthrough])
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

        isBlackPearlEnabled = [(BMMailCategorization *)self isBlackPearlEnabled];
        if (isBlackPearlEnabled != [v5 isBlackPearlEnabled])
        {
          goto LABEL_88;
        }
      }

      elapsedTimeSinceEmailReceived = [(BMMailCategorization *)self elapsedTimeSinceEmailReceived];
      elapsedTimeSinceEmailReceived2 = [v5 elapsedTimeSinceEmailReceived];
      v92 = elapsedTimeSinceEmailReceived2;
      if (elapsedTimeSinceEmailReceived == elapsedTimeSinceEmailReceived2)
      {
      }

      else
      {
        elapsedTimeSinceEmailReceived3 = [(BMMailCategorization *)self elapsedTimeSinceEmailReceived];
        elapsedTimeSinceEmailReceived4 = [v5 elapsedTimeSinceEmailReceived];
        v95 = [elapsedTimeSinceEmailReceived3 isEqual:elapsedTimeSinceEmailReceived4];

        if (!v95)
        {
          goto LABEL_88;
        }
      }

      recategorizationBy = [(BMMailCategorization *)self recategorizationBy];
      if (recategorizationBy != [v5 recategorizationBy])
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

        isThread = [(BMMailCategorization *)self isThread];
        if (isThread != [v5 isThread])
        {
          goto LABEL_88;
        }
      }

      senderId = [(BMMailCategorization *)self senderId];
      senderId2 = [v5 senderId];
      v100 = senderId2;
      if (senderId == senderId2)
      {
      }

      else
      {
        senderId3 = [(BMMailCategorization *)self senderId];
        senderId4 = [v5 senderId];
        v103 = [senderId3 isEqual:senderId4];

        if (!v103)
        {
          goto LABEL_88;
        }
      }

      receivingAccountDomain = [(BMMailCategorization *)self receivingAccountDomain];
      if (receivingAccountDomain == [v5 receivingAccountDomain])
      {
        if (!-[BMMailCategorization hasHasIcloudAccountEnabled](self, "hasHasIcloudAccountEnabled") && ![v5 hasHasIcloudAccountEnabled])
        {
          LOBYTE(v12) = 1;
          goto LABEL_89;
        }

        if (-[BMMailCategorization hasHasIcloudAccountEnabled](self, "hasHasIcloudAccountEnabled") && [v5 hasHasIcloudAccountEnabled])
        {
          hasIcloudAccountEnabled = [(BMMailCategorization *)self hasIcloudAccountEnabled];
          v12 = hasIcloudAccountEnabled ^ [v5 hasIcloudAccountEnabled] ^ 1;
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
  messageId = [(BMMailCategorization *)self messageId];
  eventType = [(BMMailCategorization *)self eventType];
  trialExperimentId = [(BMMailCategorization *)self trialExperimentId];
  trialExperimentDeploymentId = [(BMMailCategorization *)self trialExperimentDeploymentId];
  trialExperimentTreatmentId = [(BMMailCategorization *)self trialExperimentTreatmentId];
  trialRolloutId = [(BMMailCategorization *)self trialRolloutId];
  trialRolloutDeploymentId = [(BMMailCategorization *)self trialRolloutDeploymentId];
  trialRolloutFactorPackId = [(BMMailCategorization *)self trialRolloutFactorPackId];
  v76 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorization predictedCategory](self, "predictedCategory")}];
  blackPearlModelVersion = [(BMMailCategorization *)self blackPearlModelVersion];
  blackPearlSenderModelVersion = [(BMMailCategorization *)self blackPearlSenderModelVersion];
  blackPearlFinalRuleVersion = [(BMMailCategorization *)self blackPearlFinalRuleVersion];
  blackPearlBreakthroughVersion = [(BMMailCategorization *)self blackPearlBreakthroughVersion];
  reasonCodes = [(BMMailCategorization *)self reasonCodes];
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

  elapsedTimeSinceEmailReceived = [(BMMailCategorization *)self elapsedTimeSinceEmailReceived];
  v67 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorization recategorizationBy](self, "recategorizationBy")}];
  if ([(BMMailCategorization *)self hasIsThread])
  {
    v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization isThread](self, "isThread")}];
  }

  else
  {
    v66 = 0;
  }

  senderId = [(BMMailCategorization *)self senderId];
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
  null = messageId;
  if (!messageId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null;
  v91[0] = null;
  v79[1] = @"eventType";
  null2 = eventType;
  if (!eventType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null2;
  v91[1] = null2;
  v79[2] = @"trialExperimentId";
  null3 = trialExperimentId;
  if (!trialExperimentId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null3;
  v91[2] = null3;
  v79[3] = @"trialExperimentDeploymentId";
  null4 = trialExperimentDeploymentId;
  if (!trialExperimentDeploymentId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null4;
  v91[3] = null4;
  v79[4] = @"trialExperimentTreatmentId";
  null5 = trialExperimentTreatmentId;
  if (!trialExperimentTreatmentId)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null5;
  v91[4] = null5;
  v79[5] = @"trialRolloutId";
  null6 = trialRolloutId;
  if (!trialRolloutId)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = null6;
  v91[5] = null6;
  v79[6] = @"trialRolloutDeploymentId";
  null7 = trialRolloutDeploymentId;
  if (!trialRolloutDeploymentId)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v91[6] = null7;
  v79[7] = @"trialRolloutFactorPackId";
  null8 = trialRolloutFactorPackId;
  if (!trialRolloutFactorPackId)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v91[7] = null8;
  v79[8] = @"predictedCategory";
  null9 = v76;
  if (!v76)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null9;
  v91[8] = null9;
  v79[9] = @"blackPearlModelVersion";
  null10 = blackPearlModelVersion;
  if (!blackPearlModelVersion)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null10;
  v91[9] = null10;
  v79[10] = @"blackPearlSenderModelVersion";
  null11 = blackPearlSenderModelVersion;
  if (!blackPearlSenderModelVersion)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null11;
  v91[10] = null11;
  v79[11] = @"blackPearlFinalRuleVersion";
  null12 = blackPearlFinalRuleVersion;
  if (!blackPearlFinalRuleVersion)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null12;
  v91[11] = null12;
  v79[12] = @"blackPearlBreakthroughVersion";
  null13 = blackPearlBreakthroughVersion;
  if (!blackPearlBreakthroughVersion)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null13;
  v62 = v10;
  v91[12] = null13;
  v79[13] = @"reasonCodes";
  null14 = reasonCodes;
  if (!reasonCodes)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null14;
  v91[13] = null14;
  v79[14] = @"currCategoryView";
  v47 = null8;
  if (v9)
  {
    v92 = v9;
    v80 = @"currMailbox";
    null16 = v9;
  }

  else
  {
    null15 = [MEMORY[0x1E695DFB0] null];
    v92 = null15;
    v80 = @"currMailbox";
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null16;
  v93 = null16;
  v81 = @"prevCategoryView";
  if (v63)
  {
    v94 = v63;
    v82 = @"prevMailbox";
    null18 = v63;
  }

  else
  {
    null17 = [MEMORY[0x1E695DFB0] null];
    v94 = null17;
    v82 = @"prevMailbox";
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = messageId;
  v42 = null18;
  v95 = null18;
  v83 = @"isBreakthrough";
  null19 = v70;
  if (!v70)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = eventType;
  v96 = null19;
  v84 = @"isBlackPearlEnabled";
  null20 = v69;
  if (!v69)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = trialExperimentId;
  v97 = null20;
  v85 = @"elapsedTimeSinceEmailReceived";
  null21 = elapsedTimeSinceEmailReceived;
  if (!elapsedTimeSinceEmailReceived)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null19;
  v98 = null21;
  v86 = @"recategorizationBy";
  null22 = v67;
  if (!v67)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = trialRolloutId;
  v99 = null22;
  v87 = @"isThread";
  null23 = v66;
  if (!v66)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = null7;
  v100 = null23;
  v88 = @"senderId";
  null24 = senderId;
  if (!senderId)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null20;
  v101 = null24;
  v89 = @"receivingAccountDomain";
  null25 = v64;
  if (!v64)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = null25;
  v90 = @"hasIcloudAccountEnabled";
  null26 = v62;
  if (!v62)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = null26;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v79 count:26];
  if (!v62)
  {
  }

  if (!v64)
  {
  }

  if (!senderId)
  {
  }

  if (!v66)
  {
  }

  if (!v67)
  {
  }

  if (!elapsedTimeSinceEmailReceived)
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

  if (!reasonCodes)
  {
  }

  if (!blackPearlBreakthroughVersion)
  {
  }

  if (!blackPearlFinalRuleVersion)
  {
  }

  if (!blackPearlSenderModelVersion)
  {
  }

  if (!blackPearlModelVersion)
  {
  }

  if (!v76)
  {
  }

  if (!trialRolloutFactorPackId)
  {
  }

  if (trialRolloutDeploymentId)
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
      if (trialExperimentTreatmentId)
      {
        goto LABEL_100;
      }

      goto LABEL_109;
    }
  }

  if (trialExperimentTreatmentId)
  {
LABEL_100:
    if (trialExperimentDeploymentId)
    {
      goto LABEL_101;
    }

    goto LABEL_110;
  }

LABEL_109:

  if (trialExperimentDeploymentId)
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

- (BMMailCategorization)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v261[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"messageId"];
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
    v8 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
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
      v10 = [dictionaryCopy objectForKeyedSubscript:@"trialExperimentId"];
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
        v213 = [dictionaryCopy objectForKeyedSubscript:@"trialExperimentDeploymentId"];
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
          v11 = [dictionaryCopy objectForKeyedSubscript:@"trialExperimentTreatmentId"];
          v209 = v11;
          errorCopy = error;
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
            v12 = [dictionaryCopy objectForKeyedSubscript:@"trialRolloutId"];
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
              v14 = [dictionaryCopy objectForKeyedSubscript:@"trialRolloutDeploymentId"];
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
                v15 = [dictionaryCopy objectForKeyedSubscript:@"trialRolloutFactorPackId"];
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
                  v17 = [dictionaryCopy objectForKeyedSubscript:@"predictedCategory"];
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
                    v58 = [dictionaryCopy objectForKeyedSubscript:@"blackPearlModelVersion"];
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
                      v194 = [dictionaryCopy objectForKeyedSubscript:@"blackPearlSenderModelVersion"];
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
                        v59 = [dictionaryCopy objectForKeyedSubscript:@"blackPearlFinalRuleVersion"];
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
                          v60 = [dictionaryCopy objectForKeyedSubscript:@"blackPearlBreakthroughVersion"];
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
                            v62 = [dictionaryCopy objectForKeyedSubscript:@"reasonCodes"];
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
                              v63 = [dictionaryCopy objectForKeyedSubscript:@"currCategoryView"];
                              if (v63)
                              {
                                v64 = v63;
                              }

                              else
                              {
                                v64 = [dictionaryCopy objectForKeyedSubscript:@"currMailbox"];

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
                                    if (!errorCopy)
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
                                    *errorCopy = [v98 initWithDomain:v99 code:2 userInfo:v100];
                                    v54 = v191;
                                    v69 = v183;
                                    v84 = v100;
                                    goto LABEL_239;
                                  }

                                  v77 = v64;
                                  v180 = [MEMORY[0x1E696AD98] numberWithInt:BMMailCategorizationMailboxTypeFromString(v77)];
                                }

LABEL_121:
                                v83 = [dictionaryCopy objectForKeyedSubscript:@"prevCategoryView"];
                                if (v83)
                                {
                                  v84 = v83;
                                }

                                else
                                {
                                  v84 = [dictionaryCopy objectForKeyedSubscript:@"prevMailbox"];

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
                                  v86 = [dictionaryCopy objectForKeyedSubscript:@"isBreakthrough"];
                                  v171 = v86;
                                  if (v86 && (v87 = v86, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!errorCopy)
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
                                      *errorCopy = [v94 initWithDomain:v95 code:2 userInfo:?];
                                      v54 = v191;
                                      goto LABEL_235;
                                    }

                                    v173 = v87;
                                  }

                                  else
                                  {
                                    v173 = 0;
                                  }

                                  v88 = [dictionaryCopy objectForKeyedSubscript:@"isBlackPearlEnabled"];
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
                                    v90 = [dictionaryCopy objectForKeyedSubscript:@"elapsedTimeSinceEmailReceived"];
                                    v168 = v90;
                                    if (!v90 || (v91 = v90, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v169 = 0;
LABEL_144:
                                      v92 = [dictionaryCopy objectForKeyedSubscript:@"recategorizationBy"];
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
                                            if (!errorCopy)
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
                                            *errorCopy = v148;
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
                                      v115 = [dictionaryCopy objectForKeyedSubscript:@"isThread"];
                                      if (v115 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          if (!errorCopy)
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
                                          *errorCopy = v124;
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

                                      v116 = [dictionaryCopy objectForKeyedSubscript:@"senderId"];
                                      v161 = v116;
                                      if (v116 && (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          if (!errorCopy)
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
                                          *errorCopy = [v125 initWithDomain:v126 code:2 userInfo:?];
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

                                      v118 = [dictionaryCopy objectForKeyedSubscript:@"receivingAccountDomain"];
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
                                            if (!errorCopy)
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
                                            *errorCopy = v151;
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

                                      v128 = [dictionaryCopy objectForKeyedSubscript:@"hasIcloudAccountEnabled"];
                                      v197 = v8;
                                      if (v128 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          if (errorCopy)
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
                                            *errorCopy = [v140 initWithDomain:v145 code:2 userInfo:v144];

                                            v11 = v209;
                                          }

                                          v137 = 0;
                                          v22 = 0;
                                          goto LABEL_201;
                                        }

                                        v129 = v200;
                                        v203 = v14;
                                        v130 = v192;
                                        selfCopy2 = self;
                                        v158 = v128;
                                        v132 = v128;
                                      }

                                      else
                                      {
                                        v158 = v128;
                                        v129 = v200;
                                        v203 = v14;
                                        v130 = v192;
                                        selfCopy2 = self;
                                        v132 = 0;
                                      }

                                      intValue = [v190 intValue];
                                      intValue2 = [v180 intValue];
                                      intValue3 = [v175 intValue];
                                      intValue4 = [v167 intValue];
                                      v137 = v132;
                                      LODWORD(v157) = [v162 intValue];
                                      LODWORD(v156) = intValue4;
                                      LODWORD(v155) = intValue;
                                      v200 = v129;
                                      v22 = [(BMMailCategorization *)selfCopy2 initWithMessageId:v198 eventType:v130 trialExperimentId:v210 trialExperimentDeploymentId:v208 trialExperimentTreatmentId:v206 trialRolloutId:v201 trialRolloutDeploymentId:v129 trialRolloutFactorPackId:v195 predictedCategory:v155 blackPearlModelVersion:v188 blackPearlSenderModelVersion:v187 blackPearlFinalRuleVersion:v183 blackPearlBreakthroughVersion:v186 reasonCodes:v182 currCategoryView:__PAIR64__(intValue3 prevCategoryView:intValue2) isBreakthrough:v173 isBlackPearlEnabled:v172 elapsedTimeSinceEmailReceived:v169 recategorizationBy:v156 isThread:v165 senderId:v164 receivingAccountDomain:v157 hasIcloudAccountEnabled:v132];
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
                                    if (errorCopy)
                                    {
                                      v111 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v112 = *MEMORY[0x1E698F240];
                                      v224 = *MEMORY[0x1E696A578];
                                      v167 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"elapsedTimeSinceEmailReceived"];
                                      v225 = v167;
                                      v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
                                      v169 = 0;
                                      v22 = 0;
                                      *errorCopy = [v111 initWithDomain:v112 code:2 userInfo:?];
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
                                  if (errorCopy)
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
                                    *errorCopy = [v102 initWithDomain:v103 code:2 userInfo:?];
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

                                if (errorCopy)
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
                                  *errorCopy = v109;
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

                            if (errorCopy)
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
                              *errorCopy = [v81 initWithDomain:v82 code:2 userInfo:?];
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

                          if (errorCopy)
                          {
                            v74 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v75 = *MEMORY[0x1E698F240];
                            v236 = *MEMORY[0x1E696A578];
                            v182 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"blackPearlBreakthroughVersion"];
                            v237 = v182;
                            v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v237 forKeys:&v236 count:1];
                            v186 = 0;
                            v22 = 0;
                            *errorCopy = [v74 initWithDomain:v75 code:2 userInfo:v76];
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

                        v69 = errorCopy;
                        if (errorCopy)
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
                          *errorCopy = [v73 initWithDomain:v71 code:2 userInfo:?];
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

                      if (errorCopy)
                      {
                        v67 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v68 = *MEMORY[0x1E698F240];
                        v240 = *MEMORY[0x1E696A578];
                        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"blackPearlSenderModelVersion"];
                        v241 = v69;
                        v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
                        v187 = 0;
                        v22 = 0;
                        *errorCopy = [v67 initWithDomain:v68 code:2 userInfo:v70];
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

                    if (errorCopy)
                    {
                      v65 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v66 = *MEMORY[0x1E698F240];
                      v242 = *MEMORY[0x1E696A578];
                      v187 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"blackPearlModelVersion"];
                      v243 = v187;
                      v194 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
                      v188 = 0;
                      v22 = 0;
                      *errorCopy = [v65 initWithDomain:v66 code:2 userInfo:?];
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

                  if (errorCopy)
                  {
                    v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v79 = *MEMORY[0x1E698F240];
                    v244 = *MEMORY[0x1E696A578];
                    v188 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"predictedCategory"];
                    v245 = v188;
                    v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v245 forKeys:&v244 count:1];
                    v190 = 0;
                    v22 = 0;
                    *errorCopy = [v78 initWithDomain:v79 code:2 userInfo:v80];
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

                if (errorCopy)
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
                  *errorCopy = v56;
                  goto LABEL_218;
                }

                v195 = 0;
                v22 = 0;
                v54 = v191;
LABEL_219:

                v7 = v198;
                goto LABEL_220;
              }

              if (errorCopy)
              {
                v51 = objc_alloc(MEMORY[0x1E696ABC0]);
                v52 = *MEMORY[0x1E698F240];
                v248 = *MEMORY[0x1E696A578];
                v195 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialRolloutDeploymentId"];
                v249 = v195;
                v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v249 forKeys:&v248 count:1];
                v200 = 0;
                v22 = 0;
                *errorCopy = [v51 initWithDomain:v52 code:2 userInfo:v53];
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

            if (errorCopy)
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
              *errorCopy = [v50 initWithDomain:v48 code:2 userInfo:v49];
              goto LABEL_220;
            }

            v201 = 0;
            v22 = 0;
LABEL_221:

            goto LABEL_222;
          }

          if (error)
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
            *error = v43;
            goto LABEL_221;
          }

          v206 = 0;
          v22 = 0;
LABEL_222:

          goto LABEL_223;
        }

        if (error)
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
          *error = [v37 initWithDomain:v36 code:2 userInfo:v11];
          goto LABEL_222;
        }

        v208 = 0;
        v22 = 0;
LABEL_223:

        goto LABEL_224;
      }

      if (error)
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
        *error = v31;
        goto LABEL_223;
      }

      v210 = 0;
      v22 = 0;
LABEL_224:

      goto LABEL_225;
    }

    if (error)
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
      *error = [v29 initWithDomain:v28 code:2 userInfo:v10];
      goto LABEL_224;
    }

    v9 = 0;
    v22 = 0;
LABEL_225:

    goto LABEL_226;
  }

  if (error)
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
    *error = v21;
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v75.receiver = self;
  v75.super_class = BMMailCategorization;
  v5 = [(BMEventBase *)&v75 init];
  if (!v5)
  {
    goto LABEL_151;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v76 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v51 = [fromCopy position] + 1;
            if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v26 > 6)
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
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v26 > 7)
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
            v33 = [fromCopy position] + 1;
            if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v26 > 7)
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
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v23 = (v19 != 0) & ~[fromCopy hasError];
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
            v39 = [fromCopy position] + 1;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v23 = (v38 != 0) & ~[fromCopy hasError];
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
            v61 = [fromCopy position] + 1;
            if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v26 > 6)
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
            v45 = [fromCopy position] + 1;
            if (v45 >= [fromCopy position] && (v46 = objc_msgSend(fromCopy, "position") + 1, v46 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v23 = (v44 != 0) & ~[fromCopy hasError];
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
            v56 = [fromCopy position] + 1;
            if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v26 > 8)
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
        v67 = [fromCopy position] + 1;
        if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
        {
          data10 = [fromCopy data];
          [data10 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v23 = (v66 != 0) & ~[fromCopy hasError];
LABEL_146:
      v70 = 22;
LABEL_147:
      *(&v5->super.super.isa + v70) = v23;
LABEL_148:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  messageId = [(BMMailCategorization *)self messageId];
  eventType = [(BMMailCategorization *)self eventType];
  trialExperimentId = [(BMMailCategorization *)self trialExperimentId];
  trialExperimentDeploymentId = [(BMMailCategorization *)self trialExperimentDeploymentId];
  trialExperimentTreatmentId = [(BMMailCategorization *)self trialExperimentTreatmentId];
  trialRolloutId = [(BMMailCategorization *)self trialRolloutId];
  trialRolloutDeploymentId = [(BMMailCategorization *)self trialRolloutDeploymentId];
  trialRolloutFactorPackId = [(BMMailCategorization *)self trialRolloutFactorPackId];
  v22 = BMMailCategorizationCategoryAsString([(BMMailCategorization *)self predictedCategory]);
  blackPearlModelVersion = [(BMMailCategorization *)self blackPearlModelVersion];
  blackPearlSenderModelVersion = [(BMMailCategorization *)self blackPearlSenderModelVersion];
  blackPearlFinalRuleVersion = [(BMMailCategorization *)self blackPearlFinalRuleVersion];
  blackPearlBreakthroughVersion = [(BMMailCategorization *)self blackPearlBreakthroughVersion];
  reasonCodes = [(BMMailCategorization *)self reasonCodes];
  v12 = BMMailCategorizationMailboxTypeAsString([(BMMailCategorization *)self currCategoryView]);
  v13 = BMMailCategorizationMailboxTypeAsString([(BMMailCategorization *)self prevCategoryView]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization isBreakthrough](self, "isBreakthrough")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization isBlackPearlEnabled](self, "isBlackPearlEnabled")}];
  elapsedTimeSinceEmailReceived = [(BMMailCategorization *)self elapsedTimeSinceEmailReceived];
  v9 = BMMailCategorizationByTypeAsString([(BMMailCategorization *)self recategorizationBy]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization isThread](self, "isThread")}];
  senderId = [(BMMailCategorization *)self senderId];
  v6 = BMMailCategorizationDomainAsString([(BMMailCategorization *)self receivingAccountDomain]);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorization hasIcloudAccountEnabled](self, "hasIcloudAccountEnabled")}];
  v19 = [v18 initWithFormat:@"BMMailCategorization with messageId: %@, eventType: %@, trialExperimentId: %@, trialExperimentDeploymentId: %@, trialExperimentTreatmentId: %@, trialRolloutId: %@, trialRolloutDeploymentId: %@, trialRolloutFactorPackId: %@, predictedCategory: %@, blackPearlModelVersion: %@, blackPearlSenderModelVersion: %@, blackPearlFinalRuleVersion: %@, blackPearlBreakthroughVersion: %@, reasonCodes: %@, currCategoryView: %@, prevCategoryView: %@, isBreakthrough: %@, isBlackPearlEnabled: %@, elapsedTimeSinceEmailReceived: %@, recategorizationBy: %@, isThread: %@, senderId: %@, receivingAccountDomain: %@, hasIcloudAccountEnabled: %@", messageId, eventType, trialExperimentId, trialExperimentDeploymentId, trialExperimentTreatmentId, trialRolloutId, trialRolloutDeploymentId, trialRolloutFactorPackId, v22, blackPearlModelVersion, blackPearlSenderModelVersion, blackPearlFinalRuleVersion, blackPearlBreakthroughVersion, reasonCodes, v12, v13, v11, v10, elapsedTimeSinceEmailReceived, v9, v4, senderId, v6, v7];

  return v19;
}

- (BMMailCategorization)initWithMessageId:(id)id eventType:(id)type trialExperimentId:(id)experimentId trialExperimentDeploymentId:(id)deploymentId trialExperimentTreatmentId:(id)treatmentId trialRolloutId:(id)rolloutId trialRolloutDeploymentId:(id)rolloutDeploymentId trialRolloutFactorPackId:(id)self0 predictedCategory:(int)self1 blackPearlModelVersion:(id)self2 blackPearlSenderModelVersion:(id)self3 blackPearlFinalRuleVersion:(id)self4 blackPearlBreakthroughVersion:(id)self5 reasonCodes:(id)self6 currCategoryView:(int)self7 prevCategoryView:(int)self8 isBreakthrough:(id)self9 isBlackPearlEnabled:(id)enabled elapsedTimeSinceEmailReceived:(id)received recategorizationBy:(int)by isThread:(id)thread senderId:(id)senderId receivingAccountDomain:(int)domain hasIcloudAccountEnabled:(id)accountEnabled
{
  idCopy = id;
  typeCopy = type;
  experimentIdCopy = experimentId;
  deploymentIdCopy = deploymentId;
  deploymentIdCopy2 = deploymentId;
  treatmentIdCopy = treatmentId;
  treatmentIdCopy2 = treatmentId;
  rolloutIdCopy = rolloutId;
  rolloutIdCopy2 = rolloutId;
  rolloutDeploymentIdCopy = rolloutDeploymentId;
  packIdCopy = packId;
  versionCopy = version;
  modelVersionCopy = modelVersion;
  ruleVersionCopy = ruleVersion;
  breakthroughVersionCopy = breakthroughVersion;
  codesCopy = codes;
  breakthroughCopy = breakthrough;
  enabledCopy = enabled;
  receivedCopy = received;
  threadCopy = thread;
  senderIdCopy = senderId;
  accountEnabledCopy = accountEnabled;
  v57.receiver = self;
  v57.super_class = BMMailCategorization;
  v35 = [(BMEventBase *)&v57 init];
  if (v35)
  {
    v35->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v35->_messageId, id);
    objc_storeStrong(&v35->_eventType, type);
    objc_storeStrong(&v35->_trialExperimentId, experimentId);
    objc_storeStrong(&v35->_trialExperimentDeploymentId, deploymentIdCopy);
    objc_storeStrong(&v35->_trialExperimentTreatmentId, treatmentIdCopy);
    objc_storeStrong(&v35->_trialRolloutId, rolloutIdCopy);
    objc_storeStrong(&v35->_trialRolloutDeploymentId, rolloutDeploymentId);
    objc_storeStrong(&v35->_trialRolloutFactorPackId, packId);
    v35->_predictedCategory = category;
    objc_storeStrong(&v35->_blackPearlModelVersion, version);
    objc_storeStrong(&v35->_blackPearlSenderModelVersion, modelVersion);
    objc_storeStrong(&v35->_blackPearlFinalRuleVersion, ruleVersion);
    objc_storeStrong(&v35->_blackPearlBreakthroughVersion, breakthroughVersion);
    objc_storeStrong(&v35->_reasonCodes, codes);
    v35->_currCategoryView = view;
    v35->_prevCategoryView = categoryView;
    if (breakthroughCopy)
    {
      v35->_hasIsBreakthrough = 1;
      v35->_isBreakthrough = [breakthroughCopy BOOLValue];
    }

    else
    {
      v35->_hasIsBreakthrough = 0;
      v35->_isBreakthrough = 0;
    }

    if (enabledCopy)
    {
      v35->_hasIsBlackPearlEnabled = 1;
      v35->_isBlackPearlEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v35->_hasIsBlackPearlEnabled = 0;
      v35->_isBlackPearlEnabled = 0;
    }

    objc_storeStrong(&v35->_elapsedTimeSinceEmailReceived, received);
    v35->_recategorizationBy = by;
    if (threadCopy)
    {
      v35->_hasIsThread = 1;
      v35->_isThread = [threadCopy BOOLValue];
    }

    else
    {
      v35->_hasIsThread = 0;
      v35->_isThread = 0;
    }

    objc_storeStrong(&v35->_senderId, senderId);
    v35->_receivingAccountDomain = domain;
    if (accountEnabledCopy)
    {
      v35->_hasHasIcloudAccountEnabled = 1;
      v35->_hasIcloudAccountEnabled = [accountEnabledCopy BOOLValue];
    }

    else
    {
      v35->_hasHasIcloudAccountEnabled = 0;
      v35->_hasIcloudAccountEnabled = 0;
    }
  }

  return v35;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

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