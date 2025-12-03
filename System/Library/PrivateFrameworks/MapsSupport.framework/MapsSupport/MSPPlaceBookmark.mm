@interface MSPPlaceBookmark
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOrigin:(id)origin;
- (int)origin;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasOrigin:(BOOL)origin;
- (void)writeTo:(id)to;
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

- (void)setHasOrigin:(BOOL)origin
{
  if (origin)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsOrigin:(id)origin
{
  originCopy = origin;
  if ([originCopy isEqualToString:@"OTHER"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [originCopy isEqualToString:@"DROPPED_PIN"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPPlaceBookmark;
  v4 = [(MSPPlaceBookmark *)&v8 description];
  dictionaryRepresentation = [(MSPPlaceBookmark *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  mapItemStorage = self->_mapItemStorage;
  if (mapItemStorage)
  {
    dictionaryRepresentation = [(GEOMapItemStorage *)mapItemStorage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"mapItemStorage"];
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

    [dictionary setObject:v7 forKey:@"origin"];
  }

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  droppedPinCoordinate = self->_droppedPinCoordinate;
  if (droppedPinCoordinate)
  {
    dictionaryRepresentation2 = [(GEOLatLng *)droppedPinCoordinate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"droppedPinCoordinate"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_droppedPinFloorOrdinal];
    [dictionary setObject:v11 forKey:@"droppedPinFloorOrdinal"];
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
  v7 = toCopy;
  if (self->_mapItemStorage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    origin = self->_origin;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_droppedPinCoordinate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    droppedPinFloorOrdinal = self->_droppedPinFloorOrdinal;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_mapItemStorage)
  {
    [toCopy setMapItemStorage:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 10) = self->_origin;
    *(toCopy + 56) |= 2u;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }

  if (self->_droppedPinCoordinate)
  {
    [v5 setDroppedPinCoordinate:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_droppedPinFloorOrdinal;
    *(toCopy + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOMapItemStorage *)self->_mapItemStorage copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_origin;
    *(v5 + 56) |= 2u;
  }

  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(GEOLatLng *)self->_droppedPinCoordinate copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  mapItemStorage = self->_mapItemStorage;
  if (mapItemStorage | *(equalCopy + 4))
  {
    if (![(GEOMapItemStorage *)mapItemStorage isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v6 = *(equalCopy + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_origin != *(equalCopy + 10))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  title = self->_title;
  if (title | *(equalCopy + 6) && ![(NSString *)title isEqual:?])
  {
    goto LABEL_17;
  }

  droppedPinCoordinate = self->_droppedPinCoordinate;
  if (droppedPinCoordinate | *(equalCopy + 2))
  {
    if (![(GEOLatLng *)droppedPinCoordinate isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v9 = (*(equalCopy + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_droppedPinFloorOrdinal != *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  mapItemStorage = self->_mapItemStorage;
  v6 = *(fromCopy + 4);
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  if ((*(fromCopy + 56) & 2) != 0)
  {
    self->_origin = *(fromCopy + 10);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 6))
  {
    [(MSPPlaceBookmark *)self setTitle:?];
    fromCopy = v9;
  }

  droppedPinCoordinate = self->_droppedPinCoordinate;
  v8 = *(fromCopy + 2);
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

  fromCopy = v9;
LABEL_17:
  if (*(fromCopy + 56))
  {
    self->_droppedPinFloorOrdinal = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end