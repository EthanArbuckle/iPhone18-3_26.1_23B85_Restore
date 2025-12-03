@interface BMAutonamingAccuracyFedStats
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAutonamingAccuracyFedStats)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAutonamingAccuracyFedStats)initWithModelVersion:(id)version inferenceOutputType:(int)type inferenceAccuracy:(int)accuracy aggregatedInferenceContributingCount:(id)count aggregatedInferenceConfidence:(id)confidence aggregatedInferenceAccuracy:(int)inferenceAccuracy;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAutonamingAccuracyFedStats

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelVersion" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inferenceOutputType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"inferenceAccuracy" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aggregatedInferenceContributingCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aggregatedInferenceConfidence" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:1 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aggregatedInferenceAccuracy" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    modelVersion = [(BMAutonamingAccuracyFedStats *)self modelVersion];
    modelVersion2 = [v5 modelVersion];
    v8 = modelVersion2;
    if (modelVersion == modelVersion2)
    {
    }

    else
    {
      modelVersion3 = [(BMAutonamingAccuracyFedStats *)self modelVersion];
      modelVersion4 = [v5 modelVersion];
      v11 = [modelVersion3 isEqual:modelVersion4];

      if (!v11)
      {
        goto LABEL_20;
      }
    }

    inferenceOutputType = [(BMAutonamingAccuracyFedStats *)self inferenceOutputType];
    if (inferenceOutputType == [v5 inferenceOutputType])
    {
      inferenceAccuracy = [(BMAutonamingAccuracyFedStats *)self inferenceAccuracy];
      if (inferenceAccuracy == [v5 inferenceAccuracy])
      {
        if (!-[BMAutonamingAccuracyFedStats hasAggregatedInferenceContributingCount](self, "hasAggregatedInferenceContributingCount") && ![v5 hasAggregatedInferenceContributingCount] || -[BMAutonamingAccuracyFedStats hasAggregatedInferenceContributingCount](self, "hasAggregatedInferenceContributingCount") && objc_msgSend(v5, "hasAggregatedInferenceContributingCount") && (v15 = -[BMAutonamingAccuracyFedStats aggregatedInferenceContributingCount](self, "aggregatedInferenceContributingCount"), v15 == objc_msgSend(v5, "aggregatedInferenceContributingCount")))
        {
          if (!-[BMAutonamingAccuracyFedStats hasAggregatedInferenceConfidence](self, "hasAggregatedInferenceConfidence") && ![v5 hasAggregatedInferenceConfidence] || -[BMAutonamingAccuracyFedStats hasAggregatedInferenceConfidence](self, "hasAggregatedInferenceConfidence") && objc_msgSend(v5, "hasAggregatedInferenceConfidence") && (-[BMAutonamingAccuracyFedStats aggregatedInferenceConfidence](self, "aggregatedInferenceConfidence"), v17 = v16, objc_msgSend(v5, "aggregatedInferenceConfidence"), v17 == v18))
          {
            aggregatedInferenceAccuracy = [(BMAutonamingAccuracyFedStats *)self aggregatedInferenceAccuracy];
            v12 = aggregatedInferenceAccuracy == [v5 aggregatedInferenceAccuracy];
LABEL_21:

            goto LABEL_22;
          }
        }
      }
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  v12 = 0;
LABEL_22:

  return v12;
}

- (id)jsonDictionary
{
  v26[6] = *MEMORY[0x1E69E9840];
  modelVersion = [(BMAutonamingAccuracyFedStats *)self modelVersion];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAutonamingAccuracyFedStats inferenceOutputType](self, "inferenceOutputType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAutonamingAccuracyFedStats inferenceAccuracy](self, "inferenceAccuracy")}];
  if ([(BMAutonamingAccuracyFedStats *)self hasAggregatedInferenceContributingCount])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAutonamingAccuracyFedStats aggregatedInferenceContributingCount](self, "aggregatedInferenceContributingCount")}];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMAutonamingAccuracyFedStats *)self hasAggregatedInferenceConfidence]|| ([(BMAutonamingAccuracyFedStats *)self aggregatedInferenceConfidence], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMAutonamingAccuracyFedStats *)self aggregatedInferenceConfidence];
    v8 = MEMORY[0x1E696AD98];
    [(BMAutonamingAccuracyFedStats *)self aggregatedInferenceConfidence];
    v9 = [v8 numberWithDouble:?];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAutonamingAccuracyFedStats aggregatedInferenceAccuracy](self, "aggregatedInferenceAccuracy")}];
  v25[0] = @"modelVersion";
  null = modelVersion;
  if (!modelVersion)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v26[0] = null;
  v25[1] = @"inferenceOutputType";
  null2 = v4;
  v24 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v25[2] = @"inferenceAccuracy";
  null3 = v5;
  v23 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14 = modelVersion;
  v26[2] = null3;
  v25[3] = @"aggregatedInferenceContributingCount";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"aggregatedInferenceConfidence";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"aggregatedInferenceAccuracy";
  null6 = v10;
  if (!v10)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_22;
    }

