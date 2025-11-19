@interface BMMessagesSharedWithYouFeedback
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSharedWithYouFeedback)initWithClientIdentifier:(id)a3 feedbackType:(int)a4 feedbackCreationSecondsSinceReferenceDate:(id)a5 highlight:(id)a6 clientVariant:(id)a7;
- (BMMessagesSharedWithYouFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSharedWithYouFeedback

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feedbackType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feedbackCreationSecondsSinceReferenceDate" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"highlight_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_476];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientVariant" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMessagesSharedWithYouFeedback *)self clientIdentifier];
    v7 = [v5 clientIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMessagesSharedWithYouFeedback *)self clientIdentifier];
      v10 = [v5 clientIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_15;
      }
    }

    v13 = [(BMMessagesSharedWithYouFeedback *)self feedbackType];
    if (v13 != [v5 feedbackType])
    {
      goto LABEL_15;
    }

    if (-[BMMessagesSharedWithYouFeedback hasFeedbackCreationSecondsSinceReferenceDate](self, "hasFeedbackCreationSecondsSinceReferenceDate") || [v5 hasFeedbackCreationSecondsSinceReferenceDate])
    {
      if (![(BMMessagesSharedWithYouFeedback *)self hasFeedbackCreationSecondsSinceReferenceDate])
      {
        goto LABEL_15;
      }

      if (![v5 hasFeedbackCreationSecondsSinceReferenceDate])
      {
        goto LABEL_15;
      }

      [(BMMessagesSharedWithYouFeedback *)self feedbackCreationSecondsSinceReferenceDate];
      v15 = v14;
      [v5 feedbackCreationSecondsSinceReferenceDate];
      if (v15 != v16)
      {
        goto LABEL_15;
      }
    }

    v17 = [(BMMessagesSharedWithYouFeedback *)self highlight];
    v18 = [v5 highlight];
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      v20 = [(BMMessagesSharedWithYouFeedback *)self highlight];
      v21 = [v5 highlight];
      v22 = [v20 isEqual:v21];

      if (!v22)
      {
LABEL_15:
        v12 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    v24 = [(BMMessagesSharedWithYouFeedback *)self clientVariant];
    v25 = [v5 clientVariant];
    if (v24 == v25)
    {
      v12 = 1;
    }

    else
    {
      v26 = [(BMMessagesSharedWithYouFeedback *)self clientVariant];
      v27 = [v5 clientVariant];
      v12 = [v26 isEqual:v27];
    }

    goto LABEL_16;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)jsonDictionary
{
  v26[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMMessagesSharedWithYouFeedback *)self clientIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesSharedWithYouFeedback feedbackType](self, "feedbackType")}];
  if (![(BMMessagesSharedWithYouFeedback *)self hasFeedbackCreationSecondsSinceReferenceDate]|| ([(BMMessagesSharedWithYouFeedback *)self feedbackCreationSecondsSinceReferenceDate], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMMessagesSharedWithYouFeedback *)self feedbackCreationSecondsSinceReferenceDate];
    v6 = MEMORY[0x1E696AD98];
    [(BMMessagesSharedWithYouFeedback *)self feedbackCreationSecondsSinceReferenceDate];
    v7 = [v6 numberWithDouble:?];
  }

  v8 = [(BMMessagesSharedWithYouFeedback *)self highlight];
  v9 = [v8 jsonDictionary];

  v10 = [(BMMessagesSharedWithYouFeedback *)self clientVariant];
  v21 = @"clientIdentifier";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v26[0] = v11;
  v22 = @"feedbackType";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v12;
  v23 = @"feedbackCreationSecondsSinceReferenceDate";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v13;
  v24 = @"highlight";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v14;
  v25 = @"clientVariant";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (v9)
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
    if (v4)
    {
      goto LABEL_19;
    }

LABEL_26:

    if (v3)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_25:

  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_27:

LABEL_20:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMMessagesSharedWithYouFeedback)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"clientIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"feedbackType"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v16 = 0;
            goto LABEL_44;
          }

          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = a4;
          v35 = *MEMORY[0x1E698F240];
          v52 = *MEMORY[0x1E696A578];
          v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feedbackType"];
          v53 = v43;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v36 = [v34 initWithDomain:v35 code:2 userInfo:v17];
          a4 = 0;
          v16 = 0;
          *v40 = v36;
          goto LABEL_43;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesSharedWithYouFeedbackUnifiedFeedbackTypeFromString(v9)];
      }

      v41 = v10;
    }

    else
    {
      v41 = 0;
    }

    v17 = [v6 objectForKeyedSubscript:@"feedbackCreationSecondsSinceReferenceDate"];
    v42 = v8;
    v44 = self;
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v43 = 0;
          v16 = 0;
          a4 = v41;
          goto LABEL_43;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"feedbackCreationSecondsSinceReferenceDate"];
        v51 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v26 = [v24 initWithDomain:v25 code:2 userInfo:v19];
        v43 = 0;
        v16 = 0;
        v27 = a4;
        a4 = v41;
        *v27 = v26;
        goto LABEL_41;
      }

      v43 = v17;
    }

    else
    {
      v43 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"highlight"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
LABEL_22:
      v20 = [v6 objectForKeyedSubscript:@"clientVariant"];
      if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (a4)
          {
            v39 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v46 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientVariant"];
            v47 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            *a4 = [v39 initWithDomain:v38 code:2 userInfo:v33];
          }

          v21 = 0;
          v16 = 0;
          a4 = v41;
          goto LABEL_26;
        }

        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      a4 = v41;
      v16 = -[BMMessagesSharedWithYouFeedback initWithClientIdentifier:feedbackType:feedbackCreationSecondsSinceReferenceDate:highlight:clientVariant:](v44, "initWithClientIdentifier:feedbackType:feedbackCreationSecondsSinceReferenceDate:highlight:clientVariant:", v42, [v41 intValue], v43, v19, v21);
      v44 = v16;
