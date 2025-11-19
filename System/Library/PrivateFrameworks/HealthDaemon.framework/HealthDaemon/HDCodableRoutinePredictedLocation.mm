@interface HDCodableRoutinePredictedLocation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsModeOfTransportation:(id)a3;
- (int)StringAsSourceType:(id)a3;
- (int)modeOfTransportation;
- (int)sourceType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasModeOfTransportation:(BOOL)a3;
- (void)setHasNextEntryTime:(BOOL)a3;
- (void)setHasSourceType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableRoutinePredictedLocation

- (void)setHasNextEntryTime:(BOOL)a3
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

- (void)setHasModeOfTransportation:(BOOL)a3
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

- (int)StringAsModeOfTransportation:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UnknownMode"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"Walking"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Driving"])
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

- (void)setHasSourceType:(BOOL)a3
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

- (int)StringAsSourceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UnknownSource"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Audio"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Bluetooth"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CoreRoutine"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"EventKit"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LocationVisit"])
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
  v5 = [(HDCodableRoutinePredictedLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest)
  {
    v5 = [(HDCodableRoutineLocation *)locationOfInterest dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"locationOfInterest"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
    [v3 setObject:v7 forKey:@"confidence"];

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
  [v3 setObject:v8 forKey:@"nextEntryTime"];

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

  [v3 setObject:v10 forKey:@"modeOfTransportation"];

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

    [v3 setObject:v12 forKey:@"sourceType"];
  }

LABEL_18:
  geoData = self->_geoData;
  if (geoData)
  {
    [v3 setObject:geoData forKey:@"geoData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_locationOfInterest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  has = self->_has;
  if (has)
  {
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
    v4 = v10;
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
  v4 = v10;
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
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    sourceType = self->_sourceType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

LABEL_8:
  if (self->_geoData)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_locationOfInterest)
  {
    [v4 setLocationOfInterest:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_confidence;
    *(v4 + 48) |= 1u;
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

  *(v4 + 2) = *&self->_nextEntryTime;
  *(v4 + 48) |= 2u;
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
  *(v4 + 10) = self->_modeOfTransportation;
  *(v4 + 48) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v4 + 11) = self->_sourceType;
    *(v4 + 48) |= 8u;
  }

LABEL_8:
  if (self->_geoData)
  {
    [v6 setGeoData:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableRoutineLocation *)self->_locationOfInterest copyWithZone:a3];
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
  v9 = [(NSData *)self->_geoData copyWithZone:a3];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest | *(v4 + 4))
  {
    if (![(HDCodableRoutineLocation *)locationOfInterest isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v6 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_confidence != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_26:
    v8 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_nextEntryTime != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_modeOfTransportation != *(v4 + 10))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_sourceType != *(v4 + 11))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_26;
  }

  geoData = self->_geoData;
  if (geoData | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  locationOfInterest = self->_locationOfInterest;
  v6 = *(v4 + 4);
  v8 = v4;
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

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 48);
  if (v7)
  {
    self->_confidence = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 48);
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

  else if ((*(v4 + 48) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_nextEntryTime = *(v4 + 2);
  *&self->_has |= 2u;
  v7 = *(v4 + 48);
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
  self->_modeOfTransportation = *(v4 + 10);
  *&self->_has |= 4u;
  if ((*(v4 + 48) & 8) != 0)
  {
LABEL_11:
    self->_sourceType = *(v4 + 11);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(v4 + 3))
  {
    [(HDCodableRoutinePredictedLocation *)self setGeoData:?];
  }

  MEMORY[0x2821F96F8]();
}

@end