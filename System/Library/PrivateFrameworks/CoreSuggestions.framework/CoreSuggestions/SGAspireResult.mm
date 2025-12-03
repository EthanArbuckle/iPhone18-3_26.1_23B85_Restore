@interface SGAspireResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SGAspireResult

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  geoList = self->_geoList;
  v6 = fromCopy[1];
  if (geoList)
  {
    if (v6)
    {
      [(SGGeoListSnippet *)geoList mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SGAspireResult *)self setGeoList:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    geoList = self->_geoList;
    if (geoList | equalCopy[1])
    {
      v6 = [(SGGeoListSnippet *)geoList isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SGGeoListSnippet *)self->_geoList copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  geoList = self->_geoList;
  if (geoList)
  {
    [to setGeoList:geoList];
  }
}

- (void)writeTo:(id)to
{
  if (self->_geoList)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  geoList = self->_geoList;
  if (geoList)
  {
    dictionaryRepresentation = [(SGGeoListSnippet *)geoList dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"geo_list"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGAspireResult;
  v4 = [(SGAspireResult *)&v8 description];
  dictionaryRepresentation = [(SGAspireResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end