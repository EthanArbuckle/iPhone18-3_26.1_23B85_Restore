@interface NPKProtoAssertionRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAssertionType:(id)type;
- (int)assertionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPending:(BOOL)pending;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoAssertionRequest

- (int)assertionType
{
  if (*&self->_has)
  {
    return self->_assertionType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsAssertionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Provisioning"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ProvisioningRequiringUpgradedPasscode"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

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
  v8.super_class = NPKProtoAssertionRequest;
  v4 = [(NPKProtoAssertionRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoAssertionRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestUUIDString = self->_requestUUIDString;
  if (requestUUIDString)
  {
    [dictionary setObject:requestUUIDString forKey:@"requestUUIDString"];
  }

  has = self->_has;
  if (has)
  {
    assertionType = self->_assertionType;
    if (assertionType >= 3)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_assertionType];
    }

    else
    {
      v8 = off_279944EB8[assertionType];
    }

    [v4 setObject:v8 forKey:@"assertionType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v4 setObject:v9 forKey:@"pending"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestUUIDString)
  {
    [NPKProtoAssertionRequest writeTo:];
  }

  v8 = toCopy;
  PBDataWriterWriteStringField();
  has = self->_has;
  if (has)
  {
    assertionType = self->_assertionType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestUUIDString:self->_requestUUIDString];
  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_assertionType;
    *(toCopy + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 24) = self->_pending;
    *(toCopy + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestUUIDString copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_assertionType;
    *(v5 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_pending;
    *(v5 + 28) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  requestUUIDString = self->_requestUUIDString;
  if (requestUUIDString | *(equalCopy + 2))
  {
    if (![(NSString *)requestUUIDString isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_assertionType != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_11;
  }

  v6 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_12;
    }

    if (self->_pending)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_11;
    }

    v6 = 1;
  }

LABEL_12:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestUUIDString hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_assertionType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_pending;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(NPKProtoAssertionRequest *)self setRequestUUIDString:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_assertionType = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
  }

  if ((v5 & 2) != 0)
  {
    self->_pending = *(fromCopy + 24);
    *&self->_has |= 2u;
  }
}

@end