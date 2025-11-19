@interface _MRCryptoPairingMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsRetrying:(BOOL)a3;
- (void)setHasIsUsingSystemPairing:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRCryptoPairingMessageProtobuf

- (void)setHasStatus:(BOOL)a3
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

- (void)setHasIsRetrying:(BOOL)a3
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

- (void)setHasIsUsingSystemPairing:(BOOL)a3
{
  if (a3)
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
  v5 = [(_MRCryptoPairingMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  pairingData = self->_pairingData;
  if (pairingData)
  {
    [v3 setObject:pairingData forKey:@"pairingData"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_pairingData)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
    v4 = v10;
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
  v4 = v10;
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
  v4 = v10;
  if (*&self->_has)
  {
LABEL_7:
    state = self->_state;
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_pairingData)
  {
    v6 = v4;
    [v4 setPairingData:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 5) = self->_status;
    *(v4 + 28) |= 2u;
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

  *(v4 + 24) = self->_isRetrying;
  *(v4 + 28) |= 4u;
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
  *(v4 + 25) = self->_isUsingSystemPairing;
  *(v4 + 28) |= 8u;
  if (*&self->_has)
  {
LABEL_7:
    *(v4 + 4) = self->_state;
    *(v4 + 28) |= 1u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_pairingData copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  pairingData = self->_pairingData;
  if (pairingData | *(v4 + 1))
  {
    if (![(NSData *)pairingData isEqual:?])
    {
      goto LABEL_28;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_status != *(v4 + 5))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0)
    {
      goto LABEL_28;
    }

    v7 = *(v4 + 24);
    if (self->_isRetrying)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 28) & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_28:
    v6 = 0;
    goto LABEL_29;
  }

  if ((*(v4 + 28) & 8) == 0)
  {
    goto LABEL_28;
  }

  v8 = *(v4 + 25);
  if (self->_isUsingSystemPairing)
  {
    if ((*(v4 + 25) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 25))
  {
    goto LABEL_28;
  }

LABEL_13:
  v6 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_state != *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(_MRCryptoPairingMessageProtobuf *)self setPairingData:?];
    v4 = v6;
  }

  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_status = *(v4 + 5);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
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

  else if ((*(v4 + 28) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_isRetrying = *(v4 + 24);
  *&self->_has |= 4u;
  v5 = *(v4 + 28);
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
  self->_isUsingSystemPairing = *(v4 + 25);
  *&self->_has |= 8u;
  if (*(v4 + 28))
  {
LABEL_7:
    self->_state = *(v4 + 4);
    *&self->_has |= 1u;
  }

LABEL_8:
}

@end