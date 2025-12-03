@interface BMMediaRenderedMediaAttributes
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMMediaRenderedMediaAttributes)initWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMediaRenderedMediaAttributes

- (BMMediaRenderedMediaAttributes)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = BMMediaRenderedMediaAttributes;
  v6 = [(BMEventBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, d);
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uUID = [(BMMediaRenderedMediaAttributes *)self UUID];
  v5 = [v3 initWithFormat:@"BMMediaRenderedMediaAttributes with UUID: %@", uUID];

  return v5;
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v20.receiver = self;
  v20.super_class = BMMediaRenderedMediaAttributes;
  v5 = [(BMEventBase *)&v20 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v21 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v21 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v21 & 0x7F) << v7;
        if ((v21 & 0x80) == 0)
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
        v15 = PBReaderReadString();
        UUID = v5->_UUID;
        v5->_UUID = v15;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_23;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v18 = 0;
  }

  else
  {
LABEL_24:
    v18 = v5;
  }

  return v18;
}

- (void)writeTo:(id)to
{
  if (self->_UUID)
  {
    PBDataWriterWriteStringField();
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

    v4 = [[BMMediaRenderedMediaAttributes alloc] initByReadFrom:v7];
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaRenderedMediaAttributes *)self writeTo:v3];
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
    uUID = [(BMMediaRenderedMediaAttributes *)self UUID];
    uUID2 = [v5 UUID];
    if (uUID == uUID2)
    {
      v10 = 1;
    }

    else
    {
      uUID3 = [(BMMediaRenderedMediaAttributes *)self UUID];
      uUID4 = [v5 UUID];
      v10 = [uUID3 isEqual:uUID4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end