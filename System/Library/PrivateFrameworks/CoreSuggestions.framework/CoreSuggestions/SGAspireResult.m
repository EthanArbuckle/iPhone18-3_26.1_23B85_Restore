@interface SGAspireResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGAspireResult

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  geoList = self->_geoList;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    geoList = self->_geoList;
    if (geoList | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SGGeoListSnippet *)self->_geoList copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  geoList = self->_geoList;
  if (geoList)
  {
    [a3 setGeoList:geoList];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_geoList)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  geoList = self->_geoList;
  if (geoList)
  {
    v5 = [(SGGeoListSnippet *)geoList dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"geo_list"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SGAspireResult;
  v4 = [(SGAspireResult *)&v8 description];
  v5 = [(SGAspireResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end