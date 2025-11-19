@interface IDSRegistration
- (BOOL)_keychain_isEqual:(id)a3;
- (BOOL)canRegister;
- (BOOL)canSendRegistration;
- (BOOL)hasSentinel;
- (BOOL)isEqual:(id)a3;
- (BOOL)removeFromKeychain;
- (BOOL)saveToKeychain;
- (BOOL)stopAtAuthentication;
- (IDSRegistration)init;
- (IDSRegistration)initWithDictionary:(id)a3;
- (IDSRegistration)initWithPasswordManager:(id)a3;
- (NSArray)confirmedEmails;
- (NSArray)emailsToRegister;
- (NSData)authenticationCert;
- (NSDictionary)dictionaryRepresentation;
- (NSString)authenticationToken;
- (NSString)email;
- (NSString)registrationTraceID;
- (id)_keychain_comparisonValue;
- (id)_user;
- (id)_userID;
- (id)_userStore;
- (id)debugDescription;
- (id)description;
- (void)addCandidateEmail:(id)a3;
- (void)removeCandidateEmail:(id)a3;
- (void)resetRegistrationID;
- (void)setAuthenticationCert:(id)a3;
- (void)setAuthenticationToken:(id)a3;
- (void)setEmail:(id)a3;
- (void)setRegistrationStatus:(int64_t)a3;
- (void)setUserUniqueIdentifier:(id)a3;
- (void)voidAuthenticationTokenAllowingGracePeriod;
- (void)voidPassword;
@end

@implementation IDSRegistration

- (NSData)authenticationCert
{
  v3 = [(IDSRegistration *)self registrationType];
  if ([(IDSRegistration *)self registrationType])
  {
    if (v3 == 2)
    {
      v4 = [(IDSRegistration *)self _user];
      v5 = [(IDSRegistration *)self _userStore];
      v6 = [v5 authenticationCertificateForUser:v4];
      v7 = [v6 dataRepresentation];
    }

    else
    {
      v4 = +[IDSRegistrationKeychainManager sharedInstance];
      v5 = [(IDSRegistration *)self idsUserID];
      v7 = [v4 authenticationCertForID:v5];
    }
  }

  else
  {
    v4 = [(IDSRegistration *)self _user];
    v8 = [(IDSRegistration *)self _userStore];
    v9 = [v8 authenticationCertificateForUser:v4];
    v7 = [v9 dataRepresentation];

    if (!v7)
    {
      v10 = +[IDSRegistrationKeychainManager sharedInstance];
      v11 = [(IDSRegistration *)self userUniqueIdentifier];
      v7 = [v10 authenticationCertForID:v11];

      if (v7)
      {
        if (v4)
        {
          v12 = [(IDSRegistration *)self idsUserID];
          v13 = [v12 _stripFZIDPrefix];

          v14 = [v4 unprefixedIdentifier];
          v15 = [v4 phoneUserWithUpdatedPhoneNumber:v13 phoneBookNumber:v14];

          v16 = +[IMRGLog registration];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412802;
            v20 = v4;
            v21 = 2112;
            v22 = v15;
            v23 = 2048;
            v24 = self;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating user with correct phoneNumber {user: %@, updatedUser: %@, self: %p}", &v19, 0x20u);
          }

          v17 = [(IDSRegistration *)self _userStore];
          [v17 updateUser:v15];
        }
      }
    }
  }

  return v7;
}

- (id)description
{
  [(IDSRegistration *)self registrationStatus];
  v30 = _StringForIDSDRegistrationStatus();
  v29 = _StringForIDSRegistrationType([(IDSRegistration *)self registrationType]);
  v31 = [(IDSRegistration *)self deviceName];
  v22 = [(IDSRegistration *)self serviceType];
  v28 = _StringForIDSRegistrationServiceType();
  v26 = [(IDSRegistration *)self environment];
  v19 = [(IDSRegistration *)self mainID];
  v27 = [(IDSRegistration *)self email];
  v17 = [(IDSRegistration *)self userID];
  v21 = [(IDSRegistration *)self isCDMA];
  v3 = @"YES";
  if (v21)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v16 = v4;
  v25 = [(IDSRegistration *)self pushToken];
  v15 = [(IDSRegistration *)self regionID];
  v24 = [(IDSRegistration *)self regionBasePhoneNumber];
  v20 = [(IDSRegistration *)self uris];
  v23 = IMLoggingStringForArray();
  v18 = [(IDSRegistration *)self candidateEmails];
  v5 = IMLoggingStringForArray();
  v6 = [(IDSRegistration *)self authenticationCert];
  v7 = [(IDSRegistration *)self registrationCert];
  v8 = [(IDSRegistration *)self profileID];
  v9 = [(IDSRegistration *)self idsUserID];
  userUniqueIdentifier = self->_userUniqueIdentifier;
  v11 = [(IDSRegistration *)self ktAccountKey];
  if (!v11)
  {
    v3 = @"NO";
  }

  v12 = [(IDSRegistration *)self eventTraceRandomID];
  v13 = [NSString stringWithFormat:@"Registration info (%p): [Status: %@] [Type: %@] [Device Name: %@] [Service Type: %@] [Env: %@] [Main ID: %@] [AppleID: %@] [UserID: %@] [C2K: %@] [Push Token: %@] [Region ID: %@] [Base Number: %@] [URIs: %@] [Candidates: %@] [Auth Cert: %p] [Reg Cert: %p] [Profile ID: %@] [Auth User ID: %@] [User Unique ID: %@] [Account Key: %@] [Event Trace GUID: %@]", self, v30, v29, v31, v28, v26, v19, v27, v17, v16, v25, v15, v24, v23, v5, v6, v7, v8, v9, userUniqueIdentifier, v3, v12];

  return v13;
}

- (id)_userID
{
  if ([(IDSRegistration *)self registrationType]&& [(IDSRegistration *)self registrationType]!= 2 || (v3 = &self->_mainID, [(NSString *)self->_mainID _FZBestGuessFZIDType]))
  {
    if ([(IDSRegistration *)self registrationType]!= 1 || (mainID = self->_mainID, p_mainID = &self->_mainID, [(NSString *)mainID _FZBestGuessFZIDType]!= 1))
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = 1;
    v3 = p_mainID;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)*v3 _IDFromFZIDType:v6];
LABEL_10:

  return v7;
}

- (NSString)email
{
  v3 = [(IDSRegistration *)self registrationType];
  v4 = 120;
  if (v3 == 2)
  {
    v4 = 256;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (IDSRegistration)init
{
  v3 = +[FTPasswordManager sharedInstance];
  v4 = [(IDSRegistration *)self initWithPasswordManager:v3];

  return v4;
}

- (id)_user
{
  v3 = [(IDSRegistration *)self _userStore];
  v4 = [v3 userWithUniqueIdentifier:self->_userUniqueIdentifier];

  return v4;
}

- (id)_userStore
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 registrationConductor];
  v4 = [v3 userStore];

  return v4;
}

- (BOOL)saveToKeychain
{
  v3 = +[IDSRegistrationKeychainManager sharedInstance];
  LOBYTE(self) = [v3 addRegistration:self];

  return self;
}

- (id)_keychain_comparisonValue
{
  v3 = [(IDSRegistration *)self registrationType];
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = [(IDSRegistration *)self userUniqueIdentifier];
      goto LABEL_6;
    }

    if (v3 == 1)
    {
      v4 = [(IDSRegistration *)self email];
LABEL_6:
      v5 = v4;
      goto LABEL_11;
    }

    v5 = 0;
  }

  else
  {
    v6 = [(IDSRegistration *)self userUniqueIdentifier];
    v7 = v6;
    v8 = @"phone-number-registration";
    if (v6)
    {
      v8 = v6;
    }

    v5 = v8;
  }

LABEL_11:

  return v5;
}

