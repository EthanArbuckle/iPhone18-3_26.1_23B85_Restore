@interface BCSBusinessLinkWrapper
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCSBusinessLinkWrapper

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSBusinessLinkWrapper;
  v4 = [(BCSBusinessLinkWrapper *)&v8 description];
  dictionaryRepresentation = [(BCSBusinessLinkWrapper *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  orgId = self->_orgId;
  if (orgId)
  {
    [dictionary setObject:orgId forKey:@"orgId"];
  }

  message = self->_message;
  if (message)
  {
    dictionaryRepresentation = [(BCSBusinessLinkMessage *)message dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"message"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_modTime];
    [v4 setObject:v8 forKey:@"mod_time"];
  }

  return v4;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v27 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
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
          v21 = [from position] + 1;
          if (v21 >= [from position] && (v22 = objc_msgSend(from, "position") + 1, v22 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:v27 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
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

        if ([from hasError])
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
        v17 = objc_alloc_init(BCSBusinessLinkMessage);
        objc_storeStrong(&self->_message, v17);
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || !BCSBusinessLinkMessageReadFrom(v17, from))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v14 == 1)
      {
        v15 = PBReaderReadString();
        orgId = self->_orgId;
        self->_orgId = v15;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_orgId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_message)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    modTime = self->_modTime;
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_orgId)
  {
    [toCopy setOrgId:?];
    toCopy = v5;
  }

  if (self->_message)
  {
    [v5 setMessage:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_modTime;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_orgId copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(BCSBusinessLinkMessage *)self->_message copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_modTime;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  orgId = self->_orgId;
  if (orgId | *(equalCopy + 3))
  {
    if (![(NSString *)orgId isEqual:?])
    {
      goto LABEL_10;
    }
  }

  message = self->_message;
  if (message | *(equalCopy + 2))
  {
    if (![(BCSBusinessLinkMessage *)message isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_modTime == *(equalCopy + 1))
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
  v3 = [(NSString *)self->_orgId hash];
  v4 = [(BCSBusinessLinkMessage *)self->_message hash];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[3])
  {
    [(BCSBusinessLinkWrapper *)self setOrgId:?];
    fromCopy = v7;
  }

  message = self->_message;
  v6 = fromCopy[2];
  if (message)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    message = [(BCSBusinessLinkMessage *)message mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    message = [(BCSBusinessLinkWrapper *)self setMessage:?];
  }

  fromCopy = v7;
LABEL_9:
  if (fromCopy[4])
  {
    self->_modTime = fromCopy[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8](message, fromCopy);
}

@end