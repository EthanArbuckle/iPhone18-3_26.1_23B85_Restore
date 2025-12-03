@interface MSPRegionBookmark
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPRegionBookmark

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPRegionBookmark;
  v4 = [(MSPRegionBookmark *)&v8 description];
  dictionaryRepresentation = [(MSPRegionBookmark *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  region = self->_region;
  if (region)
  {
    dictionaryRepresentation = [(GEOMapRegion *)region dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"region"];
  }

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
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
  if (self->_region)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_title)
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
  if (self->_region)
  {
    [toCopy setRegion:?];
    toCopy = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOMapRegion *)self->_region copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((region = self->_region, !(region | equalCopy[2])) || -[GEOMapRegion isEqual:](region, "isEqual:")))
  {
    title = self->_title;
    if (title | equalCopy[3])
    {
      v7 = [(NSString *)title isEqual:?];
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
  region = self->_region;
  v6 = fromCopy[2];
  v7 = fromCopy;
  if (region)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(GEOMapRegion *)region mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(MSPRegionBookmark *)self setRegion:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[3])
  {
    [(MSPRegionBookmark *)self setTitle:?];
  }

  MEMORY[0x2821F96F8]();
}

@end