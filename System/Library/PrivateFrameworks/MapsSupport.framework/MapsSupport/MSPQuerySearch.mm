@interface MSPQuerySearch
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MSPQuerySearch

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPQuerySearch;
  v4 = [(MSPQuerySearch *)&v8 description];
  dictionaryRepresentation = [(MSPQuerySearch *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  query = self->_query;
  if (query)
  {
    [dictionary setObject:query forKey:@"query"];
  }

  locationDisplayString = self->_locationDisplayString;
  if (locationDisplayString)
  {
    [v4 setObject:locationDisplayString forKey:@"locationDisplayString"];
  }

  language = self->_language;
  if (language)
  {
    [v4 setObject:language forKey:@"language"];
  }

  mapRegion = self->_mapRegion;
  if (mapRegion)
  {
    dictionaryRepresentation = [(GEOMapRegion *)mapRegion dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"mapRegion"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation2 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_query)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_locationDisplayString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_mapRegion)
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
  if (self->_query)
  {
    [toCopy setQuery:?];
    toCopy = v5;
  }

  if (self->_locationDisplayString)
  {
    [v5 setLocationDisplayString:?];
    toCopy = v5;
  }

  if (self->_language)
  {
    [v5 setLanguage:?];
    toCopy = v5;
  }

  if (self->_mapRegion)
  {
    [v5 setMapRegion:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_query copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_locationDisplayString copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_language copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(GEOMapRegion *)self->_mapRegion copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((query = self->_query, !(query | equalCopy[5])) || -[NSString isEqual:](query, "isEqual:")) && ((locationDisplayString = self->_locationDisplayString, !(locationDisplayString | equalCopy[3])) || -[NSString isEqual:](locationDisplayString, "isEqual:")) && ((language = self->_language, !(language | equalCopy[2])) || -[NSString isEqual:](language, "isEqual:")))
  {
    mapRegion = self->_mapRegion;
    if (mapRegion | equalCopy[4])
    {
      v9 = [(GEOMapRegion *)mapRegion isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_query hash];
  v4 = [(NSString *)self->_locationDisplayString hash]^ v3;
  v5 = [(NSString *)self->_language hash];
  return v4 ^ v5 ^ [(GEOMapRegion *)self->_mapRegion hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    [(MSPQuerySearch *)self setQuery:?];
  }

  if (fromCopy[3])
  {
    [(MSPQuerySearch *)self setLocationDisplayString:?];
  }

  if (fromCopy[2])
  {
    [(MSPQuerySearch *)self setLanguage:?];
  }

  mapRegion = self->_mapRegion;
  v5 = fromCopy[4];
  if (mapRegion)
  {
    if (v5)
    {
      [(GEOMapRegion *)mapRegion mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(MSPQuerySearch *)self setMapRegion:?];
  }
}

@end