@interface NACVolumeControlAvailabilityMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasVolumeControlAvailable:(BOOL)available;
- (void)writeTo:(id)to;
@end

@implementation NACVolumeControlAvailabilityMessage

- (void)setHasVolumeControlAvailable:(BOOL)available
{
  if (available)
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
  v8.super_class = NACVolumeControlAvailabilityMessage;
  v4 = [(NACVolumeControlAvailabilityMessage *)&v8 description];
  dictionaryRepresentation = [(NACVolumeControlAvailabilityMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_volumeControlAvailable];
    [dictionary setObject:v4 forKey:@"volumeControlAvailable"];
  }

  category = self->_category;
  if (category)
  {
    [dictionary setObject:category forKey:@"category"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_originIdentifier];
    [dictionary setObject:v6 forKey:@"originIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    volumeControlAvailable = self->_volumeControlAvailable;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[20] = self->_volumeControlAvailable;
    toCopy[24] |= 2u;
  }

  if (self->_category)
  {
    v5 = toCopy;
    [toCopy setCategory:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_originIdentifier;
    toCopy[24] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_volumeControlAvailable;
    *(v5 + 24) |= 2u;
  }

  v7 = [(NSString *)self->_category copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_originIdentifier;
    *(v6 + 24) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0)
    {
      goto LABEL_12;
    }

    v10 = *(equalCopy + 20);
    if (self->_volumeControlAvailable)
    {
      if ((*(equalCopy + 20) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(equalCopy + 20))
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_12;
  }

  category = self->_category;
  if (category | *(equalCopy + 1))
  {
    if (![(NSString *)category isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 24) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_originIdentifier == *(equalCopy + 4))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_volumeControlAvailable;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_category hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_originIdentifier;
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
  if ((*(fromCopy + 24) & 2) != 0)
  {
    self->_volumeControlAvailable = *(fromCopy + 20);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(NACVolumeControlAvailabilityMessage *)self setCategory:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 24))
  {
    self->_originIdentifier = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

@end