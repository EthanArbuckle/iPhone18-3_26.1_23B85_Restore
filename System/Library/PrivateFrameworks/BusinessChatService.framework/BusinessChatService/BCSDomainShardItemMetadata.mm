@interface BCSDomainShardItemMetadata
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

@implementation BCSDomainShardItemMetadata

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
  v8.super_class = BCSDomainShardItemMetadata;
  v4 = [(BCSDomainShardItemMetadata *)&v8 description];
  dictionaryRepresentation = [(BCSDomainShardItemMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_index];
    [dictionary setObject:v7 forKey:@"index"];

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

  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_count];
  [dictionary setObject:v8 forKey:@"count"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_ttl];
    [dictionary setObject:v5 forKey:@"ttl"];
  }

LABEL_5:

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
        v36 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v36 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v36 & 0x7F) << v6;
        if ((v36 & 0x80) == 0)
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
        v29 = 0;
        v30 = 0;
        v17 = 0;
        *&self->_has |= 4u;
        while (1)
        {
          v37 = 0;
          v31 = [from position] + 1;
          if (v31 >= [from position] && (v32 = objc_msgSend(from, "position") + 1, v32 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v37 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v17 |= (v37 & 0x7F) << v29;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v21 = v30++ > 8;
          if (v21)
          {
            v22 = 0;
            v23 = &OBJC_IVAR___BCSDomainShardItemMetadata__ttl;
            goto LABEL_55;
          }
        }

        v23 = &OBJC_IVAR___BCSDomainShardItemMetadata__ttl;
        goto LABEL_52;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *&self->_has |= 2u;
        while (1)
        {
          v39 = 0;
          v18 = [from position] + 1;
          if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
          {
            data3 = [from data];
            [data3 getBytes:&v39 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v17 |= (v39 & 0x7F) << v15;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v21 = v16++ > 8;
          if (v21)
          {
            v22 = 0;
            v23 = &OBJC_IVAR___BCSDomainShardItemMetadata__index;
            goto LABEL_55;
          }
        }

        v23 = &OBJC_IVAR___BCSDomainShardItemMetadata__index;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v24 = 0;
    v25 = 0;
    v17 = 0;
    *&self->_has |= 1u;
    while (1)
    {
      v38 = 0;
      v26 = [from position] + 1;
      if (v26 >= [from position] && (v27 = objc_msgSend(from, "position") + 1, v27 <= objc_msgSend(from, "length")))
      {
        data4 = [from data];
        [data4 getBytes:&v38 range:{objc_msgSend(from, "position"), 1}];

        [from setPosition:{objc_msgSend(from, "position") + 1}];
      }

      else
      {
        [from _setError];
      }

      v17 |= (v38 & 0x7F) << v24;
      if ((v38 & 0x80) == 0)
      {
        break;
      }

      v24 += 7;
      v21 = v25++ > 8;
      if (v21)
      {
        v22 = 0;
        v23 = &OBJC_IVAR___BCSDomainShardItemMetadata__count;
        goto LABEL_55;
      }
    }

    v23 = &OBJC_IVAR___BCSDomainShardItemMetadata__count;
LABEL_52:
    if ([from hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v17;
    }

LABEL_55:
    *(&self->super.super.isa + *v23) = v22;
    goto LABEL_56;
  }

  return [from hasError] ^ 1;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_index;
    *(toCopy + 32) |= 2u;
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
  *(toCopy + 32) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[3] = self->_ttl;
    *(toCopy + 32) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_index;
    *(result + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_count;
  *(result + 32) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 3) = self->_ttl;
  *(result + 32) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_index != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_count != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 32) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_ttl != *(equalCopy + 3))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_index;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_count;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_ttl;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_index = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
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

  else if ((*(fromCopy + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_count = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 32) & 4) != 0)
  {
LABEL_4:
    self->_ttl = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end