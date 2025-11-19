@interface HDCodableRoutePointDatum
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLatitude:(BOOL)a3;
- (void)setHasLongitude:(BOOL)a3;
- (void)setHasOdometer:(BOOL)a3;
- (void)setHasSignalEnvironmentType:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableRoutePointDatum

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasLatitude:(BOOL)a3
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

- (void)setHasLongitude:(BOOL)a3
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

- (void)setHasOdometer:(BOOL)a3
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

- (void)setHasSignalEnvironmentType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRoutePointDatum;
  v4 = [(HDCodableRoutePointDatum *)&v8 description];
  v5 = [(HDCodableRoutePointDatum *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
  [v3 setObject:v8 forKey:@"latitude"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  [v3 setObject:v9 forKey:@"longitude"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_altitude];
  [v3 setObject:v10 forKey:@"altitude"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_odometer];
  [v3 setObject:v11 forKey:@"odometer"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_signalEnvironmentType];
    [v3 setObject:v5 forKey:@"signalEnvironmentType"];
  }

LABEL_8:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  latitude = self->_latitude;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  longitude = self->_longitude;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  altitude = self->_altitude;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  odometer = self->_odometer;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    signalEnvironmentType = self->_signalEnvironmentType;
    PBDataWriterWriteInt32Field();
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[5] = *&self->_timestamp;
    *(v4 + 52) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = *&self->_latitude;
  *(v4 + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4[3] = *&self->_longitude;
  *(v4 + 52) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[1] = *&self->_altitude;
  *(v4 + 52) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v4[4] = *&self->_odometer;
  *(v4 + 52) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(v4 + 12) = self->_signalEnvironmentType;
    *(v4 + 52) |= 0x20u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 5) = *&self->_timestamp;
    *(result + 52) |= 0x10u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = *&self->_latitude;
  *(result + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 3) = *&self->_longitude;
  *(result + 52) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 1) = *&self->_altitude;
  *(result + 52) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 4) = *&self->_odometer;
  *(result + 52) |= 8u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 12) = self->_signalEnvironmentType;
  *(result + 52) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 52) & 0x10) == 0 || self->_timestamp != *(v4 + 5))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 0x10) != 0)
  {
LABEL_31:
    v5 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_latitude != *(v4 + 2))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_longitude != *(v4 + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_altitude != *(v4 + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 52) & 8) == 0 || self->_odometer != *(v4 + 4))
    {
      goto LABEL_31;
    }
  }

  else if ((*(v4 + 52) & 8) != 0)
  {
    goto LABEL_31;
  }

  v5 = (*(v4 + 52) & 0x20) == 0;
  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 52) & 0x20) == 0 || self->_signalEnvironmentType != *(v4 + 12))
    {
      goto LABEL_31;
    }

    v5 = 1;
  }

LABEL_32:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v2.i64 = floor(timestamp + 0.5);
    v6 = (timestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    latitude = self->_latitude;
    if (latitude < 0.0)
    {
      latitude = -latitude;
    }

    *v2.i64 = floor(latitude + 0.5);
    v10 = (latitude - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v11), v3, v2);
    v8 = 2654435761u * *v2.i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v2.i64 = floor(longitude + 0.5);
    v14 = (longitude - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v15), v3, v2);
    v12 = 2654435761u * *v2.i64;
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

  if (*&self->_has)
  {
    altitude = self->_altitude;
    if (altitude < 0.0)
    {
      altitude = -altitude;
    }

    *v2.i64 = floor(altitude + 0.5);
    v18 = (altitude - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v19), v3, v2);
    v16 = 2654435761u * *v2.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    odometer = self->_odometer;
    if (odometer < 0.0)
    {
      odometer = -odometer;
    }

    *v2.i64 = floor(odometer + 0.5);
    v22 = (odometer - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v20 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v3, v2).i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v24 = 2654435761 * self->_signalEnvironmentType;
  }

  else
  {
    v24 = 0;
  }

  return v8 ^ v4 ^ v12 ^ v16 ^ v20 ^ v24;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 52);
  if ((v5 & 0x10) != 0)
  {
    self->_timestamp = *(v4 + 5);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 52) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_latitude = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_longitude = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 52);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_altitude = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  self->_odometer = *(v4 + 4);
  *&self->_has |= 8u;
  if ((*(v4 + 52) & 0x20) != 0)
  {
LABEL_7:
    self->_signalEnvironmentType = *(v4 + 12);
    *&self->_has |= 0x20u;
  }

LABEL_8:
}

@end