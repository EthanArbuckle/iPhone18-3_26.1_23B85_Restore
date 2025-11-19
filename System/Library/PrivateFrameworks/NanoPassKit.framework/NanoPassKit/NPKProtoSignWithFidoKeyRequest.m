@interface NPKProtoSignWithFidoKeyRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoSignWithFidoKeyRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSignWithFidoKeyRequest;
  v4 = [(NPKProtoSignWithFidoKeyRequest *)&v8 description];
  v5 = [(NPKProtoSignWithFidoKeyRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  relyingParty = self->_relyingParty;
  if (relyingParty)
  {
    [v3 setObject:relyingParty forKey:@"relyingParty"];
  }

  relyingPartyAccountHash = self->_relyingPartyAccountHash;
  if (relyingPartyAccountHash)
  {
    [v4 setObject:relyingPartyAccountHash forKey:@"relyingPartyAccountHash"];
  }

  fidoKeyHash = self->_fidoKeyHash;
  if (fidoKeyHash)
  {
    [v4 setObject:fidoKeyHash forKey:@"fidoKeyHash"];
  }

  challenge = self->_challenge;
  if (challenge)
  {
    [v4 setObject:challenge forKey:@"challenge"];
  }

  publicKeyIdentifier = self->_publicKeyIdentifier;
  if (publicKeyIdentifier)
  {
    [v4 setObject:publicKeyIdentifier forKey:@"publicKeyIdentifier"];
  }

  externalizedAuth = self->_externalizedAuth;
  if (externalizedAuth)
  {
    [v4 setObject:externalizedAuth forKey:@"externalizedAuth"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_relyingParty)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_relyingPartyAccountHash)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_fidoKeyHash)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_challenge)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_publicKeyIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_externalizedAuth)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_relyingParty)
  {
    [v4 setRelyingParty:?];
    v4 = v5;
  }

  if (self->_relyingPartyAccountHash)
  {
    [v5 setRelyingPartyAccountHash:?];
    v4 = v5;
  }

  if (self->_fidoKeyHash)
  {
    [v5 setFidoKeyHash:?];
    v4 = v5;
  }

  if (self->_challenge)
  {
    [v5 setChallenge:?];
    v4 = v5;
  }

  if (self->_publicKeyIdentifier)
  {
    [v5 setPublicKeyIdentifier:?];
    v4 = v5;
  }

  if (self->_externalizedAuth)
  {
    [v5 setExternalizedAuth:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_relyingParty copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_relyingPartyAccountHash copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v10 = [(NSData *)self->_fidoKeyHash copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSData *)self->_challenge copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(NSString *)self->_publicKeyIdentifier copyWithZone:a3];
  v15 = v5[4];
  v5[4] = v14;

  v16 = [(NSData *)self->_externalizedAuth copyWithZone:a3];
  v17 = v5[2];
  v5[2] = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((relyingParty = self->_relyingParty, !(relyingParty | v4[5])) || -[NSString isEqual:](relyingParty, "isEqual:")) && ((relyingPartyAccountHash = self->_relyingPartyAccountHash, !(relyingPartyAccountHash | v4[6])) || -[NSString isEqual:](relyingPartyAccountHash, "isEqual:")) && ((fidoKeyHash = self->_fidoKeyHash, !(fidoKeyHash | v4[3])) || -[NSData isEqual:](fidoKeyHash, "isEqual:")) && ((challenge = self->_challenge, !(challenge | v4[1])) || -[NSData isEqual:](challenge, "isEqual:")) && ((publicKeyIdentifier = self->_publicKeyIdentifier, !(publicKeyIdentifier | v4[4])) || -[NSString isEqual:](publicKeyIdentifier, "isEqual:")))
  {
    externalizedAuth = self->_externalizedAuth;
    if (externalizedAuth | v4[2])
    {
      v11 = [(NSData *)externalizedAuth isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_relyingParty hash];
  v4 = [(NSString *)self->_relyingPartyAccountHash hash]^ v3;
  v5 = [(NSData *)self->_fidoKeyHash hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_challenge hash];
  v7 = [(NSString *)self->_publicKeyIdentifier hash];
  return v6 ^ v7 ^ [(NSData *)self->_externalizedAuth hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    [(NPKProtoSignWithFidoKeyRequest *)self setRelyingParty:?];
  }

  if (v4[6])
  {
    [(NPKProtoSignWithFidoKeyRequest *)self setRelyingPartyAccountHash:?];
  }

  if (v4[3])
  {
    [(NPKProtoSignWithFidoKeyRequest *)self setFidoKeyHash:?];
  }

  if (v4[1])
  {
    [(NPKProtoSignWithFidoKeyRequest *)self setChallenge:?];
  }

  if (v4[4])
  {
    [(NPKProtoSignWithFidoKeyRequest *)self setPublicKeyIdentifier:?];
  }

  if (v4[2])
  {
    [(NPKProtoSignWithFidoKeyRequest *)self setExternalizedAuth:?];
  }
}

@end