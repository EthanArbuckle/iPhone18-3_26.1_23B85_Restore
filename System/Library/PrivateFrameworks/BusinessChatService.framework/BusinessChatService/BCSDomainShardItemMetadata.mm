@interface BCSDomainShardItemMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIndex:(BOOL)a3;
- (void)setHasTtl:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSDomainShardItemMetadata

- (void)setHasIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTtl:(BOOL)a3
{
  if (a3)
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
  v5 = [(BCSDomainShardItemMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_index];
    [v3 setObject:v7 forKey:@"index"];

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
  [v3 setObject:v8 forKey:@"count"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_ttl];
    [v3 setObject:v5 forKey:@"ttl"];
  }

LABEL_5:

  return v3;
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    while (1)
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v36 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v36 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
          v31 = [a3 position] + 1;
          if (v31 >= [a3 position] && (v32 = objc_msgSend(a3, "position") + 1, v32 <= objc_msgSend(a3, "length")))
          {
            v33 = [a3 data];
            [v33 getBytes:&v37 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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
          v18 = [a3 position] + 1;
          if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
          {
            v20 = [a3 data];
            [v20 getBytes:&v39 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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
      v34 = [a3 position];
      if (v34 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v24 = 0;
    v25 = 0;
    v17 = 0;
    *&self->_has |= 1u;
    while (1)
    {
      v38 = 0;
      v26 = [a3 position] + 1;
      if (v26 >= [a3 position] && (v27 = objc_msgSend(a3, "position") + 1, v27 <= objc_msgSend(a3, "length")))
      {
        v28 = [a3 data];
        [v28 getBytes:&v38 range:{objc_msgSend(a3, "position"), 1}];

        [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
      }

      else
      {
        [a3 _setError];
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
    if ([a3 hasError])
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

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    index = self->_index;
    PBDataWriterWriteInt64Field();
    v4 = v9;
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
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    ttl = self->_ttl;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_index;
    *(v4 + 32) |= 2u;
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

  v4[1] = self->_count;
  *(v4 + 32) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[3] = self->_ttl;
    *(v4 + 32) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_index != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_count != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 32) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_ttl != *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 32);
  if ((v5 & 2) != 0)
  {
    self->_index = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 32);
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

  else if ((*(v4 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_count = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 32) & 4) != 0)
  {
LABEL_4:
    self->_ttl = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end