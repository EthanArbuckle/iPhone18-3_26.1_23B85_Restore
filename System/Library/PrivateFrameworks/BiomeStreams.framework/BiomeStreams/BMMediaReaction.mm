@interface BMMediaReaction
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMMediaReaction)initWithAbsoluteTimestamp:(double)timestamp mediaUUID:(id)d type:(int)type;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMediaReaction

- (BMMediaReaction)initWithAbsoluteTimestamp:(double)timestamp mediaUUID:(id)d type:(int)type
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = BMMediaReaction;
  v10 = [(BMEventBase *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_hasAbsoluteTimestamp = 1;
    v10->_absoluteTimestamp = timestamp;
    objc_storeStrong(&v10->_mediaUUID, d);
    v11->_hasType = 1;
    v11->_type = type;
  }

  return v11;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMMediaReaction *)self absoluteTimestamp];
  v5 = [v4 numberWithDouble:?];
  mediaUUID = [(BMMediaReaction *)self mediaUUID];
  type = [(BMMediaReaction *)self type];
  if (type >= 7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
  }

  else
  {
    v8 = off_1E6E53B38[type];
  }

  v9 = [v3 initWithFormat:@"BMMediaReaction with absoluteTimestamp: %@, mediaUUID: %@, type: %@", v5, mediaUUID, v8];

  return v9;
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMMediaReaction;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_45;
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
        LOBYTE(v32) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
          v23 = [fromCopy position] + 1;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        v26 = [fromCopy hasError] ? 0 : v22;
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
        v16 = [fromCopy position] + 8;
        if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v32 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_absoluteTimestamp = v32;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_44;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_hasAbsoluteTimestamp)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_mediaUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_hasType)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
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

    v4 = [[BMMediaReaction alloc] initByReadFrom:v7];
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaReaction *)self writeTo:v3];
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

    mediaUUID = [(BMMediaReaction *)self mediaUUID];
    mediaUUID2 = [v5 mediaUUID];
    if (mediaUUID == mediaUUID2)
    {
      v15 = 1;
    }

    else
    {
      mediaUUID3 = [(BMMediaReaction *)self mediaUUID];
      mediaUUID4 = [v5 mediaUUID];
      v15 = [mediaUUID3 isEqual:mediaUUID4];
    }

    if (-[BMMediaReaction hasType](self, "hasType") || [v5 hasType])
    {
      if (-[BMMediaReaction hasType](self, "hasType") && [v5 hasType])
      {
        type = [(BMMediaReaction *)self type];
        v17 = type == [v5 type];
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