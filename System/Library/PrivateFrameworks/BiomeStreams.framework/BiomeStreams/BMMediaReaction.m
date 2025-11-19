@interface BMMediaReaction
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMMediaReaction)initWithAbsoluteTimestamp:(double)a3 mediaUUID:(id)a4 type:(int)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMediaReaction

- (BMMediaReaction)initWithAbsoluteTimestamp:(double)a3 mediaUUID:(id)a4 type:(int)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = BMMediaReaction;
  v10 = [(BMEventBase *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_hasAbsoluteTimestamp = 1;
    v10->_absoluteTimestamp = a3;
    objc_storeStrong(&v10->_mediaUUID, a4);
    v11->_hasType = 1;
    v11->_type = a5;
  }

  return v11;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMMediaReaction *)self absoluteTimestamp];
  v5 = [v4 numberWithDouble:?];
  v6 = [(BMMediaReaction *)self mediaUUID];
  v7 = [(BMMediaReaction *)self type];
  if (v7 >= 7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
  }

  else
  {
    v8 = off_1E6E53B38[v7];
  }

  v9 = [v3 initWithFormat:@"BMMediaReaction with absoluteTimestamp: %@, mediaUUID: %@, type: %@", v5, v6, v8];

  return v9;
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMMediaReaction;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_45;
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
        LOBYTE(v32) = 0;
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

        v9 |= (LOBYTE(v32) & 0x7F) << v7;
        if ((LOBYTE(v32) & 0x80) == 0)
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
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasType = 1;
        while (1)
        {
          LOBYTE(v32) = 0;
          v23 = [v4 position] + 1;
          if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
          {
            v25 = [v4 data];
            [v25 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v22 |= (LOBYTE(v32) & 0x7F) << v20;
          if ((LOBYTE(v32) & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v13 = v21++ >= 9;
          if (v13)
          {
            v26 = 0;
            goto LABEL_39;
          }
        }

        v26 = [v4 hasError] ? 0 : v22;
LABEL_39:
        v5->_type = v26;
      }

      else if (v15 == 2)
      {
        v18 = PBReaderReadString();
        mediaUUID = v5->_mediaUUID;
        v5->_mediaUUID = v18;
      }

      else if (v15 == 1)
      {
        v5->_hasAbsoluteTimestamp = 1;
        v32 = 0.0;
        v16 = [v4 position] + 8;
        if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
        {
          v27 = [v4 data];
          [v27 getBytes:&v32 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_absoluteTimestamp = v32;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_44;
      }

      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_44:
    v29 = 0;
  }

  else
  {
LABEL_45:
    v29 = v5;
  }

  return v29;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_hasAbsoluteTimestamp)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_mediaUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasType)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    v4 = v7;
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

    v4 = [[BMMediaReaction alloc] initByReadFrom:v7];
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaReaction *)self writeTo:v3];
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
    if (-[BMMediaReaction hasAbsoluteTimestamp](self, "hasAbsoluteTimestamp") || [v5 hasAbsoluteTimestamp])
    {
      if (-[BMMediaReaction hasAbsoluteTimestamp](self, "hasAbsoluteTimestamp") && [v5 hasAbsoluteTimestamp])
      {
        [(BMMediaReaction *)self absoluteTimestamp];
        v7 = v6;
        [v5 absoluteTimestamp];
        v9 = v7 == v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 1;
    }

    v11 = [(BMMediaReaction *)self mediaUUID];
    v12 = [v5 mediaUUID];
    if (v11 == v12)
    {
      v15 = 1;
    }

    else
    {
      v13 = [(BMMediaReaction *)self mediaUUID];
      v14 = [v5 mediaUUID];
      v15 = [v13 isEqual:v14];
    }

    if (-[BMMediaReaction hasType](self, "hasType") || [v5 hasType])
    {
      if (-[BMMediaReaction hasType](self, "hasType") && [v5 hasType])
      {
        v16 = [(BMMediaReaction *)self type];
        v17 = v16 == [v5 type];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 1;
    }

    v10 = v9 & v15 & v17;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end