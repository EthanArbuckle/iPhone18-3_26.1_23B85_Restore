@interface _IDSAccount
- (BOOL)_isApplePaySharingService;
- (BOOL)_isEnabled;
- (BOOL)_isInvisibleAlias:(id)alias;
- (BOOL)_isMagnoliaService;
- (BOOL)_isRemoteWidgetService;
- (BOOL)_isThumperService;
- (BOOL)_isiCloudPairingService;
- (BOOL)canSend;
- (BOOL)isActive;
- (BOOL)isFirstGDRAllowlistedAccount;
- (BOOL)isInTransientRegistrationState;
- (BOOL)isTemporary;
- (BOOL)isTransientAllowlistedAccount;
- (BOOL)isUsableForOuterMessaging;
- (BOOL)isUserDisabled;
- (NSArray)accountRegisteredURIs;
- (NSArray)aliasStrings;
- (NSArray)aliases;
- (NSArray)connectedDevices;
- (NSArray)devices;
- (NSArray)handles;
- (NSArray)nearbyDevices;
- (NSArray)pseudonyms;
- (NSArray)registeredURIs;
- (NSArray)suppressedDevices;
- (NSArray)vettedAliases;
- (NSData)pushToken;
- (NSData)registrationCertificate;
- (NSDate)dateRegistered;
- (NSDate)lastGDRDate;
- (NSDate)nextRegistrationDate;
- (NSDictionary)accountInfo;
- (NSDictionary)profileInfo;
- (NSDictionary)pseudonymURIMap;
- (NSDictionary)regionServerContext;
- (NSDictionary)registrationAlertInfo;
- (NSString)description;
- (NSString)primaryServiceName;
- (NSString)regionBasePhoneNumber;
- (NSString)regionID;
- (NSString)serviceName;
- (NSString)uniqueID;
- (_IDSAccount)initWithDictionary:(id)dictionary uniqueID:(id)d serviceName:(id)name delegateContext:(id)context;
- (_IDSAccount)initWithLoginID:(id)d uniqueID:(id)iD serviceName:(id)name delegateContext:(id)context;
- (id)_keychainRegistration;
- (id)_objectForKey:(id)key;
- (id)_registeredURIs;
- (int)accountType;
- (int)profileValidationErrorReason;
- (int)registrationError;
- (int)registrationStatus;
- (int64_t)profileValidationStatus;
- (void)_callCloudConnectedDevicesChanged;
- (void)_callConnectedDevicesChanged;
- (void)_callDelegatesRespondingToSelector:(SEL)selector withPreCallbacksBlock:(id)block callbackBlock:(id)callbackBlock postCallbacksBlock:(id)callbacksBlock group:(id)group;
- (void)_callDevicesChanged;
- (void)_callNearbyDevicesChanged;
- (void)_callRegistrationDelegatesWithBlock:(id)block;
- (void)_connect;
- (void)_loadCachedDevices;
- (void)_reloadCachedDevices;
- (void)_setIsEnabled:(BOOL)enabled;
- (void)_setObject:(id)object forKey:(id)key;
- (void)_updateDependentDevicesWithDevicesInfo:(id)info;
- (void)account:(id)account aliasesChanged:(id)changed;
- (void)account:(id)account dependentDevicesUpdated:(id)updated;
- (void)account:(id)account dependentDevicesUpdatedUponReconnect:(id)reconnect;
- (void)account:(id)account displayNameChanged:(id)changed;
- (void)account:(id)account localDeviceAdded:(id)added;
- (void)account:(id)account localDeviceRemoved:(id)removed;
- (void)account:(id)account loginChanged:(id)changed;
- (void)account:(id)account profileChanged:(id)changed;
- (void)account:(id)account pseudonymsChanged:(id)changed;
- (void)account:(id)account registrationStatusInfoChanged:(id)changed;
- (void)account:(id)account vettedAliasesChanged:(id)changed;
- (void)addAliases:(id)aliases;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)addRegistrationDelegate:(id)delegate queue:(id)queue;
- (void)authenticateAccount;
- (void)deactivateAndPurgeIdentify;
- (void)dealloc;
- (void)forceRemoveAccount;
- (void)passwordUpdated;
- (void)refreshRegistrationForAccount:(id)account;
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

@implementation _IDSAccount

- (int)accountType
{
  v2 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A5560]];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)canSend
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B355C0();
    }
  }

  if ([(_IDSAccount *)self isActive])
  {
    if ([(_IDSAccount *)self accountType]== 2)
    {
      v6 = 1;
    }

    else
    {
      [(_IDSAccount *)self handles];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v20 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        v11 = *MEMORY[0x1E69A5630];
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = [*(*(&v17 + 1) + 8 * i) URI];
            unprefixedURI = [v13 unprefixedURI];

            if (unprefixedURI && ![unprefixedURI isEqualToIgnoringCase:v11])
            {

              v6 = 1;
              goto LABEL_20;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v6 = 0;
LABEL_20:
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isActive
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35360();
    }
  }

  if (!self->_isEnabled)
  {
    return 0;
  }

  if ([(_IDSAccount *)self accountType]== 2)
  {
    return 1;
  }

  return [(_IDSAccount *)self registrationStatus]== 5;
}

- (BOOL)_isiCloudPairingService
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B34BA8();
    }
  }

  return [(NSString *)self->_service isEqualToIgnoringCase:@"com.apple.private.alloy.icloudpairing"];
}

- (BOOL)isTransientAllowlistedAccount
{
  if ([(_IDSAccount *)self _isiCloudPairingService]|| [(_IDSAccount *)self _isThumperService]|| [(_IDSAccount *)self _isMagnoliaService]|| (v3 = [(_IDSAccount *)self _isRemoteWidgetService]))
  {

    LOBYTE(v3) = [(_IDSAccount *)self isInTransientRegistrationState];
  }

  return v3;
}

- (BOOL)_isThumperService
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B34C40();
    }
  }

  return [(NSString *)self->_service isEqualToIgnoringCase:@"com.apple.private.alloy.thumper.keys"];
}

- (BOOL)_isMagnoliaService
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B34CD8();
    }
  }

  return [(NSString *)self->_service isEqualToIgnoringCase:@"com.apple.private.alloy.ct.commcenter.sim.cloud"];
}

- (BOOL)_isRemoteWidgetService
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B34E08();
    }
  }

  return [(NSString *)self->_service isEqualToIgnoringCase:@"com.apple.private.alloy.widgets"];
}

