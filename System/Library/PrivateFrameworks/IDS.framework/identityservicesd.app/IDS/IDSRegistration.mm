@interface IDSRegistration
- (BOOL)_keychain_isEqual:(id)equal;
- (BOOL)canRegister;
- (BOOL)canSendRegistration;
- (BOOL)hasSentinel;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeFromKeychain;
- (BOOL)saveToKeychain;
- (BOOL)stopAtAuthentication;
- (IDSRegistration)init;
- (IDSRegistration)initWithDictionary:(id)dictionary;
- (IDSRegistration)initWithPasswordManager:(id)manager;
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
- (void)addCandidateEmail:(id)email;
- (void)removeCandidateEmail:(id)email;
- (void)resetRegistrationID;
- (void)setAuthenticationCert:(id)cert;
- (void)setAuthenticationToken:(id)token;
- (void)setEmail:(id)email;
- (void)setRegistrationStatus:(int64_t)status;
- (void)setUserUniqueIdentifier:(id)identifier;
- (void)voidAuthenticationTokenAllowingGracePeriod;
- (void)voidPassword;
@end

@implementation IDSRegistration

- (NSData)authenticationCert
{
  registrationType = [(IDSRegistration *)self registrationType];
  if ([(IDSRegistration *)self registrationType])
  {
    if (registrationType == 2)
    {
      _user = [(IDSRegistration *)self _user];
      _userStore = [(IDSRegistration *)self _userStore];
      v6 = [_userStore authenticationCertificateForUser:_user];
      dataRepresentation = [v6 dataRepresentation];
    }

    else
    {
      _user = +[IDSRegistrationKeychainManager sharedInstance];
      _userStore = [(IDSRegistration *)self idsUserID];
      dataRepresentation = [_user authenticationCertForID:_userStore];
    }
  }

  else
  {
    _user = [(IDSRegistration *)self _user];
    _userStore2 = [(IDSRegistration *)self _userStore];
    v9 = [_userStore2 authenticationCertificateForUser:_user];
    dataRepresentation = [v9 dataRepresentation];

    if (!dataRepresentation)
    {
      v10 = +[IDSRegistrationKeychainManager sharedInstance];
      userUniqueIdentifier = [(IDSRegistration *)self userUniqueIdentifier];
      dataRepresentation = [v10 authenticationCertForID:userUniqueIdentifier];

      if (dataRepresentation)
      {
        if (_user)
        {
          idsUserID = [(IDSRegistration *)self idsUserID];
          _stripFZIDPrefix = [idsUserID _stripFZIDPrefix];

          unprefixedIdentifier = [_user unprefixedIdentifier];
          v15 = [_user phoneUserWithUpdatedPhoneNumber:_stripFZIDPrefix phoneBookNumber:unprefixedIdentifier];

          v16 = +[IMRGLog registration];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412802;
            v20 = _user;
            v21 = 2112;
            v22 = v15;
            v23 = 2048;
            selfCopy = self;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updating user with correct phoneNumber {user: %@, updatedUser: %@, self: %p}", &v19, 0x20u);
          }

          _userStore3 = [(IDSRegistration *)self _userStore];
          [_userStore3 updateUser:v15];
        }
      }
    }
  }

  return dataRepresentation;
}

- (id)description
{
  [(IDSRegistration *)self registrationStatus];
  v30 = _StringForIDSDRegistrationStatus();
  v29 = _StringForIDSRegistrationType([(IDSRegistration *)self registrationType]);
  deviceName = [(IDSRegistration *)self deviceName];
  serviceType = [(IDSRegistration *)self serviceType];
  v28 = _StringForIDSRegistrationServiceType();
  environment = [(IDSRegistration *)self environment];
  mainID = [(IDSRegistration *)self mainID];
  email = [(IDSRegistration *)self email];
  userID = [(IDSRegistration *)self userID];
  isCDMA = [(IDSRegistration *)self isCDMA];
  v3 = @"YES";
  if (isCDMA)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v16 = v4;
  pushToken = [(IDSRegistration *)self pushToken];
  regionID = [(IDSRegistration *)self regionID];
  regionBasePhoneNumber = [(IDSRegistration *)self regionBasePhoneNumber];
  uris = [(IDSRegistration *)self uris];
  v23 = IMLoggingStringForArray();
  candidateEmails = [(IDSRegistration *)self candidateEmails];
  v5 = IMLoggingStringForArray();
  authenticationCert = [(IDSRegistration *)self authenticationCert];
  registrationCert = [(IDSRegistration *)self registrationCert];
  profileID = [(IDSRegistration *)self profileID];
  idsUserID = [(IDSRegistration *)self idsUserID];
  userUniqueIdentifier = self->_userUniqueIdentifier;
  ktAccountKey = [(IDSRegistration *)self ktAccountKey];
  if (!ktAccountKey)
  {
    v3 = @"NO";
  }

  eventTraceRandomID = [(IDSRegistration *)self eventTraceRandomID];
  v13 = [NSString stringWithFormat:@"Registration info (%p): [Status: %@] [Type: %@] [Device Name: %@] [Service Type: %@] [Env: %@] [Main ID: %@] [AppleID: %@] [UserID: %@] [C2K: %@] [Push Token: %@] [Region ID: %@] [Base Number: %@] [URIs: %@] [Candidates: %@] [Auth Cert: %p] [Reg Cert: %p] [Profile ID: %@] [Auth User ID: %@] [User Unique ID: %@] [Account Key: %@] [Event Trace GUID: %@]", self, v30, v29, deviceName, v28, environment, mainID, email, userID, v16, pushToken, regionID, regionBasePhoneNumber, v23, v5, authenticationCert, registrationCert, profileID, idsUserID, userUniqueIdentifier, v3, eventTraceRandomID];

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
  registrationType = [(IDSRegistration *)self registrationType];
  v4 = 120;
  if (registrationType == 2)
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
  _userStore = [(IDSRegistration *)self _userStore];
  v4 = [_userStore userWithUniqueIdentifier:self->_userUniqueIdentifier];

  return v4;
}

