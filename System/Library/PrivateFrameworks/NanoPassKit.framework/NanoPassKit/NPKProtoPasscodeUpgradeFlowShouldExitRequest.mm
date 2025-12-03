@interface NPKProtoPasscodeUpgradeFlowShouldExitRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPending:(BOOL)pending;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPasscodeUpgradeFlowShouldExitRequest

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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPasscodeUpgradeFlowShouldExitRequest;
  v4 = [(NPKProtoPasscodeUpgradeFlowShouldExitRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPasscodeUpgradeFlowShouldExitRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_passcodeChanged];
    [dictionary setObject:v4 forKey:@"passcodeChanged"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v6 forKey:@"pending"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    passcodeChanged = self->_passcodeChanged;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[16] = self->_passcodeChanged;
    toCopy[20] |= 1u;
  }

  if (self->_errorData)
  {
    v5 = toCopy;
    [toCopy setErrorData:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[17] = self->_pending;
    toCopy[20] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_passcodeChanged;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSData *)self->_errorData copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 17) = self->_pending;
    *(v6 + 20) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  has = self->_has;
  v6 = *(equalCopy + 20);
  if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(equalCopy + 16);
  if (self->_passcodeChanged)
  {
    if ((*(equalCopy + 16) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_3:
    if (v6)
    {
      goto LABEL_13;
    }
  }

  errorData = self->_errorData;
  if (!(errorData | *(equalCopy + 1)))
  {
    goto LABEL_7;
  }

  if (![(NSData *)errorData isEqual:?])
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  has = self->_has;
LABEL_7:
  v8 = (*(equalCopy + 20) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) != 0)
    {
      if (self->_pending)
      {
        if (*(equalCopy + 17))
        {
          goto LABEL_19;
        }
      }

      else if (!*(equalCopy + 17))
      {
LABEL_19:
        v8 = 1;
        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_passcodeChanged;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_errorData hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_pending;
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
  if (fromCopy[20])
  {
    self->_passcodeChanged = fromCopy[16];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(NPKProtoPasscodeUpgradeFlowShouldExitRequest *)self setErrorData:?];
    fromCopy = v5;
  }

  if ((fromCopy[20] & 2) != 0)
  {
    self->_pending = fromCopy[17];
    *&self->_has |= 2u;
  }
}

@end