@interface MSPTransitLineBookmark
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPTransitLineBookmark

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPTransitLineBookmark;
  v4 = [(MSPTransitLineBookmark *)&v8 description];
  dictionaryRepresentation = [(MSPTransitLineBookmark *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  transitLineStorage = self->_transitLineStorage;
  if (transitLineStorage)
  {
    dictionaryRepresentation = [(MSPTransitStorageLine *)transitLineStorage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"transitLineStorage"];
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
  if (self->_transitLineStorage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy];
}

- (void)copyTo:(id)to
{
  transitLineStorage = self->_transitLineStorage;
  if (transitLineStorage)
  {
    [to setTransitLineStorage:transitLineStorage];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MSPTransitStorageLine *)self->_transitLineStorage copyWithZone:zone];
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
    transitLineStorage = self->_transitLineStorage;
    if (transitLineStorage | equalCopy[2])
    {
      v6 = [(MSPTransitStorageLine *)transitLineStorage isEqual:?];
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
  transitLineStorage = self->_transitLineStorage;
  v6 = fromCopy[2];
  if (transitLineStorage)
  {
    if (v6)
    {
      [(MSPTransitStorageLine *)transitLineStorage mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MSPTransitLineBookmark *)self setTransitLineStorage:?];
  }

  MEMORY[0x2821F96F8]();
}

@end