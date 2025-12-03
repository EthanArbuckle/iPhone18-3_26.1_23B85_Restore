@interface NanoMessagesProtoDidFetchCurrentLocation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasErrorCode:(BOOL)code;
- (void)setHasLocationCourse:(BOOL)course;
- (void)setHasLocationHorizontalAccuracy:(BOOL)accuracy;
- (void)setHasLocationLatitude:(BOOL)latitude;
- (void)setHasLocationLongitude:(BOOL)longitude;
- (void)setHasLocationSpeed:(BOOL)speed;
- (void)setHasLocationTimestamp:(BOOL)timestamp;
- (void)setHasLocationVerticalAccuracy:(BOOL)accuracy;
- (void)writeTo:(id)to;
@end

@implementation NanoMessagesProtoDidFetchCurrentLocation

- (void)setHasLocationLatitude:(BOOL)latitude
{
  if (latitude)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasLocationLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLocationHorizontalAccuracy:(BOOL)accuracy
{
  if (accuracy)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasLocationVerticalAccuracy:(BOOL)accuracy
{
  if (accuracy)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasLocationCourse:(BOOL)course
{
  if (course)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasLocationSpeed:(BOOL)speed
{
  if (speed)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasLocationTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NanoMessagesProtoDidFetchCurrentLocation;
  v3 = [(NanoMessagesProtoDidFetchCurrentLocation *)&v7 description];
  dictionaryRepresentation = [(NanoMessagesProtoDidFetchCurrentLocation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v8 = [NSNumber numberWithDouble:self->_locationLatitude];
    [v3 setObject:v8 forKey:@"locationLatitude"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v9 = [NSNumber numberWithDouble:self->_locationLongitude];
  [v3 setObject:v9 forKey:@"locationLongitude"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = [NSNumber numberWithDouble:self->_locationAltitude];
  [v3 setObject:v10 forKey:@"locationAltitude"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [NSNumber numberWithDouble:self->_locationHorizontalAccuracy];
  [v3 setObject:v11 forKey:@"locationHorizontalAccuracy"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [NSNumber numberWithDouble:self->_locationVerticalAccuracy];
  [v3 setObject:v12 forKey:@"locationVerticalAccuracy"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [NSNumber numberWithDouble:self->_locationCourse];
  [v3 setObject:v13 forKey:@"locationCourse"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = [NSNumber numberWithDouble:self->_locationSpeed];
  [v3 setObject:v14 forKey:@"locationSpeed"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_23:
  v15 = [NSNumber numberWithDouble:self->_locationTimestamp];
  [v3 setObject:v15 forKey:@"locationTimestamp"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v5 = [NSNumber numberWithInt:self->_errorCode];
    [v3 setObject:v5 forKey:@"errorCode"];
  }

LABEL_11:
  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    [v3 setObject:errorDomain forKey:@"errorDomain"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v15 = toCopy;
  if ((has & 8) != 0)
  {
    locationLatitude = self->_locationLatitude;
    PBDataWriterWriteDoubleField();
    toCopy = v15;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  locationLongitude = self->_locationLongitude;
  PBDataWriterWriteDoubleField();
  toCopy = v15;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  locationAltitude = self->_locationAltitude;
  PBDataWriterWriteDoubleField();
  toCopy = v15;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  locationHorizontalAccuracy = self->_locationHorizontalAccuracy;
  PBDataWriterWriteDoubleField();
  toCopy = v15;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  locationVerticalAccuracy = self->_locationVerticalAccuracy;
  PBDataWriterWriteDoubleField();
  toCopy = v15;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  locationCourse = self->_locationCourse;
  PBDataWriterWriteDoubleField();
  toCopy = v15;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  locationSpeed = self->_locationSpeed;
  PBDataWriterWriteDoubleField();
  toCopy = v15;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_23:
  locationTimestamp = self->_locationTimestamp;
  PBDataWriterWriteDoubleField();
  toCopy = v15;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    toCopy = v15;
  }

LABEL_11:
  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v15;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = *&self->_locationLatitude;
    *(toCopy + 44) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  toCopy[5] = *&self->_locationLongitude;
  *(toCopy + 44) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[1] = *&self->_locationAltitude;
  *(toCopy + 44) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  toCopy[3] = *&self->_locationHorizontalAccuracy;
  *(toCopy + 44) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[8] = *&self->_locationVerticalAccuracy;
  *(toCopy + 44) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  toCopy[2] = *&self->_locationCourse;
  *(toCopy + 44) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  toCopy[6] = *&self->_locationSpeed;
  *(toCopy + 44) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_23:
  toCopy[7] = *&self->_locationTimestamp;
  *(toCopy + 44) |= 0x40u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    *(toCopy + 18) = self->_errorCode;
    *(toCopy + 44) |= 0x100u;
  }

LABEL_11:
  if (self->_errorDomain)
  {
    v6 = toCopy;
    [toCopy setErrorDomain:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5[4] = *&self->_locationLatitude;
    *(v5 + 44) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v5[5] = *&self->_locationLongitude;
  *(v5 + 44) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5[1] = *&self->_locationAltitude;
  *(v5 + 44) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5[3] = *&self->_locationHorizontalAccuracy;
  *(v5 + 44) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5[8] = *&self->_locationVerticalAccuracy;
  *(v5 + 44) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5[2] = *&self->_locationCourse;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v5[7] = *&self->_locationTimestamp;
    *(v5 + 44) |= 0x40u;
    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_18:
  v5[6] = *&self->_locationSpeed;
  *(v5 + 44) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((has & 0x100) != 0)
  {
LABEL_10:
    *(v5 + 18) = self->_errorCode;
    *(v5 + 44) |= 0x100u;
  }

LABEL_11:
  v8 = [(NSString *)self->_errorDomain copyWithZone:zone];
  v9 = v6[10];
  v6[10] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  has = self->_has;
  v6 = *(equalCopy + 44);
  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_locationLatitude != *(equalCopy + 4))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 8) != 0)
  {
LABEL_49:
    v8 = 0;
    goto LABEL_50;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_locationLongitude != *(equalCopy + 5))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_49;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_locationAltitude != *(equalCopy + 1))
    {
      goto LABEL_49;
    }
  }

  else if (v6)
  {
    goto LABEL_49;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_locationHorizontalAccuracy != *(equalCopy + 3))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_locationVerticalAccuracy != *(equalCopy + 8))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_locationCourse != *(equalCopy + 2))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_locationSpeed != *(equalCopy + 6))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_locationTimestamp != *(equalCopy + 7))
    {
      goto LABEL_49;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_49;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 44) & 0x100) == 0 || self->_errorCode != *(equalCopy + 18))
    {
      goto LABEL_49;
    }
  }

  else if ((*(equalCopy + 44) & 0x100) != 0)
  {
    goto LABEL_49;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain | *(equalCopy + 10))
  {
    v8 = [(NSString *)errorDomain isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_50:

  return v8;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    locationLatitude = self->_locationLatitude;
    if (locationLatitude < 0.0)
    {
      locationLatitude = -locationLatitude;
    }

    *v6.i64 = floor(locationLatitude + 0.5);
    v11 = (locationLatitude - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v12), v7, v6);
    v9 = 2654435761u * *v6.i64;
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

  if ((has & 0x10) != 0)
  {
    locationLongitude = self->_locationLongitude;
    if (locationLongitude < 0.0)
    {
      locationLongitude = -locationLongitude;
    }

    *v6.i64 = floor(locationLongitude + 0.5);
    v15 = (locationLongitude - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v16), v7, v6);
    v13 = 2654435761u * *v6.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if (has)
  {
    locationAltitude = self->_locationAltitude;
    if (locationAltitude < 0.0)
    {
      locationAltitude = -locationAltitude;
    }

    *v6.i64 = floor(locationAltitude + 0.5);
    v19 = (locationAltitude - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v20), v7, v6);
    v17 = 2654435761u * *v6.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((has & 4) != 0)
  {
    locationHorizontalAccuracy = self->_locationHorizontalAccuracy;
    if (locationHorizontalAccuracy < 0.0)
    {
      locationHorizontalAccuracy = -locationHorizontalAccuracy;
    }

    *v6.i64 = floor(locationHorizontalAccuracy + 0.5);
    v23 = (locationHorizontalAccuracy - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v24), v7, v6);
    v21 = 2654435761u * *v6.i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((has & 0x80) != 0)
  {
    locationVerticalAccuracy = self->_locationVerticalAccuracy;
    if (locationVerticalAccuracy < 0.0)
    {
      locationVerticalAccuracy = -locationVerticalAccuracy;
    }

    *v6.i64 = floor(locationVerticalAccuracy + 0.5);
    v27 = (locationVerticalAccuracy - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v28), v7, v6);
    v25 = 2654435761u * *v6.i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((has & 2) != 0)
  {
    locationCourse = self->_locationCourse;
    if (locationCourse < 0.0)
    {
      locationCourse = -locationCourse;
    }

    *v6.i64 = floor(locationCourse + 0.5);
    v31 = (locationCourse - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v32), v7, v6);
    v29 = 2654435761u * *v6.i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabs(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((has & 0x20) != 0)
  {
    locationSpeed = self->_locationSpeed;
    if (locationSpeed < 0.0)
    {
      locationSpeed = -locationSpeed;
    }

    *v6.i64 = floor(locationSpeed + 0.5);
    v35 = (locationSpeed - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v36), v7, v6);
    v33 = 2654435761u * *v6.i64;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v33 += v35;
      }
    }

    else
    {
      v33 -= fabs(v35);
    }
  }

  else
  {
    v33 = 0;
  }

  if ((has & 0x40) != 0)
  {
    locationTimestamp = self->_locationTimestamp;
    if (locationTimestamp < 0.0)
    {
      locationTimestamp = -locationTimestamp;
    }

    *v6.i64 = floor(locationTimestamp + 0.5);
    v39 = (locationTimestamp - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v37 = 2654435761u * *vbslq_s8(vnegq_f64(v40), v7, v6).i64;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabs(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v41 = 2654435761 * self->_errorCode;
  }

  else
  {
    v41 = 0;
  }

  return v13 ^ v9 ^ v17 ^ v21 ^ v25 ^ v29 ^ v33 ^ v37 ^ v41 ^ [(NSString *)self->_errorDomain hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 44);
  if ((v5 & 8) != 0)
  {
    self->_locationLatitude = *(fromCopy + 4);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 44);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_locationLongitude = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 44);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_locationAltitude = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 44);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_locationHorizontalAccuracy = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_locationVerticalAccuracy = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 44);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_locationCourse = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_locationSpeed = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_23:
  self->_locationTimestamp = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 44) & 0x100) != 0)
  {
LABEL_10:
    self->_errorCode = *(fromCopy + 18);
    *&self->_has |= 0x100u;
  }

LABEL_11:
  if (*(fromCopy + 10))
  {
    v6 = fromCopy;
    [(NanoMessagesProtoDidFetchCurrentLocation *)self setErrorDomain:?];
    fromCopy = v6;
  }
}

@end