- (id)_userStore
{
  v2 = +[IDSDaemon sharedInstance];
  registrationConductor = [v2 registrationConductor];
  userStore = [registrationConductor userStore];

  return userStore;
}

- (BOOL)saveToKeychain
{
  v3 = +[IDSRegistrationKeychainManager sharedInstance];
  LOBYTE(self) = [v3 addRegistration:self];

  return self;
}

- (id)_keychain_comparisonValue
{
  registrationType = [(IDSRegistration *)self registrationType];
  if (registrationType)
  {
    if (registrationType == 2)
    {
      userUniqueIdentifier = [(IDSRegistration *)self userUniqueIdentifier];
      goto LABEL_6;
    }

    if (registrationType == 1)
    {
      userUniqueIdentifier = [(IDSRegistration *)self email];
LABEL_6:
      v5 = userUniqueIdentifier;
      goto LABEL_11;
    }

    v5 = 0;
  }

  else
  {
    userUniqueIdentifier2 = [(IDSRegistration *)self userUniqueIdentifier];
    v7 = userUniqueIdentifier2;
    v8 = @"phone-number-registration";
    if (userUniqueIdentifier2)
    {
      v8 = userUniqueIdentifier2;
    }

    v5 = v8;
  }

LABEL_11:

  return v5;
}

