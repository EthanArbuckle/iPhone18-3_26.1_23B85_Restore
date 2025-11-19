@interface HDCodableAuthorizationCompleteMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableAuthorizationCompleteMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableAuthorizationCompleteMessage;
  v4 = [(HDCodableAuthorizationCompleteMessage *)&v8 description];
  v5 = [(HDCodableAuthorizationCompleteMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    [v3 setObject:appBundleIdentifier forKey:@"appBundleIdentifier"];
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v4 setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v4 setObject:errorDescription forKey:@"errorDescription"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_appBundleIdentifier)
  {
    [v4 setAppBundleIdentifier:?];
    v4 = v5;
  }

  if (self->_requestIdentifier)
  {
    [v5 setRequestIdentifier:?];
    v4 = v5;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_appBundleIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_requestIdentifier copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((appBundleIdentifier = self->_appBundleIdentifier, !(appBundleIdentifier | v4[1])) || -[NSString isEqual:](appBundleIdentifier, "isEqual:")) && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | v4[3])) || -[NSData isEqual:](requestIdentifier, "isEqual:")))
  {
    errorDescription = self->_errorDescription;
    if (errorDescription | v4[2])
    {
      v8 = [(NSString *)errorDescription isEqual:?];
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
  v3 = [(NSString *)self->_appBundleIdentifier hash];
  v4 = [(NSData *)self->_requestIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_errorDescription hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(HDCodableAuthorizationCompleteMessage *)self setAppBundleIdentifier:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(HDCodableAuthorizationCompleteMessage *)self setRequestIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(HDCodableAuthorizationCompleteMessage *)self setErrorDescription:?];
    v4 = v5;
  }
}

@end