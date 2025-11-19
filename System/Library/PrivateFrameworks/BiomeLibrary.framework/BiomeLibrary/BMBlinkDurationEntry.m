@interface BMBlinkDurationEntry
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMBlinkDurationEntry)initWithDurationCategory:(int)a3 count:(id)a4;
- (BMBlinkDurationEntry)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMBlinkDurationEntry

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMBlinkDurationEntry *)self durationCategory];
    if (v6 != [v5 durationCategory])
    {
      goto LABEL_9;
    }

    if (!-[BMBlinkDurationEntry hasCount](self, "hasCount") && ![v5 hasCount])
    {
      v8 = 1;
      goto LABEL_10;
    }

    if (-[BMBlinkDurationEntry hasCount](self, "hasCount") && [v5 hasCount])
    {
      v7 = [(BMBlinkDurationEntry *)self count];
      v8 = v7 == [v5 count];
    }

    else
    {
LABEL_9:
      v8 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMBlinkDurationEntry durationCategory](self, "durationCategory")}];
  if ([(BMBlinkDurationEntry *)self hasCount])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMBlinkDurationEntry count](self, "count")}];
  }

  else
  {
    v4 = 0;
  }

  v10[0] = @"durationCategory";
  v5 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"count";
  v11[0] = v5;
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BMBlinkDurationEntry)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"durationCategory"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v8 = 0;
          v12 = 0;
          goto LABEL_14;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v24 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"durationCategory"];
        v25[0] = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        v8 = 0;
        v12 = 0;
        *a4 = v21;
        goto LABEL_13;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMBlinkDurationEntryBlinkDurationCategoryFromString(v7)];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = [v6 objectForKeyedSubscript:@"count"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = *MEMORY[0x1E698F240];
        v22 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"count"];
        v23 = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        *a4 = [v15 initWithDomain:v16 code:2 userInfo:v18];
      }

      v11 = 0;
      v12 = 0;
      goto LABEL_13;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  self = -[BMBlinkDurationEntry initWithDurationCategory:count:](self, "initWithDurationCategory:count:", [v8 intValue], v11);
  v12 = self;
LABEL_13:

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMBlinkDurationEntry *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  durationCategory = self->_durationCategory;
  v7 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_hasCount)
  {
    count = self->_count;
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMBlinkDurationEntry;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_51;
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
        v32 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v32 & 0x7F) << v7;
        if ((v32 & 0x80) == 0)
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

      if ((v14 >> 3) == 2)
      {
        v22 = 0;
        v23 = 0;
        v17 = 0;
        v5->_hasCount = 1;
        while (1)
        {
          v32 = 0;
          v24 = [v4 position] + 1;
          if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
          {
            v26 = [v4 data];
            [v26 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (v32 & 0x7F) << v22;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v21 = v23++ > 8;
          if (v21)
          {
            LODWORD(v17) = 0;
            goto LABEL_46;
          }
        }

        if ([v4 hasError])
        {
          LODWORD(v17) = 0;
        }

LABEL_46:
        v27 = &OBJC_IVAR___BMBlinkDurationEntry__count;
      }

      else
      {
        if ((v14 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v32 = 0;
          v18 = [v4 position] + 1;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 1, v19 <= objc_msgSend(v4, "length")))
          {
            v20 = [v4 data];
            [v20 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v17 |= (v32 & 0x7F) << v15;
          if ((v32 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v21 = v16++ > 8;
          if (v21)
          {
            goto LABEL_42;
          }
        }

        if (([v4 hasError] & 1) != 0 || v17 > 7)
        {
LABEL_42:
          LODWORD(v17) = 0;
        }

        v27 = &OBJC_IVAR___BMBlinkDurationEntry__durationCategory;
      }

      *(&v5->super.super.isa + *v27) = v17;
LABEL_48:
      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_50:
    v29 = 0;
  }

  else
  {
LABEL_51:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMBlinkDurationEntryBlinkDurationCategoryAsString([(BMBlinkDurationEntry *)self durationCategory]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMBlinkDurationEntry count](self, "count")}];
  v6 = [v3 initWithFormat:@"BMBlinkDurationEntry with durationCategory: %@, count: %@", v4, v5];

  return v6;
}

- (BMBlinkDurationEntry)initWithDurationCategory:(int)a3 count:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = BMBlinkDurationEntry;
  v7 = [(BMEventBase *)&v10 init];
  if (v7)
  {
    v7->_dataVersion = [objc_opt_class() latestDataVersion];
    v7->_durationCategory = a3;
    if (v6)
    {
      v7->_hasCount = 1;
      v8 = [v6 unsignedIntValue];
    }

    else
    {
      v8 = 0;
      v7->_hasCount = 0;
    }

    v7->_count = v8;
  }

  return v7;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"durationCategory" number:1 type:4 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"count" number:2 type:4 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"durationCategory" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"count" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
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

    v8 = [[BMBlinkDurationEntry alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end