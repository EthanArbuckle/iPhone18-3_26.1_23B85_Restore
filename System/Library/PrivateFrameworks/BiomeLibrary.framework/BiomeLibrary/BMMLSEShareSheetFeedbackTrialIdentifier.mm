@interface BMMLSEShareSheetFeedbackTrialIdentifier
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEShareSheetFeedbackTrialIdentifier)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMLSEShareSheetFeedbackTrialIdentifier)initWithTrialExperimentId:(id)id trialTreatmentId:(id)treatmentId trialDeploymentId:(id)deploymentId;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEShareSheetFeedbackTrialIdentifier

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    trialExperimentId = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialExperimentId];
    trialExperimentId2 = [v5 trialExperimentId];
    v8 = trialExperimentId2;
    if (trialExperimentId == trialExperimentId2)
    {
    }

    else
    {
      trialExperimentId3 = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialExperimentId];
      trialExperimentId4 = [v5 trialExperimentId];
      v11 = [trialExperimentId3 isEqual:trialExperimentId4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    trialTreatmentId = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialTreatmentId];
    trialTreatmentId2 = [v5 trialTreatmentId];
    v15 = trialTreatmentId2;
    if (trialTreatmentId == trialTreatmentId2)
    {
    }

    else
    {
      trialTreatmentId3 = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialTreatmentId];
      trialTreatmentId4 = [v5 trialTreatmentId];
      v18 = [trialTreatmentId3 isEqual:trialTreatmentId4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    trialDeploymentId = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialDeploymentId];
    trialDeploymentId2 = [v5 trialDeploymentId];
    if (trialDeploymentId == trialDeploymentId2)
    {
      v12 = 1;
    }

    else
    {
      trialDeploymentId3 = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialDeploymentId];
      trialDeploymentId4 = [v5 trialDeploymentId];
      v12 = [trialDeploymentId3 isEqual:trialDeploymentId4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  trialExperimentId = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialExperimentId];
  trialTreatmentId = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialTreatmentId];
  trialDeploymentId = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialDeploymentId];
  v12[0] = @"trialExperimentId";
  null = trialExperimentId;
  if (!trialExperimentId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"trialTreatmentId";
  null2 = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"trialDeploymentId";
  null3 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (trialDeploymentId)
  {
    if (trialTreatmentId)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (trialExperimentId)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!trialTreatmentId)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (trialExperimentId)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMMLSEShareSheetFeedbackTrialIdentifier)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"trialExperimentId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"trialTreatmentId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialTreatmentId"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"trialDeploymentId"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialDeploymentId"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *error = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        selfCopy = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self initWithTrialExperimentId:v8 trialTreatmentId:v10 trialDeploymentId:v12];
    selfCopy = self;
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"trialExperimentId"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEShareSheetFeedbackTrialIdentifier *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_trialExperimentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trialTreatmentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trialDeploymentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMMLSEShareSheetFeedbackTrialIdentifier;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
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

      v15 = (v14 >> 3) - 1;
      if (v15 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E8BEE0[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  trialExperimentId = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialExperimentId];
  trialTreatmentId = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialTreatmentId];
  trialDeploymentId = [(BMMLSEShareSheetFeedbackTrialIdentifier *)self trialDeploymentId];
  v7 = [v3 initWithFormat:@"BMMLSEShareSheetFeedbackTrialIdentifier with trialExperimentId: %@, trialTreatmentId: %@, trialDeploymentId: %@", trialExperimentId, trialTreatmentId, trialDeploymentId];

  return v7;
}

- (BMMLSEShareSheetFeedbackTrialIdentifier)initWithTrialExperimentId:(id)id trialTreatmentId:(id)treatmentId trialDeploymentId:(id)deploymentId
{
  idCopy = id;
  treatmentIdCopy = treatmentId;
  deploymentIdCopy = deploymentId;
  v14.receiver = self;
  v14.super_class = BMMLSEShareSheetFeedbackTrialIdentifier;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_trialExperimentId, id);
    objc_storeStrong(&v12->_trialTreatmentId, treatmentId);
    objc_storeStrong(&v12->_trialDeploymentId, deploymentId);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialExperimentId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialTreatmentId" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialDeploymentId" number:3 type:13 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialExperimentId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialTreatmentId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trialDeploymentId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
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

    v8 = [[BMMLSEShareSheetFeedbackTrialIdentifier alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end