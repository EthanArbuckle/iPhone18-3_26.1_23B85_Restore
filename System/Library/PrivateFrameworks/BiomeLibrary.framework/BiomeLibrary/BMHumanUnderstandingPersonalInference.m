@interface BMHumanUnderstandingPersonalInference
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMHumanUnderstandingPersonalInference)initWithConfidence:(id)a3 fact:(id)a4 qualifiers:(id)a5 modelVersion:(id)a6;
- (BMHumanUnderstandingPersonalInference)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_qualifiersJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMHumanUnderstandingPersonalInference

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fact_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_176];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"qualifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_178];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelVersion" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMHumanUnderstandingPersonalInference hasConfidence](self, "hasConfidence") || [v5 hasConfidence])
    {
      if (![(BMHumanUnderstandingPersonalInference *)self hasConfidence])
      {
        goto LABEL_21;
      }

      if (![v5 hasConfidence])
      {
        goto LABEL_21;
      }

      [(BMHumanUnderstandingPersonalInference *)self confidence];
      v7 = v6;
      [v5 confidence];
      if (v7 != v8)
      {
        goto LABEL_21;
      }
    }

    v9 = [(BMHumanUnderstandingPersonalInference *)self fact];
    v10 = [v5 fact];
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [(BMHumanUnderstandingPersonalInference *)self fact];
      v13 = [v5 fact];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_21;
      }
    }

    v16 = [(BMHumanUnderstandingPersonalInference *)self qualifiers];
    v17 = [v5 qualifiers];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(BMHumanUnderstandingPersonalInference *)self qualifiers];
      v20 = [v5 qualifiers];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMHumanUnderstandingPersonalInference hasModelVersion](self, "hasModelVersion") && ![v5 hasModelVersion])
    {
      v15 = 1;
      goto LABEL_22;
    }

    if (-[BMHumanUnderstandingPersonalInference hasModelVersion](self, "hasModelVersion") && [v5 hasModelVersion])
    {
      v22 = [(BMHumanUnderstandingPersonalInference *)self modelVersion];
      v15 = v22 == [v5 modelVersion];
LABEL_22:

      goto LABEL_23;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v15 = 0;
LABEL_23:

  return v15;
}

- (id)jsonDictionary
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (![(BMHumanUnderstandingPersonalInference *)self hasConfidence]|| ([(BMHumanUnderstandingPersonalInference *)self confidence], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMHumanUnderstandingPersonalInference *)self confidence];
    v4 = MEMORY[0x1E696AD98];
    [(BMHumanUnderstandingPersonalInference *)self confidence];
    v5 = [v4 numberWithDouble:?];
  }

  v6 = [(BMHumanUnderstandingPersonalInference *)self fact];
  v7 = [v6 jsonDictionary];

  v8 = [(BMHumanUnderstandingPersonalInference *)self _qualifiersJSONArray];
  if ([(BMHumanUnderstandingPersonalInference *)self hasModelVersion])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMHumanUnderstandingPersonalInference modelVersion](self, "modelVersion")}];
  }

  else
  {
    v9 = 0;
  }

  v17[0] = @"confidence";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v10;
  v17[1] = @"fact";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v11;
  v17[2] = @"qualifiers";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v12;
  v17[3] = @"modelVersion";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v9)
  {
    if (v8)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v8)
    {
LABEL_18:
      if (v7)
      {
        goto LABEL_19;
      }

LABEL_25:

      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_qualifiersJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMHumanUnderstandingPersonalInference *)self qualifiers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMHumanUnderstandingPersonalInference)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v78[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"confidence"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = v6;
        v28 = *MEMORY[0x1E698F240];
        v77 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
        v78[0] = v8;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
        v29 = v28;
        v6 = v27;
        v30 = [v26 initWithDomain:v29 code:2 userInfo:v25];
        v7 = 0;
        v24 = 0;
        *a4 = v30;
        goto LABEL_55;
      }

      v7 = 0;
      v24 = 0;
      goto LABEL_57;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"fact"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fact"];
        v76 = v25;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        *a4 = [v59 initWithDomain:v31 code:2 userInfo:v32];

        v24 = 0;
        goto LABEL_55;
      }

      v24 = 0;
      goto LABEL_56;
    }

    v22 = v8;
    v8 = v8;
    v65 = 0;
    v56 = [[BMHumanUnderstandingPersonalInferenceFact alloc] initWithJSONDictionary:v8 error:&v65];
    v23 = v65;
    if (v23)
    {
      if (a4)
      {
        v23 = v23;
        *a4 = v23;
      }

      v24 = 0;
      v25 = v56;
      goto LABEL_55;
    }

    v8 = v22;
  }

  else
  {
    v56 = 0;
  }

  v9 = [v5 objectForKeyedSubscript:@"qualifiers"];
  v10 = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:v10];

  v55 = v8;
  if (v11)
  {
    v52 = v7;
    v53 = v6;
    v54 = self;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v24 = 0;
          v25 = v56;
          goto LABEL_54;
        }

        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"qualifiers"];
        v74 = v58;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v44 = [v42 initWithDomain:v43 code:2 userInfo:v21];
        v24 = 0;
        *a4 = v44;
