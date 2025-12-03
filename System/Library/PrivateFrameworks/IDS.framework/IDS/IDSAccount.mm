@interface IDSAccount
- (BOOL)_isEnabled;
- (BOOL)canSend;
- (BOOL)isActive;
- (BOOL)isEnabled;
- (BOOL)isUsableForOuterMessaging;
- (BOOL)isUserDisabled;
- (IDSAccount)initWithDictionary:(id)dictionary uniqueID:(id)d serviceName:(id)name;
- (IDSAccount)initWithLoginID:(id)d uniqueID:(id)iD serviceName:(id)name;
- (NSArray)accountRegisteredURIs;
- (NSArray)aliasStrings;
- (NSArray)aliases;
- (NSArray)aliasesToRegister;
- (NSArray)connectedDevices;
- (NSArray)devices;
- (NSArray)handles;
- (NSArray)nearbyDevices;
- (NSArray)pseudonyms;
- (NSArray)registeredURIs;
- (NSArray)vettedAliases;
- (NSData)pushToken;
- (NSData)registrationCertificate;
- (NSDate)dateRegistered;
- (NSDate)nextRegistrationDate;
- (NSDictionary)accountInfo;
- (NSDictionary)profileInfo;
- (NSDictionary)pseudonymURIMap;
- (NSDictionary)regionServerContext;
- (NSDictionary)registrationAlertInfo;
- (NSString)displayName;
- (NSString)loginID;
- (NSString)primaryServiceName;
- (NSString)profileID;
- (NSString)regionBasePhoneNumber;
- (NSString)regionID;
- (NSString)serviceName;
- (NSString)uniqueID;
- (NSString)userUniqueIdentifier;
- (_IDSAccount)_internal;
- (id)_initWithDictionary:(id)dictionary uniqueID:(id)d serviceName:(id)name;
- (id)description;
- (id)matchingSim;
- (int)accountType;
- (int)profileValidationErrorReason;
- (int)registrationError;
- (int)registrationStatus;
- (int64_t)profileValidationStatus;
- (void)_callNearbyDevicesChanged;
- (void)_reloadCachedDevices;
- (void)_reregisterAndReidentify:(BOOL)reidentify;
- (void)addAliases:(id)aliases;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addRegistrationDelegate:(id)delegate queue:(id)queue;
- (void)authenticateAccount;
- (void)deactivateAndPurgeIdentify;
- (void)dealloc;
- (void)forceRemoveAccount;
- (void)passwordUpdated;
- (void)registerAccount;
- (void)removeAliases:(id)aliases;
- (void)removeDelegate:(id)delegate;
- (void)removeRegistrationDelegate:(id)delegate;
- (void)setAccountInfo:(id)info;
- (void)setAuthToken:(id)token;
- (void)setDisplayName:(id)name;
- (void)setPassword:(id)password;
- (void)setRegionBasePhoneNumber:(id)number;
- (void)setRegionID:(id)d;
- (void)unregisterAccount;
- (void)unvalidateAliases:(id)aliases;
- (void)updateAccountWithAccountInfo:(id)info;
- (void)updateAuthorizationCredentials:(id)credentials token:(id)token;
- (void)validateAliases:(id)aliases;
- (void)validateProfile;
@end

@implementation IDSAccount

- (_IDSAccount)_internal
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B339A4();
    }
  }

  internal = self->_internal;

  return internal;
}

- (int)accountType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1431655766;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A0798C;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (NSDictionary)accountInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A08808;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSString)serviceName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A08BF4;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSString)loginID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A08DE0;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSString)uniqueID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A08E48;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A090C0;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  serviceName = [(IDSAccount *)self serviceName];
  loginID = [(IDSAccount *)self loginID];
  uniqueID = [(IDSAccount *)self uniqueID];
  [(IDSAccount *)self accountType];
  v8 = _StringForIDSAccountType();
  if ([(IDSAccount *)self isActive])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [(IDSAccount *)self registrationStatus];
  v10 = _IDSStringFromIDSRegistrationStatus();
  v11 = [v3 stringWithFormat:@"%@: %p [Service: %@  User: %@  ID: %@  Type: %@  Active: %@  Registration Status: %@]", v4, self, serviceName, loginID, uniqueID, v8, v9, v10];

  return v11;
}

- (int)registrationStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1431655766;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A08C5C;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (BOOL)canSend
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A0C154;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (NSArray)accountRegisteredURIs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A0BCAC;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)devices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A0C32C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)matchingSim
{
  mEMORY[0x1E69A51E8] = [MEMORY[0x1E69A51E8] sharedInstance];
  userUniqueIdentifier = [(IDSAccount *)self userUniqueIdentifier];
  v5 = [mEMORY[0x1E69A51E8] SIMForIdentifier:userUniqueIdentifier];

  return v5;
}

