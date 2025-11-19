@interface HDFHIRAuthResponse
+ (id)authResponseFromServerResponseDictionary:(id)a3 baseURL:(id)a4 previousCredential:(id)a5 error:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToAuthResponse:(id)a3;
- (HDFHIRAuthResponse)initWithAccessToken:(id)a3 refreshToken:(id)a4 patientID:(id)a5 expiration:(id)a6 scope:(id)a7;
- (HDFHIRAuthResponse)initWithCoder:(id)a3;
- (id)descriptionForAccountEvent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDFHIRAuthResponse

- (HDFHIRAuthResponse)initWithAccessToken:(id)a3 refreshToken:(id)a4 patientID:(id)a5 expiration:(id)a6 scope:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HDFHIRAuthResponse;
  v17 = [(HDFHIRAuthResponse *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    accessToken = v17->_accessToken;
    v17->_accessToken = v18;

    v20 = [v13 copy];
    refreshToken = v17->_refreshToken;
    v17->_refreshToken = v20;

    v22 = [v14 copy];
    patientID = v17->_patientID;
    v17->_patientID = v22;

    v24 = [v15 copy];
    expiration = v17->_expiration;
    v17->_expiration = v24;

    v26 = [v16 copy];
    scope = v17->_scope;
    v17->_scope = v26;
  }

  return v17;
}

