@interface BMMessagesSharedWithYouFeedback
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesSharedWithYouFeedback)initWithClientIdentifier:(id)identifier feedbackType:(int)type feedbackCreationSecondsSinceReferenceDate:(id)date highlight:(id)highlight clientVariant:(id)variant;
- (BMMessagesSharedWithYouFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    clientIdentifier = [(BMMessagesSharedWithYouFeedback *)self clientIdentifier];
    clientIdentifier2 = [v5 clientIdentifier];
    v8 = clientIdentifier2;
    if (clientIdentifier == clientIdentifier2)
    {
    }

    else
    {
      clientIdentifier3 = [(BMMessagesSharedWithYouFeedback *)self clientIdentifier];
      clientIdentifier4 = [v5 clientIdentifier];
      v11 = [clientIdentifier3 isEqual:clientIdentifier4];

      if (!v11)
      {
        goto LABEL_15;
      }
    }

    feedbackType = [(BMMessagesSharedWithYouFeedback *)self feedbackType];
    if (feedbackType != [v5 feedbackType])
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

    highlight = [(BMMessagesSharedWithYouFeedback *)self highlight];
    highlight2 = [v5 highlight];
    v19 = highlight2;
    if (highlight == highlight2)
    {
    }

    else
    {
      highlight3 = [(BMMessagesSharedWithYouFeedback *)self highlight];
      highlight4 = [v5 highlight];
      v22 = [highlight3 isEqual:highlight4];

      if (!v22)
      {
LABEL_15:
        v12 = 0;
LABEL_16:

        goto LABEL_17;
      }
    }

    clientVariant = [(BMMessagesSharedWithYouFeedback *)self clientVariant];
    clientVariant2 = [v5 clientVariant];
    if (clientVariant == clientVariant2)
    {
      v12 = 1;
    }

    else
    {
      clientVariant3 = [(BMMessagesSharedWithYouFeedback *)self clientVariant];
      clientVariant4 = [v5 clientVariant];
      v12 = [clientVariant3 isEqual:clientVariant4];
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
  clientIdentifier = [(BMMessagesSharedWithYouFeedback *)self clientIdentifier];
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

  highlight = [(BMMessagesSharedWithYouFeedback *)self highlight];
  jsonDictionary = [highlight jsonDictionary];

  clientVariant = [(BMMessagesSharedWithYouFeedback *)self clientVariant];
  v21 = @"clientIdentifier";
  null = clientIdentifier;
  if (!clientIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v26[0] = null;
  v22 = @"feedbackType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v23 = @"feedbackCreationSecondsSinceReferenceDate";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v24 = @"highlight";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25 = @"clientVariant";
  null5 = clientVariant;
  if (!clientVariant)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (clientVariant)
  {
    if (jsonDictionary)
    {
      goto LABEL_17;
    }
  }

  else
  {

    if (jsonDictionary)
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

    if (clientIdentifier)
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
  if (clientIdentifier)
  {
    goto LABEL_20;
  }

LABEL_27:

LABEL_20:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMMessagesSharedWithYouFeedback)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"clientIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"feedbackType"];
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
          if (!error)
          {
            v16 = 0;
            goto LABEL_44;
          }

          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v35 = *MEMORY[0x1E698F240];
          v52 = *MEMORY[0x1E696A578];
          v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feedbackType"];
          v53 = v43;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v36 = [v34 initWithDomain:v35 code:2 userInfo:v17];
          error = 0;
          v16 = 0;
          *errorCopy = v36;
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

    v17 = [dictionaryCopy objectForKeyedSubscript:@"feedbackCreationSecondsSinceReferenceDate"];
    v42 = v8;
    selfCopy = self;
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v43 = 0;
          v16 = 0;
          error = v41;
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
        errorCopy2 = error;
        error = v41;
        *errorCopy2 = v26;
        goto LABEL_41;
      }

      v43 = v17;
    }

    else
    {
      v43 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"highlight"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
LABEL_22:
      v20 = [dictionaryCopy objectForKeyedSubscript:@"clientVariant"];
      if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v39 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E698F240];
            v46 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientVariant"];
            v47 = v32;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            *error = [v39 initWithDomain:v38 code:2 userInfo:v33];
          }

          v21 = 0;
          v16 = 0;
          error = v41;
          goto LABEL_26;
        }

        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      error = v41;
      v16 = -[BMMessagesSharedWithYouFeedback initWithClientIdentifier:feedbackType:feedbackCreationSecondsSinceReferenceDate:highlight:clientVariant:](selfCopy, "initWithClientIdentifier:feedbackType:feedbackCreationSecondsSinceReferenceDate:highlight:clientVariant:", v42, [v41 intValue], v43, v19, v21);
      selfCopy = v16;
