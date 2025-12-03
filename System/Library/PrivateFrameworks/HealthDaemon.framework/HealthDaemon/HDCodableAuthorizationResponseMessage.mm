@interface HDCodableAuthorizationResponseMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableAuthorizationResponseMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableAuthorizationResponseMessage;
  v4 = [(HDCodableAuthorizationResponseMessage *)&v8 description];
  dictionaryRepresentation = [(HDCodableAuthorizationResponseMessage *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldPrompt];
    [v4 setObject:v7 forKey:@"shouldPrompt"];
  }

  hostAppName = self->_hostAppName;
  if (hostAppName)
  {
    [v4 setObject:hostAppName forKey:@"hostAppName"];
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
  v6 = toCopy;
  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    shouldPrompt = self->_shouldPrompt;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_hostAppName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
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

  if (*&self->_has)
  {
    toCopy[40] = self->_shouldPrompt;
    toCopy[44] |= 1u;
  }

  if (self->_hostAppName)
  {
    [v5 setHostAppName:?];
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
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_requestIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_shouldPrompt;
    *(v5 + 44) |= 1u;
  }

  v10 = [(NSString *)self->_hostAppName copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)appBundleIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(equalCopy + 4))
  {
    if (![(NSData *)requestIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0)
    {
      goto LABEL_13;
    }

    v7 = *(equalCopy + 40);
    if (self->_shouldPrompt)
    {
      if (*(equalCopy + 40))
      {
        goto LABEL_8;
      }

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_8:
  hostAppName = self->_hostAppName;
  if (hostAppName | *(equalCopy + 3) && ![(NSString *)hostAppName isEqual:?])
  {
    goto LABEL_13;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 2))
  {
    v10 = [(NSString *)errorDescription isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appBundleIdentifier hash];
  v4 = [(NSData *)self->_requestIdentifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_shouldPrompt;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_hostAppName hash];
  return v6 ^ [(NSString *)self->_errorDescription hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(HDCodableAuthorizationResponseMessage *)self setAppBundleIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(HDCodableAuthorizationResponseMessage *)self setRequestIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[44])
  {
    self->_shouldPrompt = fromCopy[40];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(HDCodableAuthorizationResponseMessage *)self setHostAppName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(HDCodableAuthorizationResponseMessage *)self setErrorDescription:?];
    fromCopy = v5;
  }
}

@end