LABEL_31:

    if (v6)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_22:
  if (v6)
  {
    goto LABEL_23;
  }

LABEL_32:

LABEL_23:
  if (!v23)
  {
  }

  if (v24)
  {
    if (v14)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (v14)
    {
      goto LABEL_27;
    }
  }

LABEL_27:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMAutonamingAccuracyFedStats)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v63[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v7 = 0;
        v19 = 0;
        selfCopy7 = self;
        goto LABEL_25;
      }

      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v62 = *MEMORY[0x1E696A578];
      v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modelVersion"];
      v63[0] = v49;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      v24 = [v22 initWithDomain:v23 code:2 userInfo:v9];
      v7 = 0;
      v19 = 0;
      *error = v24;
      goto LABEL_63;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"inferenceOutputType"];
  v47 = v8;
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
        goto LABEL_7;
      }

      errorCopy = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMInferenceOutputTypeFromString(v9)];
        goto LABEL_7;
      }

      if (error)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = v7;
        v35 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"inferenceOutputType"];
        v61 = v17;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v36 = v35;
        v7 = v34;
        v49 = 0;
        v19 = 0;
        *errorCopy = [v33 initWithDomain:v36 code:2 userInfo:v11];
        goto LABEL_65;
      }

      v49 = 0;
      v19 = 0;
LABEL_63:
      selfCopy7 = self;
      goto LABEL_24;
    }
  }

  v10 = 0;
LABEL_7:
  v11 = [dictionaryCopy objectForKeyedSubscript:@"inferenceAccuracy"];
  v46 = v6;
  v49 = v10;
  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v11;
        goto LABEL_10;
      }

      errorCopy2 = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = [MEMORY[0x1E696AD98] numberWithInt:BMInferenceAccuracyFromString(v11)];
        goto LABEL_10;
      }

      if (error)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = v7;
        v39 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"inferenceAccuracy"];
        v59 = v50;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v40 = v39;
        v7 = v38;
        v17 = 0;
        v19 = 0;
        *errorCopy2 = [v37 initWithDomain:v40 code:2 userInfo:v12];
        selfCopy7 = self;
        goto LABEL_22;
      }

      v17 = 0;
      v19 = 0;
LABEL_65:
      selfCopy7 = self;
      goto LABEL_23;
    }
  }

  v45 = 0;
LABEL_10:
  v12 = [dictionaryCopy objectForKeyedSubscript:@"aggregatedInferenceContributingCount"];
  v48 = v7;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v50 = 0;
        v19 = 0;
        selfCopy7 = self;
        v17 = v45;
        goto LABEL_22;
      }

      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v56 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"aggregatedInferenceContributingCount"];
      v57 = v14;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v50 = 0;
      v19 = 0;
      *error = [v27 initWithDomain:v28 code:2 userInfo:v13];
      goto LABEL_61;
    }

    v50 = v12;
  }

  else
  {
    v50 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"aggregatedInferenceConfidence"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        goto LABEL_16;
      }

      if (error)
      {
        errorCopy3 = error;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"aggregatedInferenceConfidence"];
        v55 = v16;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v32 = [v30 initWithDomain:v31 code:2 userInfo:v15];
        v14 = 0;
        v19 = 0;
        *errorCopy3 = v32;
        goto LABEL_59;
      }

      v14 = 0;
      v19 = 0;
