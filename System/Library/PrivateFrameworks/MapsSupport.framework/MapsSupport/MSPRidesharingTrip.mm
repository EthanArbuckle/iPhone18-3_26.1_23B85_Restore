@interface MSPRidesharingTrip
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPRidesharingTrip

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPRidesharingTrip;
  v4 = [(MSPRidesharingTrip *)&v8 description];
  dictionaryRepresentation = [(MSPRidesharingTrip *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  startWaypoint = self->_startWaypoint;
  if (startWaypoint)
  {
    dictionaryRepresentation = [(GEOComposedWaypoint *)startWaypoint dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"startWaypoint"];
  }

  endWaypoint = self->_endWaypoint;
  if (endWaypoint)
  {
    dictionaryRepresentation2 = [(GEOComposedWaypoint *)endWaypoint dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"endWaypoint"];
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
  v5 = toCopy;
  if (self->_startWaypoint)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_endWaypoint)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_startWaypoint)
  {
    [toCopy setStartWaypoint:?];
    toCopy = v5;
  }

  if (self->_endWaypoint)
  {
    [v5 setEndWaypoint:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOComposedWaypoint *)self->_startWaypoint copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(GEOComposedWaypoint *)self->_endWaypoint copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((startWaypoint = self->_startWaypoint, !(startWaypoint | equalCopy[3])) || -[GEOComposedWaypoint isEqual:](startWaypoint, "isEqual:")))
  {
    endWaypoint = self->_endWaypoint;
    if (endWaypoint | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  startWaypoint = self->_startWaypoint;
  v6 = fromCopy[3];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  endWaypoint = self->_endWaypoint;
  v8 = fromCopy[2];
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