@interface BMMediaRenderedMediaAttributes
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMMediaRenderedMediaAttributes)initWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMediaRenderedMediaAttributes

- (BMMediaRenderedMediaAttributes)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BMMediaRenderedMediaAttributes;
  v6 = [(BMEventBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_UUID, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMediaRenderedMediaAttributes *)self UUID];
  v5 = [v3 initWithFormat:@"BMMediaRenderedMediaAttributes with UUID: %@", v4];

  return v5;
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BMMediaRenderedMediaAttributes;
  v5 = [(BMEventBase *)&v20 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v21 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v21 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

      v17 = [v4 position];
    }

    while (v17 < [v4 length]);
  }

  if ([v4 hasError])
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

- (void)writeTo:(id)a3
{
  if (self->_UUID)
  {
    PBDataWriterWriteStringField();
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

    v4 = [[BMMediaRenderedMediaAttributes alloc] initByReadFrom:v7];
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaRenderedMediaAttributes *)self writeTo:v3];
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
    v6 = [(BMMediaRenderedMediaAttributes *)self UUID];
    v7 = [v5 UUID];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(BMMediaRenderedMediaAttributes *)self UUID];
      v9 = [v5 UUID];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end