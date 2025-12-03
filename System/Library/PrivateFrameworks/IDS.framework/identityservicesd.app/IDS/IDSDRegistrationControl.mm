@interface IDSDRegistrationControl
+ (id)sharedInstance;
- (BOOL)updateRegistrationType:(int64_t)type toState:(int64_t)state error:(id *)error;
- (int64_t)registrationStateForRegistrationType:(int64_t)type error:(id *)error;
@end

@implementation IDSDRegistrationControl

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100418C50;
  block[3] = &unk_100BD75B8;
  block[4] = self;
  if (qword_100CBD268 != -1)
  {
    dispatch_once(&qword_100CBD268, block);
  }

  v2 = qword_100CBD260;

  return v2;
}

- (BOOL)updateRegistrationType:(int64_t)type toState:(int64_t)state error:(id *)error
{
  selfCopy = self;
  v47 = 0;
  v8 = [(IDSDRegistrationControl *)self registrationStateForRegistrationType:type error:&v47];
  v9 = v47;
  type = [NSString stringWithFormat:@"%@-%ld", IDSRegistrationControlKeychainAccountName, type];
  v11 = [NSNumber numberWithInteger:state];
  v12 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];

  LODWORD(selfCopy) = [(IDSDRegistrationControl *)selfCopy _setKeychainData:v12 withServiceName:IDSRegistrationControlKeychainServiceName withAccountKey:type withIDSRegistrationAccesssGroup:IDSRegistrationControlKeychainAccessGroup error:0];
  if (!selfCopy)
  {
    if (!error)
    {
      goto LABEL_29;
    }

    v22 = [NSError alloc];
    v23 = [v22 initWithDomain:IDSRegistrationControlErrorDomain code:1 userInfo:0];
    goto LABEL_28;
  }

  if (state == 2 && v8 == 1)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = +[IDSDAccountController sharedInstance];
    v15 = [v14 accountsWithType:0];

    v16 = [v15 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v16)
    {
      v17 = v16;
      errorCopy2 = error;
      v18 = selfCopy;
      selfCopy = v12;
      v19 = type;
      v20 = *v44;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v43 + 1) + 8 * i) reregister];
        }

        v17 = [v15 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v17);
      type = v19;
      v12 = selfCopy;
      LOBYTE(selfCopy) = v18;
LABEL_24:
      error = errorCopy2;
    }
  }

  else
  {
    if (state != 1 || v8 == 1)
    {
      goto LABEL_26;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v24 = +[IDSDAccountController sharedInstance];
    v15 = [v24 accountsWithType:0];

    v25 = [v15 countByEnumeratingWithState:&v39 objects:v54 count:16];
    if (v25)
    {
      v26 = v25;
      v37 = v9;
      errorCopy2 = error;
      v34 = selfCopy;
      v35 = v12;
      v36 = type;
      v27 = *v40;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v15);
          }

          v29 = *(*(&v39 + 1) + 8 * j);
          v30 = +[IDSDAccountController sharedInstance];
          uniqueID = [v29 uniqueID];
          [v30 disableAccountWithUniqueID:uniqueID];

          [v29 setIsUserDisabled:1];
        }

        v26 = [v15 countByEnumeratingWithState:&v39 objects:v54 count:16];
      }

      while (v26);
      type = v36;
      v9 = v37;
      v12 = v35;
      LOBYTE(selfCopy) = v34;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (!error)
  {
    goto LABEL_29;
  }

  v23 = 0;
LABEL_28:
  *error = v23;
LABEL_29:
  v32 = +[IMRGLog registration];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    typeCopy = type;
    v50 = 2048;
    stateCopy = state;
    v52 = 1024;
    v53 = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Updating registration control state { registrationType: %lld, toState: %lld, err: %d }", buf, 0x1Cu);
  }

  return selfCopy;
}

- (int64_t)registrationStateForRegistrationType:(int64_t)type error:(id *)error
{
  type = [NSString stringWithFormat:@"%@-%ld", IDSRegistrationControlKeychainAccountName, type];
  v7 = IMGetKeychainData();
  v8 = 0;
  if (v7)
  {
    v9 = [NSKeyedUnarchiver ids_secureUnarchiveObjectOfClass:objc_opt_class() withData:v8];
    v10 = 0;
  }

  else
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(typeCopy) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registration control state can't be loaded because of a keychain error { err: %d }", buf, 8u);
    }

    v12 = [NSError alloc];
    v10 = [v12 initWithDomain:IDSRegistrationControlErrorDomain code:1 userInfo:0];
    v9 = &off_100C3C010;
  }

  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    typeCopy = type;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Loaded registration control state { registrationType: %lld, state: %@, error: %@ }", buf, 0x20u);
  }

  if (error)
  {
    v14 = v10;
    *error = v10;
  }

  integerValue = [v9 integerValue];

  return integerValue;
}

@end