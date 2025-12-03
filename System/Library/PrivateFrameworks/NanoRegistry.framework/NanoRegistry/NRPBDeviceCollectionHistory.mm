@interface NRPBDeviceCollectionHistory
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addHistory:(uint64_t)history;
- (unint64_t)hash;
- (void)setHistorys:(uint64_t)historys;
- (void)setSwitchRecords:(uint64_t)records;
- (void)writeTo:(id)to;
@end

@implementation NRPBDeviceCollectionHistory

- (uint64_t)addHistory:(uint64_t)history
{
  v3 = a2;
  v4 = v3;
  if (history)
  {
    v5 = *(history + 16);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(history + 16);
      *(history + 16) = v6;

      v5 = *(history + 16);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBDeviceCollectionHistory;
  v4 = [(NRPBDeviceCollectionHistory *)&v8 description];
  dictionaryRepresentation = [(NRPBDeviceCollectionHistory *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_startIndex];
    [dictionary setObject:v4 forKey:@"startIndex"];
  }

  if ([(NSMutableArray *)self->_historys count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_historys, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_historys;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"history"];
  }

  switchRecords = self->_switchRecords;
  if (switchRecords)
  {
    dictionaryRepresentation2 = [(NRPBSwitchRecordCollection *)switchRecords dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"switchRecords"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
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
        LOBYTE(v25) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v25 & 0x7F) << v6;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
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
        break;
      }

      if (v14 == 2)
      {
        v22 = objc_alloc_init(NRPBDeviceCollectionHistoryEntry);
        [(NRPBDeviceCollectionHistory *)self addHistory:v22];
        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark() || !NRPBDeviceCollectionHistoryEntryReadFrom(v22, from))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if (v14 == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v25) = 0;
          v18 = [from position] + 1;
          if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_40;
          }
        }

        if ([from hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_40:
        self->_startIndex = v21;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v22 = objc_alloc_init(NRPBSwitchRecordCollection);
    objc_storeStrong(&self->_switchRecords, v22);
    v25 = 0;
    v26 = 0;
    if (!PBReaderPlaceMark() || !NRPBSwitchRecordCollectionReadFrom(v22, from))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    startIndex = self->_startIndex;
    PBDataWriterWriteInt64Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_historys;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_switchRecords)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setSwitchRecords:(uint64_t)records
{
  if (records)
  {
    objc_storeStrong((records + 24), a2);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_startIndex;
    *(v5 + 32) |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_historys;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) copyWithZone:{zone, v17}];
        [(NRPBDeviceCollectionHistory *)v6 addHistory:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(NRPBSwitchRecordCollection *)self->_switchRecords copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_startIndex != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  historys = self->_historys;
  if (historys | *(equalCopy + 2) && ![(NSMutableArray *)historys isEqual:?])
  {
    goto LABEL_11;
  }

  switchRecords = self->_switchRecords;
  if (switchRecords | *(equalCopy + 3))
  {
    v8 = [(NRPBSwitchRecordCollection *)switchRecords isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_startIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_historys hash]^ v3;
  return v4 ^ [(NRPBSwitchRecordCollection *)self->_switchRecords hash];
}

- (void)setHistorys:(uint64_t)historys
{
  if (historys)
  {
    objc_storeStrong((historys + 16), a2);
  }
}

@end