- (int)registrationStatus
{
  registrationInfo = [(_IDSAccount *)self registrationInfo];
  v3 = [registrationInfo objectForKey:*MEMORY[0x1E69A5620]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSString)uniqueID
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35820();
    }
  }

  uniqueID = self->_uniqueID;

  return uniqueID;
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
      sub_195B358B8();
    }
  }

  return self->_isEnabled;
}

- (NSArray)aliases
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35658();
    }
  }

  v6 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A5580]];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A0868C;
  v9[3] = &unk_1E7441850;
  v9[4] = self;
  v7 = [v6 __imArrayByApplyingBlock:v9];

  return v7;
}

- (NSDictionary)accountInfo
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35490();
    }
  }

  accountConfig = self->_accountConfig;

  return accountConfig;
}

- (NSString)serviceName
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B356F0();
    }
  }

  service = self->_service;

  return service;
}

- (NSArray)devices
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35F2C();
    }
  }

  [(_IDSAccount *)self _loadCachedDevices];
  v6 = [(NSMutableArray *)self->_devices copy];

  return v6;
}

- (void)_loadCachedDevices
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35D64();
    }
  }

  if (!self->_devicesLoaded)
  {
    v6 = +[IDSDaemonController sharedInstance];
    [v6 blockUntilConnected];

    v7 = +[IDSDaemonController sharedInstance];
    listener = [v7 listener];
    uniqueID = [(_IDSAccount *)self uniqueID];
    v10 = [listener dependentDevicesForAccount:uniqueID];

    [(_IDSAccount *)self _updateDependentDevicesWithDevicesInfo:v10];
    self->_devicesLoaded = 1;
  }
}

- (NSDate)lastGDRDate
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B364C8();
    }
  }

  v6 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A55B0]];

  return v6;
}

- (NSArray)handles
{
  v2 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A5580]];
  v3 = [v2 __imArrayByApplyingBlock:&unk_1F09E6920];

  return v3;
}

- (void)_callDevicesChanged
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B360F4();
    }
  }

  v6 = [(NSMutableArray *)self->_devices copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A0B2C0;
  v8[3] = &unk_1E74418A0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(_IDSAccount *)self _callDelegatesWithBlock:v8];
}

- (NSArray)accountRegisteredURIs
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B367CC();
    }
  }

  v6 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A5610]];
  v7 = v6;
  if (v6)
  {
    registeredURIs = v6;
  }

  else
  {
    registeredURIs = [(_IDSAccount *)self registeredURIs];
  }

  v9 = registeredURIs;

  v10 = [v9 __imArrayByApplyingBlock:&unk_1F09E6960];

  return v10;
}

- (void)_connect
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36B74();
    }
  }

  v6 = [(NSDictionary *)self->_accountConfig objectForKey:*MEMORY[0x1E69A5640]];
  if (!v6)
  {
    v12 = +[IDSLogging Accounts];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B36C0C(self, &self->_accountConfig);
    }

    goto LABEL_12;
  }

  v7 = +[IDSDaemonController sharedInstance];
  v8 = [v7 hasListenerForID:self->_serviceToken];

  if ((v8 & 1) == 0)
  {
    v9 = +[IDSDaemonController sharedInstance];
    serviceToken = self->_serviceToken;
    v11 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    LOBYTE(serviceToken) = [v9 addListenerID:serviceToken services:v11];

    if ((serviceToken & 1) == 0)
    {
      v12 = +[IDSLogging Accounts];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_195B2F684(self, &self->_serviceToken);
      }

LABEL_12:
    }
  }
}

- (BOOL)isFirstGDRAllowlistedAccount
{
  if (![(_IDSAccount *)self _isMagnoliaService]&& ![(_IDSAccount *)self _isApplePaySharingService])
  {
    return 0;
  }

  v3 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A55B0]];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)isInTransientRegistrationState
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B352C8();
    }
  }

  return self->_isEnabled && [(_IDSAccount *)self accountType]!= 2 && [(_IDSAccount *)self registrationStatus]- 2 < 3;
}

- (NSString)description
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36ADC();
    }
  }

  v6 = MEMORY[0x1E696AEC0];
  serviceName = [(_IDSAccount *)self serviceName];
  loginID = [(_IDSAccount *)self loginID];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [(_IDSAccount *)self accountType];
  v10 = _StringForIDSAccountType();
  if ([(_IDSAccount *)self canSend])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if ([(_IDSAccount *)self isActive])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [v6 stringWithFormat:@"<%p:%@:%@:%@:%@:%@:%@>", self, serviceName, loginID, uniqueID, v10, v11, v12];

  return v13;
}

- (_IDSAccount)initWithDictionary:(id)dictionary uniqueID:(id)d serviceName:(id)name delegateContext:(id)context
{
  dictionaryCopy = dictionary;
  dCopy = d;
  nameCopy = name;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B349C4();
    }
  }

  v17 = [(_IDSAccount *)self init];
  if (!v17)
  {
    goto LABEL_23;
  }

  if (![nameCopy length])
  {
    v18 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A5640]];

    nameCopy = v18;
  }

  if (![nameCopy length])
  {
    v21 = +[IDSLogging Accounts];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_195B34AD0();
    }

    goto LABEL_16;
  }

  v19 = *MEMORY[0x1E69A5560];
  v20 = [dictionaryCopy objectForKey:*MEMORY[0x1E69A5560]];
  if (!v20)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:1];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_INFO))
    {
      v37[0] = 0;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_INFO, "No account type specified, setting to Apple ID", v37, 2u);
    }

    goto LABEL_20;
  }

  v21 = v20;
  [v20 intValue];
  if (IDSIsValidAccountType())
  {
LABEL_20:
    objc_storeStrong(&v17->_uniqueID, d);
    objc_storeStrong(&v17->_service, nameCopy);
    if (!v17->_uniqueID)
    {
      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      uniqueID = v17->_uniqueID;
      v17->_uniqueID = stringGUID;
    }

    v27 = [dictionaryCopy mutableCopy];
    [(NSDictionary *)v27 setObject:v21 forKey:v19];
    [(NSDictionary *)v27 setObject:v17->_service forKey:*MEMORY[0x1E69A5640]];
    accountConfig = v17->_accountConfig;
    v17->_accountConfig = v27;
    v29 = v27;

    v30 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
    delegateContext = v17->_delegateContext;
    v17->_delegateContext = v30;

    v32 = [MEMORY[0x1E696AEC0] copyStringGUIDForObject:v17];
    serviceToken = v17->_serviceToken;
    v17->_serviceToken = v32;

    v34 = +[IDSDaemonController sharedInstance];

    listener = [v34 listener];
    [listener addHandler:v17];

    [(_IDSAccount *)v17 _connect];
    [(_IDSAccount *)v17 _loadCachedDevices];

LABEL_23:
    v23 = v17;
    goto LABEL_24;
  }

  v22 = +[IDSLogging Accounts];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_195B34A5C();
  }

  IMLogBacktrace();