- (BOOL)_keychain_isEqual:(id)equal
{
  equalCopy = equal;
  if (![(IDSRegistration *)self isEqual:equalCopy])
  {
    serviceType = [(IDSRegistration *)self serviceType];
    serviceType2 = [equalCopy serviceType];
    v8 = serviceType2;
    if (serviceType == serviceType2)
    {
    }

    else
    {
      serviceType3 = [(IDSRegistration *)self serviceType];
      serviceType4 = [equalCopy serviceType];
      v11 = [serviceType3 isEqualToString:serviceType4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    registrationType = [(IDSRegistration *)self registrationType];
    if (registrationType == [equalCopy registrationType])
    {
      _keychain_comparisonValue = [(IDSRegistration *)self _keychain_comparisonValue];
      _keychain_comparisonValue2 = [equalCopy _keychain_comparisonValue];
      v5 = [_keychain_comparisonValue isEqualToString:_keychain_comparisonValue2];

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

- (IDSRegistration)initWithPasswordManager:(id)manager
{
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = IDSRegistration;
  v6 = [(IDSRegistration *)&v12 init];
  if (v6)
  {
    v7 = +[NSString stringGUID];
    guid = v6->_guid;
    v6->_guid = v7;

    objc_storeStrong(&v6->_passwordManager, manager);
    v9 = +[NSString stringGUID];
    eventTraceRandomID = v6->_eventTraceRandomID;
    v6->_eventTraceRandomID = v9;
  }

  return v6;
}

- (IDSRegistration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(IDSRegistration *)self init];

  if (!v5)
  {
    goto LABEL_383;
  }

  if (dictionaryCopy && [dictionaryCopy count])
  {
    v6 = [dictionaryCopy objectForKey:@"push-token"];
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

    v6 = [dictionaryCopy objectForKey:@"registration-date"];
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

    v6 = [dictionaryCopy objectForKey:@"next-registration-date"];
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

      v6 = [dictionaryCopy objectForKey:@"needs-renewal"];
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
        v11 = [dictionaryCopy objectForKey:@"invitation-version"];
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

        v11 = [dictionaryCopy objectForKey:@"ids-version"];
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

        v11 = [dictionaryCopy objectForKey:@"identity-version"];
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

        v11 = [dictionaryCopy objectForKey:@"cdma"];
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

        v11 = [dictionaryCopy objectForKey:@"identity-rsa-pair-signature"];
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

        v11 = [dictionaryCopy objectForKey:@"environment"];
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

        v11 = [dictionaryCopy objectForKey:@"main-id"];
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

        v11 = [dictionaryCopy objectForKey:@"temporary-phone-email"];
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

        v11 = [dictionaryCopy objectForKey:@"profile-id"];
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

        v11 = [dictionaryCopy objectForKey:@"device-name"];
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

        v11 = [dictionaryCopy objectForKey:@"region-id"];
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

        v11 = [dictionaryCopy objectForKey:@"region-base-phone-number"];
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

        v11 = [dictionaryCopy objectForKey:@"region-server-context"];
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

        v11 = [dictionaryCopy objectForKey:@"dependant-registrations"];
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

        v11 = [dictionaryCopy objectForKey:@"self-handle"];
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

        v11 = [dictionaryCopy objectForKey:@"dependant-registrations-ttl"];
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

        v11 = [dictionaryCopy objectForKey:@"dependant-registrations-response-code"];
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

        v11 = [dictionaryCopy objectForKey:@"dependant-registrations-auth-retries"];
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

        v11 = [dictionaryCopy objectForKey:@"uris"];
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

        v11 = [dictionaryCopy objectForKey:@"kt-uris"];
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

        v11 = [dictionaryCopy objectForKey:@"ids-user-id"];
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

          v11 = [dictionaryCopy objectForKey:@"ids-registration-cert"];
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

            v11 = [dictionaryCopy objectForKey:@"ids-authentication-cert"];
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

              v34 = [dictionaryCopy objectForKey:@"auth-token"];
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

              v38 = [dictionaryCopy objectForKey:@"user-unique-identifier"];
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

              v38 = [dictionaryCopy objectForKey:@"context-info"];
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

                v38 = [dictionaryCopy objectForKey:@"event-trace-id"];
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

                  v43 = [dictionaryCopy objectForKey:@"type"];
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
                    v46 = [dictionaryCopy objectForKey:@"service"];
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

                      v48 = [dictionaryCopy objectForKey:@"service-identifier"];
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

                        v48 = [dictionaryCopy objectForKey:@"kt-account-key"];
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
                          v52 = [dictionaryCopy objectForKey:@"kt-account-key-timestamp"];
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

                          v52 = [dictionaryCopy objectForKey:@"kt-account-key-error"];
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

                            v52 = [dictionaryCopy objectForKey:@"device-signature"];
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
                              v58 = [dictionaryCopy objectForKey:@"kt-data-for-registration"];
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
                              v62 = [dictionaryCopy objectForKey:@"opted-into-kt"];
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
                              v66 = [dictionaryCopy objectForKey:@"opted-into-kt-timestamp"];
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

                                v66 = [dictionaryCopy objectForKey:@"opted-into-kt-error"];
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

                                  v70 = [dictionaryCopy objectForKey:@"dsid"];
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
                                    serviceIdentifier = [(IDSRegistration *)v5 serviceIdentifier];
                                    if (![serviceIdentifier length])
                                    {
                                      v73 = [v110 length];

                                      if (!v73)
                                      {
                                        goto LABEL_320;
                                      }

                                      serviceIdentifier = _IDSRegistrationServiceIdentifierFromServiceType();
                                      [(IDSRegistration *)v5 setServiceIdentifier:serviceIdentifier];
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

                                    v75 = [dictionaryCopy objectForKey:@"bindings"];
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

                                    v109 = [dictionaryCopy objectForKey:@"cert"];
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
                                        idsUserID = [(IDSRegistration *)v5 idsUserID];
                                        if ([(IDSRegistration *)v5 registrationType])
                                        {
                                          goto LABEL_355;
                                        }

                                        userUniqueIdentifier = [(IDSRegistration *)v5 userUniqueIdentifier];
                                        if ([v37 length])
                                        {
                                          v78 = +[IDSRegistrationKeychainManager sharedInstance];
                                          v79 = [v78 smsSignatureForID:userUniqueIdentifier];
                                          v105 = [v79 length];

                                          if (v105)
                                          {
LABEL_354:

LABEL_355:
                                            registrationType = [(IDSRegistration *)v5 registrationType];
                                            v89 = +[IMRGLog registration];
                                            v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT);
                                            if (registrationType)
                                            {
                                              if (v90)
                                              {
                                                *buf = 138412546;
                                                v119 = v33;
                                                v120 = 2112;
                                                v121 = idsUserID;
                                                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Loaded auth cert: %@    ID: %@", buf, 0x16u);
                                              }

                                              if (![v33 length] || !objc_msgSend(idsUserID, "length"))
                                              {
                                                goto LABEL_380;
                                              }

                                              v91 = +[IDSRegistrationKeychainManager sharedInstance];
                                              v92 = [v91 authenticationCertForID:idsUserID];
                                              v106 = [v92 length];

                                              v93 = +[IMRGLog registration];
                                              v94 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
                                              if (v106)
                                              {
                                                if (v94)
                                                {
                                                  *buf = 138412290;
                                                  v119 = idsUserID;
                                                  _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Not migrating cert for user ID, we already have one: %@", buf, 0xCu);
                                                }
                                              }

                                              else
                                              {
                                                if (v94)
                                                {
                                                  *buf = 138412290;
                                                  v119 = idsUserID;
                                                  _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Migrating auth cert for IDS User ID: %@", buf, 0xCu);
                                                }

                                                v93 = +[IDSRegistrationKeychainManager sharedInstance];
                                                [v93 setAuthenticationCert:v33 forID:idsUserID];
                                              }

LABEL_379:

LABEL_380:
                                              v85 = 1;
                                              goto LABEL_381;
                                            }

                                            if (v90)
                                            {
                                              userUniqueIdentifier2 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                              *buf = 138412546;
                                              v119 = v33;
                                              v120 = 2112;
                                              v121 = userUniqueIdentifier2;
                                              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Loaded auth cert: %@    userUniqueID: %@", buf, 0x16u);
                                            }

                                            if (![v33 length])
                                            {
                                              goto LABEL_380;
                                            }

                                            userUniqueIdentifier3 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                            v97 = [userUniqueIdentifier3 length];

                                            if (!v97)
                                            {
                                              goto LABEL_380;
                                            }

                                            v98 = +[IDSRegistrationKeychainManager sharedInstance];
                                            userUniqueIdentifier4 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                            v100 = [v98 authenticationCertForID:userUniqueIdentifier4];
                                            v107 = [v100 length];

                                            v93 = +[IMRGLog registration];
                                            v101 = os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
                                            if (v107)
                                            {
                                              if (!v101)
                                              {
                                                goto LABEL_379;
                                              }

                                              userUniqueIdentifier5 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                              *buf = 138412290;
                                              v119 = userUniqueIdentifier5;
                                              _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Not migrating cert for user ID, we already have one: %@", buf, 0xCu);
                                            }

                                            else
                                            {
                                              if (v101)
                                              {
                                                userUniqueIdentifier6 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                                *buf = 138412290;
                                                v119 = userUniqueIdentifier6;
                                                _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Migrating auth cert for userUniqueID: %@", buf, 0xCu);
                                              }

                                              v93 = +[IDSRegistrationKeychainManager sharedInstance];
                                              userUniqueIdentifier5 = [(IDSRegistration *)v5 userUniqueIdentifier];
                                              [v93 setAuthenticationCert:v33 forID:userUniqueIdentifier5];
                                            }

                                            goto LABEL_379;
                                          }

                                          v80 = +[IMRGLog registration];
                                          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *buf = 138412546;
                                            v119 = v37;
                                            v120 = 2112;
                                            v121 = userUniqueIdentifier;
                                            _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Migrating this SMS auth token: %@  storageID: %@", buf, 0x16u);
                                          }

                                          v81 = +[IDSRegistrationKeychainManager sharedInstance];
                                          [v81 setSMSSignature:v37 mainID:userUniqueIdentifier];

                                          v82 = +[IDSRegistrationKeychainManager sharedInstance];
                                          [v82 setSMSSignatureMechanism:&off_100C3D3A8 mainID:userUniqueIdentifier];
                                        }

                                        else
                                        {
                                          if (!userUniqueIdentifier)
                                          {
                                            goto LABEL_354;
                                          }

                                          v86 = +[IDSRegistrationKeychainManager sharedInstance];
                                          v87 = [v86 smsSignatureForID:userUniqueIdentifier];

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

- (void)addCandidateEmail:(id)email
{
  emailCopy = email;
  if (IMStringIsPhoneNumber())
  {
    v5 = IMCanonicalizeFormattedString();

    emailCopy = v5;
  }

  _im_normalizedURIString = [emailCopy _im_normalizedURIString];

  candidateEmails = self->_candidateEmails;
  if (!candidateEmails)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = self->_candidateEmails;
    self->_candidateEmails = v7;

    candidateEmails = self->_candidateEmails;
  }

  if (([(NSMutableArray *)candidateEmails containsObject:_im_normalizedURIString]& 1) == 0)
  {
    [(NSMutableArray *)self->_candidateEmails addObject:_im_normalizedURIString];
  }
}

- (void)removeCandidateEmail:(id)email
{
  emailCopy = email;
  if (IMStringIsPhoneNumber())
  {
    v5 = IMCanonicalizeFormattedString();

    emailCopy = v5;
  }

  _im_normalizedURIString = [emailCopy _im_normalizedURIString];

  v7 = _im_normalizedURIString;
  if (_im_normalizedURIString)
  {
    [(NSMutableArray *)self->_candidateEmails removeObject:_im_normalizedURIString];
    v6 = [(NSMutableArray *)self->_candidateEmails count];
    v7 = _im_normalizedURIString;
    if (!v6)
    {
      candidateEmails = self->_candidateEmails;
      self->_candidateEmails = 0;

      v7 = _im_normalizedURIString;
    }
  }

  _objc_release_x1(v6, v7);
}

- (NSArray)confirmedEmails
{
  uris = [(IDSRegistration *)self uris];
  _IDsFromURIs = [uris _IDsFromURIs];

  return _IDsFromURIs;
}

- (void)setEmail:(id)email
{
  emailCopy = email;
  if ([(IDSRegistration *)self registrationType]== 2)
  {
    [(IDSRegistration *)self setTemporaryPhoneEmail:emailCopy];
  }

  else
  {
    [(IDSRegistration *)self setMainID:emailCopy];
  }
}

- (void)setRegistrationStatus:(int64_t)status
{
  if (self->_registrationStatus != status)
  {
    self->_registrationStatus = status;
  }
}

- (void)setUserUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_storeStrong(&self->_userUniqueIdentifier, identifier);
  if (!self->_mainID)
  {
    _user = [(IDSRegistration *)self _user];
    unprefixedIdentifier = [_user unprefixedIdentifier];
    mainID = self->_mainID;
    self->_mainID = unprefixedIdentifier;
  }
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [NSNumber numberWithInteger:self->_registrationType];
  serviceType = [(IDSRegistration *)self serviceType];
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
    deviceName = [v60 deviceName];
    deviceName = self->_deviceName;
    self->_deviceName = deviceName;
  }

  v9 = v7;
  v10 = v9;
LABEL_35:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v70.receiver = self;
  v70.super_class = IDSRegistration;
  if ([(IDSRegistration *)&v70 isEqual:equalCopy])
  {
    v5 = 1;
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_40;
  }

  registrationType = [(IDSRegistration *)self registrationType];
  if (registrationType != [equalCopy registrationType])
  {
    goto LABEL_40;
  }

  serviceType = [(IDSRegistration *)self serviceType];
  serviceType2 = [equalCopy serviceType];
  v9 = serviceType2;
  if (serviceType == serviceType2)
  {
  }

  else
  {
    serviceType3 = [(IDSRegistration *)self serviceType];
    serviceType4 = [equalCopy serviceType];
    v12 = [serviceType3 isEqualToString:serviceType4];

    if (!v12)
    {
      goto LABEL_40;
    }
  }

  pushToken = [(IDSRegistration *)self pushToken];
  pushToken2 = [equalCopy pushToken];
  v15 = pushToken2;
  if (pushToken == pushToken2)
  {
  }

  else
  {
    pushToken3 = [(IDSRegistration *)self pushToken];
    pushToken4 = [equalCopy pushToken];
    v18 = [pushToken3 isEqualToData:pushToken4];

    if (!v18)
    {
      goto LABEL_40;
    }
  }

  environment = [(IDSRegistration *)self environment];
  environment2 = [equalCopy environment];
  v21 = environment2;
  if (environment == environment2)
  {
  }

  else
  {
    environment3 = [(IDSRegistration *)self environment];
    environment4 = [equalCopy environment];
    v24 = [environment3 isEqualToString:environment4];

    if (!v24)
    {
      goto LABEL_40;
    }
  }

  deviceName = [(IDSRegistration *)self deviceName];
  deviceName2 = [equalCopy deviceName];
  v27 = deviceName2;
  if (deviceName == deviceName2)
  {
  }

  else
  {
    deviceName3 = [(IDSRegistration *)self deviceName];
    deviceName4 = [equalCopy deviceName];
    v30 = [deviceName3 isEqualToString:deviceName4];

    if (!v30)
    {
      goto LABEL_40;
    }
  }

  mainID = [(IDSRegistration *)self mainID];
  mainID2 = [equalCopy mainID];
  v33 = mainID2;
  if (mainID == mainID2)
  {
  }

  else
  {
    mainID3 = [(IDSRegistration *)self mainID];
    mainID4 = [equalCopy mainID];
    v36 = [mainID3 isEqualToString:mainID4];

    if (!v36)
    {
      goto LABEL_40;
    }
  }

  uris = [(IDSRegistration *)self uris];
  uris2 = [equalCopy uris];
  v39 = uris2;
  if (uris == uris2)
  {
  }

  else
  {
    uris3 = [(IDSRegistration *)self uris];
    uris4 = [equalCopy uris];
    v42 = [uris3 isEqualToArray:uris4];

    if (!v42)
    {
      goto LABEL_40;
    }
  }

  candidateEmails = [(IDSRegistration *)self candidateEmails];
  candidateEmails2 = [equalCopy candidateEmails];
  v45 = candidateEmails2;
  if (candidateEmails == candidateEmails2)
  {
  }

  else
  {
    candidateEmails3 = [(IDSRegistration *)self candidateEmails];
    candidateEmails4 = [equalCopy candidateEmails];
    v48 = [candidateEmails3 isEqualToArray:candidateEmails4];

    if (!v48)
    {
      goto LABEL_40;
    }
  }

  confirmedEmails = [(IDSRegistration *)self confirmedEmails];
  confirmedEmails2 = [equalCopy confirmedEmails];
  v51 = confirmedEmails2;
  if (confirmedEmails == confirmedEmails2)
  {
  }

  else
  {
    confirmedEmails3 = [(IDSRegistration *)self confirmedEmails];
    confirmedEmails4 = [equalCopy confirmedEmails];
    v54 = [confirmedEmails3 isEqualToArray:confirmedEmails4];

    if (!v54)
    {
      goto LABEL_40;
    }
  }

  isCDMA = [(IDSRegistration *)self isCDMA];
  intValue = [isCDMA intValue];
  isCDMA2 = [equalCopy isCDMA];
  intValue2 = [isCDMA2 intValue];

  if (intValue != intValue2)
  {
LABEL_40:
    v5 = 0;
    goto LABEL_41;
  }

  registrationCert = [(IDSRegistration *)self registrationCert];
  registrationCert2 = [equalCopy registrationCert];
  v61 = registrationCert2;
  if (registrationCert == registrationCert2)
  {
  }

  else
  {
    registrationCert3 = [(IDSRegistration *)self registrationCert];
    registrationCert4 = [equalCopy registrationCert];
    v64 = [registrationCert3 isEqualToData:registrationCert4];

    if (!v64)
    {
      goto LABEL_40;
    }
  }

  userUniqueIdentifier = [(IDSRegistration *)self userUniqueIdentifier];
  userUniqueIdentifier2 = [equalCopy userUniqueIdentifier];
  if (userUniqueIdentifier == userUniqueIdentifier2)
  {
    v5 = 1;
  }

  else
  {
    userUniqueIdentifier3 = [(IDSRegistration *)self userUniqueIdentifier];
    userUniqueIdentifier4 = [equalCopy userUniqueIdentifier];
    v5 = [userUniqueIdentifier3 isEqualToString:userUniqueIdentifier4];
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
    profileID = [(IDSRegistration *)self profileID];
    email = [(IDSRegistration *)self email];
    lowercaseString = [email lowercaseString];
    serviceType = [(IDSRegistration *)self serviceType];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1006ABC28;
    v15[3] = &unk_100BE41E0;
    v15[4] = self;
    v15[5] = &v16;
    [(FTPasswordManager *)passwordManager fetchAuthTokenForProfileID:profileID username:lowercaseString service:serviceType outRequestID:0 completionBlock:v15];

    if ([v17[5] length])
    {
      v8 = v17[5];
    }

    else
    {
      v8 = 0;
    }

    smsSignature = v8;
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    _userStore = [(IDSRegistration *)self _userStore];
    _user = [(IDSRegistration *)self _user];
    v11 = [_userStore credentialForUser:_user];

    if (v11 && ![v11 realm])
    {
      smsSignature = [v11 smsSignature];
    }

    else
    {
      smsSignature = 0;
    }

    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100930F88();
    }
  }

  return smsSignature;
}

- (void)setAuthenticationToken:(id)token
{
  tokenCopy = token;
  if ([(IDSRegistration *)self registrationType])
  {
    registrationType = [(IDSRegistration *)self registrationType];
    if (tokenCopy || registrationType != 2)
    {
      serviceType = [(IDSRegistration *)self serviceType];
      passwordManager = self->_passwordManager;
      profileID = [(IDSRegistration *)self profileID];
      email = [(IDSRegistration *)self email];
      v14 = IMStripLoginID();
      lowercaseString = [v14 lowercaseString];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1006AC0F0;
      v16[3] = &unk_100BE4208;
      v17 = tokenCopy;
      [(FTPasswordManager *)passwordManager setAuthTokenForProfileID:profileID username:lowercaseString service:serviceType authToken:v17 selfHandle:0 accountStatus:&off_100C3D3C0 outRequestID:0 completionBlock:v16];
    }

    else
    {
      serviceType = +[IMRGLog registration];
      if (os_log_type_enabled(serviceType, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, serviceType, OS_LOG_TYPE_DEFAULT, "** Not clearing auth token since this is a temporary registration", buf, 2u);
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!tokenCopy)
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "** Cleraing auth token for SMS Registration.", buf, 2u);
    }

    serviceType = +[IDSDaemon sharedInstance];
    registrationConductor = [serviceType registrationConductor];
    phoneUserRegistry = [registrationConductor phoneUserRegistry];
    userUniqueIdentifier = [(IDSRegistration *)self userUniqueIdentifier];
    [phoneUserRegistry clearCredentialForUserUniqueIdentifier:userUniqueIdentifier];

    goto LABEL_11;
  }

LABEL_12:
}

- (void)voidAuthenticationTokenAllowingGracePeriod
{
  if ([(IDSRegistration *)self registrationType]== 1)
  {
    v3 = +[FTPasswordManager sharedInstance];
    profileID = [(IDSRegistration *)self profileID];
    email = [(IDSRegistration *)self email];
    lowercaseString = [email lowercaseString];
    [v3 removeAuthTokenAllowingGracePeriodForProfileID:profileID username:lowercaseString];

    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      email2 = [(IDSRegistration *)self email];
      lowercaseString2 = [email2 lowercaseString];
      v10 = 138412290;
      v11 = lowercaseString2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Voided auth token for account (%@)", &v10, 0xCu);
    }
  }
}

