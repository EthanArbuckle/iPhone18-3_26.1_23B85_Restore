@interface NPKProtoPassSyncStateChangeProcessed
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFullPassRequired:(BOOL)required;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPassSyncStateChangeProcessed

- (void)setHasFullPassRequired:(BOOL)required
{
  if (required)
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
  v8.super_class = NPKProtoPassSyncStateChangeProcessed;
  v4 = [(NPKProtoPassSyncStateChangeProcessed *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPassSyncStateChangeProcessed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  acceptedChangeUUID = self->_acceptedChangeUUID;
  if (acceptedChangeUUID)
  {
    [dictionary setObject:acceptedChangeUUID forKey:@"acceptedChangeUUID"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_changeAccepted];
    [v4 setObject:v7 forKey:@"changeAccepted"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_fullPassRequired];
    [v4 setObject:v8 forKey:@"fullPassRequired"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_acceptedChangeUUID)
  {
    [NPKProtoPassSyncStateChangeProcessed writeTo:];
  }

  v8 = toCopy;
  PBDataWriterWriteDataField();
  has = self->_has;
  if (has)
  {
    changeAccepted = self->_changeAccepted;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    fullPassRequired = self->_fullPassRequired;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setAcceptedChangeUUID:self->_acceptedChangeUUID];
  has = self->_has;
  if (has)
  {
    toCopy[16] = self->_changeAccepted;
    toCopy[20] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[17] = self->_fullPassRequired;
    toCopy[20] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_acceptedChangeUUID copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_changeAccepted;
    *(v5 + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 17) = self->_fullPassRequired;
    *(v5 + 20) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  acceptedChangeUUID = self->_acceptedChangeUUID;
  if (acceptedChangeUUID | *(equalCopy + 1))
  {
    if (![(NSData *)acceptedChangeUUID isEqual:?])
    {
      goto LABEL_12;
    }
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(equalCopy + 16);
  if (self->_changeAccepted)
  {
    if ((*(equalCopy + 16) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 16))
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) != 0)
    {
      if (self->_fullPassRequired)
      {
        if (*(equalCopy + 17))
        {
          goto LABEL_20;
        }
      }

      else if (!*(equalCopy + 17))
      {
LABEL_20:
        v6 = 1;
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

LABEL_13:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_acceptedChangeUUID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_changeAccepted;
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
  v5 = 2654435761 * self->_fullPassRequired;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(NPKProtoPassSyncStateChangeProcessed *)self setAcceptedChangeUUID:?];
    fromCopy = v6;
  }

  v5 = fromCopy[20];
  if (v5)
  {
    self->_changeAccepted = fromCopy[16];
    *&self->_has |= 1u;
    v5 = fromCopy[20];
  }

  if ((v5 & 2) != 0)
  {
    self->_fullPassRequired = fromCopy[17];
    *&self->_has |= 2u;
  }
}

@end