- (BOOL)_keychain_isEqual:(id)a3
{
  v4 = a3;
  if (![(IDSRegistration *)self isEqual:v4])
  {
    v6 = [(IDSRegistration *)self serviceType];
    v7 = [v4 serviceType];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(IDSRegistration *)self serviceType];
      v10 = [v4 serviceType];
      v11 = [v9 isEqualToString:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v12 = [(IDSRegistration *)self registrationType];
    if (v12 == [v4 registrationType])
    {
      v13 = [(IDSRegistration *)self _keychain_comparisonValue];
      v14 = [v4 _keychain_comparisonValue];
      v5 = [v13 isEqualToString:v14];

      goto LABEL_10;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = 1;
LABEL_10:

  return v5;
}

- (IDSRegistration)initWithPasswordManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = IDSRegistration;
  v6 = [(IDSRegistration *)&v12 init];
  if (v6)
  {
    v7 = +[NSString stringGUID];
    guid = v6->_guid;
    v6->_guid = v7;

    objc_storeStrong(&v6->_passwordManager, a3);
    v9 = +[NSString stringGUID];
    eventTraceRandomID = v6->_eventTraceRandomID;
    v6->_eventTraceRandomID = v9;
  }

  return v6;
}

- (IDSRegistration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(IDSRegistration *)self init];

  if (!v5)
  {
    goto LABEL_383;
  }

  if (v4 && [v4 count])
  {
    v6 = [v4 objectForKey:@"push-token"];
    if (_IDSRunningInDaemon() && v6)
    {
      v7 = +[IMRGLog registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_10092EE04();
      }
    }

    else if (!v6)
    {
      goto LABEL_189;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_189;
    }

    objc_storeStrong(&v5->_pushToken, v6);

    v6 = [v4 objectForKey:@"registration-date"];
    if (_IDSRunningInDaemon() && v6)
    {
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_10092EEB0();
      }
    }

    else if (!v6)
    {
      goto LABEL_18;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_189;
    }

LABEL_18:
    objc_storeStrong(&v5->_registrationDate, v6);

    v6 = [v4 objectForKey:@"next-registration-date"];
    if (_IDSRunningInDaemon() && v6)
    {
      v9 = +[IMRGLog registration];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10092EF5C();
      }
    }

    else if (!v6)
    {
LABEL_25:
      objc_storeStrong(&v5->_nextRegistrationDate, v6);

      v6 = [v4 objectForKey:@"needs-renewal"];
      if (_IDSRunningInDaemon() && v6)
      {
        v10 = +[IMRGLog registration];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          sub_10092F008();
        }
      }

      else if (!v6)
      {
LABEL_32:
        v6 = v6;

        -[IDSRegistration setNeedsRenewal:](v5, "setNeedsRenewal:", [v6 BOOLValue]);
        v11 = [v4 objectForKey:@"invitation-version"];
        if (_IDSRunningInDaemon() && v11)
        {
          v12 = +[IMRGLog registration];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F0B4();
          }
        }

        else if (!v11)
        {
          goto LABEL_188;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

        objc_storeStrong(&v5->_applicationVersion, v11);

        v11 = [v4 objectForKey:@"ids-version"];
        if (_IDSRunningInDaemon() && v11)
        {
          v13 = +[IMRGLog registration];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F160();
          }
        }

        else if (!v11)
        {
          goto LABEL_46;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_46:
        objc_storeStrong(&v5->_IDSVersion, v11);

        v11 = [v4 objectForKey:@"identity-version"];
        if (_IDSRunningInDaemon() && v11)
        {
          v14 = +[IMRGLog registration];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F20C();
          }
        }

        else if (!v11)
        {
          goto LABEL_53;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_53:
        objc_storeStrong(&v5->_identityVersion, v11);

        v11 = [v4 objectForKey:@"cdma"];
        if (_IDSRunningInDaemon() && v11)
        {
          v15 = +[IMRGLog registration];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F2B8();
          }
        }

        else if (!v11)
        {
          goto LABEL_60;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_60:
        objc_storeStrong(&v5->_isC2K, v11);

        v11 = [v4 objectForKey:@"identity-rsa-pair-signature"];
        _IDSRunningInDaemon();
        if (v11)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_188;
          }
        }

        objc_storeStrong(&v5->_keyPairSignature, v11);

        v11 = [v4 objectForKey:@"environment"];
        if (_IDSRunningInDaemon() && v11)
        {
          v16 = +[IMRGLog registration];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F364();
          }
        }

        else if (!v11)
        {
          goto LABEL_188;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

        objc_storeStrong(&v5->_environment, v11);

        v11 = [v4 objectForKey:@"main-id"];
        if (_IDSRunningInDaemon() && v11)
        {
          v17 = +[IMRGLog registration];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F410();
          }
        }

        else if (!v11)
        {
          goto LABEL_188;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

        objc_storeStrong(&v5->_mainID, v11);

        v11 = [v4 objectForKey:@"temporary-phone-email"];
        if (_IDSRunningInDaemon() && v11)
        {
          v18 = +[IMRGLog registration];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F4BC();
          }
        }

        else if (!v11)
        {
          goto LABEL_83;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_83:
        objc_storeStrong(&v5->_temporaryPhoneEmail, v11);

        v11 = [v4 objectForKey:@"profile-id"];
        if (_IDSRunningInDaemon() && v11)
        {
          v19 = +[IMRGLog registration];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F568();
          }
        }

        else if (!v11)
        {
          goto LABEL_90;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_90:
        objc_storeStrong(&v5->_profileID, v11);

        v11 = [v4 objectForKey:@"device-name"];
        if (_IDSRunningInDaemon() && v11)
        {
          v20 = +[IMRGLog registration];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F614();
          }
        }

        else if (!v11)
        {
          goto LABEL_97;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_97:
        objc_storeStrong(&v5->_deviceName, v11);

        v11 = [v4 objectForKey:@"region-id"];
        if (_IDSRunningInDaemon() && v11)
        {
          v21 = +[IMRGLog registration];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F6C0();
          }
        }

        else if (!v11)
        {
          goto LABEL_104;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_104:
        objc_storeStrong(&v5->_regionID, v11);

        v11 = [v4 objectForKey:@"region-base-phone-number"];
        if (_IDSRunningInDaemon() && v11)
        {
          v22 = +[IMRGLog registration];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F76C();
          }
        }

        else if (!v11)
        {
          goto LABEL_111;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_111:
        objc_storeStrong(&v5->_regionBasePhoneNumber, v11);

        v11 = [v4 objectForKey:@"region-server-context"];
        if (_IDSRunningInDaemon() && v11)
        {
          v23 = +[IMRGLog registration];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F818();
          }
        }

        else if (!v11)
        {
          goto LABEL_118;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_118:
        objc_storeStrong(&v5->_regionServerContext, v11);

        v11 = [v4 objectForKey:@"dependant-registrations"];
        _IDSRunningInDaemon();
        if (v11)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_188;
          }
        }

        objc_storeStrong(&v5->_dependentRegistrations, v11);

        v11 = [v4 objectForKey:@"self-handle"];
        if (_IDSRunningInDaemon() && v11)
        {
          v24 = +[IMRGLog registration];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F8C4();
          }
        }

        else if (!v11)
        {
          goto LABEL_127;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_127:
        objc_storeStrong(&v5->_dsHandle, v11);

        v11 = [v4 objectForKey:@"dependant-registrations-ttl"];
        if (_IDSRunningInDaemon() && v11)
        {
          v25 = +[IMRGLog registration];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            sub_10092F970();
          }
        }

        else if (!v11)
        {
          goto LABEL_134;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_134:
        objc_storeStrong(&v5->_dependentRegistrationsTTL, v11);

        v11 = [v4 objectForKey:@"dependant-registrations-response-code"];
        if (_IDSRunningInDaemon() && v11)
        {
          v26 = +[IMRGLog registration];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            sub_10092FA1C();
          }
        }

        else if (!v11)
        {
          goto LABEL_141;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_141:
        objc_storeStrong(&v5->_dependentRegistrationResponseCode, v11);

        v11 = [v4 objectForKey:@"dependant-registrations-auth-retries"];
        if (_IDSRunningInDaemon() && v11)
        {
          v27 = +[IMRGLog registration];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            sub_10092FAC8();
          }
        }

        else if (!v11)
        {
          goto LABEL_148;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_148:
        objc_storeStrong(&v5->_dependentRegistrationAuthRetries, v11);

        v11 = [v4 objectForKey:@"uris"];
        if (_IDSRunningInDaemon() && v11)
        {
          v28 = +[IMRGLog registration];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            sub_10092FB74();
          }
        }

        else if (!v11)
        {
          goto LABEL_155;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_155:
        objc_storeStrong(&v5->_uris, v11);

        v11 = [v4 objectForKey:@"kt-uris"];
        if (_IDSRunningInDaemon() && v11)
        {
          v29 = +[IMRGLog registration];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            sub_10092FC20();
          }
        }

        else if (!v11)
        {
          goto LABEL_162;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

LABEL_162:
        objc_storeStrong(&v5->_keyTransparencyEnrolledURIs, v11);

        v11 = [v4 objectForKey:@"ids-user-id"];
        if (_IDSRunningInDaemon() && v11)
        {
          v30 = +[IMRGLog registration];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            sub_10092FCCC();
          }
        }

        else if (!v11)
        {
LABEL_169:
          objc_storeStrong(&v5->_idsUserID, v11);

          v11 = [v4 objectForKey:@"ids-registration-cert"];
          if (_IDSRunningInDaemon() && v11)
          {
            v31 = +[IMRGLog registration];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              sub_10092FD78();
            }
          }

          else if (!v11)
          {
            goto LABEL_176;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
LABEL_176:
            objc_storeStrong(&v5->_registrationCert, v11);

            v11 = [v4 objectForKey:@"ids-authentication-cert"];
            if (_IDSRunningInDaemon() && v11)
            {
              v32 = +[IMRGLog registration];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                sub_10092FE30();
              }
            }

            else if (!v11)
            {
LABEL_183:
              v33 = v11;

              v34 = [v4 objectForKey:@"auth-token"];
              if (_IDSRunningInDaemon() && v34)
              {
                v35 = +[IMRGLog registration];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  sub_10092FEE8();
                }
              }

              else if (!v34)
              {
                goto LABEL_193;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_190;
              }