- (void)voidPassword
{
  if ([(IDSRegistration *)self registrationType]== 1)
  {
    serviceType = [(IDSRegistration *)self serviceType];
    v3 = +[FTPasswordManager sharedInstance];
    profileID = [(IDSRegistration *)self profileID];
    email = [(IDSRegistration *)self email];
    lowercaseString = [email lowercaseString];
    [v3 setPasswordForProfileID:profileID username:lowercaseString service:serviceType password:0 outRequestID:0 completionBlock:&stru_100BE4228];
  }
}

- (NSString)registrationTraceID
{
  eventTraceRandomID = [(IDSRegistration *)self eventTraceRandomID];
  serviceIdentifier = [(IDSRegistration *)self serviceIdentifier];
  v5 = [NSString stringWithFormat:@"%@|%@|%d", eventTraceRandomID, serviceIdentifier, [(IDSRegistration *)self registrationType]];

  return v5;
}

- (void)resetRegistrationID
{
  registrationTraceID = [(IDSRegistration *)self registrationTraceID];
  v4 = +[NSString stringGUID];
  eventTraceRandomID = self->_eventTraceRandomID;
  self->_eventTraceRandomID = v4;

  v6 = +[IMRGLog eventTracing];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    registrationTraceID2 = [(IDSRegistration *)self registrationTraceID];
    v8 = 138412546;
    v9 = registrationTraceID;
    v10 = 2112;
    v11 = registrationTraceID2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resetting registration guid, %@ => %@", &v8, 0x16u);
  }
}

