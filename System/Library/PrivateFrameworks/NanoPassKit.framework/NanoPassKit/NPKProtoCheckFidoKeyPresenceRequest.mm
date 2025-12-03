@interface NPKProtoCheckFidoKeyPresenceRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCheckFidoKeyPresenceRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCheckFidoKeyPresenceRequest;
  v4 = [(NPKProtoCheckFidoKeyPresenceRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCheckFidoKeyPresenceRequest *)self dictionaryRepresentation];
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

  fidoKeyHash = self->_fidoKeyHash;
  if (fidoKeyHash)
  {
    [v4 setObject:fidoKeyHash forKey:@"fidoKeyHash"];
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

  if (self->_fidoKeyHash)
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

  if (self->_fidoKeyHash)
  {
    [v5 setFidoKeyHash:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_relyingParty copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_relyingPartyAccountHash copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_fidoKeyHash copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((relyingParty = self->_relyingParty, !(relyingParty | equalCopy[2])) || -[NSString isEqual:](relyingParty, "isEqual:")) && ((relyingPartyAccountHash = self->_relyingPartyAccountHash, !(relyingPartyAccountHash | equalCopy[3])) || -[NSString isEqual:](relyingPartyAccountHash, "isEqual:")))
  {
    fidoKeyHash = self->_fidoKeyHash;
    if (fidoKeyHash | equalCopy[1])
    {
      v8 = [(NSData *)fidoKeyHash isEqual:?];
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
  v3 = [(NSString *)self->_relyingParty hash];
  v4 = [(NSString *)self->_relyingPartyAccountHash hash]^ v3;
  return v4 ^ [(NSData *)self->_fidoKeyHash hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoCheckFidoKeyPresenceRequest *)self setRelyingParty:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(NPKProtoCheckFidoKeyPresenceRequest *)self setRelyingPartyAccountHash:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoCheckFidoKeyPresenceRequest *)self setFidoKeyHash:?];
    fromCopy = v5;
  }
}

@end