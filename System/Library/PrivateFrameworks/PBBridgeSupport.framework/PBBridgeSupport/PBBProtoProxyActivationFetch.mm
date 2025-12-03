@interface PBBProtoProxyActivationFetch
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
@end

@implementation PBBProtoProxyActivationFetch

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoProxyActivationFetch;
  v4 = [(PBBProtoProxyActivationFetch *)&v8 description];
  dictionaryRepresentation = [(PBBProtoProxyActivationFetch *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  request = self->_request;
  if (request)
  {
    [dictionary setObject:request forKey:@"request"];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_request copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    request = self->_request;
    if (request | equalCopy[1])
    {
      v6 = [(NSData *)request isEqual:?];
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
    [(PBBProtoProxyActivationFetch *)self setRequest:?];
  }
}

@end