- (id)_initWithDictionary:(id)dictionary uniqueID:(id)d serviceName:(id)name
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dCopy = d;
  nameCopy = name;
  if (_IDSRunningInDaemon())
  {
    v11 = +[IDSLogging Accounts];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    selfCopy = 0;
  }

  else
  {
    v13 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v13 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B337C4();
      }
    }

    v22.receiver = self;
    v22.super_class = IDSAccount;
    v16 = [(IDSAccount *)&v22 init];
    if (v16)
    {
      v17 = [[_IDSAccount alloc] initWithDictionary:dictionaryCopy uniqueID:dCopy serviceName:nameCopy delegateContext:v16];
      internal = v16->_internal;
      v16->_internal = v17;
    }

    v19 = +[IDSLogging Accounts];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      v24 = v16;
      v25 = 2112;
      v26 = dictionaryCopy;
      v27 = 2112;
      v28 = dCopy;
      v29 = 2112;
      v30 = nameCopy;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_INFO, "Creating new IDSAccount %p with config %@ uniqueID %@ serviceName %@", buf, 0x2Au);
    }

    self = v16;
    selfCopy = self;
  }

  v20 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (IDSAccount)initWithDictionary:(id)dictionary uniqueID:(id)d serviceName:(id)name
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dCopy = d;
  nameCopy = name;
  if (_IDSRunningInDaemon())
  {
    v11 = +[IDSLogging Accounts];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    selfCopy = 0;
  }

  else
  {
    v13 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsNotCurrent = [v13 assertQueueIsNotCurrent];

    if (assertQueueIsNotCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B33864();
      }
    }

    v29.receiver = self;
    v29.super_class = IDSAccount;
    v16 = [(IDSAccount *)&v29 init];
    if (v16)
    {
      v17 = +[IDSInternalQueueController sharedInstance];
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = sub_195A952A0;
      v24 = &unk_1E743EEE8;
      v25 = v16;
      v26 = dictionaryCopy;
      v27 = dCopy;
      v28 = nameCopy;
      [v17 performBlock:&v21];
    }

    v18 = [IDSLogging Accounts:v21];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      v31 = v16;
      v32 = 2112;
      v33 = dictionaryCopy;
      v34 = 2112;
      v35 = dCopy;
      v36 = 2112;
      v37 = nameCopy;
      _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_INFO, "Creating new IDSAccount %p with config %@ uniqueID %@ serviceName %@", buf, 0x2Au);
    }

    self = v16;
    selfCopy = self;
  }

  v19 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (IDSAccount)initWithLoginID:(id)d uniqueID:(id)iD serviceName:(id)name
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v11 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B33904();
    }
  }

  v27.receiver = self;
  v27.super_class = IDSAccount;
  v14 = [(IDSAccount *)&v27 init];
  if (v14)
  {
    v15 = +[IDSInternalQueueController sharedInstance];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = sub_195A95524;
    v22 = &unk_1E743EEE8;
    v23 = v14;
    v24 = dCopy;
    v25 = iDCopy;
    v26 = nameCopy;
    [v15 performBlock:&v19];
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v29 = v14;
    v30 = 2112;
    v31 = dCopy;
    v32 = 2112;
    v33 = iDCopy;
    v34 = 2112;
    v35 = nameCopy;
    _os_log_debug_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEBUG, "Created new IDSAccount %p with loginID %@ uniqueID %@ serviceName %@", buf, 0x2Au);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)dealloc
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_195A00764;
  v6[4] = sub_195A03D58;
  v7 = self->_internal;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A956A4;
  v5[3] = &unk_1E743E648;
  v5[4] = v6;
  [v3 performBlock:v5 waitUntilDone:0];

  _Block_object_dispose(v6, 8);
  v4.receiver = self;
  v4.super_class = IDSAccount;
  [(IDSAccount *)&v4 dealloc];
}

- (NSString)primaryServiceName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A957F8;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)isUserDisabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A95948;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (NSArray)nearbyDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A95ACC;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)connectedDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A95C5C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)profileInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A95DEC;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)aliases
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A95F7C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)aliasStrings
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9610C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)vettedAliases
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9629C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)aliasesToRegister
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9642C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)handles
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A965BC;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)pseudonymURIMap
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9674C;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)pseudonyms
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A968DC;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A969FC;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = passwordCopy;
  v6 = passwordCopy;
  [v5 performBlock:v7];
}

- (void)setAuthToken:(id)token
{
  tokenCopy = token;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A96B08;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = tokenCopy;
  v6 = tokenCopy;
  [v5 performBlock:v7];
}

- (BOOL)isEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A96C44;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (BOOL)_isEnabled
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B33A44();
    }
  }

  return [(_IDSAccount *)self->_internal _isEnabled];
}

- (BOOL)isUsableForOuterMessaging
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -86;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A96E98;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (void)setAccountInfo:(id)info
{
  infoCopy = info;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A96FAC;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  [v5 performBlock:v7];
}

- (void)updateAccountWithAccountInfo:(id)info
{
  infoCopy = info;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A970B8;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  [v5 performBlock:v7];
}

