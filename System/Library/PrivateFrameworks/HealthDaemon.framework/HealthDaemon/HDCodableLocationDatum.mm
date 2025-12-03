@interface HDCodableLocationDatum
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCourse:(BOOL)course;
- (void)setHasCourseAccuracy:(BOOL)accuracy;
- (void)setHasHorizontalAccuracy:(BOOL)accuracy;
- (void)setHasLatitude:(BOOL)latitude;
- (void)setHasLongitude:(BOOL)longitude;
- (void)setHasSignalEnvironmentType:(BOOL)type;
- (void)setHasSpeed:(BOOL)speed;
- (void)setHasSpeedAccuracy:(BOOL)accuracy;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasVerticalAccuracy:(BOOL)accuracy;
- (void)writeTo:(id)to;
@end

@implementation HDCodableLocationDatum

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasLatitude:(BOOL)latitude
{
  if (latitude)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLongitude:(BOOL)longitude
{
  if (longitude)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasSpeed:(BOOL)speed
{
  if (speed)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasCourse:(BOOL)course
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

- (void)setHasHorizontalAccuracy:(BOOL)accuracy
{
  if (accuracy)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasVerticalAccuracy:(BOOL)accuracy
{
  if (accuracy)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSpeedAccuracy:(BOOL)accuracy
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

- (void)setHasCourseAccuracy:(BOOL)accuracy
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

- (void)setHasSignalEnvironmentType:(BOOL)type
{
  if (type)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableLocationDatum;
  v4 = [(HDCodableLocationDatum *)&v8 description];
  dictionaryRepresentation = [(HDCodableLocationDatum *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
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

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
  [dictionary setObject:v8 forKey:@"latitude"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  [dictionary setObject:v9 forKey:@"longitude"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_altitude];
  [dictionary setObject:v10 forKey:@"altitude"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_speed];
  [dictionary setObject:v11 forKey:@"speed"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_course];
  [dictionary setObject:v12 forKey:@"course"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_horizontalAccuracy];
  [dictionary setObject:v13 forKey:@"horizontalAccuracy"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_verticalAccuracy];
  [dictionary setObject:v14 forKey:@"verticalAccuracy"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_speedAccuracy];
  [dictionary setObject:v15 forKey:@"speedAccuracy"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_courseAccuracy];
  [dictionary setObject:v16 forKey:@"courseAccuracy"];

  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_signalEnvironmentType];
    [dictionary setObject:v5 forKey:@"signalEnvironmentType"];
  }

LABEL_13:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
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

  latitude = self->_latitude;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  longitude = self->_longitude;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  altitude = self->_altitude;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  speed = self->_speed;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  course = self->_course;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  horizontalAccuracy = self->_horizontalAccuracy;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  verticalAccuracy = self->_verticalAccuracy;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  speedAccuracy = self->_speedAccuracy;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  courseAccuracy = self->_courseAccuracy;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    signalEnvironmentType = self->_signalEnvironmentType;
    PBDataWriterWriteInt32Field();
  }

LABEL_13:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    toCopy[9] = *&self->_timestamp;
    *(toCopy + 46) |= 0x100u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
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

  toCopy[5] = *&self->_latitude;
  *(toCopy + 46) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[6] = *&self->_longitude;
  *(toCopy + 46) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  toCopy[1] = *&self->_altitude;
  *(toCopy + 46) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[7] = *&self->_speed;
  *(toCopy + 46) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  toCopy[2] = *&self->_course;
  *(toCopy + 46) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  toCopy[4] = *&self->_horizontalAccuracy;
  *(toCopy + 46) |= 8u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  toCopy[10] = *&self->_verticalAccuracy;
  *(toCopy + 46) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  toCopy[8] = *&self->_speedAccuracy;
  *(toCopy + 46) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  toCopy[3] = *&self->_courseAccuracy;
  *(toCopy + 46) |= 4u;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    *(toCopy + 22) = self->_signalEnvironmentType;
    *(toCopy + 46) |= 0x400u;
  }

LABEL_13:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(result + 9) = *&self->_timestamp;
    *(result + 46) |= 0x100u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = *&self->_latitude;
  *(result + 46) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 6) = *&self->_longitude;
  *(result + 46) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 1) = *&self->_altitude;
  *(result + 46) |= 1u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 7) = *&self->_speed;
  *(result + 46) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 2) = *&self->_course;
  *(result + 46) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 4) = *&self->_horizontalAccuracy;
  *(result + 46) |= 8u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 10) = *&self->_verticalAccuracy;
  *(result + 46) |= 0x200u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 8) = *&self->_speedAccuracy;
  *(result + 46) |= 0x80u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 3) = *&self->_courseAccuracy;
  *(result + 46) |= 4u;
  if ((*&self->_has & 0x400) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 22) = self->_signalEnvironmentType;
  *(result + 46) |= 0x400u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  has = self->_has;
  v6 = *(equalCopy + 46);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 46) & 0x100) == 0 || self->_timestamp != *(equalCopy + 9))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 46) & 0x100) != 0)
  {
LABEL_57:
    v7 = 0;
    goto LABEL_58;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_latitude != *(equalCopy + 5))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_longitude != *(equalCopy + 6))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_57;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_altitude != *(equalCopy + 1))
    {
      goto LABEL_57;
    }
  }

  else if (v6)
  {
    goto LABEL_57;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_speed != *(equalCopy + 7))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_course != *(equalCopy + 2))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_horizontalAccuracy != *(equalCopy + 4))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 46) & 0x200) == 0 || self->_verticalAccuracy != *(equalCopy + 10))
    {
      goto LABEL_57;
    }
  }

  else if ((*(equalCopy + 46) & 0x200) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_speedAccuracy != *(equalCopy + 8))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_courseAccuracy != *(equalCopy + 3))
    {
      goto LABEL_57;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 46) & 0x400) == 0 || self->_signalEnvironmentType != *(equalCopy + 22))
    {
      goto LABEL_57;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x400) == 0;
  }

