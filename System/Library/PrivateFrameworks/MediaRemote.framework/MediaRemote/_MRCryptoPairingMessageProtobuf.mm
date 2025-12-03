@interface _MRCryptoPairingMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsRetrying:(BOOL)retrying;
- (void)setHasIsUsingSystemPairing:(BOOL)pairing;
- (void)setHasStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation _MRCryptoPairingMessageProtobuf

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsRetrying:(BOOL)retrying
{
  if (retrying)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsUsingSystemPairing:(BOOL)pairing
{
  if (pairing)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRCryptoPairingMessageProtobuf;
  v4 = [(_MRCryptoPairingMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRCryptoPairingMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  pairingData = self->_pairingData;
  if (pairingData)
  {
    [dictionary setObject:pairingData forKey:@"pairingData"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_status];
    [v4 setObject:v9 forKey:@"status"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRetrying];
  [v4 setObject:v10 forKey:@"isRetrying"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUsingSystemPairing];
  [v4 setObject:v11 forKey:@"isUsingSystemPairing"];

  if (*&self->_has)
  {
LABEL_7:
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_state];
    [v4 setObject:v7 forKey:@"state"];
  }

LABEL_8:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_pairingData)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  isRetrying = self->_isRetrying;
  PBDataWriterWriteBOOLField();
  toCopy = v10;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  isUsingSystemPairing = self->_isUsingSystemPairing;
  PBDataWriterWriteBOOLField();
  toCopy = v10;
  if (*&self->_has)
  {
LABEL_7:
    state = self->_state;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_pairingData)
  {
    v6 = toCopy;
    [toCopy setPairingData:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 5) = self->_status;
    *(toCopy + 28) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 24) = self->_isRetrying;
  *(toCopy + 28) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(toCopy + 25) = self->_isUsingSystemPairing;
  *(toCopy + 28) |= 8u;
  if (*&self->_has)
  {
LABEL_7:
    *(toCopy + 4) = self->_state;
    *(toCopy + 28) |= 1u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_pairingData copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_status;
    *(v5 + 28) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 25) = self->_isUsingSystemPairing;
      *(v5 + 28) |= 8u;
      if ((*&self->_has & 1) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_isRetrying;
  *(v5 + 28) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    *(v5 + 16) = self->_state;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  pairingData = self->_pairingData;
  if (pairingData | *(equalCopy + 1))
  {
    if (![(NSData *)pairingData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_status != *(equalCopy + 5))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0)
    {
      goto LABEL_28;
    }

    v7 = *(equalCopy + 24);
    if (self->_isRetrying)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 28) & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_28:
    v6 = 0;
    goto LABEL_29;
  }

  if ((*(equalCopy + 28) & 8) == 0)
  {
    goto LABEL_28;
  }

  v8 = *(equalCopy + 25);
  if (self->_isUsingSystemPairing)
  {
    if ((*(equalCopy + 25) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 25))
  {
    goto LABEL_28;
  }

LABEL_13:
  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_state != *(equalCopy + 4))
    {
      goto LABEL_28;
    }

    v6 = 1;
  }

LABEL_29:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_pairingData hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_status;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_isRetrying;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_isUsingSystemPairing;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_state;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(_MRCryptoPairingMessageProtobuf *)self setPairingData:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_status = *(fromCopy + 5);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(fromCopy + 28) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_isRetrying = *(fromCopy + 24);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 28);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  self->_isUsingSystemPairing = *(fromCopy + 25);
  *&self->_has |= 8u;
  if (*(fromCopy + 28))
  {
LABEL_7:
    self->_state = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

LABEL_8:
}

@end