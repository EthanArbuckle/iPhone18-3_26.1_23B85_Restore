@interface _BlastDoorASCodableWithdrawInviteRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _BlastDoorASCodableWithdrawInviteRequest

- (id)description
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _BlastDoorASCodableWithdrawInviteRequest;
  v4 = [(_BlastDoorASCodableWithdrawInviteRequest *)&v9 description];
  v5 = [(_BlastDoorASCodableWithdrawInviteRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  handshakeToken = self->_handshakeToken;
  if (handshakeToken)
  {
    [v3 setObject:handshakeToken forKey:@"handshakeToken"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_handshakeToken)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  handshakeToken = self->_handshakeToken;
  if (handshakeToken)
  {
    [a3 setHandshakeToken:handshakeToken];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_handshakeToken copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    handshakeToken = self->_handshakeToken;
    if (handshakeToken | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(_BlastDoorASCodableWithdrawInviteRequest *)self setHandshakeToken:?];
  }
}

@end