@interface NPKProtoSecureElementGetPairingInfoResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPending:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoSecureElementGetPairingInfoResponse

- (void)setHasPending:(BOOL)a3
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

- (void)setHasSuccess:(BOOL)a3
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
  v8.super_class = NPKProtoSecureElementGetPairingInfoResponse;
  v4 = [(NPKProtoSecureElementGetPairingInfoResponse *)&v8 description];
  v5 = [(NPKProtoSecureElementGetPairingInfoResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if ((has & 4) != 0)
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

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_authRandomSet];
    [v3 setObject:v9 forKey:@"authRandomSet"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  if (self->_cryptogram)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_challengeResponse)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    authRandomSet = self->_authRandomSet;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[25] = self->_pending;
    v4[28] |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v4[26] = self->_success;
    v4[28] |= 4u;
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

  if (*&self->_has)
  {
    v4[24] = self->_authRandomSet;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5[25] = self->_pending;
    v5[28] |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v5[26] = self->_success;
    v5[28] |= 4u;
  }

  v8 = [(NSData *)self->_cryptogram copyWithZone:a3];
  v9 = *(v6 + 2);
  *(v6 + 2) = v8;

  v10 = [(NSData *)self->_challengeResponse copyWithZone:a3];
  v11 = *(v6 + 1);
  *(v6 + 1) = v10;

  if (*&self->_has)
  {
    v6[24] = self->_authRandomSet;
    v6[28] |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(v4 + 28);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_26;
    }

    v9 = *(v4 + 25);
    if (self->_pending)
    {
      if ((*(v4 + 25) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(v4 + 25))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 28) & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  if ((*(v4 + 28) & 4) == 0)
  {
    goto LABEL_26;
  }

  v10 = *(v4 + 26);
  if (self->_success)
  {
    if ((*(v4 + 26) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 26))
  {
    goto LABEL_26;
  }

LABEL_6:
  cryptogram = self->_cryptogram;
  if (cryptogram | *(v4 + 2) && ![(NSData *)cryptogram isEqual:?])
  {
    goto LABEL_26;
  }

  challengeResponse = self->_challengeResponse;
  if (challengeResponse | *(v4 + 1))
  {
    if (![(NSData *)challengeResponse isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v8 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if (*(v4 + 28))
    {
      if (self->_authRandomSet)
      {
        if (*(v4 + 24))
        {
          goto LABEL_29;
        }
      }

      else if (!*(v4 + 24))
      {
LABEL_29:
        v8 = 1;
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

LABEL_27:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_pending;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_success;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_cryptogram hash];
  v6 = [(NSData *)self->_challengeResponse hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_authRandomSet;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[28];
  if ((v5 & 2) != 0)
  {
    self->_pending = v4[25];
    *&self->_has |= 2u;
    v5 = v4[28];
  }

  if ((v5 & 4) != 0)
  {
    self->_success = v4[26];
    *&self->_has |= 4u;
  }

  v6 = v4;
  if (*(v4 + 2))
  {
    [(NPKProtoSecureElementGetPairingInfoResponse *)self setCryptogram:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(NPKProtoSecureElementGetPairingInfoResponse *)self setChallengeResponse:?];
    v4 = v6;
  }

  if (v4[28])
  {
    self->_authRandomSet = v4[24];
    *&self->_has |= 1u;
  }
}

@end