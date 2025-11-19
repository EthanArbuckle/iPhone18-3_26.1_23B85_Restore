@interface OTICDPRecordSilentContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTICDPRecordSilentContext

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  cdpInfo = self->_cdpInfo;
  v6 = v4[2];
  v9 = v4;
  if (cdpInfo)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(OTCDPRecoveryInformation *)cdpInfo mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(OTICDPRecordSilentContext *)self setCdpInfo:?];
  }

  v4 = v9;
LABEL_7:
  authInfo = self->_authInfo;
  v8 = v4[1];
  if (authInfo)
  {
    if (v8)
    {
      [(OTEscrowAuthenticationInformation *)authInfo mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(OTICDPRecordSilentContext *)self setAuthInfo:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((cdpInfo = self->_cdpInfo, !(cdpInfo | v4[2])) || -[OTCDPRecoveryInformation isEqual:](cdpInfo, "isEqual:")))
  {
    authInfo = self->_authInfo;
    if (authInfo | v4[1])
    {
      v7 = [(OTEscrowAuthenticationInformation *)authInfo isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OTCDPRecoveryInformation *)self->_cdpInfo copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(OTEscrowAuthenticationInformation *)self->_authInfo copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_cdpInfo)
  {
    [v4 setCdpInfo:?];
    v4 = v5;
  }

  if (self->_authInfo)
  {
    [v5 setAuthInfo:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_cdpInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_authInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  cdpInfo = self->_cdpInfo;
  if (cdpInfo)
  {
    v5 = [(OTCDPRecoveryInformation *)cdpInfo dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"cdpInfo"];
  }

  authInfo = self->_authInfo;
  if (authInfo)
  {
    v7 = [(OTEscrowAuthenticationInformation *)authInfo dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"authInfo"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTICDPRecordSilentContext;
  v4 = [(OTICDPRecordSilentContext *)&v8 description];
  v5 = [(OTICDPRecordSilentContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end