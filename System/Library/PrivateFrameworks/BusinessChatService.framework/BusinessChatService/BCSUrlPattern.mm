@interface BCSUrlPattern
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCSUrlPattern

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSUrlPattern;
  v4 = [(BCSUrlPattern *)&v8 description];
  dictionaryRepresentation = [(BCSUrlPattern *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  path = self->_path;
  if (path)
  {
    [dictionary setObject:path forKey:@"path"];
  }

  query = self->_query;
  if (query)
  {
    [v4 setObject:query forKey:@"query"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_path)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_query)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_path)
  {
    [toCopy setPath:?];
    toCopy = v5;
  }

  if (self->_query)
  {
    [v5 setQuery:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_path copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_query copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((path = self->_path, !(path | equalCopy[1])) || -[NSString isEqual:](path, "isEqual:")))
  {
    query = self->_query;
    if (query | equalCopy[2])
    {
      v7 = [(NSString *)query isEqual:?];
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
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(BCSUrlPattern *)self setPath:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BCSUrlPattern *)self setQuery:?];
    fromCopy = v5;
  }
}

@end