@interface NBPBRestoreResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NBPBRestoreResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = NBPBRestoreResponse;
  v3 = [(NBPBRestoreResponse *)&v7 description];
  v4 = [(NBPBRestoreResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  if (self->_error)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  error = self->_error;
  if (error)
  {
    [a3 setError:error];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_error copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    error = self->_error;
    if (error | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(NBPBRestoreResponse *)self setError:?];
  }
}

@end