@interface OTICDPRecordSilentContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTICDPRecordSilentContext

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  cdpInfo = self->_cdpInfo;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  authInfo = self->_authInfo;
  v8 = fromCopy[1];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((cdpInfo = self->_cdpInfo, !(cdpInfo | equalCopy[2])) || -[OTCDPRecoveryInformation isEqual:](cdpInfo, "isEqual:")))
  {
    authInfo = self->_authInfo;
    if (authInfo | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(OTCDPRecoveryInformation *)self->_cdpInfo copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(OTEscrowAuthenticationInformation *)self->_authInfo copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_cdpInfo)
  {
    [toCopy setCdpInfo:?];
    toCopy = v5;
  }

  if (self->_authInfo)
  {
    [v5 setAuthInfo:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_cdpInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_authInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  cdpInfo = self->_cdpInfo;
  if (cdpInfo)
  {
    dictionaryRepresentation = [(OTCDPRecoveryInformation *)cdpInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"cdpInfo"];
  }

  authInfo = self->_authInfo;
  if (authInfo)
  {
    dictionaryRepresentation2 = [(OTEscrowAuthenticationInformation *)authInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"authInfo"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTICDPRecordSilentContext;
  v4 = [(OTICDPRecordSilentContext *)&v8 description];
  dictionaryRepresentation = [(OTICDPRecordSilentContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end