- (id)debugDescription
{
  [(IDSRegistration *)self registrationStatus];
  v33 = _StringForIDSDRegistrationStatus();
  v32 = _StringForIDSRegistrationType([(IDSRegistration *)self registrationType]);
  deviceName = [(IDSRegistration *)self deviceName];
  serviceType = [(IDSRegistration *)self serviceType];
  v31 = _StringForIDSRegistrationServiceType();
  environment = [(IDSRegistration *)self environment];
  mainID = [(IDSRegistration *)self mainID];
  email = [(IDSRegistration *)self email];
  userID = [(IDSRegistration *)self userID];
  isCDMA = [(IDSRegistration *)self isCDMA];
  v3 = @"YES";
  if (isCDMA)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v17 = v4;
  pushToken = [(IDSRegistration *)self pushToken];
  v27 = [pushToken debugDescription];
  regionID = [(IDSRegistration *)self regionID];
  regionBasePhoneNumber = [(IDSRegistration *)self regionBasePhoneNumber];
  uris = [(IDSRegistration *)self uris];
  v26 = IMLoggingStringForArray();
  candidateEmails = [(IDSRegistration *)self candidateEmails];
  v25 = IMLoggingStringForArray();
  authenticationCert = [(IDSRegistration *)self authenticationCert];
  registrationCert = [(IDSRegistration *)self registrationCert];
  profileID = [(IDSRegistration *)self profileID];
  idsUserID = [(IDSRegistration *)self idsUserID];
  registrationDate = [(IDSRegistration *)self registrationDate];
  nextRegistrationDate = [(IDSRegistration *)self nextRegistrationDate];
  userUniqueIdentifier = self->_userUniqueIdentifier;
  ktAccountKey = [(IDSRegistration *)self ktAccountKey];
  if (!ktAccountKey)
  {
    v3 = @"NO";
  }

  eventTraceRandomID = [(IDSRegistration *)self eventTraceRandomID];
  v13 = [NSString stringWithFormat:@"Registration info (%p): [Status: %@] [Type: %@] [Device Name: %@] [Service Type: %@] [Env: %@] [Main ID: %@] [AppleID: %@] [UserID: %@] [C2K: %@] [Push Token: %@] [Region ID: %@] [Base Number: %@] [URIs: %@] [Candidates: %@] [Auth Cert: %p] [Reg Cert: %p] [Profile ID: %@] [Auth User ID: %@] [Registration Date: %@] [Heartbeat Date: %@] [User Unique ID: %@] [Account Key: %@] [Event Trace GUID: %@]", self, v33, v32, deviceName, v31, environment, mainID, email, userID, v17, v27, regionID, regionBasePhoneNumber, v26, v25, authenticationCert, registrationCert, profileID, idsUserID, registrationDate, nextRegistrationDate, userUniqueIdentifier, v3, eventTraceRandomID];

  return v13;
}

