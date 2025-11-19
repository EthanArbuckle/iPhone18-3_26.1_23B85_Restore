@interface BMSiriAssistantSuggestionFeaturesSuggestionDetails
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithSuggestionId:(id)a3 targetOwner:(id)a4 sourceOwner:(id)a5 classificationCentroid:(id)a6 channel:(id)a7 confidence:(id)a8 deliveryVehicle:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriAssistantSuggestionFeaturesSuggestionDetails

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
    v7 = [v5 suggestionId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
      v10 = [v5 suggestionId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    v13 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
    v14 = [v5 targetOwner];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
      v17 = [v5 targetOwner];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    v19 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
    v20 = [v5 sourceOwner];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
      v23 = [v5 sourceOwner];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    v25 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
    v26 = [v5 classificationCentroid];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
      v29 = [v5 classificationCentroid];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_30;
      }
    }

    v31 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
    v32 = [v5 channel];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
      v35 = [v5 channel];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_30;
      }
    }

    if (!-[BMSiriAssistantSuggestionFeaturesSuggestionDetails hasConfidence](self, "hasConfidence") && ![v5 hasConfidence] || -[BMSiriAssistantSuggestionFeaturesSuggestionDetails hasConfidence](self, "hasConfidence") && objc_msgSend(v5, "hasConfidence") && (-[BMSiriAssistantSuggestionFeaturesSuggestionDetails confidence](self, "confidence"), v38 = v37, objc_msgSend(v5, "confidence"), v38 == v39))
    {
      v40 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
      v41 = [v5 deliveryVehicle];
      if (v40 == v41)
      {
        v12 = 1;
      }

      else
      {
        v42 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
        v43 = [v5 deliveryVehicle];
        v12 = [v42 isEqual:v43];
      }

      goto LABEL_31;
    }

LABEL_30:
    v12 = 0;
LABEL_31:

    goto LABEL_32;
  }

  v12 = 0;
LABEL_32:

  return v12;
}

- (id)jsonDictionary
{
  v27[7] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
  v4 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
  v5 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
  v25 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
  v6 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
  if (![(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self hasConfidence]|| ([(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence];
    v8 = MEMORY[0x1E696AD98];
    [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence];
    v9 = [v8 numberWithDouble:?];
  }

  v10 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
  v26[0] = @"suggestionId";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v27[0] = v11;
  v26[1] = @"targetOwner";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v12;
  v27[1] = v12;
  v26[2] = @"sourceOwner";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v3;
  v27[2] = v13;
  v26[3] = @"classificationCentroid";
  v14 = v25;
  if (!v25)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v4;
  v27[3] = v14;
  v26[4] = @"channel";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = v15;
  v26[5] = @"confidence";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = v16;
  v26[6] = @"deliveryVehicle";
  v17 = v10;
  if (!v10)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:7];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_21;
    }
  }

LABEL_21:
  if (!v6)
  {
  }

  if (!v25)
  {
  }

  if (v5)
  {
    if (v23)
    {
      goto LABEL_27;
    }

LABEL_34:

    if (v24)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if (!v23)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (v24)
  {
    goto LABEL_28;
  }

LABEL_35:

LABEL_28:
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v72[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"suggestionId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"targetOwner"];
    v56 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v20 = 0;
          goto LABEL_29;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v69 = *MEMORY[0x1E696A578];
        v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"targetOwner"];
        v70 = v58;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        v11 = v31 = a4;
        v32 = [v29 initWithDomain:v30 code:2 userInfo:v11];
        v10 = 0;
        v20 = 0;
        *v31 = v32;
        goto LABEL_28;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"sourceOwner"];
    v55 = v9;
    v57 = v10;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v56)
        {
          v58 = 0;
          v20 = 0;
          goto LABEL_28;
        }

        v33 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E698F240];
        v67 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceOwner"];
        v68 = v21;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v35 = v33;
        v10 = v57;
        v36 = [v35 initWithDomain:v34 code:2 userInfo:v12];
        v58 = 0;
        v20 = 0;
        *v56 = v36;
LABEL_27:

        v9 = v55;
LABEL_28:

        goto LABEL_29;
      }

      v58 = v11;
    }

    else
    {
      v58 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"classificationCentroid"];
    v52 = v7;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v56)
        {
          v21 = 0;
          v20 = 0;
          goto LABEL_27;
        }

        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v65 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"classificationCentroid"];
        v66 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v39 = v37;
        v10 = v57;
        v40 = [v39 initWithDomain:v38 code:2 userInfo:v13];
        v21 = 0;
        v20 = 0;
        *v56 = v40;
        goto LABEL_26;
      }

      v54 = v12;
    }

    else
    {
      v54 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"channel"];
    v53 = v8;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v56)
        {
          v14 = 0;
          v20 = 0;
          goto LABEL_25;
        }

        v16 = self;
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"channel"];
        v64 = v17;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v43 = [v41 initWithDomain:v42 code:2 userInfo:v15];
        v14 = 0;
        v20 = 0;
        *v56 = v43;
LABEL_24:

        self = v16;
        v8 = v53;
        v10 = v57;
