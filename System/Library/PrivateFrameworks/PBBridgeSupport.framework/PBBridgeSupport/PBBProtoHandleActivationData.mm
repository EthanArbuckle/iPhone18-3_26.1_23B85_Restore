@interface PBBProtoHandleActivationData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoHandleActivationData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoHandleActivationData;
  v4 = [(PBBProtoHandleActivationData *)&v8 description];
  dictionaryRepresentation = [(PBBProtoHandleActivationData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  activationData = self->_activationData;
  if (activationData)
  {
    [dictionary setObject:activationData forKey:@"activationData"];
  }

  responseHeaders = self->_responseHeaders;
  if (responseHeaders)
  {
    [v4 setObject:responseHeaders forKey:@"responseHeaders"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  activationData = self->_activationData;
  toCopy = to;
  PBDataWriterWriteDataField();
  responseHeaders = self->_responseHeaders;
  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  activationData = self->_activationData;
  toCopy = to;
  [toCopy setActivationData:activationData];
  [toCopy setResponseHeaders:self->_responseHeaders];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_activationData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_responseHeaders copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((activationData = self->_activationData, !(activationData | equalCopy[1])) || -[NSData isEqual:](activationData, "isEqual:")))
  {
    responseHeaders = self->_responseHeaders;
    if (responseHeaders | equalCopy[2])
    {
      v7 = [(NSData *)responseHeaders isEqual:?];
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
    [(PBBProtoHandleActivationData *)self setActivationData:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(PBBProtoHandleActivationData *)self setResponseHeaders:?];
    fromCopy = v5;
  }
}

@end