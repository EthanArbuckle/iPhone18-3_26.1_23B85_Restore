@interface BMMessagesSearchEventToken
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMessagesSearchEventToken)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMessagesSearchEventToken)initWithTokenType:(int)a3 wordCount:(id)a4 charCount:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMessagesSearchEventToken

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMessagesSearchEventToken *)self tokenType];
    if (v6 != [v5 tokenType])
    {
      goto LABEL_14;
    }

    if (-[BMMessagesSearchEventToken hasWordCount](self, "hasWordCount") || [v5 hasWordCount])
    {
      if (![(BMMessagesSearchEventToken *)self hasWordCount])
      {
        goto LABEL_14;
      }

      if (![v5 hasWordCount])
      {
        goto LABEL_14;
      }

      v7 = [(BMMessagesSearchEventToken *)self wordCount];
      if (v7 != [v5 wordCount])
      {
        goto LABEL_14;
      }
    }

    if (!-[BMMessagesSearchEventToken hasCharCount](self, "hasCharCount") && ![v5 hasCharCount])
    {
      v9 = 1;
      goto LABEL_15;
    }

    if (-[BMMessagesSearchEventToken hasCharCount](self, "hasCharCount") && [v5 hasCharCount])
    {
      v8 = [(BMMessagesSearchEventToken *)self charCount];
      v9 = v8 == [v5 charCount];
    }

    else
    {
LABEL_14:
      v9 = 0;
    }

LABEL_15:

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:

  return v9;
}

- (id)jsonDictionary
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesSearchEventToken tokenType](self, "tokenType")}];
  if ([(BMMessagesSearchEventToken *)self hasWordCount])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventToken wordCount](self, "wordCount")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMMessagesSearchEventToken *)self hasCharCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventToken charCount](self, "charCount")}];
  }

  else
  {
    v5 = 0;
  }

  v12[0] = @"tokenType";
  v6 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v6;
  v12[1] = @"wordCount";
  v7 = v4;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"charCount";
  v8 = v5;
  if (!v5)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_21:

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMMessagesSearchEventToken)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"tokenType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v10 = [v6 objectForKeyedSubscript:@"wordCount"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v14 = 0;
          goto LABEL_17;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v28 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wordCount"];
        v29 = v13;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v18 = [v24 initWithDomain:v17 code:2 userInfo:v12];
        v11 = 0;
        v14 = 0;
        *a4 = v18;
        goto LABEL_16;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"charCount"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v25 = objc_alloc(MEMORY[0x1E696ABC0]);
          v23 = *MEMORY[0x1E698F240];
          v26 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"charCount"];
          v27 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          *a4 = [v25 initWithDomain:v23 code:2 userInfo:v20];
        }

        v13 = 0;
        v14 = 0;
        goto LABEL_16;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    self = -[BMMessagesSearchEventToken initWithTokenType:wordCount:charCount:](self, "initWithTokenType:wordCount:charCount:", [v8 intValue], v11, v13);
    v14 = self;
LABEL_16:

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesSearchEventTokenTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v8 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v21 = objc_alloc(MEMORY[0x1E696ABC0]);
  v22 = *MEMORY[0x1E698F240];
  v30 = *MEMORY[0x1E696A578];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"tokenType"];
  v31[0] = v11;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v8 = 0;
  v14 = 0;
  *a4 = [v21 initWithDomain:v22 code:2 userInfo:v10];
LABEL_17:

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSearchEventToken *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  tokenType = self->_tokenType;
  v8 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_hasWordCount)
  {
    wordCount = self->_wordCount;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasCharCount)
  {
    charCount = self->_charCount;
    PBDataWriterWriteUint64Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = BMMessagesSearchEventToken;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_66;
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
        v41 = 0;
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

        v9 |= (v41 & 0x7F) << v7;
        if ((v41 & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasCharCount = 1;
        while (1)
        {
          v41 = 0;
          v33 = [v4 position] + 1;
          if (v33 >= [v4 position] && (v34 = objc_msgSend(v4, "position") + 1, v34 <= objc_msgSend(v4, "length")))
          {
            v35 = [v4 data];
            [v35 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v32 = (((v41 & 0x7F) << v30) | v32);
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v13 = v31++ >= 9;
          if (v13)
          {
            v29 = 0;
            goto LABEL_57;
          }
        }

        if ([v4 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v32;
        }

LABEL_57:
        v36 = 40;
      }

      else
      {
        if (v15 != 2)
        {
          if (v15 == 1)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v41 = 0;
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

              v18 |= (v41 & 0x7F) << v16;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              if (v17++ > 8)
              {
                goto LABEL_61;
              }
            }

            if (([v4 hasError] & 1) != 0 || v18 > 0xB)
            {
LABEL_61:
              LODWORD(v18) = 0;
            }

            v5->_tokenType = v18;
          }

          else if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_65;
          }

          goto LABEL_63;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasWordCount = 1;
        while (1)
        {
          v41 = 0;
          v26 = [v4 position] + 1;
          if (v26 >= [v4 position] && (v27 = objc_msgSend(v4, "position") + 1, v27 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v41 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v25 = (((v41 & 0x7F) << v23) | v25);
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            v29 = 0;
            goto LABEL_53;
          }
        }

        if ([v4 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_53:
        v36 = 32;
      }

      *(&v5->super.super.isa + v36) = v29;
LABEL_63:
      v37 = [v4 position];
    }

    while (v37 < [v4 length]);
  }

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
  v4 = BMMessagesSearchEventTokenTypeAsString([(BMMessagesSearchEventToken *)self tokenType]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventToken wordCount](self, "wordCount")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMMessagesSearchEventToken charCount](self, "charCount")}];
  v7 = [v3 initWithFormat:@"BMMessagesSearchEventToken with tokenType: %@, wordCount: %@, charCount: %@", v4, v5, v6];

  return v7;
}

- (BMMessagesSearchEventToken)initWithTokenType:(int)a3 wordCount:(id)a4 charCount:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = BMMessagesSearchEventToken;
  v10 = [(BMEventBase *)&v14 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    v10->_tokenType = a3;
    if (v8)
    {
      v10->_hasWordCount = 1;
      v11 = [v8 unsignedLongLongValue];
    }

    else
    {
      v11 = 0;
      v10->_hasWordCount = 0;
    }

    v10->_wordCount = v11;
    if (v9)
    {
      v10->_hasCharCount = 1;
      v12 = [v9 unsignedLongLongValue];
    }

    else
    {
      v12 = 0;
      v10->_hasCharCount = 0;
    }

    v10->_charCount = v12;
  }

  return v10;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tokenType" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wordCount" number:2 type:5 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"charCount" number:3 type:5 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tokenType" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wordCount" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:5 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"charCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:5 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMMessagesSearchEventToken alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end