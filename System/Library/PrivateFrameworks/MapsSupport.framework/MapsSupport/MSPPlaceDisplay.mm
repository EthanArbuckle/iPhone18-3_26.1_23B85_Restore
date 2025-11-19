@interface MSPPlaceDisplay
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPPlaceDisplay

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPPlaceDisplay;
  v4 = [(MSPPlaceDisplay *)&v8 description];
  v5 = [(MSPPlaceDisplay *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  placeMapItemStorage = self->_placeMapItemStorage;
  if (placeMapItemStorage)
  {
    v5 = [(GEOMapItemStorage *)placeMapItemStorage dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"placeMapItemStorage"];
  }

  supersededSearchIdentifier = self->_supersededSearchIdentifier;
  if (supersededSearchIdentifier)
  {
    [v3 setObject:supersededSearchIdentifier forKey:@"supersededSearchIdentifier"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v8 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_placeMapItemStorage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_supersededSearchIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_placeMapItemStorage)
  {
    [v4 setPlaceMapItemStorage:?];
    v4 = v5;
  }

  if (self->_supersededSearchIdentifier)
  {
    [v5 setSupersededSearchIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GEOMapItemStorage *)self->_placeMapItemStorage copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_supersededSearchIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((placeMapItemStorage = self->_placeMapItemStorage, !(placeMapItemStorage | v4[2])) || -[GEOMapItemStorage isEqual:](placeMapItemStorage, "isEqual:")))
  {
    supersededSearchIdentifier = self->_supersededSearchIdentifier;
    if (supersededSearchIdentifier | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  placeMapItemStorage = self->_placeMapItemStorage;
  v6 = v4[2];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[3])
  {
    [(MSPPlaceDisplay *)self setSupersededSearchIdentifier:?];
  }

  MEMORY[0x2821F96F8]();
}

@end