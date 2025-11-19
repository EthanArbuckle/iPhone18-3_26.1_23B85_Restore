@interface NPKProtoUpdateShareForPassIdentifierRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoUpdateShareForPassIdentifierRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoUpdateShareForPassIdentifierRequest;
  v4 = [(NPKProtoUpdateShareForPassIdentifierRequest *)&v8 description];
  v5 = [(NPKProtoUpdateShareForPassIdentifierRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passIdentifier = self->_passIdentifier;
  if (passIdentifier)
  {
    [v3 setObject:passIdentifier forKey:@"passIdentifier"];
  }

  shareData = self->_shareData;
  if (shareData)
  {
    [v4 setObject:shareData forKey:@"shareData"];
  }

  authorization = self->_authorization;
  if (authorization)
  {
    [v4 setObject:authorization forKey:@"authorization"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_passIdentifier)
  {
    [NPKProtoUpdateShareForPassIdentifierRequest writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_shareData)
  {
    [NPKProtoUpdateShareForPassIdentifierRequest writeTo:];
  }

  PBDataWriterWriteDataField();
  if (self->_authorization)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setPassIdentifier:self->_passIdentifier];
  [v4 setShareData:self->_shareData];
  if (self->_authorization)
  {
    [v4 setAuthorization:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_shareData copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_authorization copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((passIdentifier = self->_passIdentifier, !(passIdentifier | v4[2])) || -[NSString isEqual:](passIdentifier, "isEqual:")) && ((shareData = self->_shareData, !(shareData | v4[3])) || -[NSData isEqual:](shareData, "isEqual:")))
  {
    authorization = self->_authorization;
    if (authorization | v4[1])
    {
      v8 = [(NSData *)authorization isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passIdentifier hash];
  v4 = [(NSData *)self->_shareData hash]^ v3;
  return v4 ^ [(NSData *)self->_authorization hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NPKProtoUpdateShareForPassIdentifierRequest *)self setPassIdentifier:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(NPKProtoUpdateShareForPassIdentifierRequest *)self setShareData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoUpdateShareForPassIdentifierRequest *)self setAuthorization:?];
    v4 = v5;
  }
}

@end