@interface MSPDroppedPin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFloorOrdinal:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPDroppedPin

- (void)setHasFloorOrdinal:(BOOL)a3
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPDroppedPin;
  v4 = [(MSPDroppedPin *)&v8 description];
  v5 = [(MSPDroppedPin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  latLng = self->_latLng;
  if (latLng)
  {
    v5 = [(GEOLatLng *)latLng dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"latLng"];
  }

  mapRegion = self->_mapRegion;
  if (mapRegion)
  {
    v7 = [(GEOMapRegion *)mapRegion dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"mapRegion"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_floorOrdinal];
    [v3 setObject:v10 forKey:@"floorOrdinal"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v12 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_latLng)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_mapRegion)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    floorOrdinal = self->_floorOrdinal;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_latLng)
  {
    [v4 setLatLng:?];
    v4 = v6;
  }

  if (self->_mapRegion)
  {
    [v6 setMapRegion:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = *&self->_timestamp;
    *(v4 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 6) = self->_floorOrdinal;
    *(v4 + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GEOLatLng *)self->_latLng copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(GEOMapRegion *)self->_mapRegion copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_floorOrdinal;
    *(v5 + 48) |= 2u;
  }

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  latLng = self->_latLng;
  if (latLng | *(v4 + 4))
  {
    if (![(GEOLatLng *)latLng isEqual:?])
    {
      goto LABEL_15;
    }
  }

  mapRegion = self->_mapRegion;
  if (mapRegion | *(v4 + 5))
  {
    if (![(GEOMapRegion *)mapRegion isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(v4 + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_floorOrdinal != *(v4 + 6))
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
  v3 = [(GEOLatLng *)self->_latLng hash];
  v4 = [(GEOMapRegion *)self->_mapRegion hash];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v5.i64 = floor(timestamp + 0.5);
    v9 = (timestamp - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_floorOrdinal;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  latLng = self->_latLng;
  v6 = *(v4 + 4);
  v10 = v4;
  if (latLng)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(GEOLatLng *)latLng mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MSPDroppedPin *)self setLatLng:?];
  }

  v4 = v10;
LABEL_7:
  mapRegion = self->_mapRegion;
  v8 = *(v4 + 5);
  if (mapRegion)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(GEOMapRegion *)mapRegion mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(MSPDroppedPin *)self setMapRegion:?];
  }

  v4 = v10;
LABEL_13:
  v9 = *(v4 + 48);
  if (v9)
  {
    self->_timestamp = *(v4 + 2);
    *&self->_has |= 1u;
    v9 = *(v4 + 48);
  }

  if ((v9 & 2) != 0)
  {
    self->_floorOrdinal = *(v4 + 6);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end