LABEL_61:
      selfCopy7 = self;
      v17 = v45;
      goto LABEL_21;
    }
  }

  v14 = 0;
LABEL_16:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"aggregatedInferenceAccuracy"];
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMInferenceAccuracyFromString(v15)];
        goto LABEL_19;
      }

      if (error)
      {
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"aggregatedInferenceAccuracy"];
        v53 = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        *error = [v41 initWithDomain:v44 code:2 userInfo:v43];
      }

      v16 = 0;
      v19 = 0;
LABEL_59:
      selfCopy7 = self;
      v17 = v45;
      goto LABEL_20;
    }
  }

  v16 = 0;
LABEL_19:
  v17 = v45;
  selfCopy7 = -[BMAutonamingAccuracyFedStats initWithModelVersion:inferenceOutputType:inferenceAccuracy:aggregatedInferenceContributingCount:aggregatedInferenceConfidence:aggregatedInferenceAccuracy:](self, "initWithModelVersion:inferenceOutputType:inferenceAccuracy:aggregatedInferenceContributingCount:aggregatedInferenceConfidence:aggregatedInferenceAccuracy:", v48, [v10 intValue], objc_msgSend(v45, "intValue"), v50, v14, objc_msgSend(v16, "intValue"));
  v19 = selfCopy7;
LABEL_20:

LABEL_21:
  v7 = v48;
LABEL_22:

  v6 = v46;
LABEL_23:

  v9 = v47;
LABEL_24:

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAutonamingAccuracyFedStats *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_modelVersion)
  {
    PBDataWriterWriteStringField();
  }

  inferenceOutputType = self->_inferenceOutputType;
  PBDataWriterWriteUint32Field();
  inferenceAccuracy = self->_inferenceAccuracy;
  PBDataWriterWriteUint32Field();
  if (self->_hasAggregatedInferenceContributingCount)
  {
    aggregatedInferenceContributingCount = self->_aggregatedInferenceContributingCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAggregatedInferenceConfidence)
  {
    aggregatedInferenceConfidence = self->_aggregatedInferenceConfidence;
    PBDataWriterWriteFloatField();
  }

  aggregatedInferenceAccuracy = self->_aggregatedInferenceAccuracy;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v49.receiver = self;
  v49.super_class = BMAutonamingAccuracyFedStats;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_89;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_87;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v50) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v50) & 0x7F) << v7;
        if ((LOBYTE(v50) & 0x80) == 0)
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
        goto LABEL_87;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        break;
      }

      if (v15 != 1)
      {
        if (v15 == 2)
        {
          v37 = 0;
          v38 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v50) = 0;
            v39 = [fromCopy position] + 1;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (LOBYTE(v50) & 0x7F) << v37;
            if ((LOBYTE(v50) & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v22 = v38++ > 8;
            if (v22)
            {
              goto LABEL_81;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 4)
          {
LABEL_81:
            LODWORD(v18) = 0;
          }

          v44 = 24;
        }

        else
        {
          if (v15 != 3)
          {
            goto LABEL_53;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v50) = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (LOBYTE(v50) & 0x7F) << v16;
            if ((LOBYTE(v50) & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_73;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 2)
          {
LABEL_73:
            LODWORD(v18) = 0;
          }

          v44 = 28;
        }

LABEL_83:
        *(&v5->super.super.isa + v44) = v18;
        goto LABEL_86;
      }

      v28 = PBReaderReadString();
      modelVersion = v5->_modelVersion;
      v5->_modelVersion = v28;

LABEL_86:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_87;
      }
    }

    if (v15 == 4)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v5->_hasAggregatedInferenceContributingCount = 1;
      while (1)
      {
        LOBYTE(v50) = 0;
        v33 = [fromCopy position] + 1;
        if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v32 |= (LOBYTE(v50) & 0x7F) << v30;
        if ((LOBYTE(v50) & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v13 = v31++ >= 9;
        if (v13)
        {
          v36 = 0;
          goto LABEL_70;
        }
      }

      if ([fromCopy hasError])
      {
        v36 = 0;
      }

      else
      {
        v36 = v32;
      }

LABEL_70:
      v5->_aggregatedInferenceContributingCount = v36;
      goto LABEL_86;
    }

    if (v15 == 5)
    {
      v5->_hasAggregatedInferenceConfidence = 1;
      v50 = 0.0;
      v42 = [fromCopy position] + 4;
      if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 4, v43 <= objc_msgSend(fromCopy, "length")))
      {
        data5 = [fromCopy data];
        [data5 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 4}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
      }

      else
      {
        [fromCopy _setError];
      }

      v5->_aggregatedInferenceConfidence = v50;
      goto LABEL_86;
    }

    if (v15 != 6)
    {
LABEL_53:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_88;
      }

      goto LABEL_86;
    }

    v23 = 0;
    v24 = 0;
    v18 = 0;
    while (1)
    {
      LOBYTE(v50) = 0;
      v25 = [fromCopy position] + 1;
      if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
      {
        data6 = [fromCopy data];
        [data6 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v18 |= (LOBYTE(v50) & 0x7F) << v23;
      if ((LOBYTE(v50) & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v22 = v24++ > 8;
      if (v22)
      {
        goto LABEL_77;
      }
    }

    if (([fromCopy hasError] & 1) != 0 || v18 > 2)
    {
LABEL_77:
      LODWORD(v18) = 0;
    }

    v44 = 36;
    goto LABEL_83;
  }

LABEL_87:
  if ([fromCopy hasError])
  {
LABEL_88:
    v47 = 0;
  }

  else
  {
LABEL_89:
    v47 = v5;
  }

  return v47;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  modelVersion = [(BMAutonamingAccuracyFedStats *)self modelVersion];
  v5 = BMInferenceOutputTypeAsString([(BMAutonamingAccuracyFedStats *)self inferenceOutputType]);
  v6 = BMInferenceAccuracyAsString([(BMAutonamingAccuracyFedStats *)self inferenceAccuracy]);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAutonamingAccuracyFedStats aggregatedInferenceContributingCount](self, "aggregatedInferenceContributingCount")}];
  v8 = MEMORY[0x1E696AD98];
  [(BMAutonamingAccuracyFedStats *)self aggregatedInferenceConfidence];
  v9 = [v8 numberWithDouble:?];
  v10 = BMInferenceAccuracyAsString([(BMAutonamingAccuracyFedStats *)self aggregatedInferenceAccuracy]);
  v11 = [v3 initWithFormat:@"BMAutonamingAccuracyFedStats with modelVersion: %@, inferenceOutputType: %@, inferenceAccuracy: %@, aggregatedInferenceContributingCount: %@, aggregatedInferenceConfidence: %@, aggregatedInferenceAccuracy: %@", modelVersion, v5, v6, v7, v9, v10];

  return v11;
}