LABEL_193:
              v37 = v34;

              v38 = [v4 objectForKey:@"user-unique-identifier"];
              if (_IDSRunningInDaemon() && v38)
              {
                v39 = +[IMRGLog registration];
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  sub_10092FF94();
                }
              }

              else if (!v38)
              {
                goto LABEL_201;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_222;
              }

LABEL_201:
              objc_storeStrong(&v5->_userUniqueIdentifier, v38);

              v38 = [v4 objectForKey:@"context-info"];
              if (_IDSRunningInDaemon() && v38)
              {
                v40 = +[IMRGLog registration];
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  sub_100930040();
                }
              }

              else if (!v38)
              {
LABEL_208:
                objc_storeStrong(&v5->_contextInfo, v38);

                v38 = [v4 objectForKey:@"event-trace-id"];
                if (_IDSRunningInDaemon() && v38)
                {
                  v41 = +[IMRGLog registration];
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    sub_1009300EC();
                  }
                }

                else if (!v38)
                {
                  goto LABEL_215;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
LABEL_215:
                  v42 = v38;

                  v117 = v42;
                  if (v42)
                  {
                    [(IDSRegistration *)v5 setEventTraceRandomID:v42];
                  }

                  v43 = [v4 objectForKey:@"type"];
                  if (_IDSRunningInDaemon() && v43)
                  {
                    v44 = +[IMRGLog registration];
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                    {
                      sub_1009301A4();
                    }
                  }

                  else if (!v43)
                  {
LABEL_231:

                    goto LABEL_223;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v45 = v43;

                    v116 = v45;
                    -[IDSRegistration setRegistrationType:](v5, "setRegistrationType:", [v45 intValue]);
                    v46 = [v4 objectForKey:@"service"];
                    if (_IDSRunningInDaemon() && v46)
                    {
                      v47 = +[IMRGLog registration];
                      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                      {
                        sub_100930250();
                      }
                    }

                    else if (!v46)
                    {
                      goto LABEL_239;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v115 = v46;

                      v48 = [v4 objectForKey:@"service-identifier"];
                      if (_IDSRunningInDaemon() && v48)
                      {
                        v49 = +[IMRGLog registration];
                        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                        {
                          sub_1009302FC();
                        }
                      }

                      else if (!v48)
                      {
LABEL_242:
                        objc_storeStrong(&v5->_serviceIdentifier, v48);

                        v48 = [v4 objectForKey:@"kt-account-key"];
                        if (_IDSRunningInDaemon() && v48)
                        {
                          v50 = +[IMRGLog registration];
                          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                          {
                            sub_1009303A8();
                          }
                        }

                        else if (!v48)
                        {
LABEL_249:
                          v51 = v48;

                          v114 = v51;
                          [(IDSRegistration *)v5 setKtAccountKey:v51];
                          v52 = [v4 objectForKey:@"kt-account-key-timestamp"];
                          if (_IDSRunningInDaemon() && v52)
                          {
                            v53 = +[IMRGLog registration];
                            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                            {
                              sub_100930460();
                            }
                          }

                          else if (!v52)
                          {
                            goto LABEL_257;
                          }

                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            goto LABEL_276;
                          }

LABEL_257:
                          objc_storeStrong(&v5->_ktAccountKeyTimestamp, v52);

                          v52 = [v4 objectForKey:@"kt-account-key-error"];
                          if (_IDSRunningInDaemon() && v52)
                          {
                            v55 = +[IMRGLog registration];
                            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                            {
                              sub_10093050C();
                            }
                          }

                          else if (!v52)
                          {
LABEL_264:
                            objc_storeStrong(&v5->_ktAccountKeyErrorCode, v52);

                            v52 = [v4 objectForKey:@"device-signature"];
                            if (_IDSRunningInDaemon() && v52)
                            {
                              v56 = +[IMRGLog registration];
                              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                              {
                                sub_1009305B8();
                              }
                            }

                            else if (!v52)
                            {
LABEL_271:
                              v57 = v52;

                              v113 = v57;
                              [(IDSRegistration *)v5 setDeviceSignature:v57];
                              v58 = [v4 objectForKey:@"kt-data-for-registration"];
                              if (_IDSRunningInDaemon() && v58)
                              {
                                v59 = +[IMRGLog registration];
                                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                                {
                                  sub_100930670();
                                }
                              }

                              else if (!v58)
                              {
                                goto LABEL_282;
                              }

                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {

                                v64 = v117;
LABEL_313:

                                v60 = v113;
                                goto LABEL_277;
                              }

LABEL_282:
                              v61 = v58;

                              v112 = v61;
                              [(IDSRegistration *)v5 setKtDataForRegistration:v61];
                              v62 = [v4 objectForKey:@"opted-into-kt"];
                              if (_IDSRunningInDaemon() && v62)
                              {
                                v63 = +[IMRGLog registration];
                                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
                                {
                                  sub_100930728();
                                }
                              }

                              else if (!v62)
                              {
                                goto LABEL_290;
                              }

                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {

                                v68 = v117;
LABEL_312:

                                v64 = v112;
                                goto LABEL_313;
                              }

LABEL_290:
                              v65 = v62;

                              v111 = v65;
                              -[IDSRegistration setOptedIntoKT:](v5, "setOptedIntoKT:", [v65 intValue]);
                              v66 = [v4 objectForKey:@"opted-into-kt-timestamp"];
                              if (_IDSRunningInDaemon() && v66)
                              {
                                v67 = +[IMRGLog registration];
                                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                                {
                                  sub_1009307D4();
                                }
                              }

                              else if (!v66)
                              {
LABEL_298:
                                objc_storeStrong(&v5->_optedIntoKTTimestamp, v66);

                                v66 = [v4 objectForKey:@"opted-into-kt-error"];
                                if (_IDSRunningInDaemon() && v66)
                                {
                                  v69 = +[IMRGLog registration];
                                  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                                  {
                                    sub_100930880();
                                  }
                                }

                                else if (!v66)
                                {
                                  goto LABEL_305;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
LABEL_305:
                                  objc_storeStrong(&v5->_ktOptInErrorCode, v66);

                                  v70 = [v4 objectForKey:@"dsid"];
                                  if (_IDSRunningInDaemon() && v70)
                                  {
                                    v71 = +[IMRGLog registration];
                                    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                                    {
                                      sub_10093092C();
                                    }
                                  }

                                  else if (!v70)
                                  {
                                    goto LABEL_316;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
LABEL_316:
                                    objc_storeStrong(&v5->_dsid, v70);

                                    v110 = _IDSRegistrationServiceTypeForString();
                                    [(IDSRegistration *)v5 setServiceType:?];
                                    v72 = [(IDSRegistration *)v5 serviceIdentifier];
                                    if (![v72 length])
                                    {
                                      v73 = [v110 length];

                                      if (!v73)
                                      {
                                        goto LABEL_320;
                                      }

                                      v72 = _IDSRegistrationServiceIdentifierFromServiceType();
                                      [(IDSRegistration *)v5 setServiceIdentifier:v72];
                                    }

LABEL_320:
                                    if (![(NSArray *)v5->_uris count])
                                    {
                                      registrationCert = v5->_registrationCert;
                                      v5->_registrationCert = 0;
                                    }

                                    if (v5->_registrationCert)
                                    {
                                      v75 = 0;
                                      v76 = 0;
                                      goto LABEL_324;
                                    }

                                    v75 = [v4 objectForKey:@"bindings"];
                                    if (_IDSRunningInDaemon() && v75)
                                    {
                                      v83 = +[IMRGLog registration];
                                      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                                      {
                                        sub_1009309D8();
                                      }
                                    }

                                    else if (!v75)
                                    {
                                      goto LABEL_341;
                                    }

                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      v85 = 0;
                                      goto LABEL_382;
                                    }

LABEL_341:
                                    v75 = v75;

                                    v109 = [v4 objectForKey:@"cert"];
                                    if (_IDSRunningInDaemon() && v109)
                                    {
                                      v84 = +[IMRGLog registration];
                                      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                                      {
                                        sub_100930A90();
                                      }
                                    }

                                    else if (!v109)
                                    {
LABEL_349:
                                      v76 = v109;

                                      if (!v76)
                                      {
                                        v109 = v75;
                                        v75 = 0;
LABEL_326:
                                        v108 = [(IDSRegistration *)v5 idsUserID];
                                        if ([(IDSRegistration *)v5 registrationType])
                                        {
                                          goto LABEL_355;
                                        }

                                        v77 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                        if ([v37 length])
                                        {
                                          v78 = +[IDSRegistrationKeychainManager sharedInstance];
                                          v79 = [v78 smsSignatureForID:v77];
                                          v105 = [v79 length];

                                          if (v105)
                                          {
LABEL_354:

LABEL_355:
                                            v88 = [(IDSRegistration *)v5 registrationType];
                                            v89 = +[IMRGLog registration];
                                            v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT);
                                            if (v88)
                                            {
                                              if (v90)
                                              {
                                                *buf = 138412546;
                                                v119 = v33;
                                                v120 = 2112;
                                                v121 = v108;
                                                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Loaded auth cert: %@    ID: %@", buf, 0x16u);
                                              }

                                              if (![v33 length] || !objc_msgSend(v108, "length"))
                                              {
                                                goto LABEL_380;
                                              }

                                              v91 = +[IDSRegistrationKeychainManager sharedInstance];
                                              v92 = [v91 authenticationCertForID:v108];
                                              v106 = [v92 length];

                                              v93 = +[IMRGLog registration];
                                              v94 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
                                              if (v106)
                                              {
                                                if (v94)
                                                {
                                                  *buf = 138412290;
                                                  v119 = v108;
                                                  _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Not migrating cert for user ID, we already have one: %@", buf, 0xCu);
                                                }
                                              }

                                              else
                                              {
                                                if (v94)
                                                {
                                                  *buf = 138412290;
                                                  v119 = v108;
                                                  _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Migrating auth cert for IDS User ID: %@", buf, 0xCu);
                                                }

                                                v93 = +[IDSRegistrationKeychainManager sharedInstance];
                                                [v93 setAuthenticationCert:v33 forID:v108];
                                              }

LABEL_379:

LABEL_380:
                                              v85 = 1;
                                              goto LABEL_381;
                                            }

                                            if (v90)
                                            {
                                              v95 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                              *buf = 138412546;
                                              v119 = v33;
                                              v120 = 2112;
                                              v121 = v95;
                                              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Loaded auth cert: %@    userUniqueID: %@", buf, 0x16u);
                                            }

                                            if (![v33 length])
                                            {
                                              goto LABEL_380;
                                            }

                                            v96 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                            v97 = [v96 length];

                                            if (!v97)
                                            {
                                              goto LABEL_380;
                                            }

                                            v98 = +[IDSRegistrationKeychainManager sharedInstance];
                                            v99 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                            v100 = [v98 authenticationCertForID:v99];
                                            v107 = [v100 length];

                                            v93 = +[IMRGLog registration];
                                            v101 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
                                            if (v107)
                                            {
                                              if (!v101)
                                              {
                                                goto LABEL_379;
                                              }

                                              v102 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                              *buf = 138412290;
                                              v119 = v102;
                                              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Not migrating cert for user ID, we already have one: %@", buf, 0xCu);
                                            }

                                            else
                                            {
                                              if (v101)
                                              {
                                                v103 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                                *buf = 138412290;
                                                v119 = v103;
                                                _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Migrating auth cert for userUniqueID: %@", buf, 0xCu);
                                              }

                                              v93 = +[IDSRegistrationKeychainManager sharedInstance];
                                              v102 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                              [v93 setAuthenticationCert:v33 forID:v102];
                                            }

                                            goto LABEL_379;
                                          }

                                          v80 = +[IMRGLog registration];
                                          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *buf = 138412546;
                                            v119 = v37;
                                            v120 = 2112;
                                            v121 = v77;
                                            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Migrating this SMS auth token: %@  storageID: %@", buf, 0x16u);
                                          }

                                          v81 = +[IDSRegistrationKeychainManager sharedInstance];
                                          [v81 setSMSSignature:v37 mainID:v77];

                                          v82 = +[IDSRegistrationKeychainManager sharedInstance];
                                          [v82 setSMSSignatureMechanism:&off_100C3D3A8 mainID:v77];
                                        }

                                        else
                                        {
                                          if (!v77)
                                          {
                                            goto LABEL_354;
                                          }

                                          v86 = +[IDSRegistrationKeychainManager sharedInstance];
                                          v87 = [v86 smsSignatureForID:v77];

                                          if (v87)
                                          {
                                            goto LABEL_354;
                                          }

                                          v82 = +[IMRGLog registration];
                                          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *buf = 0;
                                            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "******** We're missing an SMS auth token, this will SMS migration register ******** ", buf, 2u);
                                          }
                                        }

                                        goto LABEL_354;
                                      }

                                      if (![v75 count])
                                      {
LABEL_325:
                                        v109 = v75;
                                        v75 = v76;
                                        goto LABEL_326;
                                      }

                                      v5->_needsMigration = 1;
LABEL_324:
                                      [(IDSRegistration *)v5 setRegistrationStatus:8];
                                      goto LABEL_325;
                                    }

                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      v85 = 0;
LABEL_381:

LABEL_382:
                                      if (v85)
                                      {
LABEL_383:
                                        v36 = v5;
                                        goto LABEL_384;
                                      }

                                      goto LABEL_190;
                                    }

                                    goto LABEL_349;
                                  }

                                  goto LABEL_311;
                                }

LABEL_310:

LABEL_311:
                                v68 = v111;
                                goto LABEL_312;
                              }

                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                goto LABEL_310;
                              }

                              goto LABEL_298;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              goto LABEL_271;
                            }

