@interface MSPPlaceBookmark
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOrigin:(id)a3;
- (int)origin;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOrigin:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPPlaceBookmark

- (int)origin
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_origin;
  }

  else
  {
    return 0;
  }
}

- (void)setHasOrigin:(BOOL)a3
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

- (int)StringAsOrigin:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"OTHER"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"DROPPED_PIN"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPPlaceBookmark;
  v4 = [(MSPPlaceBookmark *)&v8 description];
  v5 = [(MSPPlaceBookmark *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  mapItemStorage = self->_mapItemStorage;
  if (mapItemStorage)
  {
    v5 = [(GEOMapItemStorage *)mapItemStorage dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"mapItemStorage"];
  }

  if ((*&self->_has & 2) != 0)
  {
    origin = self->_origin;
    if (origin)
    {
      if (origin == 1)
      {
        v7 = @"DROPPED_PIN";
      }

      else
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_origin];
      }
    }

    else
    {
      v7 = @"OTHER";
    }

    [v3 setObject:v7 forKey:@"origin"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  droppedPinCoordinate = self->_droppedPinCoordinate;
  if (droppedPinCoordinate)
  {
    v10 = [(GEOLatLng *)droppedPinCoordinate dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"droppedPinCoordinate"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_droppedPinFloorOrdinal];
    [v3 setObject:v11 forKey:@"droppedPinFloorOrdinal"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v13 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_mapItemStorage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    origin = self->_origin;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_droppedPinCoordinate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (*&self->_has)
  {
    droppedPinFloorOrdinal = self->_droppedPinFloorOrdinal;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_mapItemStorage)
  {
    [v4 setMapItemStorage:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 10) = self->_origin;
    *(v4 + 56) |= 2u;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }

  if (self->_droppedPinCoordinate)
  {
    [v5 setDroppedPinCoordinate:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_droppedPinFloorOrdinal;
    *(v4 + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GEOMapItemStorage *)self->_mapItemStorage copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_origin;
    *(v5 + 56) |= 2u;
  }

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(GEOLatLng *)self->_droppedPinCoordinate copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_droppedPinFloorOrdinal;
    *(v5 + 56) |= 1u;
  }

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  mapItemStorage = self->_mapItemStorage;
  if (mapItemStorage | *(v4 + 4))
  {
    if (![(GEOMapItemStorage *)mapItemStorage isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v6 = *(v4 + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_origin != *(v4 + 10))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  title = self->_title;
  if (title | *(v4 + 6) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_17;
  }

  droppedPinCoordinate = self->_droppedPinCoordinate;
  if (droppedPinCoordinate | *(v4 + 2))
  {
    if (![(GEOLatLng *)droppedPinCoordinate isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = (*(v4 + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_droppedPinFloorOrdinal != *(v4 + 6))
    {
      goto LABEL_17;
    }

    v9 = 1;
  }

LABEL_18:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(GEOMapItemStorage *)self->_mapItemStorage hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_origin;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_title hash];
  v6 = [(GEOLatLng *)self->_droppedPinCoordinate hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_droppedPinFloorOrdinal;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  mapItemStorage = self->_mapItemStorage;
  v6 = *(v4 + 4);
  v9 = v4;
  if (mapItemStorage)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(GEOMapItemStorage *)mapItemStorage mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MSPPlaceBookmark *)self setMapItemStorage:?];
  }

  v4 = v9;
LABEL_7:
  if ((*(v4 + 56) & 2) != 0)
  {
    self->_origin = *(v4 + 10);
    *&self->_has |= 2u;
  }

  if (*(v4 + 6))
  {
    [(MSPPlaceBookmark *)self setTitle:?];
    v4 = v9;
  }

  droppedPinCoordinate = self->_droppedPinCoordinate;
  v8 = *(v4 + 2);
  if (droppedPinCoordinate)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(GEOLatLng *)droppedPinCoordinate mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(MSPPlaceBookmark *)self setDroppedPinCoordinate:?];
  }

  v4 = v9;
LABEL_17:
  if (*(v4 + 56))
  {
    self->_droppedPinFloorOrdinal = *(v4 + 6);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end