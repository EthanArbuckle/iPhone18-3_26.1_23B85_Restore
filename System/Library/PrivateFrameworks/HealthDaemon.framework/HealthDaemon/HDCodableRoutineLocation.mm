@interface HDCodableRoutineLocation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLocationOfInterestType:(id)a3;
- (int)locationOfInterestType;
- (unint64_t)hash;
- (void)addVisits:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLatitude:(BOOL)a3;
- (void)setHasLocationOfInterestType:(BOOL)a3;
- (void)setHasLongitude:(BOOL)a3;
- (void)setHasUncertainty:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableRoutineLocation

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

- (void)setHasUncertainty:(BOOL)a3
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

- (int)locationOfInterestType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_locationOfInterestType;
  }

  else
  {
    return -1;
  }
}

- (void)setHasLocationOfInterestType:(BOOL)a3
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

- (int)StringAsLocationOfInterestType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UnknownLocation"])
  {
    v4 = -1;
  }

  else if ([v3 isEqualToString:@"Home"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Work"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"School"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Gym"])
  {
    v4 = 3;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)addVisits:(id)a3
{
  v4 = a3;
  visits = self->_visits;
  v8 = v4;
  if (!visits)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_visits;
    self->_visits = v6;

    v4 = v8;
    visits = self->_visits;
  }

  [(NSMutableArray *)visits addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableRoutineLocation;
  v4 = [(HDCodableRoutineLocation *)&v8 description];
  v5 = [(HDCodableRoutineLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_latitude];
    [v3 setObject:v9 forKey:@"latitude"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_longitude];
  [v3 setObject:v10 forKey:@"longitude"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_uncertainty];
  [v3 setObject:v11 forKey:@"uncertainty"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
    [v3 setObject:v5 forKey:@"confidence"];
  }

LABEL_6:
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v7 = self->_locationOfInterestType + 1;
    if (v7 >= 5)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_locationOfInterestType];
    }

    else
    {
      v8 = off_278614810[v7];
    }

    [v3 setObject:v8 forKey:@"locationOfInterestType"];
  }

  geoData = self->_geoData;
  if (geoData)
  {
    [v3 setObject:geoData forKey:@"geoData"];
  }

  if ([(NSMutableArray *)self->_visits count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_visits, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_visits;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"visits"];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    latitude = self->_latitude;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  longitude = self->_longitude;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_22:
  uncertainty = self->_uncertainty;
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_5:
    confidence = self->_confidence;
    PBDataWriterWriteDoubleField();
  }

LABEL_6:
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    locationOfInterestType = self->_locationOfInterestType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_geoData)
  {
    PBDataWriterWriteDataField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_visits;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = *&self->_latitude;
    *(v4 + 72) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = *&self->_longitude;
  *(v4 + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  v4[4] = *&self->_uncertainty;
  *(v4 + 72) |= 8u;
  if (*&self->_has)
  {
LABEL_5:
    v4[1] = *&self->_confidence;
    *(v4 + 72) |= 1u;
  }

LABEL_6:
  v10 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v10;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v4 + 12) = self->_locationOfInterestType;
    *(v4 + 72) |= 0x10u;
  }

  if (self->_geoData)
  {
    [v10 setGeoData:?];
  }

  if ([(HDCodableRoutineLocation *)self visitsCount])
  {
    [v10 clearVisits];
    v6 = [(HDCodableRoutineLocation *)self visitsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableRoutineLocation *)self visitsAtIndex:i];
        [v10 addVisits:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_latitude;
    *(v5 + 72) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_longitude;
  *(v5 + 72) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_18:
  *(v5 + 32) = self->_uncertainty;
  *(v5 + 72) |= 8u;
  if (*&self->_has)
  {
LABEL_5:
    *(v5 + 8) = self->_confidence;
    *(v5 + 72) |= 1u;
  }

LABEL_6:
  v8 = [(NSString *)self->_uuid copyWithZone:a3];
  v9 = *(v6 + 56);
  *(v6 + 56) = v8;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 48) = self->_locationOfInterestType;
    *(v6 + 72) |= 0x10u;
  }

  v10 = [(NSData *)self->_geoData copyWithZone:a3];
  v11 = *(v6 + 40);
  *(v6 + 40) = v10;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_visits;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{a3, v20}];
        [v6 addVisits:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = *(v4 + 72);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_latitude != *(v4 + 2))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_longitude != *(v4 + 3))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
    goto LABEL_34;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 72) & 8) == 0 || self->_uncertainty != *(v4 + 4))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v4 + 72) & 8) != 0)
  {
    goto LABEL_34;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_confidence != *(v4 + 1))
    {
      goto LABEL_34;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_34;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 7))
  {
    if (![(NSString *)uuid isEqual:?])
    {
LABEL_34:
      v10 = 0;
      goto LABEL_35;
    }

    has = self->_has;
    v6 = *(v4 + 72);
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_locationOfInterestType != *(v4 + 12))
    {
      goto LABEL_34;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_34;
  }

  geoData = self->_geoData;
  if (geoData | *(v4 + 5) && ![(NSData *)geoData isEqual:?])
  {
    goto LABEL_34;
  }

  visits = self->_visits;
  if (visits | *(v4 + 8))
  {
    v10 = [(NSMutableArray *)visits isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_35:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    latitude = self->_latitude;
    if (latitude < 0.0)
    {
      latitude = -latitude;
    }

    *v2.i64 = floor(latitude + 0.5);
    v7 = (latitude - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 4) != 0)
  {
    longitude = self->_longitude;
    if (longitude < 0.0)
    {
      longitude = -longitude;
    }

    *v2.i64 = floor(longitude + 0.5);
    v11 = (longitude - *v2.i64) * 1.84467441e19;
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

  if ((*&self->_has & 8) != 0)
  {
    uncertainty = self->_uncertainty;
    if (uncertainty < 0.0)
    {
      uncertainty = -uncertainty;
    }

    *v2.i64 = floor(uncertainty + 0.5);
    v15 = (uncertainty - *v2.i64) * 1.84467441e19;
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

  if (*&self->_has)
  {
    confidence = self->_confidence;
    if (confidence < 0.0)
    {
      confidence = -confidence;
    }

    *v2.i64 = floor(confidence + 0.5);
    v19 = (confidence - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v17 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v3, v2).i64;
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

  v21 = [(NSString *)self->_uuid hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v22 = 2654435761 * self->_locationOfInterestType;
  }

  else
  {
    v22 = 0;
  }

  v23 = v9 ^ v5 ^ v13 ^ v17 ^ v22 ^ v21;
  v24 = [(NSData *)self->_geoData hash];
  return v23 ^ v24 ^ [(NSMutableArray *)self->_visits hash];
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 72);
  if ((v6 & 2) != 0)
  {
    self->_latitude = v4[2];
    *&self->_has |= 2u;
    v6 = *(v4 + 72);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4[9] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_longitude = v4[3];
  *&self->_has |= 4u;
  v6 = *(v4 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_22:
  self->_uncertainty = v4[4];
  *&self->_has |= 8u;
  if (v4[9])
  {
LABEL_5:
    self->_confidence = v4[1];
    *&self->_has |= 1u;
  }

LABEL_6:
  if (*(v4 + 7))
  {
    [(HDCodableRoutineLocation *)self setUuid:?];
  }

  if ((v5[9] & 0x10) != 0)
  {
    self->_locationOfInterestType = *(v5 + 12);
    *&self->_has |= 0x10u;
  }

  if (*(v5 + 5))
  {
    [(HDCodableRoutineLocation *)self setGeoData:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v5 + 8);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HDCodableRoutineLocation *)self addVisits:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end