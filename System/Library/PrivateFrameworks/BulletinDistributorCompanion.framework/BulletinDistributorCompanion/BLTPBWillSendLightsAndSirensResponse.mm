@interface BLTPBWillSendLightsAndSirensResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWillSend:(BOOL)send;
- (void)writeTo:(id)to;
@end

@implementation BLTPBWillSendLightsAndSirensResponse

- (void)setHasWillSend:(BOOL)send
{
  if (send)
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
  v8.super_class = BLTPBWillSendLightsAndSirensResponse;
  v4 = [(BLTPBWillSendLightsAndSirensResponse *)&v8 description];
  dictionaryRepresentation = [(BLTPBWillSendLightsAndSirensResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_willSend];
    [dictionary setObject:v5 forKey:@"willSend"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_additionalWait];
    [dictionary setObject:v6 forKey:@"additionalWait"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    willSend = self->_willSend;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    additionalWait = self->_additionalWait;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[12] = self->_willSend;
    toCopy[16] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 2) = self->_additionalWait;
    toCopy[16] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 12) = self->_willSend;
    *(result + 16) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 2) = self->_additionalWait;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(equalCopy + 12);
    if (self->_willSend)
    {
      if ((*(equalCopy + 12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(equalCopy + 12))
    {
      goto LABEL_9;
    }
  }

  else if ((*(equalCopy + 16) & 2) != 0)
  {
    goto LABEL_9;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) != 0 && self->_additionalWait == *(equalCopy + 2))
    {
      v5 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_willSend;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_additionalWait;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if ((v5 & 2) != 0)
  {
    self->_willSend = *(fromCopy + 12);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 16);
  }

  if (v5)
  {
    self->_additionalWait = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end