LABEL_26:

LABEL_41:
LABEL_42:

      self = v44;
      v8 = v42;
LABEL_43:

      goto LABEL_44;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v18;
      v45 = 0;
      v19 = [[BMMessagesSharedWithYouFeedbackRankableSocialHighlight alloc] initWithJSONDictionary:v22 error:&v45];
      v23 = v45;
      if (!v23)
      {

        goto LABEL_22;
      }

      if (a4)
      {
        v23 = v23;
        *a4 = v23;
      }

      v16 = 0;
      v18 = v22;
    }

    else
    {
      if (!a4)
      {
        v16 = 0;
        a4 = v41;
        goto LABEL_42;
      }

      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v48 = *MEMORY[0x1E696A578];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"highlight"];
      v49 = v19;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      *a4 = [v37 initWithDomain:v28 code:2 userInfo:v29];

      v16 = 0;
    }

    a4 = v41;
    goto LABEL_41;
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
    v16 = 0;
    goto LABEL_45;
  }

  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = a4;
  v13 = *MEMORY[0x1E698F240];
  v54 = *MEMORY[0x1E696A578];
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
  v55[0] = v14;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v15 = v13;
  a4 = v14;
  v8 = 0;
  v16 = 0;
  *v12 = [v11 initWithDomain:v15 code:2 userInfo:v9];
LABEL_44:

LABEL_45:
  v30 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSharedWithYouFeedback *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  feedbackType = self->_feedbackType;
  PBDataWriterWriteUint32Field();
  if (self->_hasFeedbackCreationSecondsSinceReferenceDate)
  {
    feedbackCreationSecondsSinceReferenceDate = self->_feedbackCreationSecondsSinceReferenceDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_highlight)
  {
    PBDataWriterPlaceMark();
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self->_highlight writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_clientVariant)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = BMMessagesSharedWithYouFeedback;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_53;
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
        LOBYTE(v35[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v35 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v35[0] & 0x7F) << v7;
        if ((v35[0] & 0x80) == 0)
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
          v16 = PBReaderReadString();
          v17 = 32;
LABEL_41:
          v29 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_50;
        }

        if (v15 != 2)
        {
LABEL_42:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v35[0]) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:v35 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v35[0] & 0x7F) << v18;
          if ((v35[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          if (v19++ > 8)
          {
            goto LABEL_46;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 0xB)
        {
LABEL_46:
          LODWORD(v20) = 0;
        }

        v5->_feedbackType = v20;
      }

      else
      {
        if (v15 == 3)
        {
          v5->_hasFeedbackCreationSecondsSinceReferenceDate = 1;
          v35[0] = 0;
          v25 = [v4 position] + 8;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:v35 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          *&v5->_feedbackCreationSecondsSinceReferenceDate = v35[0];
          goto LABEL_50;
        }

        if (v15 != 4)
        {
          if (v15 != 5)
          {
            goto LABEL_42;
          }

          v16 = PBReaderReadString();
          v17 = 56;
          goto LABEL_41;
        }

        v35[0] = 0;
        v35[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_52;
        }

        v27 = [[BMMessagesSharedWithYouFeedbackRankableSocialHighlight alloc] initByReadFrom:v4];
        if (!v27)
        {
          goto LABEL_52;
        }

        highlight = v5->_highlight;
        v5->_highlight = v27;

        PBReaderRecallMark();
      }

LABEL_50:
      v31 = [v4 position];
    }

    while (v31 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_52:
    v32 = 0;
  }

  else
  {
LABEL_53:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMessagesSharedWithYouFeedback *)self clientIdentifier];
  v5 = BMMessagesSharedWithYouFeedbackUnifiedFeedbackTypeAsString([(BMMessagesSharedWithYouFeedback *)self feedbackType]);
  v6 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedback *)self feedbackCreationSecondsSinceReferenceDate];
  v7 = [v6 numberWithDouble:?];
  v8 = [(BMMessagesSharedWithYouFeedback *)self highlight];
  v9 = [(BMMessagesSharedWithYouFeedback *)self clientVariant];
  v10 = [v3 initWithFormat:@"BMMessagesSharedWithYouFeedback with clientIdentifier: %@, feedbackType: %@, feedbackCreationSecondsSinceReferenceDate: %@, highlight: %@, clientVariant: %@", v4, v5, v7, v8, v9];

  return v10;
}

- (BMMessagesSharedWithYouFeedback)initWithClientIdentifier:(id)a3 feedbackType:(int)a4 feedbackCreationSecondsSinceReferenceDate:(id)a5 highlight:(id)a6 clientVariant:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMMessagesSharedWithYouFeedback;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_clientIdentifier, a3);
    v17->_feedbackType = a4;
    if (v14)
    {
      v17->_hasFeedbackCreationSecondsSinceReferenceDate = 1;
      [v14 doubleValue];
    }

    else
    {
      v17->_hasFeedbackCreationSecondsSinceReferenceDate = 0;
      v18 = -1.0;
    }

    v17->_feedbackCreationSecondsSinceReferenceDate = v18;
    objc_storeStrong(&v17->_highlight, a6);
    objc_storeStrong(&v17->_clientVariant, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feedbackType" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feedbackCreationSecondsSinceReferenceDate" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlight" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientVariant" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __42__BMMessagesSharedWithYouFeedback_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 highlight];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  if (a4 == 3)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMMessagesSharedWithYouFeedback_v3;
  }

  else
  {
    if (a4 != 4)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v5];
    v7 = BMMessagesSharedWithYouFeedback;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 20) = a4;
  }

LABEL_9:

  return v9;
}

@end