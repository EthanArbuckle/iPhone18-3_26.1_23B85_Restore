@interface MSPBookmarkStorage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasType:(BOOL)a3
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PLACE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ROUTE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"REGION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TRANSIT_LINE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTimestamp:(BOOL)a3
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
  v8.super_class = MSPBookmarkStorage;
  v4 = [(MSPBookmarkStorage *)&v8 description];
  v5 = [(MSPBookmarkStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKey:@"type"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_position];
    [v3 setObject:v8 forKey:@"position"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];
  }

  placeBookmark = self->_placeBookmark;
  if (placeBookmark)
  {
    v11 = [(MSPPlaceBookmark *)placeBookmark dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"placeBookmark"];
  }

  routeBookmark = self->_routeBookmark;
  if (routeBookmark)
  {
    v13 = [(MSPRouteBookmark *)routeBookmark dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"routeBookmark"];
  }

  regionBookmark = self->_regionBookmark;
  if (regionBookmark)
  {
    v15 = [(MSPRegionBookmark *)regionBookmark dictionaryRepresentation];
    [v3 setObject:v15 forKey:@"regionBookmark"];
  }

  transitLineBookmark = self->_transitLineBookmark;
  if (transitLineBookmark)
  {
    v17 = [(MSPTransitLineBookmark *)transitLineBookmark dictionaryRepresentation];
    [v3 setObject:v17 forKey:@"transitLineBookmark"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v19 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v19 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if ((*&self->_has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    position = self->_position;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

  if (self->_placeBookmark)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_routeBookmark)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_regionBookmark)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_transitLineBookmark)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[18] = self->_type;
    *(v4 + 76) |= 4u;
  }

  v6 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = *&self->_position;
    *(v4 + 76) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 3) = *&self->_timestamp;
    *(v4 + 76) |= 2u;
  }

  if (self->_placeBookmark)
  {
    [v6 setPlaceBookmark:?];
    v4 = v6;
  }

  if (self->_routeBookmark)
  {
    [v6 setRouteBookmark:?];
    v4 = v6;
  }

  if (self->_regionBookmark)
  {
    [v6 setRegionBookmark:?];
    v4 = v6;
  }

  if (self->_transitLineBookmark)
  {
    [v6 setTransitLineBookmark:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 72) = self->_type;
    *(v5 + 76) |= 4u;
  }

  v7 = [(NSString *)self->_identifier copyWithZone:a3];
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

  v10 = [(MSPPlaceBookmark *)self->_placeBookmark copyWithZone:a3];
  v11 = *(v6 + 40);
  *(v6 + 40) = v10;

  v12 = [(MSPRouteBookmark *)self->_routeBookmark copyWithZone:a3];
  v13 = *(v6 + 56);
  *(v6 + 56) = v12;

  v14 = [(MSPRegionBookmark *)self->_regionBookmark copyWithZone:a3];
  v15 = *(v6 + 48);
  *(v6 + 48) = v14;

  v16 = [(MSPTransitLineBookmark *)self->_transitLineBookmark copyWithZone:a3];
  v17 = *(v6 + 64);
  *(v6 + 64) = v16;

  objc_storeStrong((v6 + 8), self->_unknownFields);
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  has = self->_has;
  v6 = *(v4 + 76);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 76) & 4) == 0 || self->_type != *(v4 + 18))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 76) & 4) != 0)
  {
    goto LABEL_28;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
LABEL_28:
      v13 = 0;
      goto LABEL_29;
    }

    has = self->_has;
  }

  v8 = *(v4 + 76);
  if (has)
  {
    if ((*(v4 + 76) & 1) == 0 || self->_position != *(v4 + 2))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 76))
  {
    goto LABEL_28;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 76) & 2) == 0 || self->_timestamp != *(v4 + 3))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 76) & 2) != 0)
  {
    goto LABEL_28;
  }

  placeBookmark = self->_placeBookmark;
  if (placeBookmark | *(v4 + 5) && ![(MSPPlaceBookmark *)placeBookmark isEqual:?])
  {
    goto LABEL_28;
  }

  routeBookmark = self->_routeBookmark;
  if (routeBookmark | *(v4 + 7))
  {
    if (![(MSPRouteBookmark *)routeBookmark isEqual:?])
    {
      goto LABEL_28;
    }
  }

  regionBookmark = self->_regionBookmark;
  if (regionBookmark | *(v4 + 6))
  {
    if (![(MSPRegionBookmark *)regionBookmark isEqual:?])
    {
      goto LABEL_28;
    }
  }

  transitLineBookmark = self->_transitLineBookmark;
  if (transitLineBookmark | *(v4 + 8))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[19] & 4) != 0)
  {
    self->_type = v4[18];
    *&self->_has |= 4u;
  }

  v15 = v4;
  if (*(v4 + 4))
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