LABEL_16:

  v23 = 0;
LABEL_24:

  return v23;
}

- (_IDSAccount)initWithLoginID:(id)d uniqueID:(id)iD serviceName:(id)name delegateContext:(id)context
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  contextCopy = context;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B34B10();
    }
  }

  v17 = [(_IDSAccount *)self init];
  if (!v17)
  {
    goto LABEL_8;
  }

  if ([nameCopy length])
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v18 setObject:dCopy forKey:*MEMORY[0x1E69A55B8]];
    v19 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v18 setObject:v19 forKey:*MEMORY[0x1E69A5560]];

    objc_storeStrong(&v17->_uniqueID, iD);
    objc_storeStrong(&v17->_service, name);
    v20 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v18];
    accountConfig = v17->_accountConfig;
    v17->_accountConfig = v20;

    v22 = [MEMORY[0x1E696AEC0] copyStringGUIDForObject:v17];
    serviceToken = v17->_serviceToken;
    v17->_serviceToken = v22;

    v24 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
    delegateContext = v17->_delegateContext;
    v17->_delegateContext = v24;

    v26 = +[IDSDaemonController sharedInstance];
    listener = [v26 listener];
    [listener addHandler:v17];

    [(_IDSAccount *)v17 _connect];
LABEL_8:
    v28 = v17;
    goto LABEL_12;
  }

  v29 = +[IDSLogging Accounts];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_195B34AD0();
  }

  v28 = 0;
LABEL_12:

  return v28;
}

- (void)dealloc
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 removeListenerID:self->_serviceToken];

  v4 = +[IDSDaemonController sharedInstance];
  listener = [v4 listener];
  [listener removeHandler:self];

  v6.receiver = self;
  v6.super_class = _IDSAccount;
  [(_IDSAccount *)&v6 dealloc];
}

- (BOOL)_isApplePaySharingService
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B34D70();
    }
  }

  if (([(NSString *)self->_service isEqualToIgnoringCase:@"com.apple.private.alloy.applepay.sharing"]& 1) != 0)
  {
    return 1;
  }

  else
  {
    return [(NSString *)self->_service isEqualToIgnoringCase:@"com.apple.private.alloy.applepay"];
  }
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B34EA0();
    }
  }

  if (delegateCopy)
  {
    if (queueCopy)
    {
      v11 = [(NSMapTable *)self->_delegateToInfo objectForKey:delegateCopy];

      if (!v11)
      {
        if (!self->_delegateToInfo)
        {
          weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          delegateToInfo = self->_delegateToInfo;
          self->_delegateToInfo = weakToStrongObjectsMapTable;
        }

        v14 = objc_alloc_init(MEMORY[0x1E69A5228]);
        [v14 setQueue:queueCopy];
        [(NSMapTable *)self->_delegateToInfo setObject:v14 forKey:delegateCopy];
      }
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    v7 = delegateCopy;
    [(NSMapTable *)self->_delegateToInfo removeObjectForKey:delegateCopy];
    delegateCopy = [(NSMapTable *)self->_delegateToInfo count];
    v5 = v7;
    if (!delegateCopy)
    {
      delegateToInfo = self->_delegateToInfo;
      self->_delegateToInfo = 0;

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](delegateCopy, v5);
}

- (void)_callDelegatesRespondingToSelector:(SEL)selector withPreCallbacksBlock:(id)block callbackBlock:(id)callbackBlock postCallbacksBlock:(id)callbacksBlock group:(id)group
{
  v67 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  callbackBlockCopy = callbackBlock;
  callbacksBlockCopy = callbacksBlock;
  groupCopy = group;
  groupCopy6 = groupCopy;
  v51 = callbackBlockCopy;
  if (callbackBlockCopy)
  {
    group = groupCopy;
    v15 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v15 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B34F38();
      }
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    context = objc_autoreleasePoolPush();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v20 = self->_delegateToInfo;
    v21 = [(NSMapTable *)v20 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v63;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v63 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v62 + 1) + 8 * i);
          v26 = [(NSMapTable *)self->_delegateToInfo objectForKey:v25];
          v27 = v26;
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28 && (!selector || (objc_opt_respondsToSelector() & 1) != 0))
          {
            [v18 addObject:v25];
            [v19 addObject:v27];
          }
        }

        v22 = [(NSMapTable *)v20 countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v22);
    }

    objc_autoreleasePoolPop(context);
    groupCopy6 = group;
    if ([v18 count])
    {
      v29 = 1;
      do
      {
        v30 = objc_autoreleasePoolPush();
        v31 = [v18 objectAtIndex:0];
        v32 = [v19 objectAtIndex:0];
        [v18 removeObjectAtIndex:0];
        [v19 removeObjectAtIndex:0];
        objc_autoreleasePoolPop(v30);
        v33 = [v18 count];
        queue = [v32 queue];
        if (groupCopy6)
        {
          dispatch_group_enter(groupCopy6);
        }

        v35 = +[IDSInternalQueueController sharedInstance];
        queue2 = [v35 queue];

        if (queue == queue2)
        {
          if (selector)
          {
            groupCopy6 = group;
            if (blockCopy != 0 && (v29 & 1) != 0)
            {
              blockCopy[2](blockCopy, 1);
            }

            (v51)[2](v51, v31);
            if (callbacksBlockCopy && !v33)
            {
              callbacksBlockCopy[2](callbacksBlockCopy, 1);
            }
          }

          else
          {
            (v51)[2](v51, v31);
            groupCopy6 = group;
          }

          v43 = objc_opt_self();
          v44 = objc_opt_self();
          if (!groupCopy6)
          {
            goto LABEL_42;
          }
        }

        else if (queue)
        {
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = sub_195AA34E8;
          v53[3] = &unk_1E7440E10;
          selectorCopy = selector;
          v60 = v29 & 1;
          v56 = blockCopy;
          v57 = v51;
          v54 = v31;
          v61 = v33 == 0;
          v58 = callbacksBlockCopy;
          v55 = v32;
          v37 = MEMORY[0x19A8BBEF0](v53);
          v38 = v37;
          if (queue == MEMORY[0x1E69E96A0])
          {
            v39 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v37);
          }

          else
          {
            v39 = [v37 copy];
          }

          v42 = v39;

          groupCopy6 = group;
          if (group)
          {
            dispatch_group_async(group, queue, v42);
          }

          else
          {
            dispatch_async(queue, v42);
          }

          if (!group)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v40 = objc_opt_self();
          v41 = objc_opt_self();
          groupCopy6 = group;
          if (!group)
          {
            goto LABEL_42;
          }
        }

        dispatch_group_leave(groupCopy6);
LABEL_42:

        v29 = 0;
      }

      while ([v18 count]);
    }

    v45 = objc_opt_self();
    v46 = objc_opt_self();
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (void)addRegistrationDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B34FD0();
    }
  }

  if (delegateCopy)
  {
    if (queueCopy)
    {
      v11 = [(NSMapTable *)self->_registrationDelegateToInfo objectForKey:delegateCopy];

      if (!v11)
      {
        if (!self->_registrationDelegateToInfo)
        {
          weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
          registrationDelegateToInfo = self->_registrationDelegateToInfo;
          self->_registrationDelegateToInfo = weakToStrongObjectsMapTable;
        }

        v14 = objc_alloc_init(MEMORY[0x1E69A5228]);
        [v14 setQueue:queueCopy];
        [(NSMapTable *)self->_registrationDelegateToInfo setObject:v14 forKey:delegateCopy];
      }
    }
  }
}

