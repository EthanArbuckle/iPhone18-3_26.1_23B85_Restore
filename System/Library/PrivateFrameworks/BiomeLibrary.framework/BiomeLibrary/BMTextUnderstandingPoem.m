@interface BMTextUnderstandingPoem
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMTextUnderstandingPoem)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMTextUnderstandingPoem)initWithSubject:(id)a3 predicate:(int)a4 object:(id)a5 conversationId:(id)a6 confidence:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMTextUnderstandingPoem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMTextUnderstandingPoem *)self subject];
    v7 = [v5 subject];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMTextUnderstandingPoem *)self subject];
      v10 = [v5 subject];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMTextUnderstandingPoem *)self predicate];
    if (v13 == [v5 predicate])
    {
      v14 = [(BMTextUnderstandingPoem *)self object];
      v15 = [v5 object];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMTextUnderstandingPoem *)self object];
        v18 = [v5 object];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_21;
        }
      }

      v20 = [(BMTextUnderstandingPoem *)self conversationId];
      v21 = [v5 conversationId];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMTextUnderstandingPoem *)self conversationId];
        v24 = [v5 conversationId];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_21;
        }
      }

      if (!-[BMTextUnderstandingPoem hasConfidence](self, "hasConfidence") && ![v5 hasConfidence])
      {
        v12 = 1;
        goto LABEL_22;
      }

      if (-[BMTextUnderstandingPoem hasConfidence](self, "hasConfidence") && [v5 hasConfidence])
      {
        [(BMTextUnderstandingPoem *)self confidence];
        v27 = v26;
        [v5 confidence];
        v12 = v27 == v28;
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)jsonDictionary
{
  v27[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMTextUnderstandingPoem *)self subject];
  v4 = [v3 jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMTextUnderstandingPoem predicate](self, "predicate")}];
  v6 = [(BMTextUnderstandingPoem *)self object];
  v7 = [v6 jsonDictionary];

  v8 = [(BMTextUnderstandingPoem *)self conversationId];
  if (![(BMTextUnderstandingPoem *)self hasConfidence]|| ([(BMTextUnderstandingPoem *)self confidence], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMTextUnderstandingPoem *)self confidence];
    v10 = MEMORY[0x1E696AD98];
    [(BMTextUnderstandingPoem *)self confidence];
    v11 = [v10 numberWithDouble:?];
  }

  v22 = @"subject";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v12;
  v27[0] = v12;
  v23 = @"predicate";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = v13;
  v24 = @"object";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = v14;
  v25 = @"conversationId";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = v15;
  v26 = @"confidence";
  v16 = v11;
  if (!v11)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v22 count:{5, v20}];
  if (v11)
  {
    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v8)
    {
LABEL_17:
      if (v7)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

  if (v7)
  {
LABEL_18:
    if (v5)
    {
      goto LABEL_19;
    }

LABEL_26:

    if (v4)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (v4)
  {
    goto LABEL_20;
  }

LABEL_27:

LABEL_20:
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMTextUnderstandingPoem)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v59[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"subject"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v49 = 0;
    v8 = [[BMTextUnderstandingPoemEntity alloc] initWithJSONDictionary:v10 error:&v49];
    v11 = v49;
    if (v11)
    {
      if (a4)
      {
        v11 = v11;
        *a4 = v11;
      }

      v12 = 0;
      goto LABEL_55;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"predicate"];
    v47 = self;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v10 = 0;
            v12 = 0;
            goto LABEL_54;
          }

          v34 = v8;
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"predicate"];
          v57 = v23;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v38 = v35;
          v8 = v34;
          v45 = v37;
          v46 = 0;
          v12 = 0;
          *a4 = [v38 initWithDomain:v36 code:2 userInfo:?];
          goto LABEL_52;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMTextUnderstandingPoemPredicateTypeFromString(v9)];
      }

      v46 = v13;
    }

    else
    {
      v46 = 0;
    }

    v44 = v9;
    v16 = [v6 objectForKeyedSubscript:@"object"];
    v17 = a4;
    if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v45 = 0;
LABEL_22:
      v18 = [v6 objectForKeyedSubscript:@"conversationId"];
      v19 = v8;
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v17)
          {
            v20 = 0;
            v12 = 0;
            v9 = v44;
            goto LABEL_30;
          }

          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v52 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationId"];
          v53 = v22;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v31 = [v42 initWithDomain:v30 code:2 userInfo:v21];
          v20 = 0;
          v12 = 0;
          *v17 = v31;
          goto LABEL_29;
        }

        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = [v6 objectForKeyedSubscript:@"confidence"];
      if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v17)
          {
            v43 = objc_alloc(MEMORY[0x1E696ABC0]);
            v41 = *MEMORY[0x1E698F240];
            v50 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
            v51 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            *v17 = [v43 initWithDomain:v41 code:2 userInfo:v33];
          }

          v22 = 0;
          v12 = 0;
          goto LABEL_29;
        }

        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v12 = -[BMTextUnderstandingPoem initWithSubject:predicate:object:conversationId:confidence:](v47, "initWithSubject:predicate:object:conversationId:confidence:", v19, [v46 intValue], v45, v20, v22);
      v47 = v12;
