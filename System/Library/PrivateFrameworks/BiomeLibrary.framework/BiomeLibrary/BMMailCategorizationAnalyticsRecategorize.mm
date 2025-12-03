@interface BMMailCategorizationAnalyticsRecategorize
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMailCategorizationAnalyticsRecategorize)initWithAccountId:(id)id messageId:(id)messageId currCategoryView:(id)view recategorizationBy:(id)by recategorizeTimestamp:(id)timestamp;
- (BMMailCategorizationAnalyticsRecategorize)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMailCategorizationAnalyticsRecategorize

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageId" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currCategoryView" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recategorizationBy" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recategorizeTimestamp" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountId" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageId" number:2 type:2 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currCategoryView" number:3 type:2 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recategorizationBy" number:4 type:2 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recategorizeTimestamp" number:5 type:2 subMessageClass:0];
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
    accountId = [(BMMailCategorizationAnalyticsRecategorize *)self accountId];
    accountId2 = [v5 accountId];
    v8 = accountId2;
    if (accountId == accountId2)
    {
    }

    else
    {
      accountId3 = [(BMMailCategorizationAnalyticsRecategorize *)self accountId];
      accountId4 = [v5 accountId];
      v11 = [accountId3 isEqual:accountId4];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    if (!-[BMMailCategorizationAnalyticsRecategorize hasMessageId](self, "hasMessageId") && ![v5 hasMessageId] || -[BMMailCategorizationAnalyticsRecategorize hasMessageId](self, "hasMessageId") && objc_msgSend(v5, "hasMessageId") && (v13 = -[BMMailCategorizationAnalyticsRecategorize messageId](self, "messageId"), v13 == objc_msgSend(v5, "messageId")))
    {
      if (!-[BMMailCategorizationAnalyticsRecategorize hasCurrCategoryView](self, "hasCurrCategoryView") && ![v5 hasCurrCategoryView] || -[BMMailCategorizationAnalyticsRecategorize hasCurrCategoryView](self, "hasCurrCategoryView") && objc_msgSend(v5, "hasCurrCategoryView") && (v14 = -[BMMailCategorizationAnalyticsRecategorize currCategoryView](self, "currCategoryView"), v14 == objc_msgSend(v5, "currCategoryView")))
      {
        if (!-[BMMailCategorizationAnalyticsRecategorize hasRecategorizationBy](self, "hasRecategorizationBy") && ![v5 hasRecategorizationBy] || -[BMMailCategorizationAnalyticsRecategorize hasRecategorizationBy](self, "hasRecategorizationBy") && objc_msgSend(v5, "hasRecategorizationBy") && (v15 = -[BMMailCategorizationAnalyticsRecategorize recategorizationBy](self, "recategorizationBy"), v15 == objc_msgSend(v5, "recategorizationBy")))
        {
          if (!-[BMMailCategorizationAnalyticsRecategorize hasRecategorizeTimestamp](self, "hasRecategorizeTimestamp") && ![v5 hasRecategorizeTimestamp])
          {
            v12 = 1;
            goto LABEL_28;
          }

          if (-[BMMailCategorizationAnalyticsRecategorize hasRecategorizeTimestamp](self, "hasRecategorizeTimestamp") && [v5 hasRecategorizeTimestamp])
          {
            recategorizeTimestamp = [(BMMailCategorizationAnalyticsRecategorize *)self recategorizeTimestamp];
            v12 = recategorizeTimestamp == [v5 recategorizeTimestamp];
LABEL_28:

            goto LABEL_29;
          }
        }
      }
    }

LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (id)jsonDictionary
{
  v19[5] = *MEMORY[0x1E69E9840];
  accountId = [(BMMailCategorizationAnalyticsRecategorize *)self accountId];
  if ([(BMMailCategorizationAnalyticsRecategorize *)self hasMessageId])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRecategorize messageId](self, "messageId")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMMailCategorizationAnalyticsRecategorize *)self hasCurrCategoryView])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRecategorize currCategoryView](self, "currCategoryView")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMailCategorizationAnalyticsRecategorize *)self hasRecategorizationBy])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRecategorize recategorizationBy](self, "recategorizationBy")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMMailCategorizationAnalyticsRecategorize *)self hasRecategorizeTimestamp])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRecategorize recategorizeTimestamp](self, "recategorizeTimestamp")}];
  }

  else
  {
    v7 = 0;
  }

  v16 = accountId;
  v18[0] = @"accountId";
  null = accountId;
  if (!accountId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"messageId";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"currCategoryView";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = null3;
  v18[3] = @"recategorizationBy";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = null4;
  v18[4] = @"recategorizeTimestamp";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v19[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (v6)
    {
LABEL_25:
      if (v5)
      {
        goto LABEL_26;
      }

LABEL_34:

      if (v4)
      {
        goto LABEL_27;
      }

      goto LABEL_35;
    }
  }

  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_26:
  if (v4)
  {
    goto LABEL_27;
  }

LABEL_35:

LABEL_27:
  if (!v17)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMMailCategorizationAnalyticsRecategorize)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"accountId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"messageId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v39 = 0;
          v16 = 0;
          goto LABEL_20;
        }

        errorCopy = error;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"messageId"];
        v47 = v37;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v39 = 0;
        v16 = 0;
        *errorCopy = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_19;
      }

      v39 = v9;
    }

    else
    {
      v39 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"currCategoryView"];
    v36 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v37 = 0;
          v16 = 0;
          goto LABEL_19;
        }

        errorCopy2 = error;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"currCategoryView"];
        v45 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v37 = 0;
        v16 = 0;
        *errorCopy2 = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_18:

        self = selfCopy;
        v8 = v36;