- (void)removeRegistrationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35068();
    }
  }

  if (delegateCopy)
  {
    [(NSMapTable *)self->_registrationDelegateToInfo removeObjectForKey:delegateCopy];
    if (![(NSMapTable *)self->_registrationDelegateToInfo count])
    {
      registrationDelegateToInfo = self->_registrationDelegateToInfo;
      self->_registrationDelegateToInfo = 0;
    }
  }
}

- (void)_callRegistrationDelegatesWithBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35100();
    }
  }

  if (blockCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_registrationDelegateToInfo;
    v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [(NSMapTable *)self->_registrationDelegateToInfo objectForKey:v13];
          queue = [v14 queue];
          if (queue)
          {
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = sub_195AA3960;
            v18[3] = &unk_1E743F110;
            v16 = blockCopy;
            v18[4] = v13;
            v19 = v16;
            dispatch_async(queue, v18);
          }
        }

        v10 = [(NSMapTable *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)_objectForKey:(id)key
{
  keyCopy = key;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35198();
    }
  }

  v8 = [(NSDictionary *)self->_accountConfig objectForKey:keyCopy];

  return v8;
}

- (void)_setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35230();
    }
  }

  if (objectCopy && keyCopy)
  {
    v11 = [(NSDictionary *)self->_accountConfig mutableCopy];
    [v11 setObject:objectCopy forKey:keyCopy];
    v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v11];
    accountConfig = self->_accountConfig;
    self->_accountConfig = v12;
  }
}

- (void)setAccountInfo:(id)info
{
  v15 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B353F8();
    }
  }

  if (self->_accountConfig != infoCopy)
  {
    objc_storeStrong(&self->_accountConfig, info);
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_INFO))
    {
      v11 = 138412546;
      v12 = infoCopy;
      v13 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_INFO, "New account info %@ for %@", &v11, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateAccountWithAccountInfo:(id)info
{
  infoCopy = info;
  v6 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v6 updateAccount:uniqueID withAccountInfo:infoCopy];
}

- (NSDictionary)profileInfo
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35528();
    }
  }

  v6 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A55D0]];

  return v6;
}

- (NSDictionary)regionServerContext
{
  profileInfo = [(_IDSAccount *)self profileInfo];
  v3 = [profileInfo objectForKey:*MEMORY[0x1E69A55E0]];

  return v3;
}

- (BOOL)isUsableForOuterMessaging
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(_IDSAccount *)self registrationStatus]== 5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    handles = [(_IDSAccount *)self handles];
    v4 = [handles countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      v7 = *MEMORY[0x1E69A5630];
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(handles);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          if ([(_IDSAccount *)self accountType]== 2)
          {
            v10 = 0;
          }

          else
          {
            v11 = [v9 URI];
            unprefixedURI = [v11 unprefixedURI];
            v10 = [unprefixedURI isEqualToIgnoringCase:v7];
          }

          if ([v9 isUserVisible])
          {
            v13 = v10 == 0;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            v14 = 1;
            goto LABEL_19;
          }
        }

        v5 = [handles countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_19:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (NSArray)aliasStrings
{
  aliases = [(_IDSAccount *)self aliases];
  v3 = [aliases __imArrayByApplyingBlock:&unk_1F09E6900];

  return v3;
}

- (NSArray)vettedAliases
{
  aliasesToRegister = [(_IDSAccount *)self aliasesToRegister];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195AA40C8;
  v6[3] = &unk_1E7441878;
  v6[4] = self;
  v4 = [aliasesToRegister __imArrayByFilteringWithBlock:v6];

  return v4;
}

- (BOOL)_isInvisibleAlias:(id)alias
{
  aliasCopy = alias;
  if ([aliasCopy hasSuffix:@"inbox.appleid.apple.com"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A55A0]];
    v5 = [v6 containsObject:aliasCopy];
  }

  return v5;
}

