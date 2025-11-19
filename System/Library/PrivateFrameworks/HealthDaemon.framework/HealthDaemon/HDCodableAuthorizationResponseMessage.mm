@interface HDCodableAuthorizationResponseMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableAuthorizationResponseMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableAuthorizationResponseMessage;
  v4 = [(HDCodableAuthorizationResponseMessage *)&v8 description];
  v5 = [(HDCodableAuthorizationResponseMessage *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_appBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_requestIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    shouldPrompt = self->_shouldPrompt;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_hostAppName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
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

  if (*&self->_has)
  {
    v4[40] = self->_shouldPrompt;
    v4[44] |= 1u;
  }

  if (self->_hostAppName)
  {
    [v5 setHostAppName:?];
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
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_requestIdentifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_shouldPrompt;
    *(v5 + 44) |= 1u;
  }

  v10 = [(NSString *)self->_hostAppName copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_errorDescription copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  appBundleIdentifier = self->_appBundleIdentifier;
  if (appBundleIdentifier | *(v4 + 1))
  {
    if (![(NSString *)appBundleIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(v4 + 4))
  {
    if (![(NSData *)requestIdentifier isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_13;
    }

    v7 = *(v4 + 40);
    if (self->_shouldPrompt)
    {
      if (*(v4 + 40))
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
  if (hostAppName | *(v4 + 3) && ![(NSString *)hostAppName isEqual:?])
  {
    goto LABEL_13;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(HDCodableAuthorizationResponseMessage *)self setAppBundleIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(HDCodableAuthorizationResponseMessage *)self setRequestIdentifier:?];
    v4 = v5;
  }

  if (v4[44])
  {
    self->_shouldPrompt = v4[40];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(HDCodableAuthorizationResponseMessage *)self setHostAppName:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(HDCodableAuthorizationResponseMessage *)self setErrorDescription:?];
    v4 = v5;
  }
}

@end