- (int)registrationError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1431655766;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A971F4;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (NSDictionary)registrationAlertInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A97378;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (int64_t)profileValidationStatus
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A974C8;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (int)profileValidationErrorReason
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -1431655766;
  v3 = +[IDSInternalQueueController sharedInstance];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A9760C;
  v5[3] = &unk_1E743E670;
  v5[4] = self;
  v5[5] = &v6;
  [v3 performBlock:v5 waitUntilDone:1];

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (NSDate)nextRegistrationDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A97790;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDate)dateRegistered
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A97920;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)registeredURIs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A97AB0;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSData)registrationCertificate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A97C40;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSData)pushToken
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A97DD0;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)regionServerContext
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A97F60;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSString)profileID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A980F0;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A98238;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  [v8 performBlock:v11 waitUntilDone:0];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A98338;
  v6[3] = &unk_1E743F468;
  v6[4] = self;
  v6[5] = delegateCopy;
  [v5 performBlock:v6 waitUntilDone:1];
}

- (void)addRegistrationDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A9846C;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  [v8 performBlock:v11 waitUntilDone:0];
}

- (void)removeRegistrationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A9856C;
  v6[3] = &unk_1E743F468;
  v6[4] = self;
  v6[5] = delegateCopy;
  [v5 performBlock:v6 waitUntilDone:1];
}

- (NSString)regionID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A986E8;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setRegionID:(id)d
{
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A98808;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  [v5 performBlock:v7];
}

- (NSString)regionBasePhoneNumber
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A98984;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setRegionBasePhoneNumber:(id)number
{
  numberCopy = number;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A98AA4;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = numberCopy;
  v6 = numberCopy;
  [v5 performBlock:v7];
}

- (NSString)displayName
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A98C20;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDisplayName:(id)name
{
  nameCopy = name;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A98D40;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  [v5 performBlock:v7];
}

- (NSString)userUniqueIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A00764;
  v11 = sub_195A03D58;
  v12 = 0;
  v3 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A98EBC;
  v6[3] = &unk_1E743E670;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlock:v6 waitUntilDone:1];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)authenticateAccount
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A98FB4;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)passwordUpdated
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A99088;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)updateAuthorizationCredentials:(id)credentials token:(id)token
{
  credentialsCopy = credentials;
  tokenCopy = token;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A991A8;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = credentialsCopy;
  v13 = tokenCopy;
  v9 = tokenCopy;
  v10 = credentialsCopy;
  [v8 performBlock:v11];
}

- (void)validateProfile
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A9928C;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)addAliases:(id)aliases
{
  aliasesCopy = aliases;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A99388;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = aliasesCopy;
  v6 = aliasesCopy;
  [v5 performBlock:v7];
}

- (void)removeAliases:(id)aliases
{
  aliasesCopy = aliases;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A99494;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = aliasesCopy;
  v6 = aliasesCopy;
  [v5 performBlock:v7];
}

- (void)validateAliases:(id)aliases
{
  aliasesCopy = aliases;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A995A0;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = aliasesCopy;
  v6 = aliasesCopy;
  [v5 performBlock:v7];
}

- (void)unvalidateAliases:(id)aliases
{
  aliasesCopy = aliases;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A99664;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = aliasesCopy;
  v6 = aliasesCopy;
  [v5 performBlock:v7];
}

- (void)registerAccount
{
  v11 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = _os_activity_create(&dword_1959FF000, "Framework register account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Client requesting to register account: %@", buf, 0xCu);
  }

  v4 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A99800;
  v6[3] = &unk_1E743E878;
  v6[4] = self;
  [v4 performBlock:v6];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)unregisterAccount
{
  v11 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = _os_activity_create(&dword_1959FF000, "Framework unregister account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Client requesting to unregister account: %@", buf, 0xCu);
  }

  v4 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A999D4;
  v6[3] = &unk_1E743E878;
  v6[4] = self;
  [v4 performBlock:v6];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)forceRemoveAccount
{
  v11 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = _os_activity_create(&dword_1959FF000, "Framework force remove account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Client requesting to force remove account: %@", buf, 0xCu);
  }

  v4 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A99BA8;
  v6[3] = &unk_1E743E878;
  v6[4] = self;
  [v4 performBlock:v6];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_reregisterAndReidentify:(BOOL)reidentify
{
  reidentifyCopy = reidentify;
  v17 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = _os_activity_create(&dword_1959FF000, "Framework reregister account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v12, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (reidentifyCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Client requesting to reregister (with reidentify %@) account: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A99DB0;
  v9[3] = &unk_1E743E8C8;
  v9[4] = self;
  v10 = reidentifyCopy;
  [v7 performBlock:v9];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v8 = *MEMORY[0x1E69E9840];
}

- (void)deactivateAndPurgeIdentify
{
  v11 = *MEMORY[0x1E69E9840];
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = _os_activity_create(&dword_1959FF000, "Framework deactivate account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Client requesting to deactivate and purge identify account: %@", buf, 0xCu);
  }

  v4 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A99F94;
  v6[3] = &unk_1E743E878;
  v6[4] = self;
  [v4 performBlock:v6];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_callNearbyDevicesChanged
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A9A068;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)_reloadCachedDevices
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A9A140;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [v3 performBlock:v4 waitUntilDone:1];
}

@end