@interface BMMailCategorizationAnalyticsRead
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMailCategorizationAnalyticsRead)initWithAccountId:(id)id messageId:(id)messageId readTimestamp:(id)timestamp readWithCategoriesEnabled:(id)enabled;
- (BMMailCategorizationAnalyticsRead)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMailCategorizationAnalyticsRead

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountId" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageId" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"readTimestamp" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"readWithCategoriesEnabled" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountId" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageId" number:2 type:2 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"readTimestamp" number:3 type:2 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"readWithCategoriesEnabled" number:4 type:12 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    accountId = [(BMMailCategorizationAnalyticsRead *)self accountId];
    accountId2 = [v5 accountId];
    v8 = accountId2;
    if (accountId == accountId2)
    {
    }

    else
    {
      accountId3 = [(BMMailCategorizationAnalyticsRead *)self accountId];
      accountId4 = [v5 accountId];
      v11 = [accountId3 isEqual:accountId4];

      if (!v11)
      {
        goto LABEL_22;
      }
    }

    if (!-[BMMailCategorizationAnalyticsRead hasMessageId](self, "hasMessageId") && ![v5 hasMessageId] || -[BMMailCategorizationAnalyticsRead hasMessageId](self, "hasMessageId") && objc_msgSend(v5, "hasMessageId") && (v13 = -[BMMailCategorizationAnalyticsRead messageId](self, "messageId"), v13 == objc_msgSend(v5, "messageId")))
    {
      if (!-[BMMailCategorizationAnalyticsRead hasReadTimestamp](self, "hasReadTimestamp") && ![v5 hasReadTimestamp] || -[BMMailCategorizationAnalyticsRead hasReadTimestamp](self, "hasReadTimestamp") && objc_msgSend(v5, "hasReadTimestamp") && (v14 = -[BMMailCategorizationAnalyticsRead readTimestamp](self, "readTimestamp"), v14 == objc_msgSend(v5, "readTimestamp")))
      {
        if (!-[BMMailCategorizationAnalyticsRead hasReadWithCategoriesEnabled](self, "hasReadWithCategoriesEnabled") && ![v5 hasReadWithCategoriesEnabled])
        {
          LOBYTE(v12) = 1;
          goto LABEL_23;
        }

        if (-[BMMailCategorizationAnalyticsRead hasReadWithCategoriesEnabled](self, "hasReadWithCategoriesEnabled") && [v5 hasReadWithCategoriesEnabled])
        {
          readWithCategoriesEnabled = [(BMMailCategorizationAnalyticsRead *)self readWithCategoriesEnabled];
          v12 = readWithCategoriesEnabled ^ [v5 readWithCategoriesEnabled] ^ 1;
LABEL_23:

          goto LABEL_24;
        }
      }
    }

LABEL_22:
    LOBYTE(v12) = 0;
    goto LABEL_23;
  }

  LOBYTE(v12) = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v15[4] = *MEMORY[0x1E69E9840];
  accountId = [(BMMailCategorizationAnalyticsRead *)self accountId];
  if ([(BMMailCategorizationAnalyticsRead *)self hasMessageId])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRead messageId](self, "messageId")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMMailCategorizationAnalyticsRead *)self hasReadTimestamp])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRead readTimestamp](self, "readTimestamp")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMailCategorizationAnalyticsRead *)self hasReadWithCategoriesEnabled])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorizationAnalyticsRead readWithCategoriesEnabled](self, "readWithCategoriesEnabled")}];
  }

  else
  {
    v6 = 0;
  }

  v14[0] = @"accountId";
  null = accountId;
  if (!accountId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"messageId";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"readTimestamp";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"readWithCategoriesEnabled";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (v6)
  {
    if (v5)
    {
      goto LABEL_20;
    }
  }

  else
  {

    if (v5)
    {
LABEL_20:
      if (v4)
      {
        goto LABEL_21;
      }

LABEL_27:

      if (accountId)
      {
        goto LABEL_22;
      }

      goto LABEL_28;
    }
  }

  if (!v4)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (accountId)
  {
    goto LABEL_22;
  }

LABEL_28:

LABEL_22:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMMailCategorizationAnalyticsRead)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
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
          v15 = 0;
          goto LABEL_34;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v20 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"messageId"];
        v39 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        error = 0;
        v15 = 0;
        *errorCopy = v21;
        goto LABEL_33;
      }

      v32 = v9;
    }

    else
    {
      v32 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"readTimestamp"];
    v31 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v12 = 0;
          v15 = 0;
          error = v32;
          goto LABEL_33;
        }

        selfCopy3 = self;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"readTimestamp"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v29 initWithDomain:v22 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        *error = v23;
        goto LABEL_31;
      }

      selfCopy3 = self;
      v12 = v10;
    }

    else
    {
      selfCopy3 = self;
      v12 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"readWithCategoriesEnabled"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
LABEL_13:
      error = v32;
      v15 = [(BMMailCategorizationAnalyticsRead *)selfCopy3 initWithAccountId:v8 messageId:v32 readTimestamp:v12 readWithCategoriesEnabled:v14];
      selfCopy3 = v15;
LABEL_32:

      self = selfCopy3;
      v7 = v31;
LABEL_33:

      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
      goto LABEL_13;
    }

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v34 = *MEMORY[0x1E696A578];
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"readWithCategoriesEnabled"];
      v35 = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      *error = [v30 initWithDomain:v28 code:2 userInfo:v25];
    }

    v14 = 0;
    v15 = 0;
