@interface NFMProtoSendWatchToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NFMProtoSendWatchToken

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NFMProtoSendWatchToken;
  v4 = [(NFMProtoSendWatchToken *)&v8 description];
  v5 = [(NFMProtoSendWatchToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  discoveryToken = self->_discoveryToken;
  if (discoveryToken)
  {
    [v3 setObject:discoveryToken forKey:@"discoveryToken"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_discoveryToken)
  {
    [NFMProtoSendWatchToken writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteDataField();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_discoveryToken copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    discoveryToken = self->_discoveryToken;
    if (discoveryToken | v4[1])
    {
      v6 = [(NSData *)discoveryToken isEqual:?];
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
    [(NFMProtoSendWatchToken *)self setDiscoveryToken:?];
  }
}

@end