+ (id)authResponseFromServerResponseDictionary:(id)a3 baseURL:(id)a4 previousCredential:(id)a5 error:(id *)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HDFHIRAuthResponse authResponseFromServerResponseDictionary:a2 baseURL:a1 previousCredential:? error:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [HDFHIRAuthResponse authResponseFromServerResponseDictionary:a2 baseURL:a1 previousCredential:? error:?];
LABEL_3:
  v14 = [v11 hk_safeStringForKeyPath:@"access_token" error:a6];
  if (!v14)
  {
    v19 = 0;
    goto LABEL_57;
  }

  v15 = [v11 hk_safeStringForKeyPath:@"token_type" error:a6];
  if (v15)
  {
    v49 = 0;
    v16 = [v11 hk_safeStringForKeyPath:@"patient" error:&v49];
    v17 = v49;
    if (!v16)
    {
      v20 = [v11 objectForKeyedSubscript:@"patient"];

      if (v20)
      {
        v18 = v17;
        if (v18)
        {
          if (a6)
          {
            v21 = v18;
            v19 = 0;
            *a6 = v18;
LABEL_39:
            v17 = v18;
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
      v18 = v16;
    }

    else
    {
      v18 = [v13 patientID];

      if (![v18 length])
      {
        v19 = 0;
LABEL_55:

        goto LABEL_56;
      }
    }

    v45 = v18;
    v48 = v17;
    v22 = [v11 hk_safeNumberForKeyPath:@"expires_in" error:&v48];
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
      v28 = [v11 objectForKeyedSubscript:@"expires_in"];

      if (v28)
      {
        v29 = v23;
        if (v29)
        {
          v18 = v45;
          if (a6)
          {
            v30 = v29;
            v19 = 0;
            *a6 = v30;
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
          v18 = v45;
          v27 = 0;
        }

        goto LABEL_54;
      }

      v42 = 0;
      v43 = v15;
    }

    v47 = v23;
    v24 = [v11 hk_safeStringForKeyPath:@"refresh_token" error:&v47];
    v25 = v47;

    if (!v24)
    {
      v31 = [v11 objectForKeyedSubscript:@"refresh_token"];

      if (v31)
      {
        v24 = v25;
        if (v24)
        {
          v18 = v45;
          if (a6)
          {
            v32 = v24;
            v19 = 0;
            *a6 = v24;
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
          v18 = v45;
        }

        v27 = v42;
        goto LABEL_53;
      }

      v35 = [v13 refreshToken];
      if (v35)
      {
        v24 = v35;
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
    v26 = [v11 hk_safeStringForKeyPath:@"scope" error:&v46];
    v17 = v46;

    v18 = v45;
    if (v26)
    {
      goto LABEL_19;
    }

    v33 = [v11 objectForKeyedSubscript:@"scope"];

    if (!v33)
    {
      v26 = [v13 scopeString];
LABEL_19:
      v27 = v42;
      v19 = [[HDFHIRAuthResponse alloc] initWithAccessToken:v14 refreshToken:v24 patientID:v45 expiration:v42 scope:v26];
LABEL_52:

LABEL_53:
      v15 = v43;
LABEL_54:

      goto LABEL_55;
    }

    v26 = v17;
    if (v26)
    {
      if (a6)
      {
        v34 = v26;
        v19 = 0;
        *a6 = v26;
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
  v5 = [(HDFHIRAuthResponse *)self refreshToken];
  v6 = HKStringFromBool();
  v7 = [(HDFHIRAuthResponse *)self patientID];
  v8 = [(HDFHIRAuthResponse *)self expiration];
  v9 = HKDiagnosticStringFromDate();
  v10 = [(HDFHIRAuthResponse *)self scope];
  v11 = [v3 stringWithFormat:@"<%@> Refresh token: %@, Patient Id: %@, Expiration: %@, Scope: %@", v4, v6, v7, v9, v10];

  return v11;
}

- (BOOL)isEquivalentToAuthResponse:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    if ([(HDFHIRAuthResponse *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = self->_scope == 0;
      v7 = [(HDFHIRAuthResponse *)v5 scope];
      v8 = v7 != 0;

      if (v6 != v8)
      {
        if (!self->_scope)
        {
          goto LABEL_6;
        }

        v9 = [HKOAuth2ScopeSet scopesFromScopeString:?];
        v10 = [(HDFHIRAuthResponse *)v5 scope];
        v11 = [HKOAuth2ScopeSet scopesFromScopeString:v10];

        LODWORD(v10) = [v9 isEqualToSet:v11];
        if (v10)
        {
LABEL_6:
          accessToken = self->_accessToken;
          v13 = [(HDFHIRAuthResponse *)v5 accessToken];
          if (accessToken != v13)
          {
            v14 = [(HDFHIRAuthResponse *)v5 accessToken];
            if (!v14)
            {
              LOBYTE(v17) = 0;
              goto LABEL_30;
            }

            v3 = v14;
            v15 = self->_accessToken;
            v16 = [(HDFHIRAuthResponse *)v5 accessToken];
            if (![(NSString *)v15 isEqualToString:v16])
            {
              LOBYTE(v17) = 0;
LABEL_29:

              goto LABEL_30;
            }

            v33 = v16;
          }

          refreshToken = self->_refreshToken;
          v19 = [(HDFHIRAuthResponse *)v5 refreshToken];
          if (refreshToken != v19)
          {
            v17 = [(HDFHIRAuthResponse *)v5 refreshToken];
            if (!v17)
            {
LABEL_24:

LABEL_27:
              v28 = accessToken == v13;
              goto LABEL_28;
            }

            v20 = self->_refreshToken;
            v21 = [(HDFHIRAuthResponse *)v5 refreshToken];
            if (![(NSString *)v20 isEqualToString:v21])
            {

              LOBYTE(v17) = 0;
              goto LABEL_27;
            }

            v31 = v21;
            v32 = v17;
          }

          patientID = self->_patientID;
          v23 = [(HDFHIRAuthResponse *)v5 patientID];
          LOBYTE(v17) = patientID == v23;
          if (patientID != v23)
          {
            v24 = [(HDFHIRAuthResponse *)v5 patientID];
            if (v24)
            {
              v25 = v24;
              v30 = v3;
              v26 = self->_patientID;
              v27 = [(HDFHIRAuthResponse *)v5 patientID];
              LOBYTE(v17) = [(NSString *)v26 isEqualToString:v27];

              if (refreshToken != v19)
              {
              }

              v28 = accessToken == v13;
              v3 = v30;
LABEL_28:
              v16 = v33;
              if (!v28)
              {
                goto LABEL_29;
              }

LABEL_30:

              goto LABEL_31;
            }
          }

          if (refreshToken != v19)
          {
          }

          goto LABEL_24;
        }
      }
    }

    LOBYTE(v17) = 0;
  }

LABEL_31:

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    if ([(HDFHIRAuthResponse *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      accessToken = self->_accessToken;
      v8 = [(HDFHIRAuthResponse *)v6 accessToken];
      if (accessToken != v8)
      {
        v9 = [(HDFHIRAuthResponse *)v6 accessToken];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_48;
        }

        v10 = v9;
        v11 = self->_accessToken;
        v12 = [(HDFHIRAuthResponse *)v6 accessToken];
        if (![(NSString *)v11 isEqualToString:v12])
        {
          v13 = 0;
LABEL_47:

          goto LABEL_48;
        }

        v55 = v10;
        v54 = v12;
      }

      refreshToken = self->_refreshToken;
      v15 = [(HDFHIRAuthResponse *)v6 refreshToken];
      if (refreshToken != v15)
      {
        v16 = [(HDFHIRAuthResponse *)v6 refreshToken];
        if (!v16)
        {
          goto LABEL_35;
        }

        v53 = v16;
        v17 = self->_refreshToken;
        v3 = [(HDFHIRAuthResponse *)v6 refreshToken];
        if (![(NSString *)v17 isEqualToString:v3])
        {
          goto LABEL_34;
        }
      }

      patientID = self->_patientID;
      v19 = [(HDFHIRAuthResponse *)v6 patientID];
      v52 = patientID;
      if (patientID == v19)
      {
        v51 = refreshToken;
        v26 = v15;
LABEL_20:
        expiration = self->_expiration;
        v28 = [(HDFHIRAuthResponse *)v6 expiration];
        v29 = v28;
        v48 = expiration;
        v50 = v3;
        if (expiration == v28)
        {
          v46 = v28;
          v47 = v19;
          v15 = v26;
        }

        else
        {
          v30 = [(HDFHIRAuthResponse *)v6 expiration];
          if (!v30)
          {
            v13 = 0;
            v15 = v26;
            refreshToken = v51;
            goto LABEL_37;
          }

          v44 = v30;
          v47 = v19;
          v31 = self->_expiration;
          v32 = [(HDFHIRAuthResponse *)v6 expiration];
          v33 = v31;
          v34 = v32;
          v15 = v26;
          if (![(NSDate *)v33 isEqualToDate:v32])
          {

            v13 = 0;
            v19 = v47;
            refreshToken = v51;
            v41 = v52;
            goto LABEL_41;
          }

          v43 = v34;
          v46 = v29;
        }

        refreshToken = v51;
        scope = self->_scope;
        v36 = [(HDFHIRAuthResponse *)v6 scope];
        v13 = scope == v36;
        if (scope != v36)
        {
          v37 = [(HDFHIRAuthResponse *)v6 scope];
          if (v37)
          {
            v38 = v37;
            v39 = self->_scope;
            v40 = [(HDFHIRAuthResponse *)v6 scope];
            v13 = [(NSString *)v39 isEqualToString:v40];

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

          v19 = v47;
          goto LABEL_40;
        }

        v19 = v47;
LABEL_37:

LABEL_40:
        v41 = v52;
LABEL_41:
        if (v41 != v19)
        {
        }

        goto LABEL_43;
      }

      v20 = [(HDFHIRAuthResponse *)v6 patientID];
      if (!v20)
      {
        v50 = v3;
        v13 = 0;
LABEL_43:

        if (refreshToken != v15)
        {
        }

LABEL_46:
        v12 = v54;
        v10 = v55;
        if (accessToken != v8)
        {
          goto LABEL_47;
        }

LABEL_48:

        goto LABEL_49;
      }

      v49 = v20;
      v51 = refreshToken;
      v21 = v19;
      v22 = self->_patientID;
      v23 = [(HDFHIRAuthResponse *)v6 patientID];
      v24 = v22;
      v25 = v23;
      if ([(NSString *)v24 isEqualToString:v23])
      {
        v26 = v15;
        v45 = v25;
        v19 = v21;
        goto LABEL_20;
      }

      if (refreshToken != v15)
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDFHIRAuthResponse *)self accessToken];
  [v4 encodeObject:v5 forKey:@"accessToken"];

  v6 = [(HDFHIRAuthResponse *)self refreshToken];
  [v4 encodeObject:v6 forKey:@"refreshToken"];

  v7 = [(HDFHIRAuthResponse *)self patientID];
  [v4 encodeObject:v7 forKey:@"patientID"];

  v8 = [(HDFHIRAuthResponse *)self expiration];
  [v4 encodeObject:v8 forKey:@"expiration"];

  v9 = [(HDFHIRAuthResponse *)self scope];
  [v4 encodeObject:v9 forKey:@"scope"];
}

- (HDFHIRAuthResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessToken"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"refreshToken"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"patientID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scope"];
  if (v5 && v7)
  {
    self = [(HDFHIRAuthResponse *)self initWithAccessToken:v5 refreshToken:v6 patientID:v7 expiration:v8 scope:v9];
    v10 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  return v10;
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