- (NSDictionary)pseudonymURIMap
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A5600]];
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v3;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v30)
  {
    v29 = *v41;
    v4 = *MEMORY[0x1E69A55F8];
    v35 = *MEMORY[0x1E69A5648];
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v5;
        v6 = *(*(&v40 + 1) + 8 * v5);
        v7 = [obj objectForKeyedSubscript:{v6, v28}];
        v34 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v6];
        array = [MEMORY[0x1E695DF70] array];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v37;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v37 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              v14 = objc_alloc(MEMORY[0x1E69A5398]);
              v15 = [v13 objectForKeyedSubscript:v4];
              v16 = [v14 initWithDictionaryRepresentation:v15];

              allowedServices = [v16 allowedServices];
              v18 = [allowedServices containsObject:self->_service];

              if (v18)
              {
                v19 = MEMORY[0x1E69A5428];
                v20 = [v13 objectForKeyedSubscript:v35];
                v21 = [v19 URIWithPrefixedURI:v20];

                if (v21)
                {
                  v22 = v16 == 0;
                }

                else
                {
                  v22 = 1;
                }

                if (!v22)
                {
                  v23 = [objc_alloc(MEMORY[0x1E69A5390]) initWithURI:v21 maskedURI:v34 properties:v16];
                  [array addObject:v23];
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v10);
        }

        if ([array count])
        {
          v24 = [array copy];
          [v28 setObject:v24 forKeyedSubscript:v34];
        }

        v5 = v32 + 1;
      }

      while (v32 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v30);
  }

  v25 = [v28 copy];
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (NSArray)pseudonyms
{
  v45 = *MEMORY[0x1E69E9840];
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  accountInfo = [(_IDSAccount *)self accountInfo];
  v4 = [accountInfo objectForKey:*MEMORY[0x1E69A5600]];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v29 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v29)
  {
    v28 = *v40;
    v5 = *MEMORY[0x1E69A55F8];
    v34 = *MEMORY[0x1E69A5648];
    do
    {
      v6 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v6;
        v7 = *(*(&v39 + 1) + 8 * v6);
        v8 = [obj objectForKeyedSubscript:v7];
        v33 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:v7];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v36;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v36 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v35 + 1) + 8 * i);
              v15 = objc_alloc(MEMORY[0x1E69A5398]);
              v16 = [v14 objectForKeyedSubscript:v5];
              v17 = [v15 initWithDictionaryRepresentation:v16];

              allowedServices = [v17 allowedServices];
              v19 = [allowedServices containsObject:self->_service];

              if (v19)
              {
                v20 = MEMORY[0x1E69A5428];
                v21 = [v14 objectForKeyedSubscript:v34];
                v22 = [v20 URIWithPrefixedURI:v21];

                if (v22)
                {
                  v23 = v17 == 0;
                }

                else
                {
                  v23 = 1;
                }

                if (!v23)
                {
                  v24 = [objc_alloc(MEMORY[0x1E69A5390]) initWithURI:v22 maskedURI:v33 properties:v17];
                  [v32 addObject:v24];
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v11);
        }

        v6 = v31 + 1;
      }

      while (v31 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v29);
  }

  v25 = [v32 copy];
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (NSString)primaryServiceName
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35788();
    }
  }

  serviceName = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A55C0]];
  if (!serviceName)
  {
    serviceName = [(_IDSAccount *)self serviceName];
  }

  return serviceName;
}

- (void)_setIsEnabled:(BOOL)enabled
{
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35950();
    }
  }

  self->_isEnabled = enabled;
}

- (BOOL)isTemporary
{
  v2 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A55A8]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isUserDisabled
{
  v2 = [(_IDSAccount *)self _objectForKey:*MEMORY[0x1E69A5658]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  v6 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v6 passwordChanged:passwordCopy forAccount:uniqueID];
}

- (void)setAuthToken:(id)token
{
  tokenCopy = token;
  v6 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v6 authTokenChanged:tokenCopy forAccount:uniqueID];
}

- (int)registrationError
{
  registrationInfo = [(_IDSAccount *)self registrationInfo];
  v3 = [registrationInfo objectForKey:*MEMORY[0x1E69A64A8]];
  intValue = [v3 intValue];

  return intValue;
}

- (NSDictionary)registrationAlertInfo
{
  registrationInfo = [(_IDSAccount *)self registrationInfo];
  v3 = [registrationInfo objectForKey:*MEMORY[0x1E69A64A0]];

  return v3;
}

- (int64_t)profileValidationStatus
{
  profileInfo = [(_IDSAccount *)self profileInfo];
  v3 = [profileInfo objectForKey:*MEMORY[0x1E69A55F0]];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int)profileValidationErrorReason
{
  profileInfo = [(_IDSAccount *)self profileInfo];
  v3 = [profileInfo objectForKey:*MEMORY[0x1E69A55E8]];
  intValue = [v3 intValue];

  return intValue;
}

- (NSString)regionID
{
  profileInfo = [(_IDSAccount *)self profileInfo];
  v3 = [profileInfo objectForKey:*MEMORY[0x1E69A55D8]];

  return v3;
}

- (void)setRegionID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B359E8();
    }
  }

  if (dCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = dCopy;
      v21 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Account setting regionID {regionID: %@, account: %@}", buf, 0x16u);
    }

    profileInfo = [(_IDSAccount *)self profileInfo];
    v10 = [profileInfo mutableCopy];
    v11 = v10;
    if (v10)
    {
      dictionary = v10;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = dictionary;

    [v13 setObject:dCopy forKey:*MEMORY[0x1E69A55D8]];
    v14 = [v13 copy];
    v18 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    [(_IDSAccount *)self updateAccountWithAccountInfo:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (NSString)regionBasePhoneNumber
{
  profileInfo = [(_IDSAccount *)self profileInfo];
  v3 = [profileInfo objectForKey:*MEMORY[0x1E69A55C8]];

  return v3;
}

- (void)setRegionBasePhoneNumber:(id)number
{
  v23 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35A80();
    }
  }

  if (numberCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = numberCopy;
      v21 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Account setting regionBasePhoneNumber {regionBasePhoneNumber: %@, account: %@}", buf, 0x16u);
    }

    profileInfo = [(_IDSAccount *)self profileInfo];
    v10 = [profileInfo mutableCopy];
    v11 = v10;
    if (v10)
    {
      dictionary = v10;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = dictionary;

    [v13 setObject:numberCopy forKey:*MEMORY[0x1E69A55C8]];
    v14 = [v13 copy];
    v18 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    [(_IDSAccount *)self updateAccountWithAccountInfo:v15];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setDisplayName:(id)name
{
  v13[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35B18();
    }
  }

  if (nameCopy)
  {
    null = nameCopy;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9 = null;
  v12 = *MEMORY[0x1E69A5598];
  v13[0] = null;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [(_IDSAccount *)self updateAccountWithAccountInfo:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_updateDependentDevicesWithDevicesInfo:(id)info
{
  v35 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35BB0();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  devices = self->_devices;
  p_devices = &self->_devices;
  self->_devices = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  suppressedDevices = self->_suppressedDevices;
  self->_suppressedDevices = v10;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = infoCopy;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [[IDSDevice alloc] _initWithDictionary:*(*(&v28 + 1) + 8 * v16)];
        object = [self->_delegateContext object];
        [v17 _setAccount:object];

        _internal = [v17 _internal];
        if ([_internal isLocallyPaired])
        {
          _isiCloudPairingService = [(_IDSAccount *)self _isiCloudPairingService];

          p_suppressedDevices = &self->_suppressedDevices;
          if (_isiCloudPairingService)
          {
            goto LABEL_20;
          }
        }

        else
        {
        }

        _internal2 = [v17 _internal];
        if ([_internal2 supportsiCloudPairing])
        {
        }

        else
        {
          _isiCloudPairingService2 = [(_IDSAccount *)self _isiCloudPairingService];

          p_suppressedDevices = &self->_suppressedDevices;
          if (_isiCloudPairingService2)
          {
            goto LABEL_20;
          }
        }

        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
        {
          sub_195B35C48(v32, v17, &v33, registration);
        }

        p_suppressedDevices = &self->_devices;
LABEL_20:
        [(NSMutableArray *)*p_suppressedDevices addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v14);
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
  {
    sub_195B35CC0(p_devices);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_reloadCachedDevices
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35DFC();
    }
  }

  reloadAccounts = [MEMORY[0x1E69A6138] reloadAccounts];
  if (os_log_type_enabled(reloadAccounts, OS_LOG_TYPE_DEFAULT))
  {
    devices = [(_IDSAccount *)self devices];
    v11 = 138412290;
    v12 = devices;
    _os_log_impl(&dword_1959FF000, reloadAccounts, OS_LOG_TYPE_DEFAULT, "Devices before %@", &v11, 0xCu);
  }

  self->_devicesLoaded = 0;
  [(_IDSAccount *)self _loadCachedDevices];
  reloadAccounts2 = [MEMORY[0x1E69A6138] reloadAccounts];
  if (os_log_type_enabled(reloadAccounts2, OS_LOG_TYPE_DEFAULT))
  {
    devices2 = [(_IDSAccount *)self devices];
    v11 = 138412290;
    v12 = devices2;
    _os_log_impl(&dword_1959FF000, reloadAccounts2, OS_LOG_TYPE_DEFAULT, "Devices after %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSArray)suppressedDevices
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35E94();
    }
  }

  [(_IDSAccount *)self _loadCachedDevices];
  v6 = [(NSMutableArray *)self->_suppressedDevices copy];

  return v6;
}

- (NSArray)nearbyDevices
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B35FC4();
    }
  }

  [(_IDSAccount *)self _loadCachedDevices];
  _copyForEnumerating = [(NSMutableArray *)self->_devices _copyForEnumerating];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = _copyForEnumerating;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        _internal = [v13 _internal];
        isNearby = [_internal isNearby];

        if (isNearby)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSArray)connectedDevices
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3605C();
    }
  }

  [(_IDSAccount *)self _loadCachedDevices];
  _copyForEnumerating = [(NSMutableArray *)self->_devices _copyForEnumerating];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = _copyForEnumerating;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        _internal = [v13 _internal];
        isConnected = [_internal isConnected];

        if (isConnected)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)_callNearbyDevicesChanged
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3618C();
    }
  }

  nearbyDevices = [(_IDSAccount *)self nearbyDevices];
  v7 = [nearbyDevices copy];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = sub_195AA5B68;
  v12 = &unk_1E74418A0;
  selfCopy = self;
  v14 = v7;
  v8 = v7;
  [(_IDSAccount *)self _callDelegatesWithBlock:&v9];
  [(_IDSAccount *)self _callDevicesChanged:v9];
}