LABEL_48:
        v25 = v56;
        goto LABEL_53;
      }
    }

    v52 = v7;
    v53 = v6;
    v54 = self;
  }

  v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = *v62;
  v51 = v5;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v62 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v61 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = a4;
        if (a4)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v70 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"qualifiers"];
          v71 = v17;
          v36 = MEMORY[0x1E695DF20];
          v37 = &v71;
          v38 = &v70;
LABEL_40:
          v39 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:1];
          *v33 = [v34 initWithDomain:v35 code:2 userInfo:v39];

          v24 = 0;
          v21 = v9;
          v5 = v51;
          v6 = v53;
          self = v54;
LABEL_44:
          v7 = v52;
          v25 = v56;
          goto LABEL_52;
        }

        goto LABEL_47;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = a4;
        if (a4)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v68 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"qualifiers"];
          v69 = v17;
          v36 = MEMORY[0x1E695DF20];
          v37 = &v69;
          v38 = &v68;
          goto LABEL_40;
        }

LABEL_47:
        v24 = 0;
        v21 = v9;
        v5 = v51;
        v7 = v52;
        v6 = v53;
        self = v54;
        goto LABEL_48;
      }

      v17 = v16;
      v18 = [BMHumanUnderstandingPersonalInferenceFact alloc];
      v60 = 0;
      v19 = [(BMHumanUnderstandingPersonalInferenceFact *)v18 initWithJSONDictionary:v17 error:&v60];
      v20 = v60;
      if (v20)
      {
        v40 = v20;
        v6 = v53;
        if (a4)
        {
          v41 = v20;
          *a4 = v40;
        }

        v24 = 0;
        v21 = v9;
        v5 = v51;
        self = v54;
        goto LABEL_44;
      }

      [v58 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v61 objects:v72 count:16];
    v5 = v51;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v17 = [v5 objectForKeyedSubscript:@"modelVersion"];
  if (v17)
  {
    objc_opt_class();
    self = v54;
    v7 = v52;
    if (objc_opt_isKindOfClass())
    {
      v21 = 0;
      v6 = v53;
      goto LABEL_50;
    }

    objc_opt_class();
    v25 = v56;
    if (objc_opt_isKindOfClass())
    {
      v21 = v17;
      v6 = v53;
      goto LABEL_51;
    }

    v6 = v53;
    v21 = a4;
    if (a4)
    {
      v50 = objc_alloc(MEMORY[0x1E696ABC0]);
      v49 = *MEMORY[0x1E698F240];
      v66 = *MEMORY[0x1E696A578];
      v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"modelVersion"];
      v67 = v47;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      *a4 = [v50 initWithDomain:v49 code:2 userInfo:v48];

      v21 = 0;
    }

    v24 = 0;
  }

  else
  {
    v21 = 0;
    v6 = v53;
    self = v54;
    v7 = v52;
LABEL_50:
    v25 = v56;
LABEL_51:
    self = [(BMHumanUnderstandingPersonalInference *)self initWithConfidence:v7 fact:v25 qualifiers:v58 modelVersion:v21];
    v24 = self;
  }

LABEL_52:

LABEL_53:
  v8 = v55;
LABEL_54:

LABEL_55:
LABEL_56:

LABEL_57:
  v45 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHumanUnderstandingPersonalInference *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_hasConfidence)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
  }

  if (self->_fact)
  {
    v18 = 0;
    PBDataWriterPlaceMark();
    [(BMHumanUnderstandingPersonalInferenceFact *)self->_fact writeTo:v4];
    PBDataWriterRecallMark();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_qualifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v18 = 0;
        PBDataWriterPlaceMark();
        [v11 writeTo:{v4, v14}];
        PBDataWriterRecallMark();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  if (self->_hasModelVersion)
  {
    modelVersion = self->_modelVersion;
    PBDataWriterWriteUint32Field();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = BMHumanUnderstandingPersonalInference;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_51;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (LOBYTE(v38) & 0x7F) << v8;
        if ((LOBYTE(v38) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 2)
      {
        if (v16 != 3)
        {
          if (v16 == 4)
          {
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v5->_hasModelVersion = 1;
            while (1)
            {
              LOBYTE(v38) = 0;
              v22 = [v4 position] + 1;
              if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
              {
                v24 = [v4 data];
                [v24 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v21 |= (LOBYTE(v38) & 0x7F) << v19;
              if ((LOBYTE(v38) & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v14 = v20++ >= 9;
              if (v14)
              {
                v25 = 0;
                goto LABEL_46;
              }
            }

            if ([v4 hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v21;
            }

LABEL_46:
            v5->_modelVersion = v25;
            goto LABEL_49;
          }

LABEL_35:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        }

        v38 = 0.0;
        v39 = 0;
        if (!PBReaderPlaceMark() || (v28 = [[BMHumanUnderstandingPersonalInferenceFact alloc] initByReadFrom:v4]) == 0)
        {
LABEL_52:

          goto LABEL_53;
        }

        v29 = v28;
        [v6 addObject:v28];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 == 1)
        {
          v5->_hasConfidence = 1;
          v38 = 0.0;
          v26 = [v4 position] + 8;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 8, v27 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v38 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_confidence = v38;
          goto LABEL_49;
        }

        if (v16 != 2)
        {
          goto LABEL_35;
        }

        v38 = 0.0;
        v39 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_52;
        }

        v17 = [[BMHumanUnderstandingPersonalInferenceFact alloc] initByReadFrom:v4];
        if (!v17)
        {
          goto LABEL_52;
        }

        fact = v5->_fact;
        v5->_fact = v17;

        PBReaderRecallMark();
      }

LABEL_49:
      v31 = [v4 position];
    }

    while (v31 < [v4 length]);
  }

  v32 = [v6 copy];
  qualifiers = v5->_qualifiers;
  v5->_qualifiers = v32;

  v34 = [v4 hasError];
  if (v34)
  {
LABEL_53:
    v35 = 0;
  }

  else
  {
LABEL_51:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMHumanUnderstandingPersonalInference *)self confidence];
  v5 = [v4 numberWithDouble:?];
  v6 = [(BMHumanUnderstandingPersonalInference *)self fact];
  v7 = [(BMHumanUnderstandingPersonalInference *)self qualifiers];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMHumanUnderstandingPersonalInference modelVersion](self, "modelVersion")}];
  v9 = [v3 initWithFormat:@"BMHumanUnderstandingPersonalInference with confidence: %@, fact: %@, qualifiers: %@, modelVersion: %@", v5, v6, v7, v8];

  return v9;
}

- (BMHumanUnderstandingPersonalInference)initWithConfidence:(id)a3 fact:(id)a4 qualifiers:(id)a5 modelVersion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = BMHumanUnderstandingPersonalInference;
  v14 = [(BMEventBase *)&v18 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasConfidence = 1;
      [v10 doubleValue];
    }

    else
    {
      v14->_hasConfidence = 0;
      v15 = -1.0;
    }

    v14->_confidence = v15;
    objc_storeStrong(&v14->_fact, a4);
    objc_storeStrong(&v14->_qualifiers, a5);
    if (v13)
    {
      v14->_hasModelVersion = 1;
      v16 = [v13 unsignedIntValue];
    }

    else
    {
      v16 = 0;
      v14->_hasModelVersion = 0;
    }

    v14->_modelVersion = v16;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:1 type:0 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fact" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qualifiers" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelVersion" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __48__BMHumanUnderstandingPersonalInference_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _qualifiersJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __48__BMHumanUnderstandingPersonalInference_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 fact];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMHumanUnderstandingPersonalInference alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end