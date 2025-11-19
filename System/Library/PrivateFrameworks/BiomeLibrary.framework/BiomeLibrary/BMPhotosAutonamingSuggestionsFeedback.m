@interface BMPhotosAutonamingSuggestionsFeedback
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPhotosAutonamingSuggestionsFeedback)initWithFeedbackType:(int)a3 associationType:(int)a4 feedbackId:(id)a5 visualId:(id)a6;
- (BMPhotosAutonamingSuggestionsFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPhotosAutonamingSuggestionsFeedback

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feedbackType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"associationType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feedbackId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visualId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
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
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [(BMPhotosAutonamingSuggestionsFeedback *)self feedbackType];
  if (v6 != [v5 feedbackType])
  {
    goto LABEL_6;
  }

  v7 = [(BMPhotosAutonamingSuggestionsFeedback *)self associationType];
  if (v7 != [v5 associationType])
  {
    goto LABEL_6;
  }

  v8 = [(BMPhotosAutonamingSuggestionsFeedback *)self feedbackId];
  v9 = [v5 feedbackId];
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_11;
  }

  v11 = [(BMPhotosAutonamingSuggestionsFeedback *)self feedbackId];
  v12 = [v5 feedbackId];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
LABEL_11:
    v16 = [(BMPhotosAutonamingSuggestionsFeedback *)self visualId];
    v17 = [v5 visualId];
    if (v16 == v17)
    {
      v14 = 1;
    }

    else
    {
      v18 = [(BMPhotosAutonamingSuggestionsFeedback *)self visualId];
      v19 = [v5 visualId];
      v14 = [v18 isEqual:v19];
    }

    goto LABEL_7;
  }

LABEL_6:
  v14 = 0;
LABEL_7:

LABEL_9:
  return v14;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosAutonamingSuggestionsFeedback feedbackType](self, "feedbackType")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosAutonamingSuggestionsFeedback associationType](self, "associationType")}];
  v5 = [(BMPhotosAutonamingSuggestionsFeedback *)self feedbackId];
  v6 = [(BMPhotosAutonamingSuggestionsFeedback *)self visualId];
  v14[0] = @"feedbackType";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v7;
  v14[1] = @"associationType";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v8;
  v14[2] = @"feedbackId";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v9;
  v14[3] = @"visualId";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5)
    {
LABEL_11:
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v3)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v3)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMPhotosAutonamingSuggestionsFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"feedbackType"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v33 = 0;
          v16 = 0;
          v15 = self;
          goto LABEL_27;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feedbackType"];
        v41[0] = v9;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
        v33 = 0;
        v16 = 0;
        *a4 = [v24 initWithDomain:v25 code:2 userInfo:v8];
        goto LABEL_45;
      }

      v7 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosAutonamingSuggestionsFeedbackFeedbackTypeFromString(v6)];
    }

    v33 = v7;
  }

  else
  {
    v33 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"associationType"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
LABEL_16:
        v9 = v10;
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosAutonamingSuggestionsFeedbackAssociationTypeFromString(v8)];
        goto LABEL_16;
      }

      if (a4)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"associationType"];
        v39 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v28 = [v26 initWithDomain:v27 code:2 userInfo:v11];
        v9 = 0;
        v16 = 0;
        *a4 = v28;
        goto LABEL_42;
      }

      v9 = 0;
      v16 = 0;
LABEL_45:
      v15 = self;
      goto LABEL_26;
    }
  }

  v9 = 0;
LABEL_17:
  v11 = [v5 objectForKeyedSubscript:@"feedbackId"];
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = a4;
      v20 = *MEMORY[0x1E698F240];
      v36 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"feedbackId"];
      v37 = v14;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v21 = [v19 initWithDomain:v20 code:2 userInfo:v13];
      v12 = 0;
      v16 = 0;
      v15 = self;
      *v30 = v21;
      goto LABEL_24;
    }

    v12 = 0;
    v16 = 0;
LABEL_42:
    v15 = self;
    goto LABEL_25;
  }

  v12 = v11;
LABEL_20:
  v13 = [v5 objectForKeyedSubscript:@"visualId"];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"visualId"];
        v35 = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        *a4 = [v31 initWithDomain:v29 code:2 userInfo:v23];
      }

      v14 = 0;
      v16 = 0;
      v15 = self;
      goto LABEL_24;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = -[BMPhotosAutonamingSuggestionsFeedback initWithFeedbackType:associationType:feedbackId:visualId:](self, "initWithFeedbackType:associationType:feedbackId:visualId:", [v33 intValue], objc_msgSend(v9, "intValue"), v12, v14);
  v16 = v15;
LABEL_24:

LABEL_25:
LABEL_26:

LABEL_27:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPhotosAutonamingSuggestionsFeedback *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  feedbackType = self->_feedbackType;
  PBDataWriterWriteUint32Field();
  associationType = self->_associationType;
  PBDataWriterWriteUint32Field();
  if (self->_feedbackId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_visualId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BMPhotosAutonamingSuggestionsFeedback;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_58;
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
        v36 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v36 & 0x7F) << v7;
        if ((v36 & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v23 = PBReaderReadString();
          v24 = 32;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_33:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_57;
            }

            goto LABEL_55;
          }

          v23 = PBReaderReadString();
          v24 = 40;
        }

        v30 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;
      }

      else
      {
        if (v15 == 1)
        {
          v25 = 0;
          v26 = 0;
          v18 = 0;
          while (1)
          {
            v36 = 0;
            v27 = [v4 position] + 1;
            if (v27 >= [v4 position] && (v28 = objc_msgSend(v4, "position") + 1, v28 <= objc_msgSend(v4, "length")))
            {
              v29 = [v4 data];
              [v29 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v36 & 0x7F) << v25;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v22 = v26++ > 8;
            if (v22)
            {
              goto LABEL_52;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 3)
          {
LABEL_52:
            LODWORD(v18) = 0;
          }

          v31 = 20;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_33;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v36 = 0;
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v36 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (v36 & 0x7F) << v16;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_48;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 8)
          {
LABEL_48:
            LODWORD(v18) = 0;
          }

          v31 = 24;
        }

        *(&v5->super.super.isa + v31) = v18;
      }

LABEL_55:
      v32 = [v4 position];
    }

    while (v32 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_57:
    v33 = 0;
  }

  else
  {
LABEL_58:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMPhotosAutonamingSuggestionsFeedbackFeedbackTypeAsString([(BMPhotosAutonamingSuggestionsFeedback *)self feedbackType]);
  v5 = BMPhotosAutonamingSuggestionsFeedbackAssociationTypeAsString([(BMPhotosAutonamingSuggestionsFeedback *)self associationType]);
  v6 = [(BMPhotosAutonamingSuggestionsFeedback *)self feedbackId];
  v7 = [(BMPhotosAutonamingSuggestionsFeedback *)self visualId];
  v8 = [v3 initWithFormat:@"BMPhotosAutonamingSuggestionsFeedback with feedbackType: %@, associationType: %@, feedbackId: %@, visualId: %@", v4, v5, v6, v7];

  return v8;
}

- (BMPhotosAutonamingSuggestionsFeedback)initWithFeedbackType:(int)a3 associationType:(int)a4 feedbackId:(id)a5 visualId:(id)a6
{
  v11 = a5;
  v12 = a6;
  v15.receiver = self;
  v15.super_class = BMPhotosAutonamingSuggestionsFeedback;
  v13 = [(BMEventBase *)&v15 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    v13->_feedbackType = a3;
    v13->_associationType = a4;
    objc_storeStrong(&v13->_feedbackId, a5);
    objc_storeStrong(&v13->_visualId, a6);
  }

  return v13;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feedbackType" number:1 type:4 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associationType" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feedbackId" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visualId" number:4 type:13 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMPhotosAutonamingSuggestionsFeedback alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end