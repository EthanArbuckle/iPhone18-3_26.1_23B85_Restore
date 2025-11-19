@interface HKCodableMenstrualCyclesProjectionHighlightTileViewModel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMinimumSupportedVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableMenstrualCyclesProjectionHighlightTileViewModel

- (void)setHasMinimumSupportedVersion:(BOOL)a3
{
  if (a3)
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
  v5 = [(HKCodableMenstrualCyclesProjectionHighlightTileViewModel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  projection = self->_projection;
  if (projection)
  {
    v5 = [(HKCodableMenstrualCyclesProjection *)projection dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"projection"];
  }

  projectionKind = self->_projectionKind;
  if (projectionKind)
  {
    v7 = [(HKCodableMenstrualCyclesProjectionKind *)projectionKind dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"projectionKind"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
    [v3 setObject:v9 forKey:@"latestSupportedVersion"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [v3 setObject:v10 forKey:@"minimumSupportedVersion"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_projection)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_projectionKind)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_projection)
  {
    [v4 setProjection:?];
    v4 = v6;
  }

  if (self->_projectionKind)
  {
    [v6 setProjectionKind:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_latestSupportedVersion;
    *(v4 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_minimumSupportedVersion;
    *(v4 + 40) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableMenstrualCyclesProjection *)self->_projection copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(HKCodableMenstrualCyclesProjectionKind *)self->_projectionKind copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  projection = self->_projection;
  if (projection | *(v4 + 3))
  {
    if (![(HKCodableMenstrualCyclesProjection *)projection isEqual:?])
    {
      goto LABEL_15;
    }
  }

  projectionKind = self->_projectionKind;
  if (projectionKind | *(v4 + 4))
  {
    if (![(HKCodableMenstrualCyclesProjectionKind *)projectionKind isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_latestSupportedVersion != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(v4 + 40) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_minimumSupportedVersion != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  projection = self->_projection;
  v6 = v4[3];
  v10 = v4;
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

  v4 = v10;
LABEL_7:
  projectionKind = self->_projectionKind;
  v8 = v4[4];
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

  v4 = v10;
LABEL_13:
  v9 = *(v4 + 40);
  if (v9)
  {
    self->_latestSupportedVersion = v4[1];
    *&self->_has |= 1u;
    v9 = *(v4 + 40);
  }

  if ((v9 & 2) != 0)
  {
    self->_minimumSupportedVersion = v4[2];
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8](projectionKind, v4);
}

@end