LABEL_276:

                            v60 = v117;
LABEL_277:

                            v54 = v114;
                            goto LABEL_278;
                          }

                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            goto LABEL_276;
                          }

                          goto LABEL_264;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          goto LABEL_249;
                        }

LABEL_254:

                        v54 = v117;
LABEL_278:

                        goto LABEL_279;
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        goto LABEL_254;
                      }

                      goto LABEL_242;
                    }

LABEL_239:

LABEL_279:
                    goto LABEL_190;
                  }

                  goto LABEL_231;
                }

LABEL_222:

LABEL_223:
                goto LABEL_190;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_222;
              }

              goto LABEL_208;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_183;
            }
          }

LABEL_188:

          goto LABEL_189;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_188;
        }

        goto LABEL_169;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_32;
      }

LABEL_189:

      goto LABEL_190;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_25;
  }

LABEL_190:
  v36 = 0;
LABEL_384:

  return v36;
}

- (BOOL)removeFromKeychain
{
  v3 = +[IDSRegistrationKeychainManager sharedInstance];
  LOBYTE(self) = [v3 removeRegistration:self];

  return self;
}

- (void)addCandidateEmail:(id)a3
{
  v4 = a3;
  if (IMStringIsPhoneNumber())
  {
    v5 = IMCanonicalizeFormattedString();

    v4 = v5;
  }

  v9 = [v4 _im_normalizedURIString];

  candidateEmails = self->_candidateEmails;
  if (!candidateEmails)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = self->_candidateEmails;
    self->_candidateEmails = v7;

    candidateEmails = self->_candidateEmails;
  }

  if (([(NSMutableArray *)candidateEmails containsObject:v9]& 1) == 0)
  {
    [(NSMutableArray *)self->_candidateEmails addObject:v9];
  }
}

