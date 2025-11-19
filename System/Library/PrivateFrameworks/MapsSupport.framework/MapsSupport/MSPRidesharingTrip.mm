@interface MSPRidesharingTrip
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPRidesharingTrip

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPRidesharingTrip;
  v4 = [(MSPRidesharingTrip *)&v8 description];
  v5 = [(MSPRidesharingTrip *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  startWaypoint = self->_startWaypoint;
  if (startWaypoint)
  {
    v5 = [(GEOComposedWaypoint *)startWaypoint dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"startWaypoint"];
  }

  endWaypoint = self->_endWaypoint;
  if (endWaypoint)
  {
    v7 = [(GEOComposedWaypoint *)endWaypoint dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"endWaypoint"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v9 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"Unknown Fields"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startWaypoint)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_endWaypoint)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:v4];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startWaypoint)
  {
    [v4 setStartWaypoint:?];
    v4 = v5;
  }

  if (self->_endWaypoint)
  {
    [v5 setEndWaypoint:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GEOComposedWaypoint *)self->_startWaypoint copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(GEOComposedWaypoint *)self->_endWaypoint copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((startWaypoint = self->_startWaypoint, !(startWaypoint | v4[3])) || -[GEOComposedWaypoint isEqual:](startWaypoint, "isEqual:")))
  {
    endWaypoint = self->_endWaypoint;
    if (endWaypoint | v4[2])
    {
      v7 = [(GEOComposedWaypoint *)endWaypoint isEqual:?];
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
  startWaypoint = self->_startWaypoint;
  v6 = v4[3];
  v9 = v4;
  if (startWaypoint)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(GEOComposedWaypoint *)startWaypoint mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MSPRidesharingTrip *)self setStartWaypoint:?];
  }

  v4 = v9;
LABEL_7:
  endWaypoint = self->_endWaypoint;
  v8 = v4[2];
  if (endWaypoint)
  {
    if (v8)
    {
      [(GEOComposedWaypoint *)endWaypoint mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(MSPRidesharingTrip *)self setEndWaypoint:?];
  }

  MEMORY[0x2821F96F8]();
}

@end