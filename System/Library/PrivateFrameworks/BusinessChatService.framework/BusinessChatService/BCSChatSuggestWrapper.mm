@interface BCSChatSuggestWrapper
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSChatSuggestWrapper

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSChatSuggestWrapper;
  v4 = [(BCSChatSuggestWrapper *)&v8 description];
  v5 = [(BCSChatSuggestWrapper *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  phone = self->_phone;
  if (phone)
  {
    [v3 setObject:phone forKey:@"phone"];
  }

  message = self->_message;
  if (message)
  {
    v7 = [(BCSChatSuggestMessage *)message dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"message"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_modTime];
    [v4 setObject:v8 forKey:@"mod_time"];
  }

  return v4;
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v27 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v27[0] & 0x7F) << v6;
        if ((v27[0] & 0x80) == 0)
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
        break;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v21 = [a3 position] + 1;
          if (v21 >= [a3 position] && (v22 = objc_msgSend(a3, "position") + 1, v22 <= objc_msgSend(a3, "length")))
          {
            v23 = [a3 data];
            [v23 getBytes:v27 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v20 |= (v27[0] & 0x7F) << v18;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v12 = v19++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_38;
          }
        }

        if ([a3 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_38:
        self->_modTime = v24;
      }

      else if (v14 == 2)
      {
        v17 = objc_alloc_init(BCSChatSuggestMessage);
        objc_storeStrong(&self->_message, v17);
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !BCSChatSuggestMessageReadFrom(v17, a3))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v14 == 1)
      {
        v15 = PBReaderReadString();
        phone = self->_phone;
        self->_phone = v15;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a3 position];
    }

    while (v25 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_phone)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_message)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    modTime = self->_modTime;
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_phone)
  {
    [v4 setPhone:?];
    v4 = v5;
  }

  if (self->_message)
  {
    [v5 setMessage:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_modTime;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_phone copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(BCSChatSuggestMessage *)self->_message copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_modTime;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  phone = self->_phone;
  if (phone | *(v4 + 3))
  {
    if (![(NSString *)phone isEqual:?])
    {
      goto LABEL_10;
    }
  }

  message = self->_message;
  if (message | *(v4 + 2))
  {
    if (![(BCSChatSuggestMessage *)message isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_modTime == *(v4 + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_phone hash];
  v4 = [(BCSChatSuggestMessage *)self->_message hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_modTime;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[3])
  {
    [(BCSChatSuggestWrapper *)self setPhone:?];
    v4 = v7;
  }

  message = self->_message;
  v6 = v4[2];
  if (message)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(BCSChatSuggestMessage *)message mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(BCSChatSuggestWrapper *)self setMessage:?];
  }

  v4 = v7;
LABEL_9:
  if (v4[4])
  {
    self->_modTime = v4[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end