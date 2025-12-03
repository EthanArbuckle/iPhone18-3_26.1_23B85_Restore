@interface BMPostSiriEngagementEventSignalContent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMPostSiriEngagementEventSignalContent)initWithKey:(id)key value:(id)value;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPostSiriEngagementEventSignalContent

- (BMPostSiriEngagementEventSignalContent)initWithKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = BMPostSiriEngagementEventSignalContent;
  v9 = [(BMEventBase *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_value, value);
  }

  return v10;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMPostSiriEngagementEventSignalContent *)self key];
  value = [(BMPostSiriEngagementEventSignalContent *)self value];
  v6 = [v3 initWithFormat:@"BMPostSiriEngagementEventSignalContent with key: %@, value: %@", v4, value];

  return v6;
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMPostSiriEngagementEventSignalContent;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_27;
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
        v23 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
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

    v4 = [[BMPostSiriEngagementEventSignalContent alloc] initByReadFrom:v7];
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPostSiriEngagementEventSignalContent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

    value = [(BMPostSiriEngagementEventSignalContent *)self value];
    value2 = [v5 value];
    if (value == value2)
    {
      v16 = 1;
    }

    else
    {
      value3 = [(BMPostSiriEngagementEventSignalContent *)self value];
      value4 = [v5 value];
      v16 = [value3 isEqual:value4];
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