LABEL_29:
      v9 = v44;

LABEL_30:
      v23 = v16;
      v8 = v19;
LABEL_52:

      v16 = v23;
      self = v47;
LABEL_53:

      v10 = v46;
LABEL_54:

      goto LABEL_55;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v16;
      v48 = 0;
      v45 = [[BMTextUnderstandingPoemEntity alloc] initWithJSONDictionary:v23 error:&v48];
      v24 = v48;
      if (!v24)
      {

        goto LABEL_22;
      }

      if (a4)
      {
        v24 = v24;
        *a4 = v24;
      }

      v12 = 0;
    }

    else
    {
      if (!a4)
      {
        v12 = 0;
        v9 = v44;
        goto LABEL_53;
      }

      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      v26 = v8;
      v27 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"object"];
      v55 = v45;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v29 = v27;
      v8 = v26;
      *a4 = [v25 initWithDomain:v29 code:2 userInfo:v28];

      v12 = 0;
      v23 = v16;
    }

    v9 = v44;
    goto LABEL_52;
  }

  if (a4)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = *MEMORY[0x1E698F240];
    v58 = *MEMORY[0x1E696A578];
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"subject"];
    v59[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v12 = 0;
    *a4 = [v14 initWithDomain:v15 code:2 userInfo:v10];
LABEL_55:

    goto LABEL_56;
  }

  v12 = 0;
LABEL_56:

  v39 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextUnderstandingPoem *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_subject)
  {
    PBDataWriterPlaceMark();
    [(BMTextUnderstandingPoemEntity *)self->_subject writeTo:v4];
    PBDataWriterRecallMark();
  }

  predicate = self->_predicate;
  PBDataWriterWriteUint32Field();
  if (self->_object)
  {
    PBDataWriterPlaceMark();
    [(BMTextUnderstandingPoemEntity *)self->_object writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasConfidence)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = BMTextUnderstandingPoem;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_55;
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
        LOBYTE(v35) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v35) & 0x7F) << v7;
        if ((LOBYTE(v35) & 0x80) == 0)
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v35 = 0.0;
          v36 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_54;
          }

          v25 = [[BMTextUnderstandingPoemEntity alloc] initByReadFrom:v4];
          if (!v25)
          {
            goto LABEL_54;
          }

          v26 = 32;
          goto LABEL_43;
        }

        if (v15 != 2)
        {
LABEL_44:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v35) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (LOBYTE(v35) & 0x7F) << v18;
          if ((LOBYTE(v35) & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          if (v19++ > 8)
          {
            goto LABEL_48;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 2)
        {
LABEL_48:
          LODWORD(v20) = 0;
        }

        v5->_predicate = v20;
      }

      else
      {
        switch(v15)
        {
          case 3:
            v35 = 0.0;
            v36 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_54;
            }

            v25 = [[BMTextUnderstandingPoemEntity alloc] initByReadFrom:v4];
            if (!v25)
            {
              goto LABEL_54;
            }

            v26 = 40;
LABEL_43:
            v29 = *(&v5->super.super.isa + v26);
            *(&v5->super.super.isa + v26) = v25;

            PBReaderRecallMark();
            break;
          case 4:
            v27 = PBReaderReadString();
            conversationId = v5->_conversationId;
            v5->_conversationId = v27;

            break;
          case 5:
            v5->_hasConfidence = 1;
            v35 = 0.0;
            v16 = [v4 position] + 8;
            if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v35 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_confidence = v35;
            break;
          default:
            goto LABEL_44;
        }
      }

LABEL_52:
      v31 = [v4 position];
    }

    while (v31 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_54:
    v32 = 0;
  }

  else
  {
LABEL_55:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMTextUnderstandingPoem *)self subject];
  v5 = BMTextUnderstandingPoemPredicateTypeAsString([(BMTextUnderstandingPoem *)self predicate]);
  v6 = [(BMTextUnderstandingPoem *)self object];
  v7 = [(BMTextUnderstandingPoem *)self conversationId];
  v8 = MEMORY[0x1E696AD98];
  [(BMTextUnderstandingPoem *)self confidence];
  v9 = [v8 numberWithDouble:?];
  v10 = [v3 initWithFormat:@"BMTextUnderstandingPoem with subject: %@, predicate: %@, object: %@, conversationId: %@, confidence: %@", v4, v5, v6, v7, v9];

  return v10;
}

- (BMTextUnderstandingPoem)initWithSubject:(id)a3 predicate:(int)a4 object:(id)a5 conversationId:(id)a6 confidence:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMTextUnderstandingPoem;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_subject, a3);
    v17->_predicate = a4;
    objc_storeStrong(&v17->_object, a5);
    objc_storeStrong(&v17->_conversationId, a6);
    if (v16)
    {
      v17->_hasConfidence = 1;
      [v16 doubleValue];
    }

    else
    {
      v17->_hasConfidence = 0;
      v18 = -1.0;
    }

    v17->_confidence = v18;
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subject" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predicate" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"object" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationId" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:5 type:0 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"subject_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_233];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predicate" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"object_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_235_23774];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __34__BMTextUnderstandingPoem_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 object];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __34__BMTextUnderstandingPoem_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 subject];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMTextUnderstandingPoem alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end