LABEL_25:
        v21 = v54;
LABEL_26:

        v7 = v52;
        goto LABEL_27;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"confidence"];
    v51 = v14;
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      v16 = self;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v56)
        {
          v17 = 0;
          v20 = 0;
          goto LABEL_24;
        }

        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
        v62 = v19;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v46 = [v44 initWithDomain:v45 code:2 userInfo:v18];
        v17 = 0;
        v20 = 0;
        *v56 = v46;
        goto LABEL_23;
      }

      v17 = v15;
    }

    else
    {
      v16 = self;
      v17 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"deliveryVehicle"];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v56)
        {
          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v59 = *MEMORY[0x1E696A578];
          v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deliveryVehicle"];
          v60 = v47;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          *v56 = [v50 initWithDomain:v49 code:2 userInfo:v48];
        }

        v19 = 0;
        v20 = 0;
        goto LABEL_23;
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)v16 initWithSuggestionId:v53 targetOwner:v57 sourceOwner:v58 classificationCentroid:v54 channel:v51 confidence:v17 deliveryVehicle:v19];
    v16 = v20;
LABEL_23:

    v14 = v51;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v20 = 0;
    goto LABEL_30;
  }

  v24 = objc_alloc(MEMORY[0x1E696ABC0]);
  v25 = *MEMORY[0x1E698F240];
  v71 = *MEMORY[0x1E696A578];
  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionId"];
  v72[0] = v26;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:&v71 count:1];
  v27 = v24;
  v10 = v26;
  v28 = [v27 initWithDomain:v25 code:2 userInfo:v9];
  v8 = 0;
  v20 = 0;
  *a4 = v28;
LABEL_29:

LABEL_30:
  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_suggestionId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_targetOwner)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_sourceOwner)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_classificationCentroid)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_channel)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_hasConfidence)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_deliveryVehicle)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BMSiriAssistantSuggestionFeaturesSuggestionDetails;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_45;
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
        LOBYTE(v26) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v26 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v16 = PBReaderReadString();
            v17 = 24;
            break;
          case 2:
            v16 = PBReaderReadString();
            v17 = 32;
            break;
          case 3:
            v16 = PBReaderReadString();
            v17 = 40;
            break;
          default:
            goto LABEL_31;
        }
      }

      else if (v15 > 5)
      {
        if (v15 == 6)
        {
          v5->_hasConfidence = 1;
          v26 = 0.0;
          v18 = [v4 position] + 8;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
          {
            v22 = [v4 data];
            [v22 getBytes:&v26 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_confidence = v26;
          goto LABEL_39;
        }

        if (v15 != 7)
        {
LABEL_31:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_44;
          }

          goto LABEL_39;
        }

        v16 = PBReaderReadString();
        v17 = 72;
      }

      else if (v15 == 4)
      {
        v16 = PBReaderReadString();
        v17 = 48;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_31;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      v20 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_39:
      v21 = [v4 position];
    }

    while (v21 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_44:
    v23 = 0;
  }

  else
  {
LABEL_45:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self suggestionId];
  v5 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self targetOwner];
  v6 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self sourceOwner];
  v7 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self classificationCentroid];
  v8 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self channel];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self confidence];
  v10 = [v9 numberWithDouble:?];
  v11 = [(BMSiriAssistantSuggestionFeaturesSuggestionDetails *)self deliveryVehicle];
  v12 = [v3 initWithFormat:@"BMSiriAssistantSuggestionFeaturesSuggestionDetails with suggestionId: %@, targetOwner: %@, sourceOwner: %@, classificationCentroid: %@, channel: %@, confidence: %@, deliveryVehicle: %@", v4, v5, v6, v7, v8, v10, v11];

  return v12;
}

- (BMSiriAssistantSuggestionFeaturesSuggestionDetails)initWithSuggestionId:(id)a3 targetOwner:(id)a4 sourceOwner:(id)a5 classificationCentroid:(id)a6 channel:(id)a7 confidence:(id)a8 deliveryVehicle:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v26.receiver = self;
  v26.super_class = BMSiriAssistantSuggestionFeaturesSuggestionDetails;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_suggestionId, a3);
    objc_storeStrong(&v19->_targetOwner, a4);
    objc_storeStrong(&v19->_sourceOwner, a5);
    objc_storeStrong(&v19->_classificationCentroid, a6);
    objc_storeStrong(&v19->_channel, a7);
    if (v17)
    {
      v19->_hasConfidence = 1;
      [v17 doubleValue];
    }

    else
    {
      v19->_hasConfidence = 0;
      v20 = -1.0;
    }

    v19->_confidence = v20;
    objc_storeStrong(&v19->_deliveryVehicle, a9);
  }

  return v19;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"targetOwner" number:2 type:13 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceOwner" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"classificationCentroid" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"channel" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:6 type:0 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deliveryVehicle" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"targetOwner" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceOwner" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"classificationCentroid" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"channel" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deliveryVehicle" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
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

    v8 = [[BMSiriAssistantSuggestionFeaturesSuggestionDetails alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end