- (void)_callConnectedDevicesChanged
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36224();
    }
  }

  connectedDevices = [(_IDSAccount *)self connectedDevices];
  v7 = [connectedDevices copy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195AA5CEC;
  v9[3] = &unk_1E74418A0;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(_IDSAccount *)self _callDelegatesWithBlock:v9];
}

- (void)_callCloudConnectedDevicesChanged
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B362BC();
    }
  }

  v6 = [(NSMutableArray *)self->_devices copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195AA5E5C;
  v8[3] = &unk_1E74418A0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(_IDSAccount *)self _callDelegatesWithBlock:v8];
}

- (id)_keychainRegistration
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36354();
    }
  }

  accountType = [(_IDSAccount *)self accountType];
  v7 = accountType;
  switch(accountType)
  {
    case 0:
      userUniqueIdentifier = [(_IDSAccount *)self userUniqueIdentifier];
      goto LABEL_13;
    case 1:
      userUniqueIdentifier = [(_IDSAccount *)self loginID];
LABEL_13:
      registration = userUniqueIdentifier;
      goto LABEL_15;
    case 2:
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
      {
        sub_195B363EC(registration);
      }

      v9 = 0;
      goto LABEL_18;
  }

  registration = 0;
LABEL_15:
  primaryServiceName = [(_IDSAccount *)self primaryServiceName];
  if (![primaryServiceName length])
  {
    serviceName = [(_IDSAccount *)self serviceName];

    primaryServiceName = serviceName;
  }

  mEMORY[0x1E69A53C0] = [MEMORY[0x1E69A53C0] sharedInstance];
  v14 = _IDSRegistrationServiceTypeForString();
  v9 = [mEMORY[0x1E69A53C0] registrationWithServiceType:v14 accountType:v7 isTemporary:-[_IDSAccount isTemporary](self value:{"isTemporary"), registration}];

LABEL_18:

  return v9;
}

- (NSDate)nextRegistrationDate
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36430();
    }
  }

  _keychainRegistration = [(_IDSAccount *)self _keychainRegistration];
  v7 = _keychainRegistration;
  if (_keychainRegistration)
  {
    v8 = [_keychainRegistration objectForKey:@"next-registration-date"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSDate)dateRegistered
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36560();
    }
  }

  _keychainRegistration = [(_IDSAccount *)self _keychainRegistration];
  v7 = _keychainRegistration;
  if (_keychainRegistration)
  {
    v8 = [_keychainRegistration objectForKey:@"registration-date"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_registeredURIs
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B365F8();
    }
  }

  if ([(_IDSAccount *)self accountType]== 2)
  {
    loginID = [(_IDSAccount *)self loginID];
    v7 = _IDSCopyIDForPhoneNumberWithOptions();

    if (v7)
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v7];
LABEL_10:
      v10 = v8;
      goto LABEL_12;
    }
  }

  _keychainRegistration = [(_IDSAccount *)self _keychainRegistration];
  v7 = _keychainRegistration;
  if (_keychainRegistration)
  {
    v8 = [_keychainRegistration objectForKey:@"uris"];
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (NSArray)registeredURIs
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36690();
    }
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_195B36728(self);
  }

  _registeredURIs = [(_IDSAccount *)self _registeredURIs];

  return _registeredURIs;
}