- (void)removeCandidateEmail:(id)a3
{
  v4 = a3;
  if (IMStringIsPhoneNumber())
  {
    v5 = IMCanonicalizeFormattedString();

    v4 = v5;
  }

  v9 = [v4 _im_normalizedURIString];

  v7 = v9;
  if (v9)
  {
    [(NSMutableArray *)self->_candidateEmails removeObject:v9];
    v6 = [(NSMutableArray *)self->_candidateEmails count];
    v7 = v9;
    if (!v6)
    {
      candidateEmails = self->_candidateEmails;
      self->_candidateEmails = 0;

      v7 = v9;
    }
  }

  _objc_release_x1(v6, v7);
}

- (NSArray)confirmedEmails
{
  v2 = [(IDSRegistration *)self uris];
  v3 = [v2 _IDsFromURIs];

  return v3;
}

- (void)setEmail:(id)a3
{
  v4 = a3;
  if ([(IDSRegistration *)self registrationType]== 2)
  {
    [(IDSRegistration *)self setTemporaryPhoneEmail:v4];
  }

  else
  {
    [(IDSRegistration *)self setMainID:v4];
  }
}

- (void)setRegistrationStatus:(int64_t)a3
{
  if (self->_registrationStatus != a3)
  {
    self->_registrationStatus = a3;
  }
}

- (void)setUserUniqueIdentifier:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_userUniqueIdentifier, a3);
  if (!self->_mainID)
  {
    v5 = [(IDSRegistration *)self _user];
    v6 = [v5 unprefixedIdentifier];
    mainID = self->_mainID;
    self->_mainID = v6;
  }
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [NSNumber numberWithInteger:self->_registrationType];
  v4 = [(IDSRegistration *)self serviceType];
  v5 = _StringForIDSRegistrationServiceType();

  v6 = [NSNumber numberWithUnsignedInteger:self->_optedIntoKT];
  if (!self->_registrationCert)
  {
    v9 = +[IMRGLog keychain];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v63 = 138412290;
    v64 = @"ids-registration-cert";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "keychainDictionary: nil %@", &v63, 0xCu);
    goto LABEL_34;
  }

  if (!self->_pushToken)
  {
    v9 = +[IMRGLog keychain];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v63 = 138412290;
    v64 = @"push-token";
    goto LABEL_33;
  }

  if (!self->_mainID)
  {
    v9 = +[IMRGLog keychain];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v63 = 138412290;
    v64 = @"main-id";
    goto LABEL_33;
  }

  if (!self->_registrationDate)
  {
    v9 = +[IMRGLog keychain];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v63 = 138412290;
    v64 = @"registration-date";
    goto LABEL_33;
  }

  if (!self->_applicationVersion)
  {
    v9 = +[IMRGLog keychain];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v63 = 138412290;
    v64 = @"invitation-version";
    goto LABEL_33;
  }

  if (!self->_IDSVersion)
  {
    v9 = +[IMRGLog keychain];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v63 = 138412290;
    v64 = @"ids-version";
    goto LABEL_33;
  }

  if (!self->_identityVersion)
  {
    v9 = +[IMRGLog keychain];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v63 = 138412290;
    v64 = @"identity-version";
    goto LABEL_33;
  }

  if (!self->_environment)
  {
    v9 = +[IMRGLog keychain];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v63 = 138412290;
    v64 = @"environment";
    goto LABEL_33;
  }

  if (!v3)
  {
    v9 = +[IMRGLog keychain];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v63 = 138412290;
    v64 = @"type";
    goto LABEL_33;
  }

  if (!v5)
  {
    v9 = +[IMRGLog keychain];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v63 = 138412290;
      v64 = @"service";
      goto LABEL_33;
    }

LABEL_34:
    v10 = 0;
    goto LABEL_35;
  }

  v7 = +[NSMutableDictionary dictionary];
  v8 = self->_registrationCert;
  if (v8)
  {
    CFDictionarySetValue(v7, @"ids-registration-cert", v8);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100930B48();
    }
  }

  v13 = self->_uris;
  if (v13)
  {
    CFDictionarySetValue(v7, @"uris", v13);
  }

  v14 = self->_keyTransparencyEnrolledURIs;
  if (v14)
  {
    CFDictionarySetValue(v7, @"kt-uris", v14);
  }

  v15 = self->_idsUserID;
  if (v15)
  {
    CFDictionarySetValue(v7, @"ids-user-id", v15);
  }

  v16 = [NSNumber numberWithBool:self->_needsRenewal];
  if (v16)
  {
    CFDictionarySetValue(v7, @"needs-renewal", v16);
  }

  v17 = self->_mainID;
  if (v17)
  {
    CFDictionarySetValue(v7, @"main-id", v17);
  }

  else
  {
    v18 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100930BD0();
    }
  }

  v19 = self->_temporaryPhoneEmail;
  if (v19)
  {
    CFDictionarySetValue(v7, @"temporary-phone-email", v19);
  }

  v20 = self->_pushToken;
  if (v20)
  {
    CFDictionarySetValue(v7, @"push-token", v20);
  }

  else
  {
    v21 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100930C58();
    }
  }

  v22 = self->_registrationDate;
  if (v22)
  {
    CFDictionarySetValue(v7, @"registration-date", v22);
  }

  else
  {
    v23 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100930CE0();
    }
  }

  v24 = self->_applicationVersion;
  if (v24)
  {
    CFDictionarySetValue(v7, @"invitation-version", v24);
  }

  else
  {
    v25 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100930D68();
    }
  }

  v26 = self->_IDSVersion;
  if (v26)
  {
    CFDictionarySetValue(v7, @"ids-version", v26);
  }

  else
  {
    v27 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100930DF0();
    }
  }

  v28 = self->_environment;
  if (v28)
  {
    CFDictionarySetValue(v7, @"environment", v28);
  }

  else
  {
    v29 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100930E78();
    }
  }

  v30 = v3;
  CFDictionarySetValue(v7, @"type", v30);

  v31 = v5;
  CFDictionarySetValue(v7, @"service", v31);

  v32 = self->_serviceIdentifier;
  if (v32)
  {
    CFDictionarySetValue(v7, @"service-identifier", v32);
  }

  else
  {
    v33 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100930F00();
    }
  }

  v34 = self->_identityVersion;
  if (v34)
  {
    CFDictionarySetValue(v7, @"identity-version", v34);
  }

  v35 = self->_profileID;
  if (v35)
  {
    CFDictionarySetValue(v7, @"profile-id", v35);
  }

  v36 = self->_keyPairSignature;
  if (v36)
  {
    CFDictionarySetValue(v7, @"identity-rsa-pair-signature", v36);
  }

  v37 = self->_nextRegistrationDate;
  if (v37)
  {
    CFDictionarySetValue(v7, @"next-registration-date", v37);
  }

  v38 = self->_dsHandle;
  if (v38)
  {
    CFDictionarySetValue(v7, @"self-handle", v38);
  }

  v39 = self->_dependentRegistrationsTTL;
  if (v39)
  {
    CFDictionarySetValue(v7, @"dependant-registrations-ttl", v39);
  }

  v40 = self->_dependentRegistrationResponseCode;
  if (v40)
  {
    CFDictionarySetValue(v7, @"dependant-registrations-response-code", v40);
  }

  v41 = self->_dependentRegistrationAuthRetries;
  if (v41)
  {
    CFDictionarySetValue(v7, @"dependant-registrations-auth-retries", v41);
  }

  v42 = self->_userUniqueIdentifier;
  if (v42)
  {
    CFDictionarySetValue(v7, @"user-unique-identifier", v42);
  }

  v43 = self->_contextInfo;
  if (v43)
  {
    CFDictionarySetValue(v7, @"context-info", v43);
  }

  v44 = self->_eventTraceRandomID;
  if (v44)
  {
    CFDictionarySetValue(v7, @"event-trace-id", v44);
  }

  if (![(IDSRegistration *)self registrationType])
  {
    v45 = self->_isC2K;
    if (v45)
    {
      CFDictionarySetValue(v7, @"cdma", v45);
    }
  }

  v46 = self->_deviceName;
  if (v46)
  {
    CFDictionarySetValue(v7, @"device-name", v46);
  }

  v47 = self->_regionID;
  if (v47)
  {
    CFDictionarySetValue(v7, @"region-id", v47);
  }

  v48 = self->_regionBasePhoneNumber;
  if (v48)
  {
    CFDictionarySetValue(v7, @"region-base-phone-number", v48);
  }

  v49 = self->_regionServerContext;
  if (v49)
  {
    CFDictionarySetValue(v7, @"region-server-context", v49);
  }

  v50 = self->_dependentRegistrations;
  if (v50)
  {
    CFDictionarySetValue(v7, @"dependant-registrations", v50);
  }

  v51 = self->_ktAccountKey;
  if (v51)
  {
    CFDictionarySetValue(v7, @"kt-account-key", v51);
  }

  v52 = self->_ktAccountKeyTimestamp;
  if (v52)
  {
    CFDictionarySetValue(v7, @"kt-account-key-timestamp", v52);
  }

  v53 = self->_ktAccountKeyErrorCode;
  if (v53)
  {
    CFDictionarySetValue(v7, @"kt-account-key-error", v53);
  }

  v54 = self->_deviceSignature;
  if (v54)
  {
    CFDictionarySetValue(v7, @"device-signature", v54);
  }

  v55 = self->_ktDataForRegistration;
  if (v55)
  {
    CFDictionarySetValue(v7, @"kt-data-for-registration", v55);
  }

  v56 = v6;
  if (v56)
  {
    CFDictionarySetValue(v7, @"opted-into-kt", v56);
  }

  v57 = self->_optedIntoKTTimestamp;
  if (v57)
  {
    CFDictionarySetValue(v7, @"opted-into-kt-timestamp", v57);
  }

  v58 = self->_ktOptInErrorCode;
  if (v58)
  {
    CFDictionarySetValue(v7, @"opted-into-kt-error", v58);
  }

  v59 = self->_dsid;
  if (v59)
  {
    CFDictionarySetValue(v7, @"dsid", v59);
  }

  if (!self->_deviceName)
  {
    v60 = +[FTDeviceSupport sharedInstance];
    v61 = [v60 deviceName];
    deviceName = self->_deviceName;
    self->_deviceName = v61;
  }

  v9 = v7;
  v10 = v9;
