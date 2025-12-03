@interface OTEscrowAuthenticationInformation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIdmsRecovery:(BOOL)recovery;
- (void)writeTo:(id)to;
@end

@implementation OTEscrowAuthenticationInformation

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationPassword:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationDsid:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationAppleid:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 7))
  {
    [(OTEscrowAuthenticationInformation *)self setFmipUuid:?];
    fromCopy = v6;
  }

  v5 = fromCopy[68];
  if (v5)
  {
    self->_fmipRecovery = fromCopy[64];
    *&self->_has |= 1u;
    v5 = fromCopy[68];
  }

  if ((v5 & 2) != 0)
  {
    self->_idmsRecovery = fromCopy[65];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationAuthToken:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationEscrowproxyUrl:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationIcloudEnvironment:?];
    fromCopy = v6;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_authenticationPassword hash];
  v4 = [(NSString *)self->_authenticationDsid hash];
  v5 = [(NSString *)self->_authenticationAppleid hash];
  v6 = [(NSString *)self->_fmipUuid hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_fmipRecovery;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_idmsRecovery;
LABEL_6:
  v9 = v4 ^ v3 ^ v5 ^ v6;
  v10 = v7 ^ v8 ^ [(NSString *)self->_authenticationAuthToken hash];
  v11 = v9 ^ v10 ^ [(NSString *)self->_authenticationEscrowproxyUrl hash];
  return v11 ^ [(NSString *)self->_authenticationIcloudEnvironment hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  authenticationPassword = self->_authenticationPassword;
  if (authenticationPassword | *(equalCopy + 6))
  {
    if (![(NSString *)authenticationPassword isEqual:?])
    {
      goto LABEL_31;
    }
  }

  authenticationDsid = self->_authenticationDsid;
  if (authenticationDsid | *(equalCopy + 3))
  {
    if (![(NSString *)authenticationDsid isEqual:?])
    {
      goto LABEL_31;
    }
  }

  authenticationAppleid = self->_authenticationAppleid;
  if (authenticationAppleid | *(equalCopy + 1))
  {
    if (![(NSString *)authenticationAppleid isEqual:?])
    {
      goto LABEL_31;
    }
  }

  fmipUuid = self->_fmipUuid;
  if (fmipUuid | *(equalCopy + 7))
  {
    if (![(NSString *)fmipUuid isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v9 = *(equalCopy + 68);
  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0)
    {
      goto LABEL_31;
    }

    v14 = *(equalCopy + 64);
    if (self->_fmipRecovery)
    {
      if ((*(equalCopy + 64) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(equalCopy + 64))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 68) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  if ((*(equalCopy + 68) & 2) == 0)
  {
    goto LABEL_31;
  }

  v15 = *(equalCopy + 65);
  if (self->_idmsRecovery)
  {
    if ((*(equalCopy + 65) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 65))
  {
    goto LABEL_31;
  }

LABEL_14:
  authenticationAuthToken = self->_authenticationAuthToken;
  if (authenticationAuthToken | *(equalCopy + 2) && ![(NSString *)authenticationAuthToken isEqual:?])
  {
    goto LABEL_31;
  }

  authenticationEscrowproxyUrl = self->_authenticationEscrowproxyUrl;
  if (authenticationEscrowproxyUrl | *(equalCopy + 4))
  {
    if (![(NSString *)authenticationEscrowproxyUrl isEqual:?])
    {
      goto LABEL_31;
    }
  }

  authenticationIcloudEnvironment = self->_authenticationIcloudEnvironment;
  if (authenticationIcloudEnvironment | *(equalCopy + 5))
  {
    v13 = [(NSString *)authenticationIcloudEnvironment isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_32:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_authenticationPassword copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_authenticationDsid copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_authenticationAppleid copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_fmipUuid copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  has = self->_has;
  if (has)
  {
    *(v5 + 64) = self->_fmipRecovery;
    *(v5 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 65) = self->_idmsRecovery;
    *(v5 + 68) |= 2u;
  }

  v15 = [(NSString *)self->_authenticationAuthToken copyWithZone:zone];
  v16 = *(v5 + 16);
  *(v5 + 16) = v15;

  v17 = [(NSString *)self->_authenticationEscrowproxyUrl copyWithZone:zone];
  v18 = *(v5 + 32);
  *(v5 + 32) = v17;

  v19 = [(NSString *)self->_authenticationIcloudEnvironment copyWithZone:zone];
  v20 = *(v5 + 40);
  *(v5 + 40) = v19;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_authenticationPassword)
  {
    [toCopy setAuthenticationPassword:?];
    toCopy = v6;
  }

  if (self->_authenticationDsid)
  {
    [v6 setAuthenticationDsid:?];
    toCopy = v6;
  }

  if (self->_authenticationAppleid)
  {
    [v6 setAuthenticationAppleid:?];
    toCopy = v6;
  }

  if (self->_fmipUuid)
  {
    [v6 setFmipUuid:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    toCopy[64] = self->_fmipRecovery;
    toCopy[68] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[65] = self->_idmsRecovery;
    toCopy[68] |= 2u;
  }

  if (self->_authenticationAuthToken)
  {
    [v6 setAuthenticationAuthToken:?];
    toCopy = v6;
  }

  if (self->_authenticationEscrowproxyUrl)
  {
    [v6 setAuthenticationEscrowproxyUrl:?];
    toCopy = v6;
  }

  if (self->_authenticationIcloudEnvironment)
  {
    [v6 setAuthenticationIcloudEnvironment:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_authenticationPassword)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_authenticationDsid)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_authenticationAppleid)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_fmipUuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    fmipRecovery = self->_fmipRecovery;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    idmsRecovery = self->_idmsRecovery;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_authenticationAuthToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_authenticationEscrowproxyUrl)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_authenticationIcloudEnvironment)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  authenticationPassword = self->_authenticationPassword;
  if (authenticationPassword)
  {
    [dictionary setObject:authenticationPassword forKey:@"authentication_password"];
  }

  authenticationDsid = self->_authenticationDsid;
  if (authenticationDsid)
  {
    [v4 setObject:authenticationDsid forKey:@"authentication_dsid"];
  }

  authenticationAppleid = self->_authenticationAppleid;
  if (authenticationAppleid)
  {
    [v4 setObject:authenticationAppleid forKey:@"authentication_appleid"];
  }

  fmipUuid = self->_fmipUuid;
  if (fmipUuid)
  {
    [v4 setObject:fmipUuid forKey:@"fmip_uuid"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_fmipRecovery];
    [v4 setObject:v10 forKey:@"fmip_recovery"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_idmsRecovery];
    [v4 setObject:v11 forKey:@"idms_recovery"];
  }

  authenticationAuthToken = self->_authenticationAuthToken;
  if (authenticationAuthToken)
  {
    [v4 setObject:authenticationAuthToken forKey:@"authentication_auth_token"];
  }

  authenticationEscrowproxyUrl = self->_authenticationEscrowproxyUrl;
  if (authenticationEscrowproxyUrl)
  {
    [v4 setObject:authenticationEscrowproxyUrl forKey:@"authentication_escrowproxy_url"];
  }

  authenticationIcloudEnvironment = self->_authenticationIcloudEnvironment;
  if (authenticationIcloudEnvironment)
  {
    [v4 setObject:authenticationIcloudEnvironment forKey:@"authentication_icloud_environment"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTEscrowAuthenticationInformation;
  v4 = [(OTEscrowAuthenticationInformation *)&v8 description];
  dictionaryRepresentation = [(OTEscrowAuthenticationInformation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasIdmsRecovery:(BOOL)recovery
{
  if (recovery)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end