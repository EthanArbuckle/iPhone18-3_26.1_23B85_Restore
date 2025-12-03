@interface BMPBHomeKitClientBase
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasHomeOccupancy:(BOOL)occupancy;
- (void)writeTo:(id)to;
@end

@implementation BMPBHomeKitClientBase

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasHomeOccupancy:(BOOL)occupancy
{
  if (occupancy)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBHomeKitClientBase;
  v4 = [(BMPBHomeKitClientBase *)&v8 description];
  dictionaryRepresentation = [(BMPBHomeKitClientBase *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [dictionary setObject:v5 forKey:@"absoluteTimestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
    [dictionary setObject:v6 forKey:@"duration"];
  }

  homeUniqueIdentifier = self->_homeUniqueIdentifier;
  if (homeUniqueIdentifier)
  {
    [dictionary setObject:homeUniqueIdentifier forKey:@"homeUniqueIdentifier"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_homeOccupancy];
    [dictionary setObject:v8 forKey:@"homeOccupancy"];
  }

  source = self->_source;
  if (source)
  {
    [dictionary setObject:source forKey:@"source"];
  }

  clientName = self->_clientName;
  if (clientName)
  {
    [dictionary setObject:clientName forKey:@"clientName"];
  }

  eventCorrelationIdentifier = self->_eventCorrelationIdentifier;
  if (eventCorrelationIdentifier)
  {
    [dictionary setObject:eventCorrelationIdentifier forKey:@"eventCorrelationIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

  if (self->_homeUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    homeOccupancy = self->_homeOccupancy;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_clientName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_eventCorrelationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = *&self->_absoluteTimestamp;
    *(toCopy + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[2] = *&self->_duration;
    *(toCopy + 64) |= 2u;
  }

  v6 = toCopy;
  if (self->_homeUniqueIdentifier)
  {
    [toCopy setHomeUniqueIdentifier:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 10) = self->_homeOccupancy;
    *(toCopy + 64) |= 4u;
  }

  if (self->_source)
  {
    [v6 setSource:?];
    toCopy = v6;
  }

  if (self->_clientName)
  {
    [v6 setClientName:?];
    toCopy = v6;
  }

  if (self->_eventCorrelationIdentifier)
  {
    [v6 setEventCorrelationIdentifier:?];
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
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_duration;
    *(v5 + 64) |= 2u;
  }

  v8 = [(NSString *)self->_homeUniqueIdentifier copyWithZone:zone];
  v9 = *(v6 + 48);
  *(v6 + 48) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 40) = self->_homeOccupancy;
    *(v6 + 64) |= 4u;
  }

  v10 = [(NSString *)self->_source copyWithZone:zone];
  v11 = *(v6 + 56);
  *(v6 + 56) = v10;

  v12 = [(NSString *)self->_clientName copyWithZone:zone];
  v13 = *(v6 + 24);
  *(v6 + 24) = v12;

  v14 = [(NSString *)self->_eventCorrelationIdentifier copyWithZone:zone];
  v15 = *(v6 + 32);
  *(v6 + 32) = v14;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = *(equalCopy + 64);
  if (has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_duration != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_26;
  }

  homeUniqueIdentifier = self->_homeUniqueIdentifier;
  if (homeUniqueIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)homeUniqueIdentifier isEqual:?])
    {
LABEL_26:
      v12 = 0;
      goto LABEL_27;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 64);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_homeOccupancy != *(equalCopy + 10))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_26;
  }

  source = self->_source;
  if (source | *(equalCopy + 7) && ![(NSString *)source isEqual:?])
  {
    goto LABEL_26;
  }

  clientName = self->_clientName;
  if (clientName | *(equalCopy + 3))
  {
    if (![(NSString *)clientName isEqual:?])
    {
      goto LABEL_26;
    }
  }

  eventCorrelationIdentifier = self->_eventCorrelationIdentifier;
  if (eventCorrelationIdentifier | *(equalCopy + 4))
  {
    v12 = [(NSString *)eventCorrelationIdentifier isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_27:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v2.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v2.i64 = floor(duration + 0.5);
    v11 = (duration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [(NSString *)self->_homeUniqueIdentifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v14 = 2654435761 * self->_homeOccupancy;
  }

  else
  {
    v14 = 0;
  }

  v15 = v9 ^ v5 ^ v14 ^ v13;
  v16 = [(NSString *)self->_source hash];
  v17 = v15 ^ v16 ^ [(NSString *)self->_clientName hash];
  return v17 ^ [(NSString *)self->_eventCorrelationIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 64);
  if (v5)
  {
    self->_absoluteTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 64);
  }

  if ((v5 & 2) != 0)
  {
    self->_duration = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(BMPBHomeKitClientBase *)self setHomeUniqueIdentifier:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 64) & 4) != 0)
  {
    self->_homeOccupancy = *(fromCopy + 10);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 7))
  {
    [(BMPBHomeKitClientBase *)self setSource:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(BMPBHomeKitClientBase *)self setClientName:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBHomeKitClientBase *)self setEventCorrelationIdentifier:?];
    fromCopy = v6;
  }
}

@end