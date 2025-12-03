@interface NPKProtoCreateFidoKeyRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCreateFidoKeyRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCreateFidoKeyRequest;
  v4 = [(NPKProtoCreateFidoKeyRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCreateFidoKeyRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  relyingParty = self->_relyingParty;
  if (relyingParty)
  {
    [dictionary setObject:relyingParty forKey:@"relyingParty"];
  }

  relyingPartyAccountHash = self->_relyingPartyAccountHash;
  if (relyingPartyAccountHash)
  {
    [v4 setObject:relyingPartyAccountHash forKey:@"relyingPartyAccountHash"];
  }

  challenge = self->_challenge;
  if (challenge)
  {
    [v4 setObject:challenge forKey:@"challenge"];
  }

  externalizedAuth = self->_externalizedAuth;
  if (externalizedAuth)
  {
    [v4 setObject:externalizedAuth forKey:@"externalizedAuth"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_relyingParty)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_relyingPartyAccountHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_challenge)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_externalizedAuth)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_relyingParty)
  {
    [toCopy setRelyingParty:?];
    toCopy = v5;
  }

  if (self->_relyingPartyAccountHash)
  {
    [v5 setRelyingPartyAccountHash:?];
    toCopy = v5;
  }

  if (self->_challenge)
  {
    [v5 setChallenge:?];
    toCopy = v5;
  }

  if (self->_externalizedAuth)
  {
    [v5 setExternalizedAuth:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_relyingParty copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_relyingPartyAccountHash copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSData *)self->_challenge copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_externalizedAuth copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((relyingParty = self->_relyingParty, !(relyingParty | equalCopy[3])) || -[NSString isEqual:](relyingParty, "isEqual:")) && ((relyingPartyAccountHash = self->_relyingPartyAccountHash, !(relyingPartyAccountHash | equalCopy[4])) || -[NSString isEqual:](relyingPartyAccountHash, "isEqual:")) && ((challenge = self->_challenge, !(challenge | equalCopy[1])) || -[NSData isEqual:](challenge, "isEqual:")))
  {
    externalizedAuth = self->_externalizedAuth;
    if (externalizedAuth | equalCopy[2])
    {
      v9 = [(NSData *)externalizedAuth isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_relyingParty hash];
  v4 = [(NSString *)self->_relyingPartyAccountHash hash]^ v3;
  v5 = [(NSData *)self->_challenge hash];
  return v4 ^ v5 ^ [(NSData *)self->_externalizedAuth hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(NPKProtoCreateFidoKeyRequest *)self setRelyingParty:?];
  }

  if (fromCopy[4])
  {
    [(NPKProtoCreateFidoKeyRequest *)self setRelyingPartyAccountHash:?];
  }

  if (fromCopy[1])
  {
    [(NPKProtoCreateFidoKeyRequest *)self setChallenge:?];
  }

  if (fromCopy[2])
  {
    [(NPKProtoCreateFidoKeyRequest *)self setExternalizedAuth:?];
  }
}

@end