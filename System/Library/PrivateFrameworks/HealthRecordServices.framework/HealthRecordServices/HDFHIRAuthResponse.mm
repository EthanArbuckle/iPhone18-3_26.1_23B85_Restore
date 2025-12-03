@interface HDFHIRAuthResponse
+ (id)authResponseFromServerResponseDictionary:(id)dictionary baseURL:(id)l previousCredential:(id)credential error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToAuthResponse:(id)response;
- (HDFHIRAuthResponse)initWithAccessToken:(id)token refreshToken:(id)refreshToken patientID:(id)d expiration:(id)expiration scope:(id)scope;
- (HDFHIRAuthResponse)initWithCoder:(id)coder;
- (id)descriptionForAccountEvent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDFHIRAuthResponse

- (HDFHIRAuthResponse)initWithAccessToken:(id)token refreshToken:(id)refreshToken patientID:(id)d expiration:(id)expiration scope:(id)scope
{
  tokenCopy = token;
  refreshTokenCopy = refreshToken;
  dCopy = d;
  expirationCopy = expiration;
  scopeCopy = scope;
  v29.receiver = self;
  v29.super_class = HDFHIRAuthResponse;
  v17 = [(HDFHIRAuthResponse *)&v29 init];
  if (v17)
  {
    v18 = [tokenCopy copy];
    accessToken = v17->_accessToken;
    v17->_accessToken = v18;

    v20 = [refreshTokenCopy copy];
    refreshToken = v17->_refreshToken;
    v17->_refreshToken = v20;

    v22 = [dCopy copy];
    patientID = v17->_patientID;
    v17->_patientID = v22;

    v24 = [expirationCopy copy];
    expiration = v17->_expiration;
    v17->_expiration = v24;

    v26 = [scopeCopy copy];
    scope = v17->_scope;
    v17->_scope = v26;
  }

  return v17;
}

+ (id)authResponseFromServerResponseDictionary:(id)dictionary baseURL:(id)l previousCredential:(id)credential error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  lCopy = l;
  credentialCopy = credential;
  if (dictionaryCopy)
  {
    if (lCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HDFHIRAuthResponse authResponseFromServerResponseDictionary:a2 baseURL:self previousCredential:? error:?];
    if (lCopy)
    {
      goto LABEL_3;
    }
  }

  [HDFHIRAuthResponse authResponseFromServerResponseDictionary:a2 baseURL:self previousCredential:? error:?];