LABEL_35:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v70.receiver = self;
  v70.super_class = IDSRegistration;
  if ([(IDSRegistration *)&v70 isEqual:v4])
  {
    v5 = 1;
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  v6 = [(IDSRegistration *)self registrationType];
  if (v6 != [v4 registrationType])
  {
    goto LABEL_40;
  }

  v7 = [(IDSRegistration *)self serviceType];
  v8 = [v4 serviceType];
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = [(IDSRegistration *)self serviceType];
    v11 = [v4 serviceType];
    v12 = [v10 isEqualToString:v11];

    if (!v12)
    {
      goto LABEL_40;
    }
  }

  v13 = [(IDSRegistration *)self pushToken];
  v14 = [v4 pushToken];
  v15 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    v16 = [(IDSRegistration *)self pushToken];
    v17 = [v4 pushToken];
    v18 = [v16 isEqualToData:v17];

    if (!v18)
    {
      goto LABEL_40;
    }
  }

  v19 = [(IDSRegistration *)self environment];
  v20 = [v4 environment];
  v21 = v20;
  if (v19 == v20)
  {
  }

  else
  {
    v22 = [(IDSRegistration *)self environment];
    v23 = [v4 environment];
    v24 = [v22 isEqualToString:v23];

    if (!v24)
    {
      goto LABEL_40;
    }
  }

  v25 = [(IDSRegistration *)self deviceName];
  v26 = [v4 deviceName];
  v27 = v26;
  if (v25 == v26)
  {
  }

  else
  {
    v28 = [(IDSRegistration *)self deviceName];
    v29 = [v4 deviceName];
    v30 = [v28 isEqualToString:v29];

    if (!v30)
    {
      goto LABEL_40;
    }
  }

  v31 = [(IDSRegistration *)self mainID];
  v32 = [v4 mainID];
  v33 = v32;
  if (v31 == v32)
  {
  }

  else
  {
    v34 = [(IDSRegistration *)self mainID];
    v35 = [v4 mainID];
    v36 = [v34 isEqualToString:v35];

    if (!v36)
    {
      goto LABEL_40;
    }
  }

  v37 = [(IDSRegistration *)self uris];
  v38 = [v4 uris];
  v39 = v38;
  if (v37 == v38)
  {
  }

  else
  {
    v40 = [(IDSRegistration *)self uris];
    v41 = [v4 uris];
    v42 = [v40 isEqualToArray:v41];

    if (!v42)
    {
      goto LABEL_40;
    }
  }

  v43 = [(IDSRegistration *)self candidateEmails];
  v44 = [v4 candidateEmails];
  v45 = v44;
  if (v43 == v44)
  {
  }

  else
  {
    v46 = [(IDSRegistration *)self candidateEmails];
    v47 = [v4 candidateEmails];
    v48 = [v46 isEqualToArray:v47];

    if (!v48)
    {
      goto LABEL_40;
    }
  }

  v49 = [(IDSRegistration *)self confirmedEmails];
  v50 = [v4 confirmedEmails];
  v51 = v50;
  if (v49 == v50)
  {
  }

  else
  {
    v52 = [(IDSRegistration *)self confirmedEmails];
    v53 = [v4 confirmedEmails];
    v54 = [v52 isEqualToArray:v53];

    if (!v54)
    {
      goto LABEL_40;
    }
  }

  v55 = [(IDSRegistration *)self isCDMA];
  v56 = [v55 intValue];
  v57 = [v4 isCDMA];
  v58 = [v57 intValue];

  if (v56 != v58)
  {
LABEL_40:
    v5 = 0;
    goto LABEL_41;
  }

  v59 = [(IDSRegistration *)self registrationCert];
  v60 = [v4 registrationCert];
  v61 = v60;
  if (v59 == v60)
  {
  }

  else
  {
    v62 = [(IDSRegistration *)self registrationCert];
    v63 = [v4 registrationCert];
    v64 = [v62 isEqualToData:v63];

    if (!v64)
    {
      goto LABEL_40;
    }
  }

  v66 = [(IDSRegistration *)self userUniqueIdentifier];
  v67 = [v4 userUniqueIdentifier];
  if (v66 == v67)
  {
    v5 = 1;
  }

  else
  {
    v68 = [(IDSRegistration *)self userUniqueIdentifier];
    v69 = [v4 userUniqueIdentifier];
    v5 = [v68 isEqualToString:v69];
  }

LABEL_41:
  return v5;
}

- (NSString)authenticationToken
{
  if ([(IDSRegistration *)self registrationType])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_10000AAE4;
    v20 = sub_10000BCE4;
    v21 = 0;
    passwordManager = self->_passwordManager;
    v4 = [(IDSRegistration *)self profileID];
    v5 = [(IDSRegistration *)self email];
    v6 = [v5 lowercaseString];
    v7 = [(IDSRegistration *)self serviceType];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1006ABC28;
    v15[3] = &unk_100BE41E0;
    v15[4] = self;
    v15[5] = &v16;
    [(FTPasswordManager *)passwordManager fetchAuthTokenForProfileID:v4 username:v6 service:v7 outRequestID:0 completionBlock:v15];

    if ([v17[5] length])
    {
      v8 = v17[5];
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = [(IDSRegistration *)self _userStore];
    v10 = [(IDSRegistration *)self _user];
    v11 = [v9 credentialForUser:v10];

    if (v11 && ![v11 realm])
    {
      v12 = [v11 smsSignature];
    }

    else
    {
      v12 = 0;
    }

    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100930F88();
    }
  }

  return v12;
}

- (void)setAuthenticationToken:(id)a3
{
  v4 = a3;
  if ([(IDSRegistration *)self registrationType])
  {
    v5 = [(IDSRegistration *)self registrationType];
    if (v4 || v5 != 2)
    {
      v6 = [(IDSRegistration *)self serviceType];
      passwordManager = self->_passwordManager;
      v12 = [(IDSRegistration *)self profileID];
      v13 = [(IDSRegistration *)self email];
      v14 = IMStripLoginID();
      v15 = [v14 lowercaseString];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1006AC0F0;
      v16[3] = &unk_100BE4208;
      v17 = v4;
      [(FTPasswordManager *)passwordManager setAuthTokenForProfileID:v12 username:v15 service:v6 authToken:v17 selfHandle:0 accountStatus:&off_100C3D3C0 outRequestID:0 completionBlock:v16];
    }

    else
    {
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "** Not clearing auth token since this is a temporary registration", buf, 2u);
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!v4)
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "** Cleraing auth token for SMS Registration.", buf, 2u);
    }

    v6 = +[IDSDaemon sharedInstance];
    v8 = [v6 registrationConductor];
    v9 = [v8 phoneUserRegistry];
    v10 = [(IDSRegistration *)self userUniqueIdentifier];
    [v9 clearCredentialForUserUniqueIdentifier:v10];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)voidAuthenticationTokenAllowingGracePeriod
{
  if ([(IDSRegistration *)self registrationType]== 1)
  {
    v3 = +[FTPasswordManager sharedInstance];
    v4 = [(IDSRegistration *)self profileID];
    v5 = [(IDSRegistration *)self email];
    v6 = [v5 lowercaseString];
    [v3 removeAuthTokenAllowingGracePeriodForProfileID:v4 username:v6];

    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IDSRegistration *)self email];
      v9 = [v8 lowercaseString];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Voided auth token for account (%@)", &v10, 0xCu);
    }
  }
}

