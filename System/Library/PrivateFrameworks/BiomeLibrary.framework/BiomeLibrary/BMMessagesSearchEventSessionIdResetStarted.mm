@interface BMMessagesSearchEventSessionIdResetStarted
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesSearchEventSessionIdResetStarted)initWithIsInSearchView:(id)view;
- (BMMessagesSearchEventSessionIdResetStarted)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMessagesSearchEventSessionIdResetStarted

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMMessagesSearchEventSessionIdResetStarted hasIsInSearchView](self, "hasIsInSearchView") || [v5 hasIsInSearchView])
    {
      if (-[BMMessagesSearchEventSessionIdResetStarted hasIsInSearchView](self, "hasIsInSearchView") && [v5 hasIsInSearchView])
      {
        isInSearchView = [(BMMessagesSearchEventSessionIdResetStarted *)self isInSearchView];
        v7 = isInSearchView ^ [v5 isInSearchView] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)jsonDictionary
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(BMMessagesSearchEventSessionIdResetStarted *)self hasIsInSearchView])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSearchEventSessionIdResetStarted isInSearchView](self, "isInSearchView")}];
    v10 = @"isInSearchView";
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      null = v3;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = @"isInSearchView";
  }

  null = [MEMORY[0x1E695DFB0] null];
  v4 = 0;
  v5 = 1;
LABEL_6:
  v11[0] = null;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  if (v5)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BMMessagesSearchEventSessionIdResetStarted)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [dictionary objectForKeyedSubscript:@"isInSearchView"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    error = 0;
LABEL_4:
    self = [(BMMessagesSearchEventSessionIdResetStarted *)self initWithIsInSearchView:error];
    selfCopy = self;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    error = v6;
    goto LABEL_4;
  }

  if (error)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = *MEMORY[0x1E698F240];
    v14 = *MEMORY[0x1E696A578];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInSearchView"];
    v15[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v10 initWithDomain:v11 code:2 userInfo:v13];

    error = 0;
  }

  selfCopy = 0;
LABEL_5:

  v8 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventSessionIdResetStarted *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  if (self->_hasIsInSearchView)
  {
    isInSearchView = self->_isInSearchView;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMMessagesSearchEventSessionIdResetStarted;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_35;
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
        v26 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v26 & 0x7F) << v7;
        if ((v26 & 0x80) == 0)
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

      if ((v14 >> 3) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v5->_hasIsInSearchView = 1;
        while (1)
        {
          v26 = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v26 & 0x7F) << v15;
          if ((v26 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v13 = v16++ >= 9;
          if (v13)
          {
            LOBYTE(v21) = 0;
            goto LABEL_31;
          }
        }

        v21 = (v17 != 0) & ~[fromCopy hasError];
LABEL_31:
        v5->_isInSearchView = v21;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_34;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_34:
    v23 = 0;
  }

  else
  {
LABEL_35:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSearchEventSessionIdResetStarted isInSearchView](self, "isInSearchView")}];
  v5 = [v3 initWithFormat:@"BMMessagesSearchEventSessionIdResetStarted with isInSearchView: %@", v4];

  return v5;
}

- (BMMessagesSearchEventSessionIdResetStarted)initWithIsInSearchView:(id)view
{
  viewCopy = view;
  v7.receiver = self;
  v7.super_class = BMMessagesSearchEventSessionIdResetStarted;
  v5 = [(BMEventBase *)&v7 init];
  if (v5)
  {
    v5->_dataVersion = [objc_opt_class() latestDataVersion];
    if (viewCopy)
    {
      v5->_hasIsInSearchView = 1;
      v5->_isInSearchView = [viewCopy BOOLValue];
    }

    else
    {
      v5->_hasIsInSearchView = 0;
      v5->_isInSearchView = 0;
    }
  }

  return v5;
}

+ (id)protoFields
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInSearchView" number:1 type:12 subMessageClass:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)columns
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInSearchView" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
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

    v8 = [[BMMessagesSearchEventSessionIdResetStarted alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end