LABEL_3:
  v14 = [dictionaryCopy hk_safeStringForKeyPath:@"access_token" error:error];
  if (!v14)
  {
    v19 = 0;
    goto LABEL_57;
  }

  v15 = [dictionaryCopy hk_safeStringForKeyPath:@"token_type" error:error];
  if (v15)
  {
    v49 = 0;
    v16 = [dictionaryCopy hk_safeStringForKeyPath:@"patient" error:&v49];
    v17 = v49;
    if (!v16)
    {
      v20 = [dictionaryCopy objectForKeyedSubscript:@"patient"];

      if (v20)
      {
        patientID = v17;
        if (patientID)
        {
          if (error)
          {
            v21 = patientID;
            v19 = 0;
            *error = patientID;
LABEL_39:
            v17 = patientID;
            goto LABEL_55;
          }

          _HKLogDroppedError();
        }

        v19 = 0;
        goto LABEL_39;
      }
    }

    if ([v16 length])
    {
      patientID = v16;
    }

    else
    {
      patientID = [credentialCopy patientID];

      if (![patientID length])
      {
        v19 = 0;
LABEL_55:

        goto LABEL_56;
      }
    }

    v45 = patientID;
    v48 = v17;
    v22 = [dictionaryCopy hk_safeNumberForKeyPath:@"expires_in" error:&v48];
    v23 = v48;

    v44 = v22;
    if (v22)
    {
      v43 = v15;
      [v22 doubleValue];
      v42 = [HKOAuth2Credential expirationFromTimeInterval:?];
    }

    else
    {
      v28 = [dictionaryCopy objectForKeyedSubscript:@"expires_in"];

      if (v28)
      {
        v29 = v23;
        if (v29)
        {
          patientID = v45;
          if (error)
          {
            v30 = v29;
            v19 = 0;
            *error = v30;
            v27 = v30;
            v17 = v30;
          }

          else
          {
            v27 = v29;
            _HKLogDroppedError();
            v19 = 0;
            v17 = v27;
          }
        }

        else
        {
          v19 = 0;
          v17 = 0;
          patientID = v45;
          v27 = 0;
        }

        goto LABEL_54;
      }

      v42 = 0;
      v43 = v15;
    }

    v47 = v23;
    v24 = [dictionaryCopy hk_safeStringForKeyPath:@"refresh_token" error:&v47];
    v25 = v47;

    if (!v24)
    {
      v31 = [dictionaryCopy objectForKeyedSubscript:@"refresh_token"];

      if (v31)
      {
        v24 = v25;
        if (v24)
        {
          patientID = v45;
          if (error)
          {
            v32 = v24;
            v19 = 0;
            *error = v24;
          }

          else
          {
            _HKLogDroppedError();
            v19 = 0;
          }

          v17 = v24;
        }

        else
        {
          v19 = 0;
          v17 = 0;
          patientID = v45;
        }

        v27 = v42;
        goto LABEL_53;
      }

      refreshToken = [credentialCopy refreshToken];
      if (refreshToken)
      {
        v24 = refreshToken;
      }

      else
      {
        _HKInitializeLogging();
        v36 = *MEMORY[0x277CCC2C0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          *buf = 138543362;
          v51 = v39;
          _os_log_impl(&dword_2519FE000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ No refresh_token returned and no refreshToken found in previousCredential", buf, 0xCu);
        }

        v24 = 0;
      }
    }

    v46 = v25;
    scopeString = [dictionaryCopy hk_safeStringForKeyPath:@"scope" error:&v46];
    v17 = v46;

    patientID = v45;
    if (scopeString)
    {
      goto LABEL_19;
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"scope"];

    if (!v33)
    {
      scopeString = [credentialCopy scopeString];
LABEL_19:
      v27 = v42;
      v19 = [[HDFHIRAuthResponse alloc] initWithAccessToken:v14 refreshToken:v24 patientID:v45 expiration:v42 scope:scopeString];
LABEL_52:

LABEL_53:
      v15 = v43;
LABEL_54:

      goto LABEL_55;
    }

    scopeString = v17;
    if (scopeString)
    {
      if (error)
      {
        v34 = scopeString;
        v19 = 0;
        *error = scopeString;
LABEL_51:
        v27 = v42;
        goto LABEL_52;
      }

      _HKLogDroppedError();
    }

    v19 = 0;
    goto LABEL_51;
  }

  v19 = 0;
LABEL_56:

LABEL_57:
  v40 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)descriptionForAccountEvent
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  refreshToken = [(HDFHIRAuthResponse *)self refreshToken];
  v6 = HKStringFromBool();
  patientID = [(HDFHIRAuthResponse *)self patientID];
  expiration = [(HDFHIRAuthResponse *)self expiration];
  v9 = HKDiagnosticStringFromDate();
  scope = [(HDFHIRAuthResponse *)self scope];
  v11 = [v3 stringWithFormat:@"<%@> Refresh token: %@, Patient Id: %@, Expiration: %@, Scope: %@", v4, v6, patientID, v9, scope];

  return v11;
}

