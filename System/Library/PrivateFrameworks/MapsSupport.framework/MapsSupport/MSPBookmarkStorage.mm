@interface MSPBookmarkStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation MSPBookmarkStorage

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PLACE"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ROUTE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"REGION"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"TRANSIT_LINE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
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
  v8.super_class = MSPBookmarkStorage;
  v4 = [(MSPBookmarkStorage *)&v8 description];
  dictionaryRepresentation = [(MSPBookmarkStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = self->_type - 1;
    if (v4 >= 4)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_279868730[v4];
    }

    [dictionary setObject:v5 forKey:@"type"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_position];
    [dictionary setObject:v8 forKey:@"position"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [dictionary setObject:v9 forKey:@"timestamp"];
  }

  placeBookmark = self->_placeBookmark;
  if (placeBookmark)
  {
    dictionaryRepresentation = [(MSPPlaceBookmark *)placeBookmark dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"placeBookmark"];
  }

  routeBookmark = self->_routeBookmark;
  if (routeBookmark)
  {
    dictionaryRepresentation2 = [(MSPRouteBookmark *)routeBookmark dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"routeBookmark"];
  }

  regionBookmark = self->_regionBookmark;
  if (regionBookmark)
  {
    dictionaryRepresentation3 = [(MSPRegionBookmark *)regionBookmark dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"regionBookmark"];
  }

  transitLineBookmark = self->_transitLineBookmark;
  if (transitLineBookmark)
  {
    dictionaryRepresentation4 = [(MSPTransitLineBookmark *)transitLineBookmark dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"transitLineBookmark"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation5 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    position = self->_position;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

  if (self->_placeBookmark)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_routeBookmark)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_regionBookmark)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_transitLineBookmark)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[18] = self->_type;
    *(toCopy + 76) |= 4u;
  }

  v6 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = *&self->_position;
    *(toCopy + 76) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 3) = *&self->_timestamp;
    *(toCopy + 76) |= 2u;
  }

  if (self->_placeBookmark)
  {
    [v6 setPlaceBookmark:?];
    toCopy = v6;
  }

  if (self->_routeBookmark)
  {
    [v6 setRouteBookmark:?];
    toCopy = v6;
  }

  if (self->_regionBookmark)
  {
    [v6 setRegionBookmark:?];
    toCopy = v6;
  }

  if (self->_transitLineBookmark)
  {
    [v6 setTransitLineBookmark:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 72) = self->_type;
    *(v5 + 76) |= 4u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  has = self->_has;
  if (has)
  {
    *(v6 + 16) = self->_position;
    *(v6 + 76) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 24) = self->_timestamp;
    *(v6 + 76) |= 2u;
  }

  v10 = [(MSPPlaceBookmark *)self->_placeBookmark copyWithZone:zone];
  v11 = *(v6 + 40);
  *(v6 + 40) = v10;

  v12 = [(MSPRouteBookmark *)self->_routeBookmark copyWithZone:zone];
  v13 = *(v6 + 56);
  *(v6 + 56) = v12;

  v14 = [(MSPRegionBookmark *)self->_regionBookmark copyWithZone:zone];
  v15 = *(v6 + 48);
  *(v6 + 48) = v14;

  v16 = [(MSPTransitLineBookmark *)self->_transitLineBookmark copyWithZone:zone];
  v17 = *(v6 + 64);
  *(v6 + 64) = v16;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  has = self->_has;
  v6 = *(equalCopy + 76);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 76) & 4) == 0 || self->_type != *(equalCopy + 18))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 76) & 4) != 0)
  {
    goto LABEL_28;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
LABEL_28:
      v13 = 0;
      goto LABEL_29;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 76);
  if (has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_position != *(equalCopy + 2))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_28;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_timestamp != *(equalCopy + 3))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
    goto LABEL_28;
  }

  placeBookmark = self->_placeBookmark;
  if (placeBookmark | *(equalCopy + 5) && ![(MSPPlaceBookmark *)placeBookmark isEqual:?])
  {
    goto LABEL_28;
  }

  routeBookmark = self->_routeBookmark;
  if (routeBookmark | *(equalCopy + 7))
  {
    if (![(MSPRouteBookmark *)routeBookmark isEqual:?])
    {
      goto LABEL_28;
    }
  }

  regionBookmark = self->_regionBookmark;
  if (regionBookmark | *(equalCopy + 6))
  {
    if (![(MSPRegionBookmark *)regionBookmark isEqual:?])
    {
      goto LABEL_28;
    }
  }

  transitLineBookmark = self->_transitLineBookmark;
  if (transitLineBookmark | *(equalCopy + 8))
  {
    v13 = [(MSPTransitLineBookmark *)transitLineBookmark isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_29:

  return v13;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    position = self->_position;
    if (position < 0.0)
    {
      position = -position;
    }

    *v5.i64 = floor(position + 0.5);
    v9 = (position - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
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
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v5.i64 = floor(timestamp + 0.5);
    v13 = (timestamp - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = v4 ^ v3 ^ v7 ^ v11 ^ [(MSPPlaceBookmark *)self->_placeBookmark hash];
  v16 = [(MSPRouteBookmark *)self->_routeBookmark hash];
  v17 = v16 ^ [(MSPRegionBookmark *)self->_regionBookmark hash];
  return v15 ^ v17 ^ [(MSPTransitLineBookmark *)self->_transitLineBookmark hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[19] & 4) != 0)
  {
    self->_type = fromCopy[18];
    *&self->_has |= 4u;
  }

  v15 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(MSPBookmarkStorage *)self setIdentifier:?];
    v5 = v15;
  }

  v6 = *(v5 + 76);
  if (v6)
  {
    self->_position = *(v5 + 2);
    *&self->_has |= 1u;
    v6 = *(v5 + 76);
  }

  if ((v6 & 2) != 0)
  {
    self->_timestamp = *(v5 + 3);
    *&self->_has |= 2u;
  }

  placeBookmark = self->_placeBookmark;
  v8 = *(v5 + 5);
  if (placeBookmark)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(MSPPlaceBookmark *)placeBookmark mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(MSPBookmarkStorage *)self setPlaceBookmark:?];
  }

  v5 = v15;
LABEL_15:
  routeBookmark = self->_routeBookmark;
  v10 = *(v5 + 7);
  if (routeBookmark)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    [(MSPRouteBookmark *)routeBookmark mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    [(MSPBookmarkStorage *)self setRouteBookmark:?];
  }

  v5 = v15;
LABEL_21:
  regionBookmark = self->_regionBookmark;
  v12 = *(v5 + 6);
  if (regionBookmark)
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    [(MSPRegionBookmark *)regionBookmark mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    [(MSPBookmarkStorage *)self setRegionBookmark:?];
  }

  v5 = v15;
LABEL_27:
  transitLineBookmark = self->_transitLineBookmark;
  v14 = *(v5 + 8);
  if (transitLineBookmark)
  {
    if (v14)
    {
      [(MSPTransitLineBookmark *)transitLineBookmark mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(MSPBookmarkStorage *)self setTransitLineBookmark:?];
  }

  MEMORY[0x2821F96F8]();
}

@end