- (NSArray)emailsToRegister
{
  v3 = objc_alloc_init(NSMutableSet);
  if ([(IDSRegistration *)self shouldRegisterUsingDSHandle])
  {
    dsHandle = [(IDSRegistration *)self dsHandle];

    dsHandle3 = +[IMRGLog registration];
    v6 = os_log_type_enabled(dsHandle3, OS_LOG_TYPE_DEFAULT);
    if (dsHandle)
    {
      if (v6)
      {
        idsUserID = [(IDSRegistration *)self idsUserID];
        serviceType = [(IDSRegistration *)self serviceType];
        *buf = 138412546;
        selfCopy = idsUserID;
        v86 = 2112;
        v87 = serviceType;
        _os_log_impl(&_mh_execute_header, dsHandle3, OS_LOG_TYPE_DEFAULT, " ... finding emails to register for DS registration based account: %@:%@", buf, 0x16u);
      }

      v9 = +[IMRGLog registration];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        dsHandle2 = [(IDSRegistration *)self dsHandle];
        *buf = 138412290;
        selfCopy = dsHandle2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " => Added self handle: %@ to URI set", buf, 0xCu);
      }

      dsHandle3 = [(IDSRegistration *)self dsHandle];
      [v3 addObject:dsHandle3];
    }

    else if (v6)
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, dsHandle3, OS_LOG_TYPE_DEFAULT, " => **** Missing self handle, not adding ****: %@", buf, 0xCu);
    }

