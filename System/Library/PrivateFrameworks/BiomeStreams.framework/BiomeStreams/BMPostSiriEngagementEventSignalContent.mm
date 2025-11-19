@interface BMPostSiriEngagementEventSignalContent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMPostSiriEngagementEventSignalContent)initWithKey:(id)a3 value:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPostSiriEngagementEventSignalContent

- (BMPostSiriEngagementEventSignalContent)initWithKey:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMPostSiriEngagementEventSignalContent;
  v9 = [(BMEventBase *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMPostSiriEngagementEventSignalContent *)self key];
  v5 = [(BMPostSiriEngagementEventSignalContent *)self value];
  v6 = [v3 initWithFormat:@"BMPostSiriEngagementEventSignalContent with key: %@, value: %@", v4, v5];

  return v6;
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BMPostSiriEngagementEventSignalContent;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_27;
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
        v23 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v23 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v23 & 0x7F) << v7;
        if ((v23 & 0x80) == 0)
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

      if ((v14 >> 3) == 1)
      {
        v15 = &OBJC_IVAR___BMPostSiriEngagementEventSignalContent__key;
      }

      else
      {
        if ((v14 >> 3) != 2)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v15 = &OBJC_IVAR___BMPostSiriEngagementEventSignalContent__value;
      }

      v16 = PBReaderReadString();
      v17 = *v15;
      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_24:
      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_26:
    v20 = 0;
  }

  else
  {
LABEL_27:
    v20 = v5;
  }

  return v20;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
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

    v4 = [[BMPostSiriEngagementEventSignalContent alloc] initByReadFrom:v7];
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPostSiriEngagementEventSignalContent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPostSiriEngagementEventSignalContent *)self key];
    v7 = [v5 key];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(BMPostSiriEngagementEventSignalContent *)self key];
      v9 = [v5 key];
      v10 = [v8 isEqual:v9];
    }

    v12 = [(BMPostSiriEngagementEventSignalContent *)self value];
    v13 = [v5 value];
    if (v12 == v13)
    {
      v16 = 1;
    }

    else
    {
      v14 = [(BMPostSiriEngagementEventSignalContent *)self value];
      v15 = [v5 value];
      v16 = [v14 isEqual:v15];
    }

    v11 = v10 & v16;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end