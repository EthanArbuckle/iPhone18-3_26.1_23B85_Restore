@interface NBPBRestoreResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NBPBRestoreResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NBPBRestoreResponse;
  v3 = [(NBPBRestoreResponse *)&v7 description];
  dictionaryRepresentation = [(NBPBRestoreResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  error = self->_error;
  if (error)
  {
    [v3 setObject:error forKey:@"error"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_error)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  error = self->_error;
  if (error)
  {
    [to setError:error];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_error copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    error = self->_error;
    if (error | equalCopy[1])
    {
      v6 = [(NSData *)error isEqual:?];
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
  if (*(from + 1))
  {
    [(NBPBRestoreResponse *)self setError:?];
  }
}

@end