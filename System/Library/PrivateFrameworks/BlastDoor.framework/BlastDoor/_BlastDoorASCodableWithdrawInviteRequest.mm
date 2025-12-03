@interface _BlastDoorASCodableWithdrawInviteRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _BlastDoorASCodableWithdrawInviteRequest

- (id)description
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _BlastDoorASCodableWithdrawInviteRequest;
  v4 = [(_BlastDoorASCodableWithdrawInviteRequest *)&v9 description];
  dictionaryRepresentation = [(_BlastDoorASCodableWithdrawInviteRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  handshakeToken = self->_handshakeToken;
  if (handshakeToken)
  {
    [dictionary setObject:handshakeToken forKey:@"handshakeToken"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_handshakeToken)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  handshakeToken = self->_handshakeToken;
  if (handshakeToken)
  {
    [to setHandshakeToken:handshakeToken];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_handshakeToken copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    handshakeToken = self->_handshakeToken;
    if (handshakeToken | equalCopy[1])
    {
      v6 = [(NSString *)handshakeToken isEqual:?];
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(_BlastDoorASCodableWithdrawInviteRequest *)self setHandshakeToken:?];
  }
}

@end