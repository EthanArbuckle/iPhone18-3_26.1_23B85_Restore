@interface MSPRouteBookmark
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPRouteBookmark

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPRouteBookmark;
  v4 = [(MSPRouteBookmark *)&v8 description];
  dictionaryRepresentation = [(MSPRouteBookmark *)self dictionaryRepresentation];
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
  if (self->_routeRequestStorage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  routeRequestStorage = self->_routeRequestStorage;
  if (routeRequestStorage)
  {
    [to setRouteRequestStorage:routeRequestStorage];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOStorageRouteRequestStorage *)self->_routeRequestStorage copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    routeRequestStorage = self->_routeRequestStorage;
    if (routeRequestStorage | equalCopy[2])
    {
      v6 = [(GEOStorageRouteRequestStorage *)routeRequestStorage isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  routeRequestStorage = self->_routeRequestStorage;
  v6 = fromCopy[2];
  if (routeRequestStorage)
  {
    if (v6)
    {
      [(GEOStorageRouteRequestStorage *)routeRequestStorage mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MSPRouteBookmark *)self setRouteRequestStorage:?];
  }

  MEMORY[0x2821F96F8]();
}

@end