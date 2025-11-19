@interface MSPDirectionsSearch
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPDirectionsSearch

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPDirectionsSearch;
  v4 = [(MSPDirectionsSearch *)&v8 description];
  v5 = [(MSPDirectionsSearch *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  routeRequestStorage = self->_routeRequestStorage;
  if (routeRequestStorage)
  {
    v5 = [(GEOStorageRouteRequestStorage *)routeRequestStorage dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"routeRequestStorage"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_navigationInterrupted];
    [v3 setObject:v6 forKey:@"navigationInterrupted"];
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
  v6 = v4;
  if (self->_routeRequestStorage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    navigationInterrupted = self->_navigationInterrupted;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_routeRequestStorage)
  {
    v5 = v4;
    [v4 setRouteRequestStorage:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_navigationInterrupted;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GEOStorageRouteRequestStorage *)self->_routeRequestStorage copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  routeRequestStorage = self->_routeRequestStorage;
  if (routeRequestStorage | *(v4 + 2))
  {
    if (![(GEOStorageRouteRequestStorage *)routeRequestStorage isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_navigationInterrupted)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  routeRequestStorage = self->_routeRequestStorage;
  v6 = *(v4 + 2);
  if (routeRequestStorage)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(GEOStorageRouteRequestStorage *)routeRequestStorage mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(MSPDirectionsSearch *)self setRouteRequestStorage:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 28))
  {
    self->_navigationInterrupted = *(v4 + 24);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end