- (void)voidPassword
{
  if ([(IDSRegistration *)self registrationType]== 1)
  {
    v7 = [(IDSRegistration *)self serviceType];
    v3 = +[FTPasswordManager sharedInstance];
    v4 = [(IDSRegistration *)self profileID];
    v5 = [(IDSRegistration *)self email];
    v6 = [v5 lowercaseString];
    [v3 setPasswordForProfileID:v4 username:v6 service:v7 password:0 outRequestID:0 completionBlock:&stru_100BE4228];
  }
}

- (NSString)registrationTraceID
{
  v3 = [(IDSRegistration *)self eventTraceRandomID];
  v4 = [(IDSRegistration *)self serviceIdentifier];
  v5 = [NSString stringWithFormat:@"%@|%@|%d", v3, v4, [(IDSRegistration *)self registrationType]];

  return v5;
}

- (void)resetRegistrationID
{
  v3 = [(IDSRegistration *)self registrationTraceID];
  v4 = +[NSString stringGUID];
  eventTraceRandomID = self->_eventTraceRandomID;
  self->_eventTraceRandomID = v4;

  v6 = +[IMRGLog eventTracing];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(IDSRegistration *)self registrationTraceID];
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resetting registration guid, %@ => %@", &v8, 0x16u);
  }
}

- (id)debugDescription
{
  [(IDSRegistration *)self registrationStatus];
  v33 = _StringForIDSDRegistrationStatus();
  v32 = _StringForIDSRegistrationType([(IDSRegistration *)self registrationType]);
  v34 = [(IDSRegistration *)self deviceName];
  v23 = [(IDSRegistration *)self serviceType];
  v31 = _StringForIDSRegistrationServiceType();
  v30 = [(IDSRegistration *)self environment];
  v29 = [(IDSRegistration *)self mainID];
  v28 = [(IDSRegistration *)self email];
  v18 = [(IDSRegistration *)self userID];
  v22 = [(IDSRegistration *)self isCDMA];
  v3 = @"YES";
  if (v22)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v17 = v4;
  v21 = [(IDSRegistration *)self pushToken];
  v27 = [v21 debugDescription];
  v16 = [(IDSRegistration *)self regionID];
  v15 = [(IDSRegistration *)self regionBasePhoneNumber];
  v20 = [(IDSRegistration *)self uris];
  v26 = IMLoggingStringForArray();
  v19 = [(IDSRegistration *)self candidateEmails];
  v25 = IMLoggingStringForArray();
  v24 = [(IDSRegistration *)self authenticationCert];
  v5 = [(IDSRegistration *)self registrationCert];
  v6 = [(IDSRegistration *)self profileID];
  v7 = [(IDSRegistration *)self idsUserID];
  v8 = [(IDSRegistration *)self registrationDate];
  v9 = [(IDSRegistration *)self nextRegistrationDate];
  userUniqueIdentifier = self->_userUniqueIdentifier;
  v11 = [(IDSRegistration *)self ktAccountKey];
  if (!v11)
  {
    v3 = @"NO";
  }

  v12 = [(IDSRegistration *)self eventTraceRandomID];
  v13 = [NSString stringWithFormat:@"Registration info (%p): [Status: %@] [Type: %@] [Device Name: %@] [Service Type: %@] [Env: %@] [Main ID: %@] [AppleID: %@] [UserID: %@] [C2K: %@] [Push Token: %@] [Region ID: %@] [Base Number: %@] [URIs: %@] [Candidates: %@] [Auth Cert: %p] [Reg Cert: %p] [Profile ID: %@] [Auth User ID: %@] [Registration Date: %@] [Heartbeat Date: %@] [User Unique ID: %@] [Account Key: %@] [Event Trace GUID: %@]", self, v33, v32, v34, v31, v30, v29, v28, v18, v17, v27, v16, v15, v26, v25, v24, v5, v6, v7, v8, v9, userUniqueIdentifier, v3, v12];

  return v13;
}

- (NSArray)emailsToRegister
{
  v3 = objc_alloc_init(NSMutableSet);
  if ([(IDSRegistration *)self shouldRegisterUsingDSHandle])
  {
    v4 = [(IDSRegistration *)self dsHandle];

    v5 = +[IMRGLog registration];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = [(IDSRegistration *)self idsUserID];
        v8 = [(IDSRegistration *)self serviceType];
        *buf = 138412546;
        v85 = v7;
        v86 = 2112;
        v87 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " ... finding emails to register for DS registration based account: %@:%@", buf, 0x16u);
      }

      v9 = +[IMRGLog registration];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(IDSRegistration *)self dsHandle];
        *buf = 138412290;
        v85 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " => Added self handle: %@ to URI set", buf, 0xCu);
      }

      v5 = [(IDSRegistration *)self dsHandle];
      [v3 addObject:v5];
    }

    else if (v6)
    {
      *buf = 138412290;
      v85 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => **** Missing self handle, not adding ****: %@", buf, 0xCu);
    }

LABEL_40:

    goto LABEL_41;
  }

  v11 = [(IDSRegistration *)self shouldAutoRegisterAllHandles];
  v12 = +[IMRGLog registration];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = [(IDSRegistration *)self idsUserID];
      v15 = [(IDSRegistration *)self serviceType];
      *buf = 138412546;
      v85 = v14;
      v86 = 2112;
      v87 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " ... finding emails to register for auto register based account: %@:%@", buf, 0x16u);
    }

    v16 = [(IDSRegistration *)self confirmedEmails];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [(IDSRegistration *)self confirmedEmails];
      [v3 addObjectsFromArray:v18];

      v19 = +[IMRGLog registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(IDSRegistration *)self confirmedEmails];
        v21 = IMLoggingStringForArray();
        *buf = 138412290;
        v85 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " => Auto adding confirmed emails: %@ to URI set", buf, 0xCu);
      }
    }

    else
    {
      v19 = +[IMRGLog registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " => No confirmed emails...", buf, 2u);
      }
    }

    v35 = [(IDSRegistration *)self vettedEmails];
    v36 = [v35 count];

    if (v36)
    {
      v37 = [(IDSRegistration *)self vettedEmails];
      [v3 addObjectsFromArray:v37];

      v38 = +[IMRGLog registration];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(IDSRegistration *)self vettedEmails];
        v40 = IMLoggingStringForArray();
        *buf = 138412290;
        v85 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " => Auto adding vetted emails: %@ to URI set", buf, 0xCu);
      }
    }

    else
    {
      v38 = +[IMRGLog registration];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, " => No confirmed emails...", buf, 2u);
      }
    }

    v41 = [(IDSRegistration *)self candidateEmails];
    v42 = [v41 count];

    if (v42)
    {
      v43 = [(IDSRegistration *)self candidateEmails];
      [v3 addObjectsFromArray:v43];

      v44 = +[IMRGLog registration];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [(IDSRegistration *)self candidateEmails];
        v46 = IMLoggingStringForArray();
        *buf = 138412290;
        v85 = v46;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, " => Added candidate emails: %@ to URI set", buf, 0xCu);
      }
    }

    v5 = [(IDSRegistration *)self dsHandle];
    if ([v5 length])
    {
      v47 = +[IMRGLog registration];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, " => Removing DS Handle", buf, 2u);
      }

      [v3 removeObject:v5];
    }

    goto LABEL_40;
  }

  if (v13)
  {
    v22 = [(IDSRegistration *)self idsUserID];
    v23 = [(IDSRegistration *)self serviceType];
    *buf = 138412546;
    v85 = v22;
    v86 = 2112;
    v87 = v23;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " ... finding emails to register for manual handle selection account: %@:%@", buf, 0x16u);
  }

  v24 = [(IDSRegistration *)self confirmedEmails];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [(IDSRegistration *)self confirmedEmails];
    [v3 addObjectsFromArray:v26];

    v27 = +[IMRGLog registration];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(IDSRegistration *)self confirmedEmails];
      v29 = IMLoggingStringForArray();
      *buf = 138412290;
      v85 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => Added confirmed emails: %@ to URI set", buf, 0xCu);
    }
  }

  v30 = [(IDSRegistration *)self candidateEmails];
  v31 = [v30 count];

  if (v31)
  {
    v32 = [(IDSRegistration *)self candidateEmails];
    [v3 addObjectsFromArray:v32];

    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [(IDSRegistration *)self candidateEmails];
      v34 = IMLoggingStringForArray();
      *buf = 138412290;
      v85 = v34;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, " => Added candidate emails: %@ to URI set", buf, 0xCu);
    }

    goto LABEL_40;
  }

