@interface NPKProtoCheckFidoKeyPresenceRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCheckFidoKeyPresenceRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCheckFidoKeyPresenceRequest;
  v4 = [(NPKProtoCheckFidoKeyPresenceRequest *)&v8 description];
  v5 = [(NPKProtoCheckFidoKeyPresenceRequest *)self dictionaryRepresentation];
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
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_relyingParty copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_relyingPartyAccountHash copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_fidoKeyHash copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((relyingParty = self->_relyingParty, !(relyingParty | v4[2])) || -[NSString isEqual:](relyingParty, "isEqual:")) && ((relyingPartyAccountHash = self->_relyingPartyAccountHash, !(relyingPartyAccountHash | v4[3])) || -[NSString isEqual:](relyingPartyAccountHash, "isEqual:")))
  {
    fidoKeyHash = self->_fidoKeyHash;
    if (fidoKeyHash | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NPKProtoCheckFidoKeyPresenceRequest *)self setRelyingParty:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(NPKProtoCheckFidoKeyPresenceRequest *)self setRelyingPartyAccountHash:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoCheckFidoKeyPresenceRequest *)self setFidoKeyHash:?];
    v4 = v5;
  }
}

@end