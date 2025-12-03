@interface _MPCProtoMigrationData
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addPayloads:(uint64_t)payloads;
- (uint64_t)delegateInfo;
- (uint64_t)payloads;
- (uint64_t)timeSync;
- (unint64_t)hash;
- (void)setDelegateInfo:(uint64_t)info;
- (void)setTimeSync:(uint64_t)sync;
- (void)writeTo:(id)to;
@end

@implementation _MPCProtoMigrationData

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_payloads hash];
  v4 = [(_MPCProtoMigrationDataTimeSync *)self->_timeSync hash]^ v3;
  return v4 ^ [(_MPCProtoDelegateInfo *)self->_delegateInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((payloads = self->_payloads, !(payloads | equalCopy[2])) || -[NSMutableArray isEqual:](payloads, "isEqual:")) && ((timeSync = self->_timeSync, !(timeSync | equalCopy[3])) || -[_MPCProtoMigrationDataTimeSync isEqual:](timeSync, "isEqual:")))
  {
    delegateInfo = self->_delegateInfo;
    if (delegateInfo | equalCopy[1])
    {
      v8 = [(_MPCProtoDelegateInfo *)delegateInfo isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_payloads;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) copyWithZone:{zone, v17}];
        [(_MPCProtoMigrationData *)v5 addPayloads:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [(_MPCProtoMigrationDataTimeSync *)self->_timeSync copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(_MPCProtoDelegateInfo *)self->_delegateInfo copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (uint64_t)addPayloads:(uint64_t)payloads
{
  v3 = a2;
  v4 = v3;
  if (payloads)
  {
    v5 = *(payloads + 16);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(payloads + 16);
      *(payloads + 16) = v6;

      v5 = *(payloads + 16);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_payloads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_timeSync)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_delegateInfo)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v18 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v18 & 0x7F) << v6;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        v15 = objc_alloc_init(_MPCProtoDelegateInfo);
        objc_storeStrong(&self->_delegateInfo, v15);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !_MPCProtoDelegateInfoReadFrom(v15, from))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = objc_alloc_init(_MPCProtoMigrationDataPayload);
        [(_MPCProtoMigrationData *)self addPayloads:v15];
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !_MPCProtoMigrationDataPayloadReadFrom(v15, from))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(_MPCProtoMigrationDataTimeSync);
    objc_storeStrong(&self->_timeSync, v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !_MPCProtoMigrationDataTimeSyncReadFrom(v15, from))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_payloads count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_payloads, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_payloads;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"payloads"];
  }

  timeSync = self->_timeSync;
  if (timeSync)
  {
    dictionaryRepresentation2 = [(_MPCProtoMigrationDataTimeSync *)timeSync dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"timeSync"];
  }

  delegateInfo = self->_delegateInfo;
  if (delegateInfo)
  {
    dictionaryRepresentation3 = [(_MPCProtoDelegateInfo *)delegateInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"delegateInfo"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoMigrationData;
  v4 = [(_MPCProtoMigrationData *)&v8 description];
  dictionaryRepresentation = [(_MPCProtoMigrationData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setTimeSync:(uint64_t)sync
{
  if (sync)
  {
    objc_storeStrong((sync + 24), a2);
  }
}

- (void)setDelegateInfo:(uint64_t)info
{
  if (info)
  {
    objc_storeStrong((info + 8), a2);
  }
}

- (uint64_t)payloads
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)timeSync
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)delegateInfo
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end