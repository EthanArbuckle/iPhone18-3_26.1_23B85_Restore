@interface NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequest;
  v4 = [(NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequest *)&v8 description];
  v5 = [(NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  sharingMessageData = self->_sharingMessageData;
  if (sharingMessageData)
  {
    [v3 setObject:sharingMessageData forKey:@"sharingMessageData"];
  }

  activationCode = self->_activationCode;
  if (activationCode)
  {
    [v4 setObject:activationCode forKey:@"activationCode"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_sharingMessageData)
  {
    [NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequest writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteDataField();
  if (self->_activationCode)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setSharingMessageData:self->_sharingMessageData];
  if (self->_activationCode)
  {
    [v4 setActivationCode:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_sharingMessageData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_activationCode copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((sharingMessageData = self->_sharingMessageData, !(sharingMessageData | v4[2])) || -[NSData isEqual:](sharingMessageData, "isEqual:")))
  {
    activationCode = self->_activationCode;
    if (activationCode | v4[1])
    {
      v7 = [(NSString *)activationCode isEqual:?];
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
  if (v4[2])
  {
    [(NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequest *)self setSharingMessageData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequest *)self setActivationCode:?];
    v4 = v5;
  }
}

@end