- (BOOL)isEquivalentToAuthResponse:(id)response
{
  responseCopy = response;
  if (self == responseCopy)
  {
    LOBYTE(refreshToken2) = 1;
  }

  else
  {
    if ([(HDFHIRAuthResponse *)responseCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = self->_scope == 0;
      scope = [(HDFHIRAuthResponse *)responseCopy scope];
      v8 = scope != 0;

      if (v6 != v8)
      {
        if (!self->_scope)
        {
          goto LABEL_6;
        }

        v9 = [HKOAuth2ScopeSet scopesFromScopeString:?];
        scope2 = [(HDFHIRAuthResponse *)responseCopy scope];
        v11 = [HKOAuth2ScopeSet scopesFromScopeString:scope2];

        LODWORD(scope2) = [v9 isEqualToSet:v11];
        if (scope2)
        {
LABEL_6:
          accessToken = self->_accessToken;
          accessToken = [(HDFHIRAuthResponse *)responseCopy accessToken];
          if (accessToken != accessToken)
          {
            accessToken2 = [(HDFHIRAuthResponse *)responseCopy accessToken];
            if (!accessToken2)
            {
              LOBYTE(refreshToken2) = 0;
              goto LABEL_30;
            }

            v3 = accessToken2;
            v15 = self->_accessToken;
            accessToken3 = [(HDFHIRAuthResponse *)responseCopy accessToken];
            if (![(NSString *)v15 isEqualToString:accessToken3])
            {
              LOBYTE(refreshToken2) = 0;
LABEL_29:

              goto LABEL_30;
            }

            v33 = accessToken3;
          }

          refreshToken = self->_refreshToken;
          refreshToken = [(HDFHIRAuthResponse *)responseCopy refreshToken];
          if (refreshToken != refreshToken)
          {
            refreshToken2 = [(HDFHIRAuthResponse *)responseCopy refreshToken];
            if (!refreshToken2)
            {
LABEL_24:

LABEL_27:
              v28 = accessToken == accessToken;
              goto LABEL_28;
            }

            v20 = self->_refreshToken;
            refreshToken3 = [(HDFHIRAuthResponse *)responseCopy refreshToken];
            if (![(NSString *)v20 isEqualToString:refreshToken3])
            {

              LOBYTE(refreshToken2) = 0;
              goto LABEL_27;
            }

            v31 = refreshToken3;
            v32 = refreshToken2;
          }

          patientID = self->_patientID;
          patientID = [(HDFHIRAuthResponse *)responseCopy patientID];
          LOBYTE(refreshToken2) = patientID == patientID;
          if (patientID != patientID)
          {
            patientID2 = [(HDFHIRAuthResponse *)responseCopy patientID];
            if (patientID2)
            {
              v25 = patientID2;
              v30 = v3;
              v26 = self->_patientID;
              patientID3 = [(HDFHIRAuthResponse *)responseCopy patientID];
              LOBYTE(refreshToken2) = [(NSString *)v26 isEqualToString:patientID3];

              if (refreshToken != refreshToken)
              {
              }

              v28 = accessToken == accessToken;
              v3 = v30;
LABEL_28:
              accessToken3 = v33;
              if (!v28)
              {
                goto LABEL_29;
              }

LABEL_30:

              goto LABEL_31;
            }
          }

          if (refreshToken != refreshToken)
          {
          }

          goto LABEL_24;
        }
      }
    }

    LOBYTE(refreshToken2) = 0;
  }

LABEL_31:

  return refreshToken2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    if ([(HDFHIRAuthResponse *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      accessToken = self->_accessToken;
      accessToken = [(HDFHIRAuthResponse *)v6 accessToken];
      if (accessToken != accessToken)
      {
        accessToken2 = [(HDFHIRAuthResponse *)v6 accessToken];
        if (!accessToken2)
        {
          v13 = 0;
          goto LABEL_48;
        }

        v10 = accessToken2;
        v11 = self->_accessToken;
        accessToken3 = [(HDFHIRAuthResponse *)v6 accessToken];
        if (![(NSString *)v11 isEqualToString:accessToken3])
        {
          v13 = 0;
LABEL_47:

          goto LABEL_48;
        }

        v55 = v10;
        v54 = accessToken3;
      }

      refreshToken = self->_refreshToken;
      refreshToken = [(HDFHIRAuthResponse *)v6 refreshToken];
      if (refreshToken != refreshToken)
      {
        refreshToken2 = [(HDFHIRAuthResponse *)v6 refreshToken];
        if (!refreshToken2)
        {
          goto LABEL_35;
        }

        v53 = refreshToken2;
        v17 = self->_refreshToken;
        refreshToken3 = [(HDFHIRAuthResponse *)v6 refreshToken];
        if (![(NSString *)v17 isEqualToString:refreshToken3])
        {
          goto LABEL_34;
        }
      }

      patientID = self->_patientID;
      patientID = [(HDFHIRAuthResponse *)v6 patientID];
      v52 = patientID;
      if (patientID == patientID)
      {
        v51 = refreshToken;
        v26 = refreshToken;
LABEL_20:
        expiration = self->_expiration;
        expiration = [(HDFHIRAuthResponse *)v6 expiration];
        v29 = expiration;
        v48 = expiration;
        v50 = refreshToken3;
        if (expiration == expiration)
        {
          v46 = expiration;
          v47 = patientID;
          refreshToken = v26;
        }

        else
        {
          expiration2 = [(HDFHIRAuthResponse *)v6 expiration];
          if (!expiration2)
          {
            v13 = 0;
            refreshToken = v26;
            refreshToken = v51;
            goto LABEL_37;
          }

          v44 = expiration2;
          v47 = patientID;
          v31 = self->_expiration;
          expiration3 = [(HDFHIRAuthResponse *)v6 expiration];
          v33 = v31;
          v34 = expiration3;
          refreshToken = v26;
          if (![(NSDate *)v33 isEqualToDate:expiration3])
          {

            v13 = 0;
            patientID = v47;
            refreshToken = v51;
            v41 = v52;
            goto LABEL_41;
          }

          v43 = v34;
          v46 = v29;
        }

        refreshToken = v51;
        scope = self->_scope;
        scope = [(HDFHIRAuthResponse *)v6 scope];
        v13 = scope == scope;
        if (scope != scope)
        {
          scope2 = [(HDFHIRAuthResponse *)v6 scope];
          if (scope2)
          {
            v38 = scope2;
            v39 = self->_scope;
            scope3 = [(HDFHIRAuthResponse *)v6 scope];
            v13 = [(NSString *)v39 isEqualToString:scope3];

            if (v48 != v46)
            {
            }

            goto LABEL_39;
          }
        }

        v29 = v46;
        if (v48 == v46)
        {
LABEL_39:

          patientID = v47;
          goto LABEL_40;
        }

        patientID = v47;
LABEL_37:

LABEL_40:
        v41 = v52;
LABEL_41:
        if (v41 != patientID)
        {
        }

        goto LABEL_43;
      }

      patientID2 = [(HDFHIRAuthResponse *)v6 patientID];
      if (!patientID2)
      {
        v50 = refreshToken3;
        v13 = 0;
LABEL_43:

        if (refreshToken != refreshToken)
        {
        }

LABEL_46:
        accessToken3 = v54;
        v10 = v55;
        if (accessToken != accessToken)
        {
          goto LABEL_47;
        }

LABEL_48:

        goto LABEL_49;
      }

      v49 = patientID2;
      v51 = refreshToken;
      v21 = patientID;
      v22 = self->_patientID;
      patientID3 = [(HDFHIRAuthResponse *)v6 patientID];
      v24 = v22;
      v25 = patientID3;
      if ([(NSString *)v24 isEqualToString:patientID3])
      {
        v26 = refreshToken;
        v45 = v25;
        patientID = v21;
        goto LABEL_20;
      }

      if (refreshToken != refreshToken)
      {
LABEL_34:
      }

LABEL_35:

      v13 = 0;
      goto LABEL_46;
    }

    v13 = 0;
  }

LABEL_49:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accessToken hash];
  v4 = [(NSString *)self->_refreshToken hash]^ v3;
  v5 = [(NSString *)self->_patientID hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_expiration hash];
  return v6 ^ [(NSString *)self->_scope hash];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessToken = [(HDFHIRAuthResponse *)self accessToken];
  [coderCopy encodeObject:accessToken forKey:@"accessToken"];

  refreshToken = [(HDFHIRAuthResponse *)self refreshToken];
  [coderCopy encodeObject:refreshToken forKey:@"refreshToken"];

  patientID = [(HDFHIRAuthResponse *)self patientID];
  [coderCopy encodeObject:patientID forKey:@"patientID"];

  expiration = [(HDFHIRAuthResponse *)self expiration];
  [coderCopy encodeObject:expiration forKey:@"expiration"];

  scope = [(HDFHIRAuthResponse *)self scope];
  [coderCopy encodeObject:scope forKey:@"scope"];
}

- (HDFHIRAuthResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessToken"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"refreshToken"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"patientID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scope"];
  if (v5 && v7)
  {
    self = [(HDFHIRAuthResponse *)self initWithAccessToken:v5 refreshToken:v6 patientID:v7 expiration:v8 scope:v9];
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

+ (void)authResponseFromServerResponseDictionary:(uint64_t)a1 baseURL:(uint64_t)a2 previousCredential:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRAuthResponse.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"responseDictionary"}];
}

+ (void)authResponseFromServerResponseDictionary:(uint64_t)a1 baseURL:(uint64_t)a2 previousCredential:error:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDFHIRAuthResponse.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"baseURL"}];
}

@end