LABEL_40:

    goto LABEL_41;
  }

  shouldAutoRegisterAllHandles = [(IDSRegistration *)self shouldAutoRegisterAllHandles];
  v12 = +[IMRGLog registration];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (shouldAutoRegisterAllHandles)
  {
    if (v13)
    {
      idsUserID2 = [(IDSRegistration *)self idsUserID];
      serviceType2 = [(IDSRegistration *)self serviceType];
      *buf = 138412546;
      selfCopy = idsUserID2;
      v86 = 2112;
      v87 = serviceType2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " ... finding emails to register for auto register based account: %@:%@", buf, 0x16u);
    }

    confirmedEmails = [(IDSRegistration *)self confirmedEmails];
    v17 = [confirmedEmails count];

    if (v17)
    {
      confirmedEmails2 = [(IDSRegistration *)self confirmedEmails];
      [v3 addObjectsFromArray:confirmedEmails2];

      v19 = +[IMRGLog registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        confirmedEmails3 = [(IDSRegistration *)self confirmedEmails];
        v21 = IMLoggingStringForArray();
        *buf = 138412290;
        selfCopy = v21;
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

    vettedEmails = [(IDSRegistration *)self vettedEmails];
    v36 = [vettedEmails count];

    if (v36)
    {
      vettedEmails2 = [(IDSRegistration *)self vettedEmails];
      [v3 addObjectsFromArray:vettedEmails2];

      v38 = +[IMRGLog registration];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        vettedEmails3 = [(IDSRegistration *)self vettedEmails];
        v40 = IMLoggingStringForArray();
        *buf = 138412290;
        selfCopy = v40;
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

    candidateEmails = [(IDSRegistration *)self candidateEmails];
    v42 = [candidateEmails count];

    if (v42)
    {
      candidateEmails2 = [(IDSRegistration *)self candidateEmails];
      [v3 addObjectsFromArray:candidateEmails2];

      v44 = +[IMRGLog registration];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        candidateEmails3 = [(IDSRegistration *)self candidateEmails];
        v46 = IMLoggingStringForArray();
        *buf = 138412290;
        selfCopy = v46;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, " => Added candidate emails: %@ to URI set", buf, 0xCu);
      }
    }

    dsHandle3 = [(IDSRegistration *)self dsHandle];
    if ([dsHandle3 length])
    {
      v47 = +[IMRGLog registration];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, " => Removing DS Handle", buf, 2u);
      }

      [v3 removeObject:dsHandle3];
    }

    goto LABEL_40;
  }

  if (v13)
  {
    idsUserID3 = [(IDSRegistration *)self idsUserID];
    serviceType3 = [(IDSRegistration *)self serviceType];
    *buf = 138412546;
    selfCopy = idsUserID3;
    v86 = 2112;
    v87 = serviceType3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " ... finding emails to register for manual handle selection account: %@:%@", buf, 0x16u);
  }

  confirmedEmails4 = [(IDSRegistration *)self confirmedEmails];
  v25 = [confirmedEmails4 count];

  if (v25)
  {
    confirmedEmails5 = [(IDSRegistration *)self confirmedEmails];
    [v3 addObjectsFromArray:confirmedEmails5];

    v27 = +[IMRGLog registration];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      confirmedEmails6 = [(IDSRegistration *)self confirmedEmails];
      v29 = IMLoggingStringForArray();
      *buf = 138412290;
      selfCopy = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, " => Added confirmed emails: %@ to URI set", buf, 0xCu);
    }
  }

  candidateEmails4 = [(IDSRegistration *)self candidateEmails];
  v31 = [candidateEmails4 count];

  if (v31)
  {
    candidateEmails5 = [(IDSRegistration *)self candidateEmails];
    [v3 addObjectsFromArray:candidateEmails5];

    dsHandle3 = +[IMRGLog registration];
    if (os_log_type_enabled(dsHandle3, OS_LOG_TYPE_DEFAULT))
    {
      candidateEmails6 = [(IDSRegistration *)self candidateEmails];
      v34 = IMLoggingStringForArray();
      *buf = 138412290;
      selfCopy = v34;
      _os_log_impl(&_mh_execute_header, dsHandle3, OS_LOG_TYPE_DEFAULT, " => Added candidate emails: %@ to URI set", buf, 0xCu);
    }

    goto LABEL_40;
  }

LABEL_41:
  if (![v3 count])
  {

    v3 = 0;
  }

  selfCopy2 = self;
  if (+[IDSRegistrationController systemSupportsPhoneNumberRegistration])
  {
    v48 = +[IDSCTAdapter sharedInstance];
    v83 = 0;
    v49 = [v48 currentSIMsWithError:&v83];
    v50 = v83;
    v51 = [v49 __imArrayByApplyingBlock:&stru_100BE4248];
    v52 = [v51 mutableCopy];

    _userStore = [(IDSRegistration *)self _userStore];
    v54 = [_userStore usersWithRealm:2];
    v55 = [v54 __imArrayByApplyingBlock:&stru_100BE4268];
    [(IDSRegistration *)v52 addObjectsFromArray:v55];

    v56 = +[IMRGLog registration];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = v52;
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
          lowercaseString = [(IDSRegistration *)v63 lowercaseString];
          v66 = [(IDSRegistration *)v52 containsObject:lowercaseString];

          if (v66)
          {
            v67 = +[IMRGLog registration];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              serviceType4 = [(IDSRegistration *)selfCopy2 serviceType];
              *buf = 138412546;
              selfCopy = v63;
              v86 = 2112;
              v87 = serviceType4;
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
  allObjects = [v57 allObjects];
  v71 = +[IMRGLog registration];
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    v72 = IMLoggingStringForArray();
    serviceType5 = [(IDSRegistration *)selfCopy2 serviceType];
    idsUserID4 = [(IDSRegistration *)selfCopy2 idsUserID];
    *buf = 138412802;
    selfCopy = v72;
    v86 = 2112;
    v87 = serviceType5;
    v88 = 2112;
    v89 = idsUserID4;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, " => Final emails to register: %@    for service: %@  account: %@", buf, 0x20u);
  }

  return allObjects;
}

