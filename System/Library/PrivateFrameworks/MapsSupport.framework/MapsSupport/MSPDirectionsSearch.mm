@interface MSPDirectionsSearch
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPDirectionsSearch

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPDirectionsSearch;
  v4 = [(MSPDirectionsSearch *)&v8 description];
  dictionaryRepresentation = [(MSPDirectionsSearch *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  routeRequestStorage = self->_routeRequestStorage;
  if (routeRequestStorage)
  {
    dictionaryRepresentation = [(GEOStorageRouteRequestStorage *)routeRequestStorage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"routeRequestStorage"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_navigationInterrupted];
    [dictionary setObject:v6 forKey:@"navigationInterrupted"];
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
  v6 = toCopy;
  if (self->_routeRequestStorage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    navigationInterrupted = self->_navigationInterrupted;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_routeRequestStorage)
  {
    v5 = toCopy;
    [toCopy setRouteRequestStorage:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_navigationInterrupted;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOStorageRouteRequestStorage *)self->_routeRequestStorage copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_navigationInterrupted;
    *(v5 + 28) |= 1u;
  }

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  routeRequestStorage = self->_routeRequestStorage;
  if (routeRequestStorage | *(equalCopy + 2))
  {
    if (![(GEOStorageRouteRequestStorage *)routeRequestStorage isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_navigationInterrupted)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(GEOStorageRouteRequestStorage *)self->_routeRequestStorage hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_navigationInterrupted;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  routeRequestStorage = self->_routeRequestStorage;
  v6 = *(fromCopy + 2);
  if (routeRequestStorage)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(GEOStorageRouteRequestStorage *)routeRequestStorage mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(MSPDirectionsSearch *)self setRouteRequestStorage:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 28))
  {
    self->_navigationInterrupted = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end