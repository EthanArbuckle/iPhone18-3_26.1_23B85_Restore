@interface NPKProtoSecureElementSetNewAuthRandomResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoSecureElementSetNewAuthRandomResponse

- (void)setHasSuccess:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSecureElementSetNewAuthRandomResponse;
  v4 = [(NPKProtoSecureElementSetNewAuthRandomResponse *)&v8 description];
  v5 = [(NPKProtoSecureElementSetNewAuthRandomResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [v3 setObject:v6 forKey:@"success"];
  }

  cryptogram = self->_cryptogram;
  if (cryptogram)
  {
    [v3 setObject:cryptogram forKey:@"cryptogram"];
  }

  challengeResponse = self->_challengeResponse;
  if (challengeResponse)
  {
    [v3 setObject:challengeResponse forKey:@"challengeResponse"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_cryptogram)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_challengeResponse)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[24] = self->_pending;
    v4[28] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[25] = self->_success;
    v4[28] |= 2u;
  }

  v6 = v4;
  if (self->_cryptogram)
  {
    [v4 setCryptogram:?];
    v4 = v6;
  }

  if (self->_challengeResponse)
  {
    [v6 setChallengeResponse:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[24] = self->_pending;
    v5[28] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[25] = self->_success;
    v5[28] |= 2u;
  }

  v8 = [(NSData *)self->_cryptogram copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(NSData *)self->_challengeResponse copyWithZone:a3];
  v11 = v6[1];
  v6[1] = v10;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_22;
    }

    v9 = *(v4 + 24);
    if (self->_pending)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) != 0)
    {
      v10 = *(v4 + 25);
      if (self->_success)
      {
        if (*(v4 + 25))
        {
          goto LABEL_6;
        }
      }

      else if ((*(v4 + 25) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  cryptogram = self->_cryptogram;
  if (cryptogram | *(v4 + 2) && ![(NSData *)cryptogram isEqual:?])
  {
    goto LABEL_22;
  }

  challengeResponse = self->_challengeResponse;
  if (challengeResponse | *(v4 + 1))
  {
    v8 = [(NSData *)challengeResponse isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_23:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_pending;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_success;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSData *)self->_cryptogram hash];
  return v5 ^ [(NSData *)self->_challengeResponse hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[28];
  if (v5)
  {
    self->_pending = v4[24];
    *&self->_has |= 1u;
    v5 = v4[28];
  }

  if ((v5 & 2) != 0)
  {
    self->_success = v4[25];
    *&self->_has |= 2u;
  }

  v6 = v4;
  if (*(v4 + 2))
  {
    [(NPKProtoSecureElementSetNewAuthRandomResponse *)self setCryptogram:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(NPKProtoSecureElementSetNewAuthRandomResponse *)self setChallengeResponse:?];
    v4 = v6;
  }
}

@end