- (NSData)registrationCertificate
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36864();
    }
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_195B368FC(self);
  }

  _keychainRegistration = [(_IDSAccount *)self _keychainRegistration];
  v8 = _keychainRegistration;
  if (_keychainRegistration)
  {
    v9 = [_keychainRegistration objectForKey:@"ids-registration-cert"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSData)pushToken
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B369A0();
    }
  }

  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_195B36A38(self);
  }

  _keychainRegistration = [(_IDSAccount *)self _keychainRegistration];
  v8 = _keychainRegistration;
  if (_keychainRegistration)
  {
    v9 = [_keychainRegistration objectForKey:@"push-token"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)account:(id)account registrationStatusInfoChanged:(id)changed
{
  accountCopy = account;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36C84();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    v11 = [(_IDSAccount *)self accountType]!= 2 && [(_IDSAccount *)self registrationStatus]== 5;
    canSend = [(_IDSAccount *)self canSend];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B36D1C();
    }

    v14 = [(NSDictionary *)self->_accountConfig mutableCopy];
    v15 = v14;
    if (changedCopy)
    {
      [v14 setObject:changedCopy forKey:*MEMORY[0x1E69A5618]];
    }

    else
    {
      [v14 removeObjectForKey:*MEMORY[0x1E69A5618]];
    }

    objc_storeStrong(&self->_accountConfig, v15);
    v16 = +[IDSDaemonController sharedInstance];
    listener = [v16 listener];
    [listener updateAccount:accountCopy withAccountInfo:self->_accountConfig];

    uniqueID = [(_IDSAccount *)self uniqueID];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_195AA68A4;
    v24[3] = &unk_1E74418E8;
    v19 = uniqueID;
    v25 = v19;
    v26 = changedCopy;
    [(_IDSAccount *)self _callRegistrationDelegatesWithBlock:v24];
    v20 = [(_IDSAccount *)self accountType]!= 2 && [(_IDSAccount *)self registrationStatus]== 5;
    canSend2 = [(_IDSAccount *)self canSend];
    if (canSend != canSend2 || v11 != v20)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_195AA6904;
      v22[3] = &unk_1E7441910;
      v22[4] = self;
      v23 = canSend2;
      [(_IDSAccount *)self _callDelegatesWithBlock:v22];
    }
  }
}

- (void)account:(id)account aliasesChanged:(id)changed
{
  accountCopy = account;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36D84();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    canSend = [(_IDSAccount *)self canSend];
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B36E1C();
    }

    v13 = [(NSDictionary *)self->_accountConfig mutableCopy];
    v14 = v13;
    if (changedCopy)
    {
      [v13 setObject:changedCopy forKey:*MEMORY[0x1E69A5580]];
    }

    else
    {
      [v13 removeObjectForKey:*MEMORY[0x1E69A5580]];
    }

    objc_storeStrong(&self->_accountConfig, v14);
    uniqueID = [(_IDSAccount *)self uniqueID];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195AA6BAC;
    v20[3] = &unk_1E74418E8;
    v16 = uniqueID;
    v21 = v16;
    v22 = changedCopy;
    [(_IDSAccount *)self _callRegistrationDelegatesWithBlock:v20];
    canSend2 = [(_IDSAccount *)self canSend];
    if (canSend != canSend2)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_195AA6C0C;
      v18[3] = &unk_1E7441910;
      v18[4] = self;
      v19 = canSend2;
      [(_IDSAccount *)self _callDelegatesWithBlock:v18];
    }
  }
}

- (void)account:(id)account vettedAliasesChanged:(id)changed
{
  accountCopy = account;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36E84();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B36F1C();
    }

    v12 = [(NSDictionary *)self->_accountConfig mutableCopy];
    v13 = v12;
    if (changedCopy)
    {
      [(NSDictionary *)v12 setObject:changedCopy forKey:*MEMORY[0x1E69A5668]];
    }

    else
    {
      [(NSDictionary *)v12 removeObjectForKey:*MEMORY[0x1E69A5668]];
    }

    accountConfig = self->_accountConfig;
    self->_accountConfig = v13;
    v15 = v13;

    uniqueID = [(_IDSAccount *)self uniqueID];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195AA6E44;
    v18[3] = &unk_1E74418E8;
    v19 = uniqueID;
    v20 = changedCopy;
    v17 = uniqueID;
    [(_IDSAccount *)self _callRegistrationDelegatesWithBlock:v18];
  }
}

- (void)account:(id)account profileChanged:(id)changed
{
  accountCopy = account;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B36F90();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B37028();
    }

    v12 = [(NSDictionary *)self->_accountConfig mutableCopy];
    v13 = v12;
    if (changedCopy)
    {
      [(NSDictionary *)v12 setObject:changedCopy forKey:*MEMORY[0x1E69A55D0]];
    }

    else
    {
      [(NSDictionary *)v12 removeObjectForKey:*MEMORY[0x1E69A55D0]];
    }

    accountConfig = self->_accountConfig;
    self->_accountConfig = v13;
    v15 = v13;

    uniqueID = [(_IDSAccount *)self uniqueID];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195AA7064;
    v18[3] = &unk_1E74418E8;
    v19 = uniqueID;
    v20 = changedCopy;
    v17 = uniqueID;
    [(_IDSAccount *)self _callRegistrationDelegatesWithBlock:v18];
  }
}

- (void)account:(id)account loginChanged:(id)changed
{
  accountCopy = account;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B37090();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B37128();
    }

    v12 = [(NSDictionary *)self->_accountConfig mutableCopy];
    v13 = v12;
    if (changedCopy)
    {
      [(NSDictionary *)v12 setObject:changedCopy forKey:*MEMORY[0x1E69A55B8]];
    }

    else
    {
      [(NSDictionary *)v12 removeObjectForKey:*MEMORY[0x1E69A55B8]];
    }

    accountConfig = self->_accountConfig;
    self->_accountConfig = v13;
    v15 = v13;

    uniqueID = [(_IDSAccount *)self uniqueID];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195AA7284;
    v18[3] = &unk_1E74418E8;
    v19 = uniqueID;
    v20 = changedCopy;
    v17 = uniqueID;
    [(_IDSAccount *)self _callRegistrationDelegatesWithBlock:v18];
  }
}

- (void)account:(id)account displayNameChanged:(id)changed
{
  accountCopy = account;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B37190();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B37228();
    }

    v12 = [(NSDictionary *)self->_accountConfig mutableCopy];
    v13 = v12;
    if (changedCopy)
    {
      [(NSDictionary *)v12 setObject:changedCopy forKey:*MEMORY[0x1E69A5598]];
    }

    else
    {
      [(NSDictionary *)v12 removeObjectForKey:*MEMORY[0x1E69A5598]];
    }

    accountConfig = self->_accountConfig;
    self->_accountConfig = v13;
    v15 = v13;

    uniqueID = [(_IDSAccount *)self uniqueID];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195AA74A4;
    v18[3] = &unk_1E74418E8;
    v19 = uniqueID;
    v20 = changedCopy;
    v17 = uniqueID;
    [(_IDSAccount *)self _callRegistrationDelegatesWithBlock:v18];
  }
}

