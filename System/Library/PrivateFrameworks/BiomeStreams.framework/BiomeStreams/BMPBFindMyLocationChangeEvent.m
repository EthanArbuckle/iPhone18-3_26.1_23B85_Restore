@interface BMPBFindMyLocationChangeEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsActivityState:(id)a3;
- (int)StringAsLocationChangeType:(id)a3;
- (int)activityState;
- (int)locationChangeType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasActivityState:(BOOL)a3;
- (void)setHasLocationChangeType:(BOOL)a3;
- (void)setHasLongitude:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBFindMyLocationChangeEvent

- (int)locationChangeType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_locationChangeType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLocationChangeType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsLocationChangeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Update"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"StartedSharing"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"StoppedSharing"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)activityState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_activityState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasActivityState:(BOOL)a3
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

- (int)StringAsActivityState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Stationary"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Walking"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Running"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Cycling"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Automotive"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasLongitude:(BOOL)a3
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
  v8.super_class = BMPBFindMyLocationChangeEvent;
  v4 = [(BMPBFindMyLocationChangeEvent *)&v8 description];
  v5 = [(BMPBFindMyLocationChangeEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  idsHandle = self->_idsHandle;
  if (idsHandle)
  {
    [v3 setObject:idsHandle forKey:@"idsHandle"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    locationChangeType = self->_locationChangeType;
    if (locationChangeType >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_locationChangeType];
    }

    else
    {
      v8 = off_1E6E544B0[locationChangeType];
    }

    [v4 setObject:v8 forKey:@"locationChangeType"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    activityState = self->_activityState;
    if (activityState >= 6)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_activityState];
    }

    else
    {
      v10 = off_1E6E544C8[activityState];
    }

    [v4 setObject:v10 forKey:@"activityState"];

    has = self->_has;
  }

  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latitude];
    [v4 setObject:v11 forKey:@"latitude"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_longitude];
    [v4 setObject:v12 forKey:@"longitude"];
  }

  name = self->_name;
  if (name)
  {
    [v4 setObject:name forKey:@"name"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_idsHandle)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    locationChangeType = self->_locationChangeType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  activityState = self->_activityState;
  PBDataWriterWriteInt32Field();
  v4 = v10;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  latitude = self->_latitude;
  PBDataWriterWriteDoubleField();
  v4 = v10;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    longitude = self->_longitude;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

LABEL_8:
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_idsHandle)
  {
    [v4 setIdsHandle:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 10) = self->_locationChangeType;
    *(v4 + 56) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 6) = self->_activityState;
  *(v4 + 56) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v4 + 1) = *&self->_latitude;
  *(v4 + 56) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    *(v4 + 2) = *&self->_longitude;
    *(v4 + 56) |= 2u;
  }

LABEL_8:
  if (self->_name)
  {
    [v6 setName:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_idsHandle copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 40) = self->_locationChangeType;
    *(v5 + 56) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 8) = self->_latitude;
      *(v5 + 56) |= 1u;
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_activityState;
  *(v5 + 56) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    *(v5 + 16) = self->_longitude;
    *(v5 + 56) |= 2u;
  }

LABEL_6:
  v9 = [(NSString *)self->_name copyWithZone:a3];
  v10 = *(v5 + 48);
  *(v5 + 48) = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  idsHandle = self->_idsHandle;
  if (idsHandle | *(v4 + 4))
  {
    if (![(NSString *)idsHandle isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v6 = *(v4 + 56);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 56) & 8) == 0 || self->_locationChangeType != *(v4 + 10))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 56) & 8) != 0)
  {
LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_activityState != *(v4 + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_latitude != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_longitude != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_26;
  }

  name = self->_name;
  if (name | *(v4 + 6))
  {
    v8 = [(NSString *)name isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_27:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_idsHandle hash];
  if ((*&self->_has & 8) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v6 = 2654435761 * self->_locationChangeType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 2654435761 * self->_activityState;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  latitude = self->_latitude;
  if (latitude < 0.0)
  {
    latitude = -latitude;
  }

  *v4.i64 = floor(latitude + 0.5);
  v9 = (latitude - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
  v11 = 2654435761u * *v4.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_11:
  if ((*&self->_has & 2) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v4.i64 = floor(longitude + 0.5);
    v14 = (longitude - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v5, v4).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  return v6 ^ v3 ^ v7 ^ v11 ^ v12 ^ [(NSString *)self->_name hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(BMPBFindMyLocationChangeEvent *)self setIdsHandle:?];
    v4 = v6;
  }

  v5 = *(v4 + 56);
  if ((v5 & 8) != 0)
  {
    self->_locationChangeType = *(v4 + 10);
    *&self->_has |= 8u;
    v5 = *(v4 + 56);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 56) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_activityState = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 56);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_latitude = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 56) & 2) != 0)
  {
LABEL_7:
    self->_longitude = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_8:
  if (*(v4 + 6))
  {
    [(BMPBFindMyLocationChangeEvent *)self setName:?];
    v4 = v6;
  }
}

@end