@interface MSPQuerySearch
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPQuerySearch

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPQuerySearch;
  v4 = [(MSPQuerySearch *)&v8 description];
  v5 = [(MSPQuerySearch *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  query = self->_query;
  if (query)
  {
    [v3 setObject:query forKey:@"query"];
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
    v9 = [(GEOMapRegion *)mapRegion dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"mapRegion"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    v11 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_query)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_locationDisplayString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_mapRegion)
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
  if (self->_query)
  {
    [v4 setQuery:?];
    v4 = v5;
  }

  if (self->_locationDisplayString)
  {
    [v5 setLocationDisplayString:?];
    v4 = v5;
  }

  if (self->_language)
  {
    [v5 setLanguage:?];
    v4 = v5;
  }

  if (self->_mapRegion)
  {
    [v5 setMapRegion:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_query copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_locationDisplayString copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_language copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(GEOMapRegion *)self->_mapRegion copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((query = self->_query, !(query | v4[5])) || -[NSString isEqual:](query, "isEqual:")) && ((locationDisplayString = self->_locationDisplayString, !(locationDisplayString | v4[3])) || -[NSString isEqual:](locationDisplayString, "isEqual:")) && ((language = self->_language, !(language | v4[2])) || -[NSString isEqual:](language, "isEqual:")))
  {
    mapRegion = self->_mapRegion;
    if (mapRegion | v4[4])
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

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[5])
  {
    [(MSPQuerySearch *)self setQuery:?];
  }

  if (v6[3])
  {
    [(MSPQuerySearch *)self setLocationDisplayString:?];
  }

  if (v6[2])
  {
    [(MSPQuerySearch *)self setLanguage:?];
  }

  mapRegion = self->_mapRegion;
  v5 = v6[4];
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