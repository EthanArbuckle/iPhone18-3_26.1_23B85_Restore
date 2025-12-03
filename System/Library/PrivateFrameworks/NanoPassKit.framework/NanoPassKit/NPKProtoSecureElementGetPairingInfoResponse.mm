@interface NPKProtoSecureElementGetPairingInfoResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPending:(BOOL)pending;
- (void)setHasSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoSecureElementGetPairingInfoResponse

- (void)setHasPending:(BOOL)pending
{
  if (pending)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSuccess:(BOOL)success
{
  if (success)
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
  dictionaryRepresentation = [(NPKProtoSecureElementGetPairingInfoResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [dictionary setObject:v6 forKey:@"success"];
  }

  cryptogram = self->_cryptogram;
  if (cryptogram)
  {
    [dictionary setObject:cryptogram forKey:@"cryptogram"];
  }

  challengeResponse = self->_challengeResponse;
  if (challengeResponse)
  {
    [dictionary setObject:challengeResponse forKey:@"challengeResponse"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_authRandomSet];
    [dictionary setObject:v9 forKey:@"authRandomSet"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[25] = self->_pending;
    toCopy[28] |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[26] = self->_success;
    toCopy[28] |= 4u;
  }

  v6 = toCopy;
  if (self->_cryptogram)
  {
    [toCopy setCryptogram:?];
    toCopy = v6;
  }

  if (self->_challengeResponse)
  {
    [v6 setChallengeResponse:?];
    toCopy = v6;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_authRandomSet;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSData *)self->_cryptogram copyWithZone:zone];
  v9 = *(v6 + 2);
  *(v6 + 2) = v8;

  v10 = [(NSData *)self->_challengeResponse copyWithZone:zone];
  v11 = *(v6 + 1);
  *(v6 + 1) = v10;

  if (*&self->_has)
  {
    v6[24] = self->_authRandomSet;
    v6[28] |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(equalCopy + 28);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_26;
    }

    v9 = *(equalCopy + 25);
    if (self->_pending)
    {
      if ((*(equalCopy + 25) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(equalCopy + 25))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 28) & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  if ((*(equalCopy + 28) & 4) == 0)
  {
    goto LABEL_26;
  }

  v10 = *(equalCopy + 26);
  if (self->_success)
  {
    if ((*(equalCopy + 26) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 26))
  {
    goto LABEL_26;
  }

LABEL_6:
  cryptogram = self->_cryptogram;
  if (cryptogram | *(equalCopy + 2) && ![(NSData *)cryptogram isEqual:?])
  {
    goto LABEL_26;
  }

  challengeResponse = self->_challengeResponse;
  if (challengeResponse | *(equalCopy + 1))
  {
    if (![(NSData *)challengeResponse isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v8 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if (*(equalCopy + 28))
    {
      if (self->_authRandomSet)
      {
        if (*(equalCopy + 24))
        {
          goto LABEL_29;
        }
      }

      else if (!*(equalCopy + 24))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[28];
  if ((v5 & 2) != 0)
  {
    self->_pending = fromCopy[25];
    *&self->_has |= 2u;
    v5 = fromCopy[28];
  }

  if ((v5 & 4) != 0)
  {
    self->_success = fromCopy[26];
    *&self->_has |= 4u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NPKProtoSecureElementGetPairingInfoResponse *)self setCryptogram:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoSecureElementGetPairingInfoResponse *)self setChallengeResponse:?];
    fromCopy = v6;
  }

  if (fromCopy[28])
  {
    self->_authRandomSet = fromCopy[24];
    *&self->_has |= 1u;
  }
}

@end