- (BOOL)hasSentinel
{
  v3 = +[FTDeviceSupport sharedInstance];
  supportsSMS = [v3 supportsSMS];

  if (!supportsSMS)
  {
    return 0;
  }

  v5 = objc_alloc_init(NSMutableArray);
  confirmedEmails = [(IDSRegistration *)self confirmedEmails];
  v7 = [confirmedEmails count];

  if (v7)
  {
    confirmedEmails2 = [(IDSRegistration *)self confirmedEmails];
    [v5 addObjectsFromArray:confirmedEmails2];
  }

  candidateEmails = [(IDSRegistration *)self candidateEmails];
  v10 = [candidateEmails count];

  if (v10)
  {
    candidateEmails2 = [(IDSRegistration *)self candidateEmails];
    [v5 addObjectsFromArray:candidateEmails2];
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
  selfCopy = self;
  if ([(IDSRegistration *)self registrationType]== 1)
  {
    if (![(IDSRegistration *)selfCopy shouldAutoRegisterAllHandles]&& ![(IDSRegistration *)selfCopy shouldRegisterUsingDSHandle])
    {
      regionID = [(IDSRegistration *)selfCopy regionID];
      if (![regionID length])
      {
        LOBYTE(selfCopy) = 0;
        goto LABEL_14;
      }

      regionBasePhoneNumber = [(IDSRegistration *)selfCopy regionBasePhoneNumber];
      v5 = [regionBasePhoneNumber length];

      if (!v5)
      {
        LOBYTE(selfCopy) = 0;
        return selfCopy;
      }

      if (![(IDSRegistration *)selfCopy hasSentinel])
      {
        regionID = [(IDSRegistration *)selfCopy emailsToRegister];
        LOBYTE(selfCopy) = [regionID count] != 0;
LABEL_14:

        return selfCopy;
      }
    }
  }

  else if (![(IDSRegistration *)selfCopy registrationType])
  {
    regionID = +[IDSCTAdapter sharedInstance];
    if ([regionID isAnySIMInserted])
    {
      LOBYTE(selfCopy) = 1;
    }

    else
    {
      v6 = +[IMMobileNetworkManager sharedInstance];
      LODWORD(selfCopy) = [v6 requiresSIMInserted] ^ 1;
    }

    goto LABEL_14;
  }

  LOBYTE(selfCopy) = 1;
  return selfCopy;
}

- (BOOL)canSendRegistration
{
  selfCopy = self;
  if ([(IDSRegistration *)self registrationType]== 1)
  {
    if (!-[IDSRegistration shouldAutoRegisterAllHandles](selfCopy, "shouldAutoRegisterAllHandles") || (-[IDSRegistration emailsToRegister](selfCopy, "emailsToRegister"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, !v4))
    {
      if (![(IDSRegistration *)selfCopy shouldRegisterUsingDSHandle])
      {
        regionID = [(IDSRegistration *)selfCopy regionID];
        if (![regionID length])
        {
          LOBYTE(selfCopy) = 0;
          goto LABEL_15;
        }

        regionBasePhoneNumber = [(IDSRegistration *)selfCopy regionBasePhoneNumber];
        v7 = [regionBasePhoneNumber length];

        if (!v7)
        {
          LOBYTE(selfCopy) = 0;
          return selfCopy;
        }

        if (![(IDSRegistration *)selfCopy hasSentinel])
        {
          regionID = [(IDSRegistration *)selfCopy emailsToRegister];
          LOBYTE(selfCopy) = [regionID count] != 0;
LABEL_15:

          return selfCopy;
        }
      }
    }
  }

  else if (![(IDSRegistration *)selfCopy registrationType])
  {
    regionID = +[IDSCTAdapter sharedInstance];
    if ([regionID isAnySIMInserted])
    {
      LOBYTE(selfCopy) = 1;
    }

    else
    {
      v8 = +[IMMobileNetworkManager sharedInstance];
      LODWORD(selfCopy) = [v8 requiresSIMInserted] ^ 1;
    }

    goto LABEL_15;
  }

  LOBYTE(selfCopy) = 1;
  return selfCopy;
}

- (BOOL)stopAtAuthentication
{
  serviceType = [(IDSRegistration *)self serviceType];
  v3 = IDSIsStewieRegistrationServiceType();

  return v3;
}

- (void)setAuthenticationCert:(id)cert
{
  certCopy = cert;
  registrationType = [(IDSRegistration *)self registrationType];
  registrationType2 = [(IDSRegistration *)self registrationType];
  v6 = registrationType2;
  if (!registrationType)
  {
    if (registrationType2 != 1)
    {
LABEL_7:
      _userStore = [(IDSRegistration *)self _userStore];
      if (certCopy)
      {
        idsUserID = [[IDSAuthenticationCertificate alloc] initWithDataRepresentation:certCopy];
      }

      else
      {
        idsUserID = 0;
      }

      _user = [(IDSRegistration *)self _user];
      [_userStore silentlySetAuthenticationCertificate:idsUserID forUser:_user];

      if (!certCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_6:
    _userStore = +[IDSRegistrationKeychainManager sharedInstance];
    idsUserID = [(IDSRegistration *)self idsUserID];
    [_userStore setAuthenticationCert:certCopy forID:idsUserID];
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