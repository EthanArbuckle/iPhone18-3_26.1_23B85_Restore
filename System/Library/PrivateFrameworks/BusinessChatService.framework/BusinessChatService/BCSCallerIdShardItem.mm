@interface BCSCallerIdShardItem
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIndex:(BOOL)index;
- (void)setHasTtl:(BOOL)ttl;
- (void)writeTo:(id)to;
@end

@implementation BCSCallerIdShardItem

- (void)setHasIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTtl:(BOOL)ttl
{
  if (ttl)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSCallerIdShardItem;
  v4 = [(BCSCallerIdShardItem *)&v8 description];
  dictionaryRepresentation = [(BCSCallerIdShardItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_index];
    [dictionary setObject:v8 forKey:@"index"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_count];
  [dictionary setObject:v9 forKey:@"count"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_ttl];
    [dictionary setObject:v5 forKey:@"ttl"];
  }

LABEL_5:
  filter = self->_filter;
  if (filter)
  {
    [dictionary setObject:filter forKey:@"filter"];
  }

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
        goto LABEL_66;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v40 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v40 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v40 & 0x7F) << v6;
        if ((v40 & 0x80) == 0)
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
        goto LABEL_66;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 2)
      {
        break;
      }

      if (v14 == 3)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *&self->_has |= 4u;
        while (1)
        {
          v41 = 0;
          v34 = [from position] + 1;
          if (v34 >= [from position] && (v35 = objc_msgSend(from, "position") + 1, v35 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v41 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v33 |= (v41 & 0x7F) << v31;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_63;
          }
        }

        if ([from hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v33;
        }

LABEL_63:
        v37 = 24;
LABEL_64:
        *(&self->super.super.isa + v37) = v21;
        goto LABEL_65;
      }

      if (v14 != 4)
      {
LABEL_32:
        v24 = PBReaderSkipValueWithTag();
        if (!v24)
        {
          return v24;
        }

        goto LABEL_65;
      }

      v22 = PBReaderReadData();
      filter = self->_filter;
      self->_filter = v22;

LABEL_65:
      position2 = [from position];
      if (position2 >= [from length])
      {
        goto LABEL_66;
      }
    }

    if (v14 == 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      *&self->_has |= 2u;
      while (1)
      {
        v43 = 0;
        v28 = [from position] + 1;
        if (v28 >= [from position] && (v29 = objc_msgSend(from, "position") + 1, v29 <= objc_msgSend(from, "length")))
        {
          data3 = [from data];
          [data3 getBytes:&v43 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v27 |= (v43 & 0x7F) << v25;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v12 = v26++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_59;
        }
      }

      if ([from hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v27;
      }

LABEL_59:
      v37 = 16;
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_32;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      *&self->_has |= 1u;
      while (1)
      {
        v42 = 0;
        v18 = [from position] + 1;
        if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
        {
          data4 = [from data];
          [data4 getBytes:&v42 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v17 |= (v42 & 0x7F) << v15;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v12 = v16++ >= 9;
        if (v12)
        {
          v21 = 0;
          goto LABEL_55;
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

LABEL_55:
      v37 = 8;
    }

    goto LABEL_64;
  }

LABEL_66:
  LOBYTE(v24) = [from hasError] ^ 1;
  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    index = self->_index;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  count = self->_count;
  PBDataWriterWriteInt64Field();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    ttl = self->_ttl;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
  }

LABEL_5:
  if (self->_filter)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_index;
    *(toCopy + 40) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[1] = self->_count;
  *(toCopy + 40) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[3] = self->_ttl;
    *(toCopy + 40) |= 4u;
  }

LABEL_5:
  if (self->_filter)
  {
    v6 = toCopy;
    [toCopy setFilter:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_count;
    *(v5 + 40) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_index;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_ttl;
    *(v5 + 40) |= 4u;
  }

LABEL_5:
  v8 = [(NSData *)self->_filter copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_index != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_count != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_ttl != *(equalCopy + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_19;
  }

  filter = self->_filter;
  if (filter | *(equalCopy + 4))
  {
    v7 = [(NSData *)filter isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSData *)self->_filter hash:v3];
  }

  v6 = 2654435761 * self->_index;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_count;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_ttl;
  return v7 ^ v6 ^ v8 ^ [(NSData *)self->_filter hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) != 0)
  {
    self->_index = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 40);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_count = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 40) & 4) != 0)
  {
LABEL_4:
    self->_ttl = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
  if (*(fromCopy + 4))
  {
    v6 = fromCopy;
    [(BCSCallerIdShardItem *)self setFilter:?];
    fromCopy = v6;
  }
}

@end