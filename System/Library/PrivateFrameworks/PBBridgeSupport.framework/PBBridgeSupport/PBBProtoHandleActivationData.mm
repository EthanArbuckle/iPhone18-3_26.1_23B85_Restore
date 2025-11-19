@interface PBBProtoHandleActivationData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoHandleActivationData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoHandleActivationData;
  v4 = [(PBBProtoHandleActivationData *)&v8 description];
  v5 = [(PBBProtoHandleActivationData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  activationData = self->_activationData;
  if (activationData)
  {
    [v3 setObject:activationData forKey:@"activationData"];
  }

  responseHeaders = self->_responseHeaders;
  if (responseHeaders)
  {
    [v4 setObject:responseHeaders forKey:@"responseHeaders"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  activationData = self->_activationData;
  v6 = a3;
  PBDataWriterWriteDataField();
  responseHeaders = self->_responseHeaders;
  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)a3
{
  activationData = self->_activationData;
  v5 = a3;
  [v5 setActivationData:activationData];
  [v5 setResponseHeaders:self->_responseHeaders];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_activationData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_responseHeaders copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((activationData = self->_activationData, !(activationData | v4[1])) || -[NSData isEqual:](activationData, "isEqual:")))
  {
    responseHeaders = self->_responseHeaders;
    if (responseHeaders | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(PBBProtoHandleActivationData *)self setActivationData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(PBBProtoHandleActivationData *)self setResponseHeaders:?];
    v4 = v5;
  }
}

@end