LABEL_41:
  if (![v3 count])
  {

    v3 = 0;
  }

  v77 = self;
  if (+[IDSRegistrationController systemSupportsPhoneNumberRegistration])
  {
    v48 = +[IDSCTAdapter sharedInstance];
    v83 = 0;
    v49 = [v48 currentSIMsWithError:&v83];
    v50 = v83;
    v51 = [v49 __imArrayByApplyingBlock:&stru_100BE4248];
    v52 = [v51 mutableCopy];

    v53 = [(IDSRegistration *)self _userStore];
    v54 = [v53 usersWithRealm:2];
    v55 = [v54 __imArrayByApplyingBlock:&stru_100BE4268];
    [(IDSRegistration *)v52 addObjectsFromArray:v55];

    v56 = +[IMRGLog registration];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v85 = v52;
      v86 = 2112;
      v87 = v50;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "   Device numbers: %@, error: %@", buf, 0x16u);
    }
  }

  else
  {
    v52 = 0;
  }

  v57 = v3;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v76 = [v3 mutableCopy];
  obj = [v76 allObjects];
  v58 = [obj countByEnumeratingWithState:&v79 objects:v90 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v80;
    v61 = kIDSServiceDefaultsSentinelAlias;
    do
    {
      for (i = 0; i != v59; i = i + 1)
      {
        if (*v80 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v63 = *(*(&v79 + 1) + 8 * i);
        if (![(IDSRegistration *)v63 caseInsensitiveCompare:v61])
        {
          v64 = +[IMRGLog registration];
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, " => Found sentinel alias, stripping", buf, 2u);
          }

          [v57 removeObject:v63];
        }

        if ([(IDSRegistration *)v52 count])
        {
          v65 = [(IDSRegistration *)v63 lowercaseString];
          v66 = [(IDSRegistration *)v52 containsObject:v65];

          if (v66)
          {
            v67 = +[IMRGLog registration];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = [(IDSRegistration *)v77 serviceType];
              *buf = 138412546;
              v85 = v63;
              v86 = 2112;
              v87 = v68;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Skipping device number: %@  for service: %@", buf, 0x16u);
            }

            [v57 removeObject:v63];
          }
        }
      }

      v59 = [obj countByEnumeratingWithState:&v79 objects:v90 count:16];
    }

    while (v59);
  }

  v69 = v57;
  v70 = [v57 allObjects];
  v71 = +[IMRGLog registration];
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    v72 = IMLoggingStringForArray();
    v73 = [(IDSRegistration *)v77 serviceType];
    v74 = [(IDSRegistration *)v77 idsUserID];
    *buf = 138412802;
    v85 = v72;
    v86 = 2112;
    v87 = v73;
    v88 = 2112;
    v89 = v74;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, " => Final emails to register: %@    for service: %@  account: %@", buf, 0x20u);
  }

  return v70;
}

- (BOOL)hasSentinel
{
  v3 = +[FTDeviceSupport sharedInstance];
  v4 = [v3 supportsSMS];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_alloc_init(NSMutableArray);
  v6 = [(IDSRegistration *)self confirmedEmails];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(IDSRegistration *)self confirmedEmails];
    [v5 addObjectsFromArray:v8];
  }

  v9 = [(IDSRegistration *)self candidateEmails];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(IDSRegistration *)self candidateEmails];
    [v5 addObjectsFromArray:v11];
  }

  if (![v5 count])
  {

    v5 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    v16 = kIDSServiceDefaultsSentinelAlias;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (![*(*(&v20 + 1) + 8 * i) caseInsensitiveCompare:{v16, v20}])
        {
          v18 = 1;
          goto LABEL_19;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_19:

  return v18;
}

- (BOOL)canRegister
{
  v2 = self;
  if ([(IDSRegistration *)self registrationType]== 1)
  {
    if (![(IDSRegistration *)v2 shouldAutoRegisterAllHandles]&& ![(IDSRegistration *)v2 shouldRegisterUsingDSHandle])
    {
      v3 = [(IDSRegistration *)v2 regionID];
      if (![v3 length])
      {
        LOBYTE(v2) = 0;
        goto LABEL_14;
      }

      v4 = [(IDSRegistration *)v2 regionBasePhoneNumber];
      v5 = [v4 length];

      if (!v5)
      {
        LOBYTE(v2) = 0;
        return v2;
      }

      if (![(IDSRegistration *)v2 hasSentinel])
      {
        v3 = [(IDSRegistration *)v2 emailsToRegister];
        LOBYTE(v2) = [v3 count] != 0;
LABEL_14:

        return v2;
      }
    }
  }

  else if (![(IDSRegistration *)v2 registrationType])
  {
    v3 = +[IDSCTAdapter sharedInstance];
    if ([v3 isAnySIMInserted])
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      v6 = +[IMMobileNetworkManager sharedInstance];
      LODWORD(v2) = [v6 requiresSIMInserted] ^ 1;
    }

    goto LABEL_14;
  }

  LOBYTE(v2) = 1;
  return v2;
}

- (BOOL)canSendRegistration
{
  v2 = self;
  if ([(IDSRegistration *)self registrationType]== 1)
  {
    if (!-[IDSRegistration shouldAutoRegisterAllHandles](v2, "shouldAutoRegisterAllHandles") || (-[IDSRegistration emailsToRegister](v2, "emailsToRegister"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, !v4))
    {
      if (![(IDSRegistration *)v2 shouldRegisterUsingDSHandle])
      {
        v5 = [(IDSRegistration *)v2 regionID];
        if (![v5 length])
        {
          LOBYTE(v2) = 0;
          goto LABEL_15;
        }

        v6 = [(IDSRegistration *)v2 regionBasePhoneNumber];
        v7 = [v6 length];

        if (!v7)
        {
          LOBYTE(v2) = 0;
          return v2;
        }

        if (![(IDSRegistration *)v2 hasSentinel])
        {
          v5 = [(IDSRegistration *)v2 emailsToRegister];
          LOBYTE(v2) = [v5 count] != 0;
LABEL_15:

          return v2;
        }
      }
    }
  }

  else if (![(IDSRegistration *)v2 registrationType])
  {
    v5 = +[IDSCTAdapter sharedInstance];
    if ([v5 isAnySIMInserted])
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      v8 = +[IMMobileNetworkManager sharedInstance];
      LODWORD(v2) = [v8 requiresSIMInserted] ^ 1;
    }

    goto LABEL_15;
  }

  LOBYTE(v2) = 1;
  return v2;
}

- (BOOL)stopAtAuthentication
{
  v2 = [(IDSRegistration *)self serviceType];
  v3 = IDSIsStewieRegistrationServiceType();

  return v3;
}

- (void)setAuthenticationCert:(id)a3
{
  v10 = a3;
  v4 = [(IDSRegistration *)self registrationType];
  v5 = [(IDSRegistration *)self registrationType];
  v6 = v5;
  if (!v4)
  {
    if (v5 != 1)
    {
LABEL_7:
      v7 = [(IDSRegistration *)self _userStore];
      if (v10)
      {
        v8 = [[IDSAuthenticationCertificate alloc] initWithDataRepresentation:v10];
      }

      else
      {
        v8 = 0;
      }

      v9 = [(IDSRegistration *)self _user];
      [v7 silentlySetAuthenticationCertificate:v8 forUser:v9];

      if (!v10)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_6:
    v7 = +[IDSRegistrationKeychainManager sharedInstance];
    v8 = [(IDSRegistration *)self idsUserID];
    [v7 setAuthenticationCert:v10 forID:v8];
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  if ([(IDSRegistration *)self registrationType]== 1)
  {
    goto LABEL_6;
  }

  if (v6 == 2)
  {
    goto LABEL_7;
  }

LABEL_13:
}

@end