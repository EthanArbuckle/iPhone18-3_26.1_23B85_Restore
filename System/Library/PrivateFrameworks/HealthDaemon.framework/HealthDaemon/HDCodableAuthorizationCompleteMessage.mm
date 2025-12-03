@interface HDCodableAuthorizationCompleteMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableAuthorizationCompleteMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableAuthorizationCompleteMessage;
  v4 = [(HDCodableAuthorizationCompleteMessage *)&v8 description];
  dictionaryRepresentation = [(HDCodableAuthorizationCompleteMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier)
  {
    [dictionary setObject:appBundleIdentifier forKey:@"appBundleIdentifier"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_appBundleIdentifier)
  {
    [toCopy setAppBundleIdentifier:?];
    toCopy = v5;
  }

  if (self->_requestIdentifier)
  {
    [v5 setRequestIdentifier:?];
    toCopy = v5;
  }

  if (self->_errorDescription)
  {
    [v5 setErrorDescription:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appBundleIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_requestIdentifier copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((appBundleIdentifier = self->_appBundleIdentifier, !(appBundleIdentifier | equalCopy[1])) || -[NSString isEqual:](appBundleIdentifier, "isEqual:")) && ((requestIdentifier = self->_requestIdentifier, !(requestIdentifier | equalCopy[3])) || -[NSData isEqual:](requestIdentifier, "isEqual:")))
  {
    errorDescription = self->_errorDescription;
    if (errorDescription | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(HDCodableAuthorizationCompleteMessage *)self setAppBundleIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(HDCodableAuthorizationCompleteMessage *)self setRequestIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(HDCodableAuthorizationCompleteMessage *)self setErrorDescription:?];
    fromCopy = v5;
  }
}

@end