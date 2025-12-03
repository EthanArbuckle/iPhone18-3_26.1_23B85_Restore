@interface NACVolumeWarningMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasVolumeWarningEnabled:(BOOL)enabled;
- (void)setHasVolumeWarningState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation NACVolumeWarningMessage

- (void)setHasVolumeWarningEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVolumeWarningState:(BOOL)state
{
  if (state)
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
  v8.super_class = NACVolumeWarningMessage;
  v4 = [(NACVolumeWarningMessage *)&v8 description];
  dictionaryRepresentation = [(NACVolumeWarningMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_volumeWarningEnabled];
    [dictionary setObject:v4 forKey:@"volumeWarningEnabled"];
  }

  category = self->_category;
  if (category)
  {
    [dictionary setObject:category forKey:@"category"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_originIdentifier];
    [dictionary setObject:v7 forKey:@"originIdentifier"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_volumeWarningState];
    [dictionary setObject:v8 forKey:@"volumeWarningState"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    volumeWarningEnabled = self->_volumeWarningEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    volumeWarningState = self->_volumeWarningState;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[24] = self->_volumeWarningEnabled;
    toCopy[28] |= 4u;
  }

  if (self->_category)
  {
    v6 = toCopy;
    [toCopy setCategory:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 4) = self->_originIdentifier;
    toCopy[28] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 5) = self->_volumeWarningState;
    toCopy[28] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_volumeWarningEnabled;
    *(v5 + 28) |= 4u;
  }

  v7 = [(NSString *)self->_category copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  has = self->_has;
  if (has)
  {
    *(v6 + 16) = self->_originIdentifier;
    *(v6 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 20) = self->_volumeWarningState;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0)
    {
      goto LABEL_21;
    }

    v8 = *(equalCopy + 24);
    if (self->_volumeWarningEnabled)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_21;
  }

  category = self->_category;
  if (!(category | *(equalCopy + 1)))
  {
    goto LABEL_7;
  }

  if (![(NSString *)category isEqual:?])
  {
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  has = self->_has;
LABEL_7:
  if (has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_originIdentifier != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_21;
  }

  v9 = (*(equalCopy + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_volumeWarningState != *(equalCopy + 5))
    {
      goto LABEL_21;
    }

    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_volumeWarningEnabled;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_category hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_originIdentifier;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_volumeWarningState;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 28) & 4) != 0)
  {
    self->_volumeWarningEnabled = *(fromCopy + 24);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(NACVolumeWarningMessage *)self setCategory:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_originIdentifier = *(fromCopy + 4);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
  }

  if ((v5 & 2) != 0)
  {
    self->_volumeWarningState = *(fromCopy + 5);
    *&self->_has |= 2u;
  }
}

@end