LABEL_58:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v2.i64 = floor(timestamp + 0.5);
    v7 = (timestamp - *v2.i64) * 1.84467441e19;
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

  if ((has & 0x10) != 0)
  {
    latitude = self->_latitude;
    if (latitude < 0.0)
    {
      latitude = -latitude;
    }

    *v2.i64 = floor(latitude + 0.5);
    v11 = (latitude - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
    v9 = 2654435761u * *v2.i64;
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

  if ((has & 0x20) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v2.i64 = floor(longitude + 0.5);
    v15 = (longitude - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v16), v3, v2);
    v13 = 2654435761u * *v2.i64;
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
    altitude = self->_altitude;
    if (altitude < 0.0)
    {
      altitude = -altitude;
    }

    *v2.i64 = floor(altitude + 0.5);
    v19 = (altitude - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
    v17 = 2654435761u * *v2.i64;
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

  if ((has & 0x40) != 0)
  {
    speed = self->_speed;
    if (speed < 0.0)
    {
      speed = -speed;
    }

    *v2.i64 = floor(speed + 0.5);
    v23 = (speed - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v24), v3, v2);
    v21 = 2654435761u * *v2.i64;
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

  if ((has & 2) != 0)
  {
    course = self->_course;
    if (course < 0.0)
    {
      course = -course;
    }

    *v2.i64 = floor(course + 0.5);
    v27 = (course - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v28), v3, v2);
    v25 = 2654435761u * *v2.i64;
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

  if ((has & 8) != 0)
  {
    horizontalAccuracy = self->_horizontalAccuracy;
    if (horizontalAccuracy < 0.0)
    {
      horizontalAccuracy = -horizontalAccuracy;
    }

    *v2.i64 = floor(horizontalAccuracy + 0.5);
    v31 = (horizontalAccuracy - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v32), v3, v2);
    v29 = 2654435761u * *v2.i64;
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

  if ((*&self->_has & 0x200) != 0)
  {
    verticalAccuracy = self->_verticalAccuracy;
    if (verticalAccuracy < 0.0)
    {
      verticalAccuracy = -verticalAccuracy;
    }

    *v2.i64 = floor(verticalAccuracy + 0.5);
    v35 = (verticalAccuracy - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v36), v3, v2);
    v33 = 2654435761u * *v2.i64;
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

  if ((has & 0x80) != 0)
  {
    speedAccuracy = self->_speedAccuracy;
    if (speedAccuracy < 0.0)
    {
      speedAccuracy = -speedAccuracy;
    }

    *v2.i64 = floor(speedAccuracy + 0.5);
    v39 = (speedAccuracy - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v40), v3, v2);
    v37 = 2654435761u * *v2.i64;
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

  if ((has & 4) != 0)
  {
    courseAccuracy = self->_courseAccuracy;
    if (courseAccuracy < 0.0)
    {
      courseAccuracy = -courseAccuracy;
    }

    *v2.i64 = floor(courseAccuracy + 0.5);
    v43 = (courseAccuracy - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v44.f64[0] = NAN;
    v44.f64[1] = NAN;
    v41 = 2654435761u * *vbslq_s8(vnegq_f64(v44), v3, v2).i64;
    if (v43 >= 0.0)
    {
      if (v43 > 0.0)
      {
        v41 += v43;
      }
    }

    else
    {
      v41 -= fabs(v43);
    }
  }

  else
  {
    v41 = 0;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    v45 = 2654435761 * self->_signalEnvironmentType;
  }

  else
  {
    v45 = 0;
  }

  return v9 ^ v5 ^ v13 ^ v17 ^ v21 ^ v25 ^ v29 ^ v33 ^ v37 ^ v41 ^ v45;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 46);
  if ((v5 & 0x100) != 0)
  {
    self->_timestamp = *(fromCopy + 9);
    *&self->_has |= 0x100u;
    v5 = *(fromCopy + 46);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
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

  self->_latitude = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 46);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_longitude = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 46);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_altitude = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 46);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_speed = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 46);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_course = *(fromCopy + 2);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 46);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_horizontalAccuracy = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 46);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_verticalAccuracy = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 46);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_speedAccuracy = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 46);
  if ((v5 & 4) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  self->_courseAccuracy = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 46) & 0x400) != 0)
  {
LABEL_12:
    self->_signalEnvironmentType = *(fromCopy + 22);
    *&self->_has |= 0x400u;
  }

LABEL_13:
}

@end