LABEL_26:

LABEL_41:
LABEL_42:

      self = selfCopy;
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

      if (error)
      {
        v23 = v23;
        *error = v23;
      }

      v16 = 0;
      v18 = v22;
    }

    else
    {
      if (!error)
      {
        v16 = 0;
        error = v41;
        goto LABEL_42;
      }

      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v48 = *MEMORY[0x1E696A578];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"highlight"];
      v49 = v19;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      *error = [v37 initWithDomain:v28 code:2 userInfo:v29];

      v16 = 0;
    }

    error = v41;
    goto LABEL_41;
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
    v16 = 0;
    goto LABEL_45;
  }

  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy3 = error;
  v13 = *MEMORY[0x1E698F240];
  v54 = *MEMORY[0x1E696A578];
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
  v55[0] = v14;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v15 = v13;
  error = v14;
  v8 = 0;
  v16 = 0;
  *errorCopy3 = [v11 initWithDomain:v15 code:2 userInfo:v9];
LABEL_44:

LABEL_45:
  v30 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSharedWithYouFeedback *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self->_highlight writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_clientVariant)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMMessagesSharedWithYouFeedback;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_53;
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
        LOBYTE(v35[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v21 = [fromCopy position] + 1;
          if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || v20 > 0xB)
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
          v25 = [fromCopy position] + 8;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:v35 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
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

        v27 = [[BMMessagesSharedWithYouFeedbackRankableSocialHighlight alloc] initByReadFrom:fromCopy];
        if (!v27)
        {
          goto LABEL_52;
        }

        highlight = v5->_highlight;
        v5->_highlight = v27;

        PBReaderRecallMark();
      }

LABEL_50:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  clientIdentifier = [(BMMessagesSharedWithYouFeedback *)self clientIdentifier];
  v5 = BMMessagesSharedWithYouFeedbackUnifiedFeedbackTypeAsString([(BMMessagesSharedWithYouFeedback *)self feedbackType]);
  v6 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedback *)self feedbackCreationSecondsSinceReferenceDate];
  v7 = [v6 numberWithDouble:?];
  highlight = [(BMMessagesSharedWithYouFeedback *)self highlight];
  clientVariant = [(BMMessagesSharedWithYouFeedback *)self clientVariant];
  v10 = [v3 initWithFormat:@"BMMessagesSharedWithYouFeedback with clientIdentifier: %@, feedbackType: %@, feedbackCreationSecondsSinceReferenceDate: %@, highlight: %@, clientVariant: %@", clientIdentifier, v5, v7, highlight, clientVariant];

  return v10;
}

- (BMMessagesSharedWithYouFeedback)initWithClientIdentifier:(id)identifier feedbackType:(int)type feedbackCreationSecondsSinceReferenceDate:(id)date highlight:(id)highlight clientVariant:(id)variant
{
  identifierCopy = identifier;
  dateCopy = date;
  highlightCopy = highlight;
  variantCopy = variant;
  v20.receiver = self;
  v20.super_class = BMMessagesSharedWithYouFeedback;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_clientIdentifier, identifier);
    v17->_feedbackType = type;
    if (dateCopy)
    {
      v17->_hasFeedbackCreationSecondsSinceReferenceDate = 1;
      [dateCopy doubleValue];
    }

    else
    {
      v17->_hasFeedbackCreationSecondsSinceReferenceDate = 0;
      v18 = -1.0;
    }

    v17->_feedbackCreationSecondsSinceReferenceDate = v18;
    objc_storeStrong(&v17->_highlight, highlight);
    objc_storeStrong(&v17->_clientVariant, variant);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 3)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMMessagesSharedWithYouFeedback_v3;
  }

  else
  {
    if (version != 4)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMMessagesSharedWithYouFeedback;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 20) = version;
  }

LABEL_9:

  return v9;
}

@end