- (void)account:(id)account pseudonymsChanged:(id)changed
{
  v26 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  changedCopy = changed;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B37290();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = accountCopy;
      v24 = 2112;
      v25 = changedCopy;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Account %@ received pseudonyms changed: %@", buf, 0x16u);
    }

    v12 = [(NSDictionary *)self->_accountConfig mutableCopy];
    v13 = v12;
    if (changedCopy)
    {
      [(NSDictionary *)v12 setObject:changedCopy forKey:*MEMORY[0x1E69A5600]];
    }

    else
    {
      [(NSDictionary *)v12 removeObjectForKey:*MEMORY[0x1E69A5600]];
    }

    accountConfig = self->_accountConfig;
    self->_accountConfig = v13;
    v15 = v13;

    uniqueID = [(_IDSAccount *)self uniqueID];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_195AA771C;
    v19[3] = &unk_1E74418E8;
    v20 = uniqueID;
    v21 = changedCopy;
    v17 = uniqueID;
    [(_IDSAccount *)self _callRegistrationDelegatesWithBlock:v19];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account dependentDevicesUpdated:(id)updated
{
  accountCopy = account;
  updatedCopy = updated;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B37328();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B373C0();
    }

    self->_devicesLoaded = 1;
    [(_IDSAccount *)self _updateDependentDevicesWithDevicesInfo:updatedCopy];
    [(_IDSAccount *)self _callDevicesChanged];
  }
}

- (void)account:(id)account dependentDevicesUpdatedUponReconnect:(id)reconnect
{
  v18 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  reconnectCopy = reconnect;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B37428();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    accountEnabled = [MEMORY[0x1E69A6138] accountEnabled];
    if (os_log_type_enabled(accountEnabled, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(reconnectCopy, "count")}];
      v14 = 138412546;
      v15 = accountCopy;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_1959FF000, accountEnabled, OS_LOG_TYPE_DEFAULT, "Account received %@ dependentDevicesUpdatedUponReconnect (devices count: %@)", &v14, 0x16u);
    }

    self->_devicesLoaded = 1;
    [(_IDSAccount *)self _updateDependentDevicesWithDevicesInfo:reconnectCopy];
    [(_IDSAccount *)self _callDevicesChanged];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account localDeviceAdded:(id)added
{
  v23 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  addedCopy = added;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B374C0();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = accountCopy;
      v21 = 2112;
      v22 = addedCopy;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Account received %@ localDeviceAdded %@", &v19, 0x16u);
    }

    v12 = +[IDSDaemonController sharedInstance];
    listener = [v12 listener];
    uniqueID = [(_IDSAccount *)self uniqueID];
    v15 = [listener dependentDevicesForAccount:uniqueID];

    [(_IDSAccount *)self _updateDependentDevicesWithDevicesInfo:v15];
    [(_IDSAccount *)self _callNearbyDevicesChanged];
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(NSMutableArray *)self->_devices __imArrayByApplyingBlock:&unk_1F09E6980];
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "Devices updated %@", &v19, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)account:(id)account localDeviceRemoved:(id)removed
{
  v20 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  removedCopy = removed;
  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = accountCopy;
      v18 = 2112;
      v19 = removedCopy;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Account received %@ localDeviceRemoved %@", &v16, 0x16u);
    }

    v9 = +[IDSDaemonController sharedInstance];
    listener = [v9 listener];
    uniqueID = [(_IDSAccount *)self uniqueID];
    v12 = [listener dependentDevicesForAccount:uniqueID];

    [(_IDSAccount *)self _updateDependentDevicesWithDevicesInfo:v12];
    [(_IDSAccount *)self _callNearbyDevicesChanged];
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(NSMutableArray *)self->_devices __imArrayByApplyingBlock:&unk_1F09E69A0];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_1959FF000, registration2, OS_LOG_TYPE_DEFAULT, "Devices updated %@", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)refreshRegistrationForAccount:(id)account
{
  accountCopy = account;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B37558();
    }
  }

  if ([accountCopy isEqualToString:self->_uniqueID])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
    {
      sub_195B375F0();
    }

    uniqueID = [(_IDSAccount *)self uniqueID];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195AA7F60;
    v11[3] = &unk_1E7441938;
    v12 = uniqueID;
    v10 = uniqueID;
    [(_IDSAccount *)self _callRegistrationDelegatesWithBlock:v11];
  }
}

- (void)authenticateAccount
{
  v4 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v4 authenticateAccount:uniqueID];
}

- (void)passwordUpdated
{
  v4 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v4 passwordUpdatedForAccount:uniqueID];
}

- (void)updateAuthorizationCredentials:(id)credentials token:(id)token
{
  tokenCopy = token;
  credentialsCopy = credentials;
  v9 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v9 updateAuthorizationCredentials:credentialsCopy token:tokenCopy forAccount:uniqueID];
}

- (void)validateProfile
{
  v4 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v4 validateProfileForAccount:uniqueID];
}

- (void)addAliases:(id)aliases
{
  aliasesCopy = aliases;
  v6 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v6 addAliases:aliasesCopy toAccount:uniqueID];
}

- (void)removeAliases:(id)aliases
{
  aliasesCopy = aliases;
  v6 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v6 removeAliases:aliasesCopy fromAccount:uniqueID];
}

- (void)validateAliases:(id)aliases
{
  aliasesCopy = aliases;
  v6 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v6 validateAliases:aliasesCopy forAccount:uniqueID];
}

- (void)unvalidateAliases:(id)aliases
{
  aliasesCopy = aliases;
  v6 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v6 unvalidateAliases:aliasesCopy forAccount:uniqueID];
}

- (void)registerAccount
{
  v4 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v4 registerAccount:uniqueID];
}

- (void)unregisterAccount
{
  v4 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v4 unregisterAccount:uniqueID];
}

- (void)forceRemoveAccount
{
  if ([(_IDSAccount *)self isTemporary]&& ![(_IDSAccount *)self accountType])
  {
    v5 = +[IDSDaemonController sharedInstance];
    uniqueID = [(_IDSAccount *)self uniqueID];
    [v5 forceRemoveAccount:uniqueID];
  }

  else
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
    {
      sub_195B37664();
    }
  }
}

- (void)deactivateAndPurgeIdentify
{
  v4 = +[IDSDaemonController sharedInstance];
  uniqueID = [(_IDSAccount *)self uniqueID];
  [v4 deactivateAndPurgeIdentifyForAccount:uniqueID];
}

@end