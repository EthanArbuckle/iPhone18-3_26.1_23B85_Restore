@interface HDCodableRoutinePredictedLocation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsModeOfTransportation:(id)transportation;
- (int)StringAsSourceType:(id)type;
- (int)modeOfTransportation;
- (int)sourceType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasModeOfTransportation:(BOOL)transportation;
- (void)setHasNextEntryTime:(BOOL)time;
- (void)setHasSourceType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HDCodableRoutinePredictedLocation

- (void)setHasNextEntryTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)modeOfTransportation
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_modeOfTransportation;
  }

  else
  {
    return -1;
  }
}

- (void)setHasModeOfTransportation:(BOOL)transportation
{
  if (transportation)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsModeOfTransportation:(id)transportation
{
  transportationCopy = transportation;
  if ([transportationCopy isEqualToString:@"UnknownMode"])
  {
    v4 = -1;
  }

  else if ([transportationCopy isEqualToString:@"Walking"])
  {
    v4 = 0;
  }

  else if ([transportationCopy isEqualToString:@"Driving"])
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (int)sourceType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_sourceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSourceType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsSourceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UnknownSource"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Audio"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Bluetooth"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CoreRoutine"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"EventKit"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"LocationVisit"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRoutinePredictedLocation;
  v4 = [(HDCodableRoutinePredictedLocation *)&v8 description];
  dictionaryRepresentation = [(HDCodableRoutinePredictedLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest)
  {
    dictionaryRepresentation = [(HDCodableRoutineLocation *)locationOfInterest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"locationOfInterest"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
    [dictionary setObject:v7 forKey:@"confidence"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_nextEntryTime];
  [dictionary setObject:v8 forKey:@"nextEntryTime"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_10:
  v9 = self->_modeOfTransportation + 1;
  if (v9 >= 3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_modeOfTransportation];
  }

  else
  {
    v10 = off_2786151B8[v9];
  }

  [dictionary setObject:v10 forKey:@"modeOfTransportation"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_14:
    sourceType = self->_sourceType;
    if (sourceType >= 6)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_sourceType];
    }

    else
    {
      v12 = off_2786151D0[sourceType];
    }

    [dictionary setObject:v12 forKey:@"sourceType"];
  }

LABEL_18:
  geoData = self->_geoData;
  if (geoData)
  {
    [dictionary setObject:geoData forKey:@"geoData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_locationOfInterest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  has = self->_has;
  if (has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  nextEntryTime = self->_nextEntryTime;
  PBDataWriterWriteDoubleField();
  toCopy = v10;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  modeOfTransportation = self->_modeOfTransportation;
  PBDataWriterWriteInt32Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    sourceType = self->_sourceType;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
  }

LABEL_8:
  if (self->_geoData)
  {
    PBDataWriterWriteDataField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_locationOfInterest)
  {
    [toCopy setLocationOfInterest:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_confidence;
    *(toCopy + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 2) = *&self->_nextEntryTime;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(toCopy + 10) = self->_modeOfTransportation;
  *(toCopy + 48) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(toCopy + 11) = self->_sourceType;
    *(toCopy + 48) |= 8u;
  }

LABEL_8:
  if (self->_geoData)
  {
    [v6 setGeoData:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableRoutineLocation *)self->_locationOfInterest copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_confidence;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 40) = self->_modeOfTransportation;
      *(v5 + 48) |= 4u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_nextEntryTime;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 44) = self->_sourceType;
    *(v5 + 48) |= 8u;
  }

LABEL_6:
  v9 = [(NSData *)self->_geoData copyWithZone:zone];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest | *(equalCopy + 4))
  {
    if (![(HDCodableRoutineLocation *)locationOfInterest isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v6 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_confidence != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_nextEntryTime != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_modeOfTransportation != *(equalCopy + 10))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_sourceType != *(equalCopy + 11))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_26;
  }

  geoData = self->_geoData;
  if (geoData | *(equalCopy + 3))
  {
    v8 = [(NSData *)geoData isEqual:?];
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
  v3 = [(HDCodableRoutineLocation *)self->_locationOfInterest hash];
  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v4.i64 = floor(confidence + 0.5);
    v8 = (confidence - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    nextEntryTime = self->_nextEntryTime;
    if (nextEntryTime < 0.0)
    {
      nextEntryTime = -nextEntryTime;
    }

    *v4.i64 = floor(nextEntryTime + 0.5);
    v12 = (nextEntryTime - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v14 = 2654435761 * self->_modeOfTransportation;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v15 = 0;
    return v6 ^ v3 ^ v10 ^ v14 ^ v15 ^ [(NSData *)self->_geoData hash];
  }

  v14 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v15 = 2654435761 * self->_sourceType;
  return v6 ^ v3 ^ v10 ^ v14 ^ v15 ^ [(NSData *)self->_geoData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  locationOfInterest = self->_locationOfInterest;
  v6 = *(fromCopy + 4);
  v8 = fromCopy;
  if (locationOfInterest)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableRoutineLocation *)locationOfInterest mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableRoutinePredictedLocation *)self setLocationOfInterest:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 48);
  if (v7)
  {
    self->_confidence = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 48);
    if ((v7 & 2) == 0)
    {
LABEL_9:
      if ((v7 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_nextEntryTime = *(fromCopy + 2);
  *&self->_has |= 2u;
  v7 = *(fromCopy + 48);
  if ((v7 & 4) == 0)
  {
LABEL_10:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  self->_modeOfTransportation = *(fromCopy + 10);
  *&self->_has |= 4u;
  if ((*(fromCopy + 48) & 8) != 0)
  {
LABEL_11:
    self->_sourceType = *(fromCopy + 11);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(fromCopy + 3))
  {
    [(HDCodableRoutinePredictedLocation *)self setGeoData:?];
  }

  MEMORY[0x2821F96F8]();
}

@end