LABEL_31:
    error = v32;
    goto LABEL_32;
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
    v15 = 0;
    goto LABEL_35;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v40 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountId"];
  v41[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v8 = 0;
  v15 = 0;
  *error = [v16 initWithDomain:v17 code:2 userInfo:v9];
  error = v18;
LABEL_34:

LABEL_35:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMailCategorizationAnalyticsRead *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_accountId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_hasMessageId)
  {
    messageId = self->_messageId;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_hasReadTimestamp)
  {
    readTimestamp = self->_readTimestamp;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_hasReadWithCategoriesEnabled)
  {
    readWithCategoriesEnabled = self->_readWithCategoriesEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v42.receiver = self;
  v42.super_class = BMMailCategorizationAnalyticsRead;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_67;
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
        v43 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v43 & 0x7F) << v7;
        if ((v43 & 0x80) == 0)
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
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasReadTimestamp = 1;
          while (1)
          {
            v43 = 0;
            v35 = [fromCopy position] + 1;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v34 |= (v43 & 0x7F) << v32;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v13 = v33++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_62;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v34;
          }

LABEL_62:
          v38 = 28;
LABEL_63:
          *(&v5->super.super.isa + v38) = v22;
          goto LABEL_64;
        }

        if (v15 != 4)
        {
LABEL_41:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_66;
          }

          goto LABEL_64;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasReadWithCategoriesEnabled = 1;
        while (1)
        {
          v43 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v43 & 0x7F) << v23;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            LOBYTE(v29) = 0;
            goto LABEL_58;
          }
        }

        v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_58:
        v5->_readWithCategoriesEnabled = v29;
      }

      else
      {
        if (v15 != 1)
        {
          if (v15 != 2)
          {
            goto LABEL_41;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          v5->_hasMessageId = 1;
          while (1)
          {
            v43 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v43 & 0x7F) << v16;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v13 = v17++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_56;
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

LABEL_56:
          v38 = 24;
          goto LABEL_63;
        }

        v30 = PBReaderReadString();
        accountId = v5->_accountId;
        v5->_accountId = v30;
      }

LABEL_64:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_66:
    v40 = 0;
  }

  else
  {
LABEL_67:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  accountId = [(BMMailCategorizationAnalyticsRead *)self accountId];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRead messageId](self, "messageId")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMailCategorizationAnalyticsRead readTimestamp](self, "readTimestamp")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMailCategorizationAnalyticsRead readWithCategoriesEnabled](self, "readWithCategoriesEnabled")}];
  v8 = [v3 initWithFormat:@"BMMailCategorizationAnalyticsRead with accountId: %@, messageId: %@, readTimestamp: %@, readWithCategoriesEnabled: %@", accountId, v5, v6, v7];

  return v8;
}

- (BMMailCategorizationAnalyticsRead)initWithAccountId:(id)id messageId:(id)messageId readTimestamp:(id)timestamp readWithCategoriesEnabled:(id)enabled
{
  idCopy = id;
  messageIdCopy = messageId;
  timestampCopy = timestamp;
  enabledCopy = enabled;
  v19.receiver = self;
  v19.super_class = BMMailCategorizationAnalyticsRead;
  v15 = [(BMEventBase *)&v19 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_accountId, id);
    if (messageIdCopy)
    {
      v15->_hasMessageId = 1;
      intValue = [messageIdCopy intValue];
    }

    else
    {
      v15->_hasMessageId = 0;
      intValue = -1;
    }

    v15->_messageId = intValue;
    if (timestampCopy)
    {
      v15->_hasReadTimestamp = 1;
      intValue2 = [timestampCopy intValue];
    }

    else
    {
      v15->_hasReadTimestamp = 0;
      intValue2 = -1;
    }

    v15->_readTimestamp = intValue2;
    if (enabledCopy)
    {
      v15->_hasReadWithCategoriesEnabled = 1;
      v15->_readWithCategoriesEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v15->_hasReadWithCategoriesEnabled = 0;
      v15->_readWithCategoriesEnabled = 0;
    }
  }

  return v15;
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

    v8 = [[BMMailCategorizationAnalyticsRead alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end