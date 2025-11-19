@interface BMPBHomeKitClientBase
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasHomeOccupancy:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBHomeKitClientBase

- (void)setHasDuration:(BOOL)a3
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

- (void)setHasHomeOccupancy:(BOOL)a3
{
  if (a3)
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
  v5 = [(BMPBHomeKitClientBase *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v3 setObject:v5 forKey:@"absoluteTimestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
    [v3 setObject:v6 forKey:@"duration"];
  }

  homeUniqueIdentifier = self->_homeUniqueIdentifier;
  if (homeUniqueIdentifier)
  {
    [v3 setObject:homeUniqueIdentifier forKey:@"homeUniqueIdentifier"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_homeOccupancy];
    [v3 setObject:v8 forKey:@"homeOccupancy"];
  }

  source = self->_source;
  if (source)
  {
    [v3 setObject:source forKey:@"source"];
  }

  clientName = self->_clientName;
  if (clientName)
  {
    [v3 setObject:clientName forKey:@"clientName"];
  }

  eventCorrelationIdentifier = self->_eventCorrelationIdentifier;
  if (eventCorrelationIdentifier)
  {
    [v3 setObject:eventCorrelationIdentifier forKey:@"eventCorrelationIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

  if (self->_homeUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    homeOccupancy = self->_homeOccupancy;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_clientName)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_eventCorrelationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = *&self->_absoluteTimestamp;
    *(v4 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[2] = *&self->_duration;
    *(v4 + 64) |= 2u;
  }

  v6 = v4;
  if (self->_homeUniqueIdentifier)
  {
    [v4 setHomeUniqueIdentifier:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 10) = self->_homeOccupancy;
    *(v4 + 64) |= 4u;
  }

  if (self->_source)
  {
    [v6 setSource:?];
    v4 = v6;
  }

  if (self->_clientName)
  {
    [v6 setClientName:?];
    v4 = v6;
  }

  if (self->_eventCorrelationIdentifier)
  {
    [v6 setEventCorrelationIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_homeUniqueIdentifier copyWithZone:a3];
  v9 = *(v6 + 48);
  *(v6 + 48) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 40) = self->_homeOccupancy;
    *(v6 + 64) |= 4u;
  }

  v10 = [(NSString *)self->_source copyWithZone:a3];
  v11 = *(v6 + 56);
  *(v6 + 56) = v10;

  v12 = [(NSString *)self->_clientName copyWithZone:a3];
  v13 = *(v6 + 24);
  *(v6 + 24) = v12;

  v14 = [(NSString *)self->_eventCorrelationIdentifier copyWithZone:a3];
  v15 = *(v6 + 32);
  *(v6 + 32) = v14;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  has = self->_has;
  v6 = *(v4 + 64);
  if (has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_duration != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_26;
  }

  homeUniqueIdentifier = self->_homeUniqueIdentifier;
  if (homeUniqueIdentifier | *(v4 + 6))
  {
    if (![(NSString *)homeUniqueIdentifier isEqual:?])
    {
LABEL_26:
      v12 = 0;
      goto LABEL_27;
    }

    has = self->_has;
  }

  v8 = *(v4 + 64);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_homeOccupancy != *(v4 + 10))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_26;
  }

  source = self->_source;
  if (source | *(v4 + 7) && ![(NSString *)source isEqual:?])
  {
    goto LABEL_26;
  }

  clientName = self->_clientName;
  if (clientName | *(v4 + 3))
  {
    if (![(NSString *)clientName isEqual:?])
    {
      goto LABEL_26;
    }
  }

  eventCorrelationIdentifier = self->_eventCorrelationIdentifier;
  if (eventCorrelationIdentifier | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 64);
  if (v5)
  {
    self->_absoluteTimestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 64);
  }

  if ((v5 & 2) != 0)
  {
    self->_duration = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v6 = v4;
  if (*(v4 + 6))
  {
    [(BMPBHomeKitClientBase *)self setHomeUniqueIdentifier:?];
    v4 = v6;
  }

  if ((*(v4 + 64) & 4) != 0)
  {
    self->_homeOccupancy = *(v4 + 10);
    *&self->_has |= 4u;
  }

  if (*(v4 + 7))
  {
    [(BMPBHomeKitClientBase *)self setSource:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(BMPBHomeKitClientBase *)self setClientName:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(BMPBHomeKitClientBase *)self setEventCorrelationIdentifier:?];
    v4 = v6;
  }
}

@end