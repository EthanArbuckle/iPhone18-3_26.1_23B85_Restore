@interface NPKProtoSecureElementSetNewAuthRandomResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoSecureElementSetNewAuthRandomResponse

- (void)setHasSuccess:(BOOL)success
{
  if (success)
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
  dictionaryRepresentation = [(NPKProtoSecureElementSetNewAuthRandomResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if ((has & 2) != 0)
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

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_cryptogram)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_challengeResponse)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[24] = self->_pending;
    toCopy[28] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[25] = self->_success;
    toCopy[28] |= 2u;
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v8 = [(NSData *)self->_cryptogram copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(NSData *)self->_challengeResponse copyWithZone:zone];
  v11 = v6[1];
  v6[1] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_22;
    }

    v9 = *(equalCopy + 24);
    if (self->_pending)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_22;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) != 0)
    {
      v10 = *(equalCopy + 25);
      if (self->_success)
      {
        if (*(equalCopy + 25))
        {
          goto LABEL_6;
        }
      }

      else if ((*(equalCopy + 25) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  cryptogram = self->_cryptogram;
  if (cryptogram | *(equalCopy + 2) && ![(NSData *)cryptogram isEqual:?])
  {
    goto LABEL_22;
  }

  challengeResponse = self->_challengeResponse;
  if (challengeResponse | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[28];
  if (v5)
  {
    self->_pending = fromCopy[24];
    *&self->_has |= 1u;
    v5 = fromCopy[28];
  }

  if ((v5 & 2) != 0)
  {
    self->_success = fromCopy[25];
    *&self->_has |= 2u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NPKProtoSecureElementSetNewAuthRandomResponse *)self setCryptogram:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoSecureElementSetNewAuthRandomResponse *)self setChallengeResponse:?];
    fromCopy = v6;
  }
}

@end