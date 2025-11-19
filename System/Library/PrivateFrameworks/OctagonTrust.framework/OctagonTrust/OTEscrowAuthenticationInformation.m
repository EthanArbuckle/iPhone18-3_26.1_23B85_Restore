@interface OTEscrowAuthenticationInformation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIdmsRecovery:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTEscrowAuthenticationInformation

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 6))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationPassword:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationDsid:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationAppleid:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(OTEscrowAuthenticationInformation *)self setFmipUuid:?];
    v4 = v6;
  }

  v5 = v4[68];
  if (v5)
  {
    self->_fmipRecovery = v4[64];
    *&self->_has |= 1u;
    v5 = v4[68];
  }

  if ((v5 & 2) != 0)
  {
    self->_idmsRecovery = v4[65];
    *&self->_has |= 2u;
  }

  if (*(v4 + 2))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationAuthToken:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationEscrowproxyUrl:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(OTEscrowAuthenticationInformation *)self setAuthenticationIcloudEnvironment:?];
    v4 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  authenticationPassword = self->_authenticationPassword;
  if (authenticationPassword | *(v4 + 6))
  {
    if (![(NSString *)authenticationPassword isEqual:?])
    {
      goto LABEL_31;
    }
  }

  authenticationDsid = self->_authenticationDsid;
  if (authenticationDsid | *(v4 + 3))
  {
    if (![(NSString *)authenticationDsid isEqual:?])
    {
      goto LABEL_31;
    }
  }

  authenticationAppleid = self->_authenticationAppleid;
  if (authenticationAppleid | *(v4 + 1))
  {
    if (![(NSString *)authenticationAppleid isEqual:?])
    {
      goto LABEL_31;
    }
  }

  fmipUuid = self->_fmipUuid;
  if (fmipUuid | *(v4 + 7))
  {
    if (![(NSString *)fmipUuid isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v9 = *(v4 + 68);
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0)
    {
      goto LABEL_31;
    }

    v14 = *(v4 + 64);
    if (self->_fmipRecovery)
    {
      if ((*(v4 + 64) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(v4 + 64))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 68) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  if ((*(v4 + 68) & 2) == 0)
  {
    goto LABEL_31;
  }

  v15 = *(v4 + 65);
  if (self->_idmsRecovery)
  {
    if ((*(v4 + 65) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 65))
  {
    goto LABEL_31;
  }

LABEL_14:
  authenticationAuthToken = self->_authenticationAuthToken;
  if (authenticationAuthToken | *(v4 + 2) && ![(NSString *)authenticationAuthToken isEqual:?])
  {
    goto LABEL_31;
  }

  authenticationEscrowproxyUrl = self->_authenticationEscrowproxyUrl;
  if (authenticationEscrowproxyUrl | *(v4 + 4))
  {
    if (![(NSString *)authenticationEscrowproxyUrl isEqual:?])
    {
      goto LABEL_31;
    }
  }

  authenticationIcloudEnvironment = self->_authenticationIcloudEnvironment;
  if (authenticationIcloudEnvironment | *(v4 + 5))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_authenticationPassword copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_authenticationDsid copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_authenticationAppleid copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_fmipUuid copyWithZone:a3];
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

  v15 = [(NSString *)self->_authenticationAuthToken copyWithZone:a3];
  v16 = *(v5 + 16);
  *(v5 + 16) = v15;

  v17 = [(NSString *)self->_authenticationEscrowproxyUrl copyWithZone:a3];
  v18 = *(v5 + 32);
  *(v5 + 32) = v17;

  v19 = [(NSString *)self->_authenticationIcloudEnvironment copyWithZone:a3];
  v20 = *(v5 + 40);
  *(v5 + 40) = v19;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_authenticationPassword)
  {
    [v4 setAuthenticationPassword:?];
    v4 = v6;
  }

  if (self->_authenticationDsid)
  {
    [v6 setAuthenticationDsid:?];
    v4 = v6;
  }

  if (self->_authenticationAppleid)
  {
    [v6 setAuthenticationAppleid:?];
    v4 = v6;
  }

  if (self->_fmipUuid)
  {
    [v6 setFmipUuid:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    v4[64] = self->_fmipRecovery;
    v4[68] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[65] = self->_idmsRecovery;
    v4[68] |= 2u;
  }

  if (self->_authenticationAuthToken)
  {
    [v6 setAuthenticationAuthToken:?];
    v4 = v6;
  }

  if (self->_authenticationEscrowproxyUrl)
  {
    [v6 setAuthenticationEscrowproxyUrl:?];
    v4 = v6;
  }

  if (self->_authenticationIcloudEnvironment)
  {
    [v6 setAuthenticationIcloudEnvironment:?];
    v4 = v6;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_authenticationPassword)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_authenticationDsid)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_authenticationAppleid)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_fmipUuid)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    fmipRecovery = self->_fmipRecovery;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    idmsRecovery = self->_idmsRecovery;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_authenticationAuthToken)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_authenticationEscrowproxyUrl)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_authenticationIcloudEnvironment)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  authenticationPassword = self->_authenticationPassword;
  if (authenticationPassword)
  {
    [v3 setObject:authenticationPassword forKey:@"authentication_password"];
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
  v5 = [(OTEscrowAuthenticationInformation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasIdmsRecovery:(BOOL)a3
{
  if (a3)
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