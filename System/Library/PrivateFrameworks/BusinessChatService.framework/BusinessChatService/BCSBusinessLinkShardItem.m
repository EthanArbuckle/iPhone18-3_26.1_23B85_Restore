@interface BCSBusinessLinkShardItem
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

@implementation BCSBusinessLinkShardItem

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
  v8.super_class = BCSBusinessLinkShardItem;
  v4 = [(BCSBusinessLinkShardItem *)&v8 description];
  v5 = [(BCSBusinessLinkShardItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_index];
    [v3 setObject:v8 forKey:@"index"];

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
  [v3 setObject:v9 forKey:@"count"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_ttl];
    [v3 setObject:v5 forKey:@"ttl"];
  }

LABEL_5:
  filter = self->_filter;
  if (filter)
  {
    [v3 setObject:filter forKey:@"filter"];
  }

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
        goto LABEL_66;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v40 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v40 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
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
          v34 = [a3 position] + 1;
          if (v34 >= [a3 position] && (v35 = objc_msgSend(a3, "position") + 1, v35 <= objc_msgSend(a3, "length")))
          {
            v36 = [a3 data];
            [v36 getBytes:&v41 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
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

        if ([a3 hasError])
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
      v38 = [a3 position];
      if (v38 >= [a3 length])
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
        v28 = [a3 position] + 1;
        if (v28 >= [a3 position] && (v29 = objc_msgSend(a3, "position") + 1, v29 <= objc_msgSend(a3, "length")))
        {
          v30 = [a3 data];
          [v30 getBytes:&v43 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      if ([a3 hasError])
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
        v18 = [a3 position] + 1;
        if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
        {
          v20 = [a3 data];
          [v20 getBytes:&v42 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      if ([a3 hasError])
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
  LOBYTE(v24) = [a3 hasError] ^ 1;
  return v24;
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
  if (self->_filter)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_index;
    *(v4 + 40) |= 2u;
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
  *(v4 + 40) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[3] = self->_ttl;
    *(v4 + 40) |= 4u;
  }

LABEL_5:
  if (self->_filter)
  {
    v6 = v4;
    [v4 setFilter:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(NSData *)self->_filter copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_index != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_count != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_ttl != *(v4 + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_19;
  }

  filter = self->_filter;
  if (filter | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_index = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
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

  else if ((*(v4 + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_count = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 40) & 4) != 0)
  {
LABEL_4:
    self->_ttl = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_5:
  if (*(v4 + 4))
  {
    v6 = v4;
    [(BCSBusinessLinkShardItem *)self setFilter:?];
    v4 = v6;
  }
}

@end