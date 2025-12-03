@interface NPKProtoRemoteDevicePasscodeStateResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsPasscodeLocked:(BOOL)locked;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemoteDevicePasscodeStateResponse

- (void)setHasIsPasscodeLocked:(BOOL)locked
{
  if (locked)
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
  v8.super_class = NPKProtoRemoteDevicePasscodeStateResponse;
  v4 = [(NPKProtoRemoteDevicePasscodeStateResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRemoteDevicePasscodeStateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasPasscodeSet];
    [dictionary setObject:v5 forKey:@"hasPasscodeSet"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPasscodeLocked];
    [dictionary setObject:v6 forKey:@"isPasscodeLocked"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
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
    hasPasscodeSet = self->_hasPasscodeSet;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isPasscodeLocked = self->_isPasscodeLocked;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_errorData)
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
    toCopy[16] = self->_hasPasscodeSet;
    toCopy[20] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[17] = self->_isPasscodeLocked;
    toCopy[20] |= 2u;
  }

  if (self->_errorData)
  {
    v6 = toCopy;
    [toCopy setErrorData:?];
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
    v5[16] = self->_hasPasscodeSet;
    v5[20] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[17] = self->_isPasscodeLocked;
    v5[20] |= 2u;
  }

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(equalCopy + 20);
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
      goto LABEL_20;
    }

    v8 = *(equalCopy + 16);
    if (self->_hasPasscodeSet)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 20))
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 20) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*(equalCopy + 20) & 2) == 0)
  {
    goto LABEL_20;
  }

  v9 = *(equalCopy + 17);
  if (self->_isPasscodeLocked)
  {
    if ((*(equalCopy + 17) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 17))
  {
    goto LABEL_20;
  }

LABEL_6:
  errorData = self->_errorData;
  if (errorData | *(equalCopy + 1))
  {
    v7 = [(NSData *)errorData isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_hasPasscodeSet;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSData *)self->_errorData hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_isPasscodeLocked;
  return v7 ^ v6 ^ [(NSData *)self->_errorData hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[20];
  if (v5)
  {
    self->_hasPasscodeSet = fromCopy[16];
    *&self->_has |= 1u;
    v5 = fromCopy[20];
  }

  if ((v5 & 2) != 0)
  {
    self->_isPasscodeLocked = fromCopy[17];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(NPKProtoRemoteDevicePasscodeStateResponse *)self setErrorData:?];
    fromCopy = v6;
  }
}

@end