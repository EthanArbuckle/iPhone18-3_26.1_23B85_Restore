@interface BMMediaSuggesterSuggestionFeedbackMediaIntent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMediaSuggesterSuggestionFeedbackMediaIntent)initWithEventTimestamp:(id)a3 bundleID:(id)a4 intentIdentifier:(id)a5 subtype:(int)a6 engagementType:(int)a7;
- (BMMediaSuggesterSuggestionFeedbackMediaIntent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMediaSuggesterSuggestionFeedbackMediaIntent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMMediaSuggesterSuggestionFeedbackMediaIntent hasEventTimestamp](self, "hasEventTimestamp") || [v5 hasEventTimestamp])
    {
      if (![(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self hasEventTimestamp])
      {
        goto LABEL_18;
      }

      if (![v5 hasEventTimestamp])
      {
        goto LABEL_18;
      }

      [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self eventTimestamp];
      v7 = v6;
      [v5 eventTimestamp];
      if (v7 != v8)
      {
        goto LABEL_18;
      }
    }

    v9 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self bundleID];
    v10 = [v5 bundleID];
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self bundleID];
      v13 = [v5 bundleID];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_18;
      }
    }

    v16 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self intentIdentifier];
    v17 = [v5 intentIdentifier];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self intentIdentifier];
      v20 = [v5 intentIdentifier];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_18;
      }
    }

    v22 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self subtype];
    if (v22 == [v5 subtype])
    {
      v23 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self engagementType];
      v15 = v23 == [v5 engagementType];
LABEL_19:

      goto LABEL_20;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v15 = 0;
LABEL_20:

  return v15;
}

- (id)jsonDictionary
{
  v25[5] = *MEMORY[0x1E69E9840];
  if (![(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self hasEventTimestamp]|| ([(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self eventTimestamp], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self eventTimestamp];
    v4 = MEMORY[0x1E696AD98];
    [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self eventTimestamp];
    v5 = [v4 numberWithDouble:?];
  }

  v6 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self bundleID];
  v7 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self intentIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaSuggesterSuggestionFeedbackMediaIntent subtype](self, "subtype")}];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaSuggesterSuggestionFeedbackMediaIntent engagementType](self, "engagementType")}];
  v20 = @"eventTimestamp";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v10;
  v25[0] = v10;
  v21 = @"bundleID";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v25[1] = v11;
  v22 = @"intentIdentifier";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = v12;
  v23 = @"subtype";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = v13;
  v24 = @"engagementType";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v20 count:{5, v18}];
  if (v9)
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
    if (v6)
    {
      goto LABEL_19;
    }

LABEL_26:

    if (v5)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_27:

LABEL_20:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMMediaSuggesterSuggestionFeedbackMediaIntent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"eventTimestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"bundleID"];
    v33 = a4;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v36 = 0;
          v17 = 0;
          goto LABEL_42;
        }

        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v44 = v35;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v36 = 0;
        v17 = 0;
        *v33 = [v18 initWithDomain:v19 code:2 userInfo:v10];
        goto LABEL_41;
      }

      v36 = v9;
    }

    else
    {
      v36 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"intentIdentifier"];
    v34 = v8;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v35 = 0;
          v17 = 0;
          goto LABEL_41;
        }

        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v41 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"intentIdentifier"];
        v42 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v35 = 0;
        v17 = 0;
        *v33 = [v20 initWithDomain:v21 code:2 userInfo:v11];
LABEL_40:

        v8 = v34;
LABEL_41:

        goto LABEL_42;
      }

      v35 = v10;
    }

    else
    {
      v35 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"subtype"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v12 = 0;
            v17 = 0;
            goto LABEL_40;
          }

          v31 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v39 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"subtype"];
          v40 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
          v12 = 0;
          v17 = 0;
          *v33 = [v31 initWithDomain:v29 code:2 userInfo:v22];
          goto LABEL_39;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaSuggesterSuggestionFeedbackMediaSubTypeFromString(v11)];
      }

      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    v22 = [v6 objectForKeyedSubscript:@"engagementType"];
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v22;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v33)
          {
            v32 = objc_alloc(MEMORY[0x1E696ABC0]);
            v30 = *MEMORY[0x1E698F240];
            v37 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"engagementType"];
            v38 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            *v33 = [v32 initWithDomain:v30 code:2 userInfo:v28];
          }

          v23 = 0;
          v17 = 0;
          goto LABEL_39;
        }

        v24 = [MEMORY[0x1E696AD98] numberWithInt:BMMediaSuggesterSuggestionFeedbackEngagementTypeFromString(v22)];
      }

      v23 = v24;
    }

    else
    {
      v23 = 0;
    }

    v17 = -[BMMediaSuggesterSuggestionFeedbackMediaIntent initWithEventTimestamp:bundleID:intentIdentifier:subtype:engagementType:](self, "initWithEventTimestamp:bundleID:intentIdentifier:subtype:engagementType:", v34, v36, v35, [v12 intValue], objc_msgSend(v23, "intValue"));
    self = v17;