LABEL_19:

        goto LABEL_20;
      }

      v37 = v10;
    }

    else
    {
      v37 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"recategorizationBy"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_18;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"recategorizationBy"];
        v43 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v29 = [v34 initWithDomain:v27 code:2 userInfo:v14];
        v13 = 0;
        v16 = 0;
        *errorCopy3 = v29;
        goto LABEL_17;
      }

      errorCopy5 = error;
      v13 = v11;
    }

    else
    {
      errorCopy5 = error;
      v13 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"recategorizeTimestamp"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy5)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v40 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"recategorizeTimestamp"];
          v41 = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          *errorCopy5 = [v35 initWithDomain:v32 code:2 userInfo:v31];
        }

        v15 = 0;
        v16 = 0;
        goto LABEL_17;
      }

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(BMMailCategorizationAnalyticsRecategorize *)selfCopy initWithAccountId:v36 messageId:v39 currCategoryView:v37 recategorizationBy:v13 recategorizeTimestamp:v15];
    selfCopy = v16;
LABEL_17:

    goto LABEL_18;
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
    goto LABEL_21;
  }

  errorCopy6 = error;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountId"];
  v49[0] = v39;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v8 = 0;
  v16 = 0;
  *errorCopy6 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMailCategorizationAnalyticsRecategorize *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_accountId)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_hasMessageId)
  {
    messageId = self->_messageId;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_hasCurrCategoryView)
  {
    currCategoryView = self->_currCategoryView;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_hasRecategorizationBy)
  {
    recategorizationBy = self->_recategorizationBy;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_hasRecategorizeTimestamp)
  {
    recategorizeTimestamp = self->_recategorizeTimestamp;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMMailCategorizationAnalyticsRecategorize;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_83;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_81;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v48 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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
        goto LABEL_81;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        break;
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
LABEL_61:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_82;
          }

          goto LABEL_80;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasMessageId = 1;
        while (1)
        {
          v48 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v48 & 0x7F) << v23;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_78;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_78:
        v43 = 24;
        goto LABEL_79;
      }

      v41 = PBReaderReadString();
      accountId = v5->_accountId;
      v5->_accountId = v41;

LABEL_80:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_81;
      }
    }

    switch(v15)
    {
      case 3:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v5->_hasCurrCategoryView = 1;
        while (1)
        {
          v48 = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 |= (v48 & 0x7F) << v29;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v13 = v30++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_66;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v31;
        }

LABEL_66:
        v43 = 28;
        break;
      case 4:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v5->_hasRecategorizationBy = 1;
        while (1)
        {
          v48 = 0;
          v38 = [fromCopy position] + 1;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v37 |= (v48 & 0x7F) << v35;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v13 = v36++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_70;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v37;
        }

LABEL_70:
        v43 = 32;
        break;
      case 5:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v5->_hasRecategorizeTimestamp = 1;
        while (1)
        {
          v48 = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v48 & 0x7F) << v16;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v13 = v17++ >= 9;
          if (v13)
          {
            v22 = 0;
            goto LABEL_74;
          }
        }

        if ([fromCopy hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_74:
        v43 = 36;
        break;
      default:
        goto LABEL_61;
    }

LABEL_79:
    *(&v5->super.super.isa + v43) = v22;
    goto LABEL_80;
  }

LABEL_81:
  if ([fromCopy hasError])
  {
LABEL_82:
    v45 = 0;
  }

  else
  {
LABEL_83:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  accountId = [(BMMailCategorizationAnalyticsRecategorize *)self accountId];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRecategorize messageId](self, "messageId")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRecategorize currCategoryView](self, "currCategoryView")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRecategorize recategorizationBy](self, "recategorizationBy")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRecategorize recategorizeTimestamp](self, "recategorizeTimestamp")}];
  v9 = [v3 initWithFormat:@"BMMailCategorizationAnalyticsRecategorize with accountId: %@, messageId: %@, currCategoryView: %@, recategorizationBy: %@, recategorizeTimestamp: %@", accountId, v5, v6, v7, v8];

  return v9;
}

- (BMMailCategorizationAnalyticsRecategorize)initWithAccountId:(id)id messageId:(id)messageId currCategoryView:(id)view recategorizationBy:(id)by recategorizeTimestamp:(id)timestamp
{
  idCopy = id;
  messageIdCopy = messageId;
  viewCopy = view;
  byCopy = by;
  timestampCopy = timestamp;
  v24.receiver = self;
  v24.super_class = BMMailCategorizationAnalyticsRecategorize;
  v18 = [(BMEventBase *)&v24 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_accountId, id);
    if (messageIdCopy)
    {
      v18->_hasMessageId = 1;
      intValue = [messageIdCopy intValue];
    }

    else
    {
      v18->_hasMessageId = 0;
      intValue = -1;
    }

    v18->_messageId = intValue;
    if (viewCopy)
    {
      v18->_hasCurrCategoryView = 1;
      intValue2 = [viewCopy intValue];
    }

    else
    {
      v18->_hasCurrCategoryView = 0;
      intValue2 = -1;
    }

    v18->_currCategoryView = intValue2;
    if (byCopy)
    {
      v18->_hasRecategorizationBy = 1;
      intValue3 = [byCopy intValue];
    }

    else
    {
      v18->_hasRecategorizationBy = 0;
      intValue3 = -1;
    }

    v18->_recategorizationBy = intValue3;
    if (timestampCopy)
    {
      v18->_hasRecategorizeTimestamp = 1;
      intValue4 = [timestampCopy intValue];
    }

    else
    {
      v18->_hasRecategorizeTimestamp = 0;
      intValue4 = -1;
    }

    v18->_recategorizeTimestamp = intValue4;
  }

  return v18;
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

    v8 = [[BMMailCategorizationAnalyticsRecategorize alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end