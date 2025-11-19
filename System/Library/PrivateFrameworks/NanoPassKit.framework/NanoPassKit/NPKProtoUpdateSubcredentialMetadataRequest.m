@interface NPKProtoUpdateSubcredentialMetadataRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoUpdateSubcredentialMetadataRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoUpdateSubcredentialMetadataRequest;
  v4 = [(NPKProtoUpdateSubcredentialMetadataRequest *)&v8 description];
  v5 = [(NPKProtoUpdateSubcredentialMetadataRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passData = self->_passData;
  if (passData)
  {
    [v3 setObject:passData forKey:@"passData"];
  }

  credentialData = self->_credentialData;
  if (credentialData)
  {
    [v4 setObject:credentialData forKey:@"credentialData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_passData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_credentialData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_passData)
  {
    [v4 setPassData:?];
    v4 = v5;
  }

  if (self->_credentialData)
  {
    [v5 setCredentialData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_passData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_credentialData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((passData = self->_passData, !(passData | v4[2])) || -[NSData isEqual:](passData, "isEqual:")))
  {
    credentialData = self->_credentialData;
    if (credentialData | v4[1])
    {
      v7 = [(NSData *)credentialData isEqual:?];
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
    [(NPKProtoUpdateSubcredentialMetadataRequest *)self setPassData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoUpdateSubcredentialMetadataRequest *)self setCredentialData:?];
    v4 = v5;
  }
}

@end