- (BMAutonamingAccuracyFedStats)initWithModelVersion:(id)version inferenceOutputType:(int)type inferenceAccuracy:(int)accuracy aggregatedInferenceContributingCount:(id)count aggregatedInferenceConfidence:(id)confidence aggregatedInferenceAccuracy:(int)inferenceAccuracy
{
  versionCopy = version;
  countCopy = count;
  confidenceCopy = confidence;
  v23.receiver = self;
  v23.super_class = BMAutonamingAccuracyFedStats;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_modelVersion, version);
    v18->_inferenceOutputType = type;
    v18->_inferenceAccuracy = accuracy;
    if (countCopy)
    {
      v18->_hasAggregatedInferenceContributingCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v18->_hasAggregatedInferenceContributingCount = 0;
      intValue = -1;
    }

    v18->_aggregatedInferenceContributingCount = intValue;
    if (confidenceCopy)
    {
      v18->_hasAggregatedInferenceConfidence = 1;
      [confidenceCopy floatValue];
      v21 = v20;
    }

    else
    {
      v18->_hasAggregatedInferenceConfidence = 0;
      v21 = -1.0;
    }

    v18->_aggregatedInferenceConfidence = v21;
    v18->_aggregatedInferenceAccuracy = inferenceAccuracy;
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelVersion" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferenceOutputType" number:2 type:4 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"inferenceAccuracy" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregatedInferenceContributingCount" number:4 type:2 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregatedInferenceConfidence" number:5 type:1 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aggregatedInferenceAccuracy" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMAutonamingAccuracyFedStats alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end