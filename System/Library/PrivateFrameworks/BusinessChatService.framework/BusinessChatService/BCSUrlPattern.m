@interface BCSUrlPattern
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSUrlPattern

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSUrlPattern;
  v4 = [(BCSUrlPattern *)&v8 description];
  v5 = [(BCSUrlPattern *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  path = self->_path;
  if (path)
  {
    [v3 setObject:path forKey:@"path"];
  }

  query = self->_query;
  if (query)
  {
    [v4 setObject:query forKey:@"query"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_path)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_query)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_path)
  {
    [v4 setPath:?];
    v4 = v5;
  }

  if (self->_query)
  {
    [v5 setQuery:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_path copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_query copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((path = self->_path, !(path | v4[1])) || -[NSString isEqual:](path, "isEqual:")))
  {
    query = self->_query;
    if (query | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(BCSUrlPattern *)self setPath:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(BCSUrlPattern *)self setQuery:?];
    v4 = v5;
  }
}

@end