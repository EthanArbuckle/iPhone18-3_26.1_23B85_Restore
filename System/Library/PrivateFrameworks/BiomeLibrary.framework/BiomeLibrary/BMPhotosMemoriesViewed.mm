@interface BMPhotosMemoriesViewed
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPhotosMemoriesViewed)initWithIdentifier:(id)identifier viewedDurationBucket:(int)bucket watchedToEnd:(id)end;
- (BMPhotosMemoriesViewed)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPhotosMemoriesViewed

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMPhotosMemoriesViewed *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMPhotosMemoriesViewed *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    viewedDurationBucket = [(BMPhotosMemoriesViewed *)self viewedDurationBucket];
    if (viewedDurationBucket == [v5 viewedDurationBucket])
    {
      if (!-[BMPhotosMemoriesViewed hasWatchedToEnd](self, "hasWatchedToEnd") && ![v5 hasWatchedToEnd])
      {
        LOBYTE(v12) = 1;
        goto LABEL_14;
      }

      if (-[BMPhotosMemoriesViewed hasWatchedToEnd](self, "hasWatchedToEnd") && [v5 hasWatchedToEnd])
      {
        watchedToEnd = [(BMPhotosMemoriesViewed *)self watchedToEnd];
        v12 = watchedToEnd ^ [v5 watchedToEnd] ^ 1;
LABEL_14:

        goto LABEL_15;
      }
    }

LABEL_13:
    LOBYTE(v12) = 0;
    goto LABEL_14;
  }

  LOBYTE(v12) = 0;
LABEL_15:

  return v12;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  identifier = [(BMPhotosMemoriesViewed *)self identifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosMemoriesViewed viewedDurationBucket](self, "viewedDurationBucket")}];
  if ([(BMPhotosMemoriesViewed *)self hasWatchedToEnd])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoriesViewed watchedToEnd](self, "watchedToEnd")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"viewedDurationBucket";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"watchedToEnd";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_17:

    if (identifier)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (identifier)
  {
    goto LABEL_13;
  }

LABEL_18:

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMPhotosMemoriesViewed)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"viewedDurationBucket"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v10 = 0;
            selfCopy = 0;
            goto LABEL_21;
          }

          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v21 = *MEMORY[0x1E698F240];
          v28 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"viewedDurationBucket"];
          v29 = v16;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v22 = [v25 initWithDomain:v21 code:2 userInfo:v15];
          v10 = 0;
          selfCopy = 0;
          *error = v22;
          goto LABEL_20;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosMemoriesViewedDurationFromString(v9)];
      }

      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"watchedToEnd"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v26 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"watchedToEnd"];
          v27 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *error = [v24 initWithDomain:v23 code:2 userInfo:v20];
        }

        v16 = 0;
        selfCopy = 0;
        goto LABEL_20;
      }

      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    self = -[BMPhotosMemoriesViewed initWithIdentifier:viewedDurationBucket:watchedToEnd:](self, "initWithIdentifier:viewedDurationBucket:watchedToEnd:", v8, [v10 intValue], v16);
    selfCopy = self;
LABEL_20:

    goto LABEL_21;
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
    selfCopy = 0;
    goto LABEL_22;
  }

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = *MEMORY[0x1E698F240];
  v30 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
  v31[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v12 initWithDomain:v13 code:2 userInfo:v9];
LABEL_21:

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPhotosMemoriesViewed *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  viewedDurationBucket = self->_viewedDurationBucket;
  PBDataWriterWriteUint32Field();
  if (self->_hasWatchedToEnd)
  {
    watchedToEnd = self->_watchedToEnd;
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMPhotosMemoriesViewed;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_51;
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
      if ((v14 >> 3) == 1)
      {
        v30 = PBReaderReadString();
        identifier = v5->_identifier;
        v5->_identifier = v30;
      }

      else if (v15 == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasWatchedToEnd = 1;
        while (1)
        {
          v36 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v36 & 0x7F) << v23;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            LOBYTE(v29) = 0;
            goto LABEL_43;
          }
        }

        v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_43:
        v5->_watchedToEnd = v29;
      }

      else if (v15 == 2)
      {
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
          if (v17++ > 8)
          {
            goto LABEL_46;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 3)
        {
LABEL_46:
          LODWORD(v18) = 0;
        }

        v5->_viewedDurationBucket = v18;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_50;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_50:
    v33 = 0;
  }

  else
  {
LABEL_51:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMPhotosMemoriesViewed *)self identifier];
  v5 = BMPhotosMemoriesViewedDurationAsString([(BMPhotosMemoriesViewed *)self viewedDurationBucket]);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoriesViewed watchedToEnd](self, "watchedToEnd")}];
  v7 = [v3 initWithFormat:@"BMPhotosMemoriesViewed with identifier: %@, viewedDurationBucket: %@, watchedToEnd: %@", identifier, v5, v6];

  return v7;
}

- (BMPhotosMemoriesViewed)initWithIdentifier:(id)identifier viewedDurationBucket:(int)bucket watchedToEnd:(id)end
{
  identifierCopy = identifier;
  endCopy = end;
  v13.receiver = self;
  v13.super_class = BMPhotosMemoriesViewed;
  v11 = [(BMEventBase *)&v13 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v11->_identifier, identifier);
    v11->_viewedDurationBucket = bucket;
    if (endCopy)
    {
      v11->_hasWatchedToEnd = 1;
      v11->_watchedToEnd = [endCopy BOOLValue];
    }

    else
    {
      v11->_hasWatchedToEnd = 0;
      v11->_watchedToEnd = 0;
    }
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewedDurationBucket" number:2 type:4 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"watchedToEnd" number:3 type:12 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewedDurationBucket" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"watchedToEnd" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
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

    v8 = [[BMPhotosMemoriesViewed alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end