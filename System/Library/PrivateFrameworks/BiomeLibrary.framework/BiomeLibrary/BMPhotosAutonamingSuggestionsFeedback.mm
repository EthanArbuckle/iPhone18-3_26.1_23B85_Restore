@interface BMPhotosAutonamingSuggestionsFeedback
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPhotosAutonamingSuggestionsFeedback)initWithFeedbackType:(int)type associationType:(int)associationType feedbackId:(id)id visualId:(id)visualId;
- (BMPhotosAutonamingSuggestionsFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v5 = equalCopy;
  feedbackType = [(BMPhotosAutonamingSuggestionsFeedback *)self feedbackType];
  if (feedbackType != [v5 feedbackType])
  {
    goto LABEL_6;
  }

  associationType = [(BMPhotosAutonamingSuggestionsFeedback *)self associationType];
  if (associationType != [v5 associationType])
  {
    goto LABEL_6;
  }

  feedbackId = [(BMPhotosAutonamingSuggestionsFeedback *)self feedbackId];
  feedbackId2 = [v5 feedbackId];
  v10 = feedbackId2;
  if (feedbackId == feedbackId2)
  {

    goto LABEL_11;
  }

  feedbackId3 = [(BMPhotosAutonamingSuggestionsFeedback *)self feedbackId];
  feedbackId4 = [v5 feedbackId];
  v13 = [feedbackId3 isEqual:feedbackId4];

  if (v13)
  {
LABEL_11:
    visualId = [(BMPhotosAutonamingSuggestionsFeedback *)self visualId];
    visualId2 = [v5 visualId];
    if (visualId == visualId2)
    {
      v14 = 1;
    }

    else
    {
      visualId3 = [(BMPhotosAutonamingSuggestionsFeedback *)self visualId];
      visualId4 = [v5 visualId];
      v14 = [visualId3 isEqual:visualId4];
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
  feedbackId = [(BMPhotosAutonamingSuggestionsFeedback *)self feedbackId];
  visualId = [(BMPhotosAutonamingSuggestionsFeedback *)self visualId];
  v14[0] = @"feedbackType";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"associationType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"feedbackId";
  null3 = feedbackId;
  if (!feedbackId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"visualId";
  null4 = visualId;
  if (!visualId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (visualId)
  {
    if (feedbackId)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (feedbackId)
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

- (BMPhotosAutonamingSuggestionsFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"feedbackType"];
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
        if (!error)
        {
          v33 = 0;
          v16 = 0;
          selfCopy5 = self;
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
        *error = [v24 initWithDomain:v25 code:2 userInfo:v8];
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

  v8 = [dictionaryCopy objectForKeyedSubscript:@"associationType"];
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

      if (error)
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
        *error = v28;
        goto LABEL_42;
      }

      v9 = 0;
      v16 = 0;
LABEL_45:
      selfCopy5 = self;
      goto LABEL_26;
    }
  }

  v9 = 0;
LABEL_17:
  v11 = [dictionaryCopy objectForKeyedSubscript:@"feedbackId"];
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy = error;
      v20 = *MEMORY[0x1E698F240];
      v36 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"feedbackId"];
      v37 = v14;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v21 = [v19 initWithDomain:v20 code:2 userInfo:v13];
      v12 = 0;
      v16 = 0;
      selfCopy5 = self;
      *errorCopy = v21;
      goto LABEL_24;
    }

    v12 = 0;
    v16 = 0;
LABEL_42:
    selfCopy5 = self;
    goto LABEL_25;
  }

  v12 = v11;
LABEL_20:
  v13 = [dictionaryCopy objectForKeyedSubscript:@"visualId"];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"visualId"];
        v35 = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        *error = [v31 initWithDomain:v29 code:2 userInfo:v23];
      }

      v14 = 0;
      v16 = 0;
      selfCopy5 = self;
      goto LABEL_24;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  selfCopy5 = -[BMPhotosAutonamingSuggestionsFeedback initWithFeedbackType:associationType:feedbackId:visualId:](self, "initWithFeedbackType:associationType:feedbackId:visualId:", [v33 intValue], objc_msgSend(v9, "intValue"), v12, v14);
  v16 = selfCopy5;
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMPhotosAutonamingSuggestionsFeedback;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_58;
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
        v36 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v18 > 3)
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
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v18 > 8)
          {
LABEL_48:
            LODWORD(v18) = 0;
          }

          v31 = 24;
        }

        *(&v5->super.super.isa + v31) = v18;
      }

LABEL_55:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  feedbackId = [(BMPhotosAutonamingSuggestionsFeedback *)self feedbackId];
  visualId = [(BMPhotosAutonamingSuggestionsFeedback *)self visualId];
  v8 = [v3 initWithFormat:@"BMPhotosAutonamingSuggestionsFeedback with feedbackType: %@, associationType: %@, feedbackId: %@, visualId: %@", v4, v5, feedbackId, visualId];

  return v8;
}

- (BMPhotosAutonamingSuggestionsFeedback)initWithFeedbackType:(int)type associationType:(int)associationType feedbackId:(id)id visualId:(id)visualId
{
  idCopy = id;
  visualIdCopy = visualId;
  v15.receiver = self;
  v15.super_class = BMPhotosAutonamingSuggestionsFeedback;
  v13 = [(BMEventBase *)&v15 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    v13->_feedbackType = type;
    v13->_associationType = associationType;
    objc_storeStrong(&v13->_feedbackId, id);
    objc_storeStrong(&v13->_visualId, visualId);
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