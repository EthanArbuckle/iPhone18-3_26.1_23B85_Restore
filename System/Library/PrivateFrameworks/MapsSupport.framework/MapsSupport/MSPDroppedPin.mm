@interface MSPDroppedPin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFloorOrdinal:(BOOL)ordinal;
- (void)writeTo:(id)to;
@end

@implementation MSPDroppedPin

- (void)setHasFloorOrdinal:(BOOL)ordinal
{
  if (ordinal)
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
  dictionaryRepresentation = [(MSPDroppedPin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  latLng = self->_latLng;
  if (latLng)
  {
    dictionaryRepresentation = [(GEOLatLng *)latLng dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"latLng"];
  }

  mapRegion = self->_mapRegion;
  if (mapRegion)
  {
    dictionaryRepresentation2 = [(GEOMapRegion *)mapRegion dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"mapRegion"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [dictionary setObject:v9 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_floorOrdinal];
    [dictionary setObject:v10 forKey:@"floorOrdinal"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation3 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_latLng)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_mapRegion)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    floorOrdinal = self->_floorOrdinal;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_latLng)
  {
    [toCopy setLatLng:?];
    toCopy = v6;
  }

  if (self->_mapRegion)
  {
    [v6 setMapRegion:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = *&self->_timestamp;
    *(toCopy + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 6) = self->_floorOrdinal;
    *(toCopy + 48) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOLatLng *)self->_latLng copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(GEOMapRegion *)self->_mapRegion copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  latLng = self->_latLng;
  if (latLng | *(equalCopy + 4))
  {
    if (![(GEOLatLng *)latLng isEqual:?])
    {
      goto LABEL_15;
    }
  }

  mapRegion = self->_mapRegion;
  if (mapRegion | *(equalCopy + 5))
  {
    if (![(GEOMapRegion *)mapRegion isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v7 = 0;
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_floorOrdinal != *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  latLng = self->_latLng;
  v6 = *(fromCopy + 4);
  v10 = fromCopy;
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

  fromCopy = v10;
LABEL_7:
  mapRegion = self->_mapRegion;
  v8 = *(fromCopy + 5);
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

  fromCopy = v10;
LABEL_13:
  v9 = *(fromCopy + 48);
  if (v9)
  {
    self->_timestamp = *(fromCopy + 2);
    *&self->_has |= 1u;
    v9 = *(fromCopy + 48);
  }

  if ((v9 & 2) != 0)
  {
    self->_floorOrdinal = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end