LABEL_39:

    goto LABEL_40;
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
    v17 = 0;
    goto LABEL_43;
  }

  v14 = a4;
  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v45 = *MEMORY[0x1E696A578];
  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"eventTimestamp"];
  v46[0] = v36;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  v8 = 0;
  v17 = 0;
  *v14 = [v15 initWithDomain:v16 code:2 userInfo:v9];
LABEL_42:

LABEL_43:
  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (self->_hasEventTimestamp)
  {
    eventTimestamp = self->_eventTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_intentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  subtype = self->_subtype;
  PBDataWriterWriteUint32Field();
  engagementType = self->_engagementType;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = BMMediaSuggesterSuggestionFeedbackMediaIntent;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_66;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_64;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v41) & 0x7F) << v7;
        if ((LOBYTE(v41) & 0x80) == 0)
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
        goto LABEL_64;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      switch(v15)
      {
        case 3:
          v23 = PBReaderReadString();
          v24 = 48;
LABEL_35:
          v25 = *(&v5->super.super.isa + v24);
          *(&v5->super.super.isa + v24) = v23;

          break;
        case 4:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          while (1)
          {
            LOBYTE(v41) = 0;
            v29 = [v4 position] + 1;
            if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
            {
              v31 = [v4 data];
              [v31 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v28 |= (LOBYTE(v41) & 0x7F) << v26;
            if ((LOBYTE(v41) & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v22 = v27++ > 8;
            if (v22)
            {
              goto LABEL_55;
            }
          }

          if ([v4 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v28;
          }

          if (v34 <= 5)
          {
            v35 = dword_1855469D4[v34];
            goto LABEL_56;
          }

LABEL_55:
          v35 = 0;
LABEL_56:
          v5->_subtype = v35;
          break;
        case 5:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            LOBYTE(v41) = 0;
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v18 |= (LOBYTE(v41) & 0x7F) << v16;
            if ((LOBYTE(v41) & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_59;
            }
          }

          if (([v4 hasError] & 1) != 0 || v18 > 3)
          {
LABEL_59:
            LODWORD(v18) = 0;
          }

          v5->_engagementType = v18;
          break;
        default:
          goto LABEL_48;
      }

LABEL_63:
      v37 = [v4 position];
      if (v37 >= [v4 length])
      {
        goto LABEL_64;
      }
    }

    if (v15 == 1)
    {
      v5->_hasEventTimestamp = 1;
      v41 = 0.0;
      v32 = [v4 position] + 8;
      if (v32 >= [v4 position] && (v33 = objc_msgSend(v4, "position") + 8, v33 <= objc_msgSend(v4, "length")))
      {
        v36 = [v4 data];
        [v36 getBytes:&v41 range:{objc_msgSend(v4, "position"), 8}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
      }

      else
      {
        [v4 _setError];
      }

      v5->_eventTimestamp = v41;
      goto LABEL_63;
    }

    if (v15 != 2)
    {
LABEL_48:
      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    v23 = PBReaderReadString();
    v24 = 40;
    goto LABEL_35;
  }

LABEL_64:
  if ([v4 hasError])
  {
LABEL_65:
    v38 = 0;
  }

  else
  {
LABEL_66:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self eventTimestamp];
  v5 = [v4 numberWithDouble:?];
  v6 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self bundleID];
  v7 = [(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self intentIdentifier];
  v8 = BMMediaSuggesterSuggestionFeedbackMediaSubTypeAsString([(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self subtype]);
  v9 = BMMediaSuggesterSuggestionFeedbackEngagementTypeAsString([(BMMediaSuggesterSuggestionFeedbackMediaIntent *)self engagementType]);
  v10 = [v3 initWithFormat:@"BMMediaSuggesterSuggestionFeedbackMediaIntent with eventTimestamp: %@, bundleID: %@, intentIdentifier: %@, subtype: %@, engagementType: %@", v5, v6, v7, v8, v9];

  return v10;
}

- (BMMediaSuggesterSuggestionFeedbackMediaIntent)initWithEventTimestamp:(id)a3 bundleID:(id)a4 intentIdentifier:(id)a5 subtype:(int)a6 engagementType:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v18.receiver = self;
  v18.super_class = BMMediaSuggesterSuggestionFeedbackMediaIntent;
  v15 = [(BMEventBase *)&v18 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v15->_hasEventTimestamp = 1;
      [v12 doubleValue];
    }

    else
    {
      v15->_hasEventTimestamp = 0;
      v16 = -1.0;
    }

    v15->_eventTimestamp = v16;
    objc_storeStrong(&v15->_bundleID, a4);
    objc_storeStrong(&v15->_intentIdentifier, a5);
    v15->_subtype = a6;
    v15->_engagementType = a7;
  }

  return v15;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intentIdentifier" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subtype" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementType" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTimestamp" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intentIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subtype" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"engagementType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
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

    v8 = [[BMMediaSuggesterSuggestionFeedbackMediaIntent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end