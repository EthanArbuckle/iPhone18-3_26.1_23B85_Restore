@interface NACEUVolumeLimitMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOriginIdentifier:(BOOL)identifier;
- (void)writeTo:(id)to;
@end

@implementation NACEUVolumeLimitMessage

- (void)setHasOriginIdentifier:(BOOL)identifier
{
  if (identifier)
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
  v8.super_class = NACEUVolumeLimitMessage;
  v4 = [(NACEUVolumeLimitMessage *)&v8 description];
  dictionaryRepresentation = [(NACEUVolumeLimitMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    *&v4 = self->_eUVolumeLimit;
    v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [dictionary setObject:v5 forKey:@"EUVolumeLimit"];
  }

  category = self->_category;
  if (category)
  {
    [dictionary setObject:category forKey:@"category"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_originIdentifier];
    [dictionary setObject:v7 forKey:@"originIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    eUVolumeLimit = self->_eUVolumeLimit;
    PBDataWriterWriteFloatField();
    toCopy = v7;
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = LODWORD(self->_eUVolumeLimit);
    *(toCopy + 24) |= 1u;
  }

  if (self->_category)
  {
    v5 = toCopy;
    [toCopy setCategory:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[5] = self->_originIdentifier;
    *(toCopy + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_eUVolumeLimit;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSString *)self->_category copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_originIdentifier;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if (has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_eUVolumeLimit != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_14;
  }

  category = self->_category;
  if (category | *(equalCopy + 1))
  {
    if (![(NSString *)category isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_originIdentifier != *(equalCopy + 5))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    eUVolumeLimit = self->_eUVolumeLimit;
    if (eUVolumeLimit < 0.0)
    {
      eUVolumeLimit = -eUVolumeLimit;
    }

    *v2.i32 = floorf(eUVolumeLimit + 0.5);
    v7 = (eUVolumeLimit - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v5 = 2654435761u * *vbslq_s8(v8, v3, v2).i32;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabsf(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_category hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_originIdentifier;
  }

  else
  {
    v10 = 0;
  }

  return v9 ^ v5 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 24))
  {
    self->_eUVolumeLimit = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    v5 = fromCopy;
    [(NACEUVolumeLimitMessage *)self setCategory:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 24) & 2) != 0)
  {
    self->_originIdentifier = *(fromCopy + 5);
    *&self->_has |= 2u;
  }
}

@end