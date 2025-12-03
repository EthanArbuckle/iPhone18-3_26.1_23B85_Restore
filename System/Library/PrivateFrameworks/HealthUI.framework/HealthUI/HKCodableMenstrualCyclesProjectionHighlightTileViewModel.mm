@interface HKCodableMenstrualCyclesProjectionHighlightTileViewModel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMinimumSupportedVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HKCodableMenstrualCyclesProjectionHighlightTileViewModel

- (void)setHasMinimumSupportedVersion:(BOOL)version
{
  if (version)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableMenstrualCyclesProjectionHighlightTileViewModel;
  v4 = [(HKCodableMenstrualCyclesProjectionHighlightTileViewModel *)&v8 description];
  dictionaryRepresentation = [(HKCodableMenstrualCyclesProjectionHighlightTileViewModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  projection = self->_projection;
  if (projection)
  {
    dictionaryRepresentation = [(HKCodableMenstrualCyclesProjection *)projection dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"projection"];
  }

  projectionKind = self->_projectionKind;
  if (projectionKind)
  {
    dictionaryRepresentation2 = [(HKCodableMenstrualCyclesProjectionKind *)projectionKind dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"projectionKind"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
    [dictionary setObject:v9 forKey:@"latestSupportedVersion"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [dictionary setObject:v10 forKey:@"minimumSupportedVersion"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_projection)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_projectionKind)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_projection)
  {
    [toCopy setProjection:?];
    toCopy = v6;
  }

  if (self->_projectionKind)
  {
    [v6 setProjectionKind:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_latestSupportedVersion;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_minimumSupportedVersion;
    *(toCopy + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableMenstrualCyclesProjection *)self->_projection copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(HKCodableMenstrualCyclesProjectionKind *)self->_projectionKind copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_latestSupportedVersion;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_minimumSupportedVersion;
    *(v5 + 40) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  projection = self->_projection;
  if (projection | *(equalCopy + 3))
  {
    if (![(HKCodableMenstrualCyclesProjection *)projection isEqual:?])
    {
      goto LABEL_15;
    }
  }

  projectionKind = self->_projectionKind;
  if (projectionKind | *(equalCopy + 4))
  {
    if (![(HKCodableMenstrualCyclesProjectionKind *)projectionKind isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_latestSupportedVersion != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_minimumSupportedVersion != *(equalCopy + 2))
    {
      goto LABEL_15;
    }

    v7 = 1;
  }

LABEL_16:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HKCodableMenstrualCyclesProjection *)self->_projection hash];
  v4 = [(HKCodableMenstrualCyclesProjectionKind *)self->_projectionKind hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_latestSupportedVersion;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_minimumSupportedVersion;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  projection = self->_projection;
  v6 = fromCopy[3];
  v10 = fromCopy;
  if (projection)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableMenstrualCyclesProjection *)projection mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableMenstrualCyclesProjectionHighlightTileViewModel *)self setProjection:?];
  }

  fromCopy = v10;
LABEL_7:
  projectionKind = self->_projectionKind;
  v8 = fromCopy[4];
  if (projectionKind)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    projectionKind = [(HKCodableMenstrualCyclesProjectionKind *)projectionKind mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    projectionKind = [(HKCodableMenstrualCyclesProjectionHighlightTileViewModel *)self setProjectionKind:?];
  }

  fromCopy = v10;
LABEL_13:
  v9 = *(fromCopy + 40);
  if (v9)
  {
    self->_latestSupportedVersion = fromCopy[1];
    *&self->_has |= 1u;
    v9 = *(fromCopy + 40);
  }

  if ((v9 & 2) != 0)
  {
    self->_minimumSupportedVersion = fromCopy[2];
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8](projectionKind, fromCopy);
}

@end