@interface MSPRegionBookmark
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MSPRegionBookmark

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPRegionBookmark;
  v4 = [(MSPRegionBookmark *)&v8 description];
  v5 = [(MSPRegionBookmark *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  region = self->_region;
  if (region)
  {
    v5 = [(GEOMapRegion *)region dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"region"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
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
  if (self->_region)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_title)
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
  if (self->_region)
  {
    [v4 setRegion:?];
    v4 = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GEOMapRegion *)self->_region copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  objc_storeStrong((v5 + 8), self->_unknownFields);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((region = self->_region, !(region | v4[2])) || -[GEOMapRegion isEqual:](region, "isEqual:")))
  {
    title = self->_title;
    if (title | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  region = self->_region;
  v6 = v4[2];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[3])
  {
    [(MSPRegionBookmark *)self setTitle:?];
  }

  MEMORY[0x2821F96F8]();
}

@end