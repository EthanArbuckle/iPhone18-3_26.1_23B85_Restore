@interface MSPPlaceDisplay
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPPlaceDisplay

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPPlaceDisplay;
  v4 = [(MSPPlaceDisplay *)&v8 description];
  dictionaryRepresentation = [(MSPPlaceDisplay *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  placeMapItemStorage = self->_placeMapItemStorage;
  if (placeMapItemStorage)
  {
    dictionaryRepresentation = [(GEOMapItemStorage *)placeMapItemStorage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"placeMapItemStorage"];
  }

  supersededSearchIdentifier = self->_supersededSearchIdentifier;
  if (supersededSearchIdentifier)
  {
    [dictionary setObject:supersededSearchIdentifier forKey:@"supersededSearchIdentifier"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation2 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"Unknown Fields"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_placeMapItemStorage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_supersededSearchIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_placeMapItemStorage)
  {
    [toCopy setPlaceMapItemStorage:?];
    toCopy = v5;
  }

  if (self->_supersededSearchIdentifier)
  {
    [v5 setSupersededSearchIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOMapItemStorage *)self->_placeMapItemStorage copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_supersededSearchIdentifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((placeMapItemStorage = self->_placeMapItemStorage, !(placeMapItemStorage | equalCopy[2])) || -[GEOMapItemStorage isEqual:](placeMapItemStorage, "isEqual:")))
  {
    supersededSearchIdentifier = self->_supersededSearchIdentifier;
    if (supersededSearchIdentifier | equalCopy[3])
    {
      v7 = [(NSString *)supersededSearchIdentifier isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  placeMapItemStorage = self->_placeMapItemStorage;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (placeMapItemStorage)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(GEOMapItemStorage *)placeMapItemStorage mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MSPPlaceDisplay *)self setPlaceMapItemStorage:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[3])
  {
    [(MSPPlaceDisplay *)self setSupersededSearchIdentifier:?];
  }

  MEMORY[0x2821F96F8]();
}

@end