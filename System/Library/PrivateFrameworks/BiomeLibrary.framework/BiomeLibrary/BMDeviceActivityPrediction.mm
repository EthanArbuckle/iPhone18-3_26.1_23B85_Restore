@interface BMDeviceActivityPrediction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceActivityPrediction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMDeviceActivityPrediction)initWithVersion:(id)a3 predictionType:(int)a4 confidenceLevel:(int)a5 confidenceValue:(id)a6 predictedDuration:(id)a7 outputReason:(int)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceActivityPrediction

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictionType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidenceLevel" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidenceValue" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predictedDuration" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"outputReason" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMDeviceActivityPrediction hasVersion](self, "hasVersion") || [v5 hasVersion])
    {
      if (![(BMDeviceActivityPrediction *)self hasVersion])
      {
        goto LABEL_21;
      }

      if (![v5 hasVersion])
      {
        goto LABEL_21;
      }

      v6 = [(BMDeviceActivityPrediction *)self version];
      if (v6 != [v5 version])
      {
        goto LABEL_21;
      }
    }

    v7 = [(BMDeviceActivityPrediction *)self predictionType];
    if (v7 != [v5 predictionType])
    {
      goto LABEL_21;
    }

    v8 = [(BMDeviceActivityPrediction *)self confidenceLevel];
    if (v8 != [v5 confidenceLevel])
    {
      goto LABEL_21;
    }

    if (-[BMDeviceActivityPrediction hasConfidenceValue](self, "hasConfidenceValue") || [v5 hasConfidenceValue])
    {
      if (![(BMDeviceActivityPrediction *)self hasConfidenceValue])
      {
        goto LABEL_21;
      }

      if (![v5 hasConfidenceValue])
      {
        goto LABEL_21;
      }

      [(BMDeviceActivityPrediction *)self confidenceValue];
      v10 = v9;
      [v5 confidenceValue];
      if (v10 != v11)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMDeviceActivityPrediction hasPredictedDuration](self, "hasPredictedDuration") && ![v5 hasPredictedDuration] || -[BMDeviceActivityPrediction hasPredictedDuration](self, "hasPredictedDuration") && objc_msgSend(v5, "hasPredictedDuration") && (-[BMDeviceActivityPrediction predictedDuration](self, "predictedDuration"), v13 = v12, objc_msgSend(v5, "predictedDuration"), v13 == v14))
    {
      v15 = [(BMDeviceActivityPrediction *)self outputReason];
      v16 = v15 == [v5 outputReason];
    }

    else
    {
LABEL_21:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)jsonDictionary
{
  v27[6] = *MEMORY[0x1E69E9840];
  if ([(BMDeviceActivityPrediction *)self hasVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceActivityPrediction version](self, "version")}];
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceActivityPrediction predictionType](self, "predictionType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceActivityPrediction confidenceLevel](self, "confidenceLevel")}];
  if (![(BMDeviceActivityPrediction *)self hasConfidenceValue]|| ([(BMDeviceActivityPrediction *)self confidenceValue], fabs(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMDeviceActivityPrediction *)self confidenceValue];
    v7 = MEMORY[0x1E696AD98];
    [(BMDeviceActivityPrediction *)self confidenceValue];
    v8 = [v7 numberWithDouble:?];
  }

  if (![(BMDeviceActivityPrediction *)self hasPredictedDuration]|| ([(BMDeviceActivityPrediction *)self predictedDuration], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMDeviceActivityPrediction *)self predictedDuration];
    v10 = MEMORY[0x1E696AD98];
    [(BMDeviceActivityPrediction *)self predictedDuration];
    v11 = [v10 numberWithDouble:?];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceActivityPrediction outputReason](self, "outputReason")}];
  v25 = v3;
  v26[0] = @"version";
  v13 = v3;
  if (!v3)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v13;
  v24 = v4;
  v27[0] = v13;
  v26[1] = @"predictionType";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = v14;
  v26[2] = @"confidenceLevel";
  v15 = v5;
  if (!v5)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = v15;
  v26[3] = @"confidenceValue";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = v16;
  v26[4] = @"predictedDuration";
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = v17;
  v26[5] = @"outputReason";
  v18 = v12;
  if (!v12)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:{6, v22}];
  if (v12)
  {
    if (v11)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (v11)
    {
LABEL_26:
      if (v8)
      {
        goto LABEL_27;
      }

LABEL_37:

      if (v5)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }
  }

  if (!v8)
  {
    goto LABEL_37;
  }

LABEL_27:
  if (v5)
  {
    goto LABEL_28;
  }

LABEL_38:

LABEL_28:
  if (!v24)
  {
  }

  if (!v25)
  {
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BMDeviceActivityPrediction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v63[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"version"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v7 = 0;
        v19 = 0;
        v18 = self;
        goto LABEL_25;
      }

      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v62 = *MEMORY[0x1E696A578];
      v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
      v63[0] = v49;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      v24 = [v22 initWithDomain:v23 code:2 userInfo:v9];
      v7 = 0;
      v19 = 0;
      *a4 = v24;
      goto LABEL_63;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"predictionType"];
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

      v25 = a4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceActivityPredictionPredictionTypeFromString(v9)];
        goto LABEL_7;
      }

      if (a4)
      {
        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = v7;
        v35 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"predictionType"];
        v61 = v17;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v36 = v35;
        v7 = v34;
        v49 = 0;
        v19 = 0;
        *v25 = [v33 initWithDomain:v36 code:2 userInfo:v11];
        goto LABEL_65;
      }

      v49 = 0;
      v19 = 0;
LABEL_63:
      v18 = self;
      goto LABEL_24;
    }
  }

  v10 = 0;
LABEL_7:
  v11 = [v5 objectForKeyedSubscript:@"confidenceLevel"];
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

      v26 = a4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceActivityPredictionConfidenceLevelFromString(v11)];
        goto LABEL_10;
      }

      if (a4)
      {
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = v7;
        v39 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"confidenceLevel"];
        v59 = v50;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v40 = v39;
        v7 = v38;
        v17 = 0;
        v19 = 0;
        *v26 = [v37 initWithDomain:v40 code:2 userInfo:v12];
        v18 = self;
        goto LABEL_22;
      }

      v17 = 0;
      v19 = 0;
LABEL_65:
      v18 = self;
      goto LABEL_23;
    }
  }

  v45 = 0;
LABEL_10:
  v12 = [v5 objectForKeyedSubscript:@"confidenceValue"];
  v48 = v7;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v50 = 0;
        v19 = 0;
        v18 = self;
        v17 = v45;
        goto LABEL_22;
      }

      v27 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v56 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidenceValue"];
      v57 = v14;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v50 = 0;
      v19 = 0;
      *a4 = [v27 initWithDomain:v28 code:2 userInfo:v13];
      goto LABEL_61;
    }

    v50 = v12;
  }

  else
  {
    v50 = 0;
  }

  v13 = [v5 objectForKeyedSubscript:@"predictedDuration"];
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

      if (a4)
      {
        v29 = a4;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"predictedDuration"];
        v55 = v16;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v32 = [v30 initWithDomain:v31 code:2 userInfo:v15];
        v14 = 0;
        v19 = 0;
        *v29 = v32;
        goto LABEL_59;
      }

      v14 = 0;
      v19 = 0;
LABEL_61:
      v18 = self;
      v17 = v45;
      goto LABEL_21;
    }
  }

  v14 = 0;
LABEL_16:
  v15 = [v5 objectForKeyedSubscript:@"outputReason"];
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
        v16 = [MEMORY[0x1E696AD98] numberWithInt:BMDeviceActivityPredictionOutputReasonFromString(v15)];
        goto LABEL_19;
      }

      if (a4)
      {
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"outputReason"];
        v53 = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        *a4 = [v41 initWithDomain:v44 code:2 userInfo:v43];
      }

      v16 = 0;
      v19 = 0;
LABEL_59:
      v18 = self;
      v17 = v45;
      goto LABEL_20;
    }
  }

  v16 = 0;
LABEL_19:
  v17 = v45;
  v18 = -[BMDeviceActivityPrediction initWithVersion:predictionType:confidenceLevel:confidenceValue:predictedDuration:outputReason:](self, "initWithVersion:predictionType:confidenceLevel:confidenceValue:predictedDuration:outputReason:", v48, [v10 intValue], objc_msgSend(v45, "intValue"), v50, v14, objc_msgSend(v16, "intValue"));
  v19 = v18;
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
  [(BMDeviceActivityPrediction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  if (self->_hasVersion)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  predictionType = self->_predictionType;
  PBDataWriterWriteUint32Field();
  confidenceLevel = self->_confidenceLevel;
  PBDataWriterWriteUint32Field();
  if (self->_hasConfidenceValue)
  {
    confidenceValue = self->_confidenceValue;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasPredictedDuration)
  {
    predictedDuration = self->_predictedDuration;
    PBDataWriterWriteDoubleField();
  }

  outputReason = self->_outputReason;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = BMDeviceActivityPrediction;
  v5 = [(BMEventBase *)&v52 init];
  if (!v5)
  {
    goto LABEL_94;
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
        LOBYTE(v53) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v53 & 0x7F) << v7;
        if ((v53 & 0x80) == 0)
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

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        if (v15 == 4)
        {
          v5->_hasConfidenceValue = 1;
          v53 = 0;
          v35 = [v4 position] + 8;
          if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 8, v36 <= objc_msgSend(v4, "length")))
          {
            v45 = [v4 data];
            [v45 getBytes:&v53 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v46 = v53;
          v47 = 40;
          goto LABEL_90;
        }

        if (v15 == 5)
        {
          v5->_hasPredictedDuration = 1;
          v53 = 0;
          v42 = [v4 position] + 8;
          if (v42 >= [v4 position] && (v43 = objc_msgSend(v4, "position") + 8, v43 <= objc_msgSend(v4, "length")))
          {
            v48 = [v4 data];
            [v48 getBytes:&v53 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v46 = v53;
          v47 = 48;
LABEL_90:
          *(&v5->super.super.isa + v47) = v46;
          goto LABEL_91;
        }

        if (v15 != 6)
        {
LABEL_55:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_93;
          }

          goto LABEL_91;
        }

        v23 = 0;
        v24 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v53) = 0;
          v25 = [v4 position] + 1;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 1, v26 <= objc_msgSend(v4, "length")))
          {
            v27 = [v4 data];
            [v27 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v53 & 0x7F) << v23;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_79;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 5)
        {
LABEL_79:
          LODWORD(v18) = 0;
        }

        v44 = 36;
      }

      else
      {
        switch(v15)
        {
          case 1:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v5->_hasVersion = 1;
            while (1)
            {
              LOBYTE(v53) = 0;
              v31 = [v4 position] + 1;
              if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
              {
                v33 = [v4 data];
                [v33 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v30 |= (v53 & 0x7F) << v28;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v13 = v29++ >= 9;
              if (v13)
              {
                v34 = 0;
                goto LABEL_72;
              }
            }

            if ([v4 hasError])
            {
              v34 = 0;
            }

            else
            {
              v34 = v30;
            }

LABEL_72:
            v5->_version = v34;
            goto LABEL_91;
          case 2:
            v37 = 0;
            v38 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v53) = 0;
              v39 = [v4 position] + 1;
              if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 1, v40 <= objc_msgSend(v4, "length")))
              {
                v41 = [v4 data];
                [v41 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v53 & 0x7F) << v37;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v22 = v38++ > 8;
              if (v22)
              {
                goto LABEL_83;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 2)
            {
LABEL_83:
              LODWORD(v18) = 0;
            }

            v44 = 28;
            break;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v53) = 0;
              v19 = [v4 position] + 1;
              if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
              {
                v21 = [v4 data];
                [v21 getBytes:&v53 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v18 |= (v53 & 0x7F) << v16;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_75;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 3)
            {
LABEL_75:
              LODWORD(v18) = 0;
            }

            v44 = 32;
            break;
          default:
            goto LABEL_55;
        }
      }

      *(&v5->super.super.isa + v44) = v18;
LABEL_91:
      v49 = [v4 position];
    }

    while (v49 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_93:
    v50 = 0;
  }

  else
  {
LABEL_94:
    v50 = v5;
  }

  return v50;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceActivityPrediction version](self, "version")}];
  v5 = BMDeviceActivityPredictionPredictionTypeAsString([(BMDeviceActivityPrediction *)self predictionType]);
  v6 = BMDeviceActivityPredictionConfidenceLevelAsString([(BMDeviceActivityPrediction *)self confidenceLevel]);
  v7 = MEMORY[0x1E696AD98];
  [(BMDeviceActivityPrediction *)self confidenceValue];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMDeviceActivityPrediction *)self predictedDuration];
  v10 = [v9 numberWithDouble:?];
  v11 = BMDeviceActivityPredictionOutputReasonAsString([(BMDeviceActivityPrediction *)self outputReason]);
  v12 = [v3 initWithFormat:@"BMDeviceActivityPrediction with version: %@, predictionType: %@, confidenceLevel: %@, confidenceValue: %@, predictedDuration: %@, outputReason: %@", v4, v5, v6, v8, v10, v11];

  return v12;
}

- (BMDeviceActivityPrediction)initWithVersion:(id)a3 predictionType:(int)a4 confidenceLevel:(int)a5 confidenceValue:(id)a6 predictedDuration:(id)a7 outputReason:(int)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = BMDeviceActivityPrediction;
  v17 = [(BMEventBase *)&v22 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v17->_hasVersion = 1;
      v18 = [v14 intValue];
    }

    else
    {
      v17->_hasVersion = 0;
      v18 = -1;
    }

    v17->_version = v18;
    v17->_predictionType = a4;
    v17->_confidenceLevel = a5;
    if (v15)
    {
      v17->_hasConfidenceValue = 1;
      [v15 doubleValue];
    }

    else
    {
      v17->_hasConfidenceValue = 0;
      v19 = -1.0;
    }

    v17->_confidenceValue = v19;
    if (v16)
    {
      v17->_hasPredictedDuration = 1;
      [v16 doubleValue];
    }

    else
    {
      v17->_hasPredictedDuration = 0;
      v20 = -1.0;
    }

    v17->_predictedDuration = v20;
    v17->_outputReason = a8;
  }

  return v17;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:1 type:2 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictionType" number:2 type:4 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidenceLevel" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidenceValue" number:4 type:0 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictedDuration" number:5 type:0 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"outputReason" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMDeviceActivityPrediction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end