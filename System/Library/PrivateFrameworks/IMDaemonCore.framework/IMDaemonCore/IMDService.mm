@interface IMDService
- (BOOL)chatsIgnoreLoginStatus;
- (BOOL)clearOneTimeImportAccounts;
- (BOOL)demandsBroadcasting;
- (BOOL)disallowDeactivation;
- (BOOL)fallbackHashIsContentBased;
- (BOOL)groupIDIsHistoricalIdentifier;
- (BOOL)handleIDInsensitivityIsCarrierBased;
- (BOOL)ignoresNetworkConnectivity;
- (BOOL)isDiscontinued;
- (BOOL)isIDSBased;
- (BOOL)needsLogin;
- (BOOL)needsPassword;
- (BOOL)requiresHost;
- (BOOL)requiresSingleAccount;
- (BOOL)shouldBeAlwaysLoggedIn;
- (BOOL)shouldCreateActiveAccounts;
- (BOOL)shouldForceAccountsActive;
- (BOOL)shouldForceAccountsConnected;
- (BOOL)supportsCapability:(id)capability;
- (BOOL)wantsNullHostReachability;
- (Class)sessionClass;
- (IMDService)initWithBundle:(id)bundle;
- (NSArray)relayMessageDelegates;
- (NSArray)replicationServices;
- (NSDictionary)defaultAccountSettings;
- (NSDictionary)serviceDefaults;
- (NSDictionary)serviceDefaultsForSetup;
- (NSString)internalName;
- (NSString)serviceDomain;
- (id)_defaultDefaults;
- (id)_oldServiceDomain;
- (id)_serviceDefaultsForDomain:(id)domain;
- (id)_serviceDomain;
- (id)_supportedCapabilities;
- (id)createDiscontinuedAccount;
- (id)description;
- (id)newAccountWithAccountDefaults:(id)defaults accountID:(id)d;
- (id)oldInternalName;
- (int64_t)protocolVersion;
- (int64_t)replicationSourceID;
- (int64_t)replicationSourceIDForSending;
- (int64_t)transcodeTarget;
- (unint64_t)caseInsensitivityByHandleType;
- (unsigned)idSensitivity;
- (void)_reallyUnloadServiceBundle;
- (void)dealloc;
- (void)delayedSaveSettings;
- (void)loadServiceBundle;
- (void)purgeMemoryCaches;
- (void)saveSettings;
@end

@implementation IMDService

- (NSString)internalName
{
  if (![(NSString *)self->_internalName length])
  {
    serviceProperties = [(IMDService *)self serviceProperties];
    v4 = [serviceProperties objectForKeyedSubscript:*MEMORY[0x277D19048]];
    internalName = self->_internalName;
    self->_internalName = v4;
  }

  v6 = self->_internalName;

  return v6;
}

- (NSDictionary)serviceDefaultsForSetup
{
  if (self->_cachedSetupServiceDefaults)
  {
    v3 = 0;
  }

  else
  {
    serviceDomain = [(IMDService *)self serviceDomain];
    v3 = [(IMDService *)self _serviceDefaultsForDomain:serviceDomain];

    [(NSDictionary *)v3 removeObjectForKey:*MEMORY[0x277D193D0]];
    [(NSDictionary *)v3 removeObjectForKey:*MEMORY[0x277D193C8]];
    [(NSDictionary *)v3 removeObjectForKey:*MEMORY[0x277D193E0]];
    [(NSDictionary *)v3 removeObjectForKey:*MEMORY[0x277D19418]];
    if ([(NSDictionary *)v3 count])
    {
      v5 = v3;
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    cachedSetupServiceDefaults = self->_cachedSetupServiceDefaults;
    self->_cachedSetupServiceDefaults = v5;
  }

  if (self->_cachedSetupServiceDefaults)
  {
    v7 = self->_cachedSetupServiceDefaults;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

- (NSDictionary)defaultAccountSettings
{
  accountDefaults = self->_accountDefaults;
  if (accountDefaults)
  {
    v3 = accountDefaults;
    goto LABEL_10;
  }

  v5 = MEMORY[0x277CCACA8];
  internalName = [(IMDService *)self internalName];
  v7 = [v5 stringWithFormat:@"%@AccountDefaults", internalName];

  v8 = [(NSBundle *)self->_bundle pathForResource:v7 ofType:@"plist"];
  if (!v8)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEAC0]);
LABEL_7:
    v11 = self->_accountDefaults;
    self->_accountDefaults = v10;

    v9 = self->_accountDefaults;
    if (!v9)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v13 = self->_accountDefaults;
      self->_accountDefaults = v12;

      v9 = self->_accountDefaults;
    }

    goto LABEL_9;
  }

  v9 = self->_accountDefaults;
  if (!v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v8];
    goto LABEL_7;
  }

LABEL_9:
  v3 = v9;

LABEL_10:

  return v3;
}

- (id)_supportedCapabilities
{
  v2 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D1A638]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (IMDService)initWithBundle:(id)bundle
{
  v18 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  if (bundleCopy)
  {
    v15.receiver = self;
    v15.super_class = IMDService;
    v6 = [(IMDService *)&v15 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_bundle, bundle);
      v8 = IMServicePropertiesFromIMServiceBundle();
      serviceProperties = v7->_serviceProperties;
      v7->_serviceProperties = v8;

      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = bundleCopy;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Loading internal party service with bundle: %@", buf, 0xCu);
        }
      }

      mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
      [mEMORY[0x277D192A8] addListener:v7];

      [(IMDService *)v7 synchronizeServiceDefaults];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)dealloc
{
  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  [mEMORY[0x277D192A8] removeListener:self];

  v4.receiver = self;
  v4.super_class = IMDService;
  [(IMDService *)&v4 dealloc];
}

- (void)loadServiceBundle
{
  v30 = *MEMORY[0x277D85DE8];
  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7CFA14(self);
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__reallyUnloadServiceBundle object:0];
  p_bundle = &self->_bundle;
  bundle = self->_bundle;
  if (bundle && (![(NSBundle *)bundle isLoaded]|| !self->_sessionClass))
  {
    registration2 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
    {
      sub_22B7CFAD8(self, &self->_bundle);
    }

    if ([*p_bundle isLoaded])
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v9 = *p_bundle;
      v23 = 0;
      v10 = [v9 loadAndReturnError:&v23];
      v7 = v23;
      v8 = v10 ^ 1;
    }

    registration3 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEBUG))
    {
      v22 = @"YES";
      *buf = 138412802;
      selfCopy = self;
      v26 = 2112;
      if (v8)
      {
        v22 = @"NO";
      }

      v27 = v22;
      v28 = 2112;
      v29 = v7;
      _os_log_debug_impl(&dword_22B4CC000, registration3, OS_LOG_TYPE_DEBUG, "%@: Load success: %@    (Error: %@)", buf, 0x20u);
    }

    v12 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19080]];
    self->_sessionClass = NSClassFromString(v12);

    registration4 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEBUG))
    {
      sub_22B7CFBC4(self, &self->_sessionClass);
    }

    registration5 = [MEMORY[0x277D19298] registration];
    if (os_log_type_enabled(registration5, OS_LOG_TYPE_DEBUG))
    {
      sub_22B7CFC70(self, &self->_serviceProperties, registration5);
    }

    if (v8)
    {
      registration6 = [MEMORY[0x277D19298] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_ERROR))
      {
        sub_22B7CFCFC(self, v7, registration6);
      }

      v16 = +[IMDAccountController sharedAccountController];
      v17 = [v16 activeAccountsForService:self];
      v18 = [v17 arrayByApplyingSelector:sel_accountID];

      if ([v18 count])
      {
        registration7 = [MEMORY[0x277D19298] registration];
        if (os_log_type_enabled(registration7, OS_LOG_TYPE_DEBUG))
        {
          sub_22B7CFD84(v18, registration7);
        }

        v20 = +[IMDAccountController sharedAccountController];
        [v20 deactivateAccounts:v18];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_reallyUnloadServiceBundle
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__reallyUnloadServiceBundle object:0];
  bundle = self->_bundle;
  if (bundle)
  {
    if ([(NSBundle *)bundle isLoaded])
    {
      [(NSBundle *)self->_bundle unload];
      self->_sessionClass = 0;
    }
  }
}

- (id)createDiscontinuedAccount
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  internalName = [(IMDService *)self internalName];
  v5 = [v3 initWithFormat:@"Discontinued-%@", internalName];

  v6 = [IMDAccount alloc];
  defaultAccountSettings = [(IMDService *)self defaultAccountSettings];
  v8 = [(IMDAccount *)v6 initWithAccountID:v5 defaults:defaultAccountSettings service:self];

  return v8;
}

- (id)oldInternalName
{
  serviceProperties = [(IMDService *)self serviceProperties];
  v3 = [serviceProperties objectForKey:*MEMORY[0x277D19060]];

  return v3;
}

- (id)_serviceDomain
{
  protocolVersion = [(IMDService *)self protocolVersion];
  v3 = MEMORY[0x277D19398];
  if (protocolVersion)
  {
    v3 = MEMORY[0x277D19410];
  }

  v4 = *v3;

  return v4;
}

- (unsigned)idSensitivity
{
  v19 = *MEMORY[0x277D85DE8];
  if (!self->_idSensitivity)
  {
    serviceProperties = [(IMDService *)self serviceProperties];
    v4 = [serviceProperties valueForKey:*MEMORY[0x277D19038]];
    self->_idSensitivity = [v4 intValue];

    if ([(IMDService *)self handleIDInsensitivityIsCarrierBased])
    {
      iMPhoneNumbersEnabledForMultipleSubscriptionDevice = [MEMORY[0x277D1A8F8] IMPhoneNumbersEnabledForMultipleSubscriptionDevice];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [iMPhoneNumbersEnabledForMultipleSubscriptionDevice countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v6)
      {
        goto LABEL_14;
      }

      v7 = v6;
      v8 = *v15;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(iMPhoneNumbersEnabledForMultipleSubscriptionDevice);
          }

          if (v9)
          {
            v9 = [MEMORY[0x277D1A8F8] SMSAllowCaseSensitiveSenderIDForPhoneNumber:*(*(&v14 + 1) + 8 * i)];
          }

          else
          {
            v9 = 0;
          }
        }

        v7 = [iMPhoneNumbersEnabledForMultipleSubscriptionDevice countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
      if ((v9 & 1) == 0)
      {
        v11 = 1;
      }

      else
      {
LABEL_14:
        v11 = 0;
      }

      self->_idSensitivity = v11;
    }
  }

  result = self->_idSensitivity;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)caseInsensitivityByHandleType
{
  serviceProperties = [(IMDService *)self serviceProperties];
  v3 = [serviceProperties objectForKey:*MEMORY[0x277D1A660]];
  intValue = [v3 intValue];

  return intValue;
}

- (NSString)serviceDomain
{
  v3 = MEMORY[0x277CCACA8];
  _serviceDomain = [(IMDService *)self _serviceDomain];
  internalName = [(IMDService *)self internalName];
  v6 = [v3 stringWithFormat:@"%@.%@", _serviceDomain, internalName];

  return v6;
}

- (id)_oldServiceDomain
{
  v3 = MEMORY[0x277CCACA8];
  _serviceDomain = [(IMDService *)self _serviceDomain];
  oldInternalName = [(IMDService *)self oldInternalName];
  v6 = [v3 stringWithFormat:@"%@.%@", _serviceDomain, oldInternalName];

  return v6;
}

- (Class)sessionClass
{
  if (self->_bundle)
  {
    sessionClass = self->_sessionClass;
    if (sessionClass)
    {
      goto LABEL_6;
    }

    [(IMDService *)self loadServiceBundle];
  }

  sessionClass = self->_sessionClass;
  if (!sessionClass)
  {
    sessionClass = [(NSBundle *)self->_bundle principalClass];
  }

LABEL_6:

  return sessionClass;
}

- (BOOL)isIDSBased
{
  serviceProperties = [(IMDService *)self serviceProperties];
  v3 = [serviceProperties objectForKey:*MEMORY[0x277D19030]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)handleIDInsensitivityIsCarrierBased
{
  serviceProperties = [(IMDService *)self serviceProperties];
  v3 = [serviceProperties objectForKey:*MEMORY[0x277D1A668]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)isDiscontinued
{
  serviceProperties = [(IMDService *)self serviceProperties];
  v3 = [serviceProperties objectForKey:*MEMORY[0x277D1A648]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)demandsBroadcasting
{
  serviceProperties = [(IMDService *)self serviceProperties];
  v3 = [serviceProperties objectForKey:*MEMORY[0x277D1A640]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)_defaultDefaults
{
  serviceDefaults = self->_serviceDefaults;
  if (!serviceDefaults)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    internalName = [(IMDService *)self internalName];
    v7 = [v5 initWithFormat:@"%@Defaults", internalName];

    v8 = [(NSBundle *)self->_bundle pathForResource:v7 ofType:@"plist"];
    if (v8 && ([MEMORY[0x277CCAA00] defaultManager], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "fileExistsAtPath:", v8), v9, v10))
    {
      v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v8];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    }

    v12 = self->_serviceDefaults;
    self->_serviceDefaults = v11;

    objc_autoreleasePoolPop(v4);
    serviceDefaults = self->_serviceDefaults;
  }

  v13 = serviceDefaults;

  return v13;
}

- (id)_serviceDefaultsForDomain:(id)domain
{
  domainCopy = domain;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_autoreleasePoolPush();
  _defaultDefaults = [(IMDService *)self _defaultDefaults];
  if (_defaultDefaults)
  {
    [v5 addEntriesFromDictionary:_defaultDefaults];
  }

  v8 = *MEMORY[0x277CBF040];
  v9 = *MEMORY[0x277CBF010];
  v10 = CFPreferencesCopyKeyList(domainCopy, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v11 = v10;
  if (v10)
  {
    v12 = CFPreferencesCopyMultiple(v10, domainCopy, v8, v9);
    if ([(__CFDictionary *)v12 count])
    {
      [v5 addEntriesFromDictionary:v12];
    }
  }

  v13 = *MEMORY[0x277CBF030];
  v14 = CFPreferencesCopyKeyList(domainCopy, v8, *MEMORY[0x277CBF030]);

  if (v14)
  {
    v15 = CFPreferencesCopyMultiple(v14, domainCopy, v8, v13);
    if ([(__CFDictionary *)v15 count])
    {
      [v5 addEntriesFromDictionary:v15];
    }
  }

  objc_autoreleasePoolPop(v6);

  return v5;
}

- (NSDictionary)serviceDefaults
{
  if (self->_cachedServiceDefaults)
  {
    v3 = 0;
  }

  else
  {
    serviceDomain = [(IMDService *)self serviceDomain];
    v3 = [(IMDService *)self _serviceDefaultsForDomain:serviceDomain];

    if (![(NSDictionary *)v3 count])
    {
      _oldServiceDomain = [(IMDService *)self _oldServiceDomain];
      v6 = [(IMDService *)self _serviceDefaultsForDomain:_oldServiceDomain];

      v3 = v6;
    }

    if ([(NSDictionary *)v3 count])
    {
      v7 = v3;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    cachedServiceDefaults = self->_cachedServiceDefaults;
    self->_cachedServiceDefaults = v7;
  }

  if (self->_cachedServiceDefaults)
  {
    v9 = self->_cachedServiceDefaults;
  }

  else
  {
    v9 = v3;
  }

  v10 = v9;

  return v9;
}

- (BOOL)clearOneTimeImportAccounts
{
  if (self->_blockPrefWriting)
  {
    return 0;
  }

  serviceDomain = [(IMDService *)self serviceDomain];
  v4 = *MEMORY[0x277D193D8];
  v5 = CFPreferencesCopyAppValue(*MEMORY[0x277D193D8], serviceDomain);
  v2 = v5 != 0;
  if (v5)
  {
    CFPreferencesSetAppValue(v4, 0, serviceDomain);
    v6 = *MEMORY[0x277CBF040];
    CFPreferencesSynchronize(serviceDomain, *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
    CFPreferencesSynchronize(serviceDomain, v6, *MEMORY[0x277CBF010]);
    _CFPreferencesFlushCachesForIdentifier();
  }

  return v2;
}

- (void)delayedSaveSettings
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_saveSettings object:0];
  if (!self->_blockPrefWriting)
  {

    [(IMDService *)self performSelector:sel_saveSettings withObject:0 afterDelay:5.0];
  }
}

- (void)saveSettings
{
  v66 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_saveSettings object:0];
  if (!self->_blockPrefWriting)
  {
    context = objc_autoreleasePoolPush();
    v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v3 = +[IMDAccountController sharedAccountController];
    selfCopy = self;
    v4 = [v3 accountsForService:self];

    obj = v4;
    v5 = [v4 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v61;
      v50 = *v61;
      do
      {
        v8 = 0;
        v52 = v6;
        do
        {
          if (*v61 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v60 + 1) + 8 * v8);
          isManaged = [v9 isManaged];
          accountDefaults = [v9 accountDefaults];
          v12 = [accountDefaults mutableCopy];

          accountID = [v9 accountID];
          if ((isManaged & 1) == 0 && v12)
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            allKeys = [v12 allKeys];
            v15 = [allKeys countByEnumeratingWithState:&v56 objects:v64 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v57;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v57 != v17)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v19 = *(*(&v56 + 1) + 8 * i);
                  v20 = [v12 objectForKey:v19];
                  if ([v20 isNull] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && !objc_msgSend(v20, "length"))
                  {
                    [v12 removeObjectForKey:v19];
                  }
                }

                v16 = [allKeys countByEnumeratingWithState:&v56 objects:v64 count:16];
              }

              while (v16);
            }

            [v51 setObject:v12 forKey:accountID];
            v7 = v50;
            v6 = v52;
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v6);
    }

    v21 = +[IMDAccountController sharedAccountController];
    v22 = [v21 activeAccountsForService:selfCopy];

    serviceDomain = [(IMDService *)selfCopy serviceDomain];
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v22)
    {
      [v22 arrayByApplyingSelector:sel_accountID];
    }

    else
    {
      [MEMORY[0x277CBEA60] array];
    }
    v25 = ;
    [v24 setObject:v25 forKey:*MEMORY[0x277D193E0]];

    if (![(IMDService *)selfCopy isIDSBased])
    {
      [v24 setObject:v51 forKey:*MEMORY[0x277D193D0]];
    }

    v26 = +[IMDAccountController sharedAccountController];
    v27 = [v26 connectedAccountsForService:selfCopy];

    v28 = +[IMDAccountController sharedAccountController];
    v29 = [v28 connectingAccountsForService:selfCopy];

    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v27 count])
    {
      [v30 addObjectsFromArray:v27];
    }

    if ([v29 count])
    {
      [v30 addObjectsFromArray:v29];
    }

    v53 = v27;
    obja = v22;
    v31 = [v30 arrayByApplyingSelector:sel_accountID];
    [v24 setObject:v31 forKey:*MEMORY[0x277D19418]];

    v32 = *MEMORY[0x277D19018];
    v33 = [(NSDictionary *)selfCopy->_serviceProperties objectForKey:*MEMORY[0x277D19018]];
    if (v33)
    {
      v34 = v33;
      v35 = [(NSDictionary *)selfCopy->_serviceProperties objectForKey:v32];
      intValue = [v35 intValue];

      v37 = *MEMORY[0x277CBF040];
      v38 = *MEMORY[0x277CBF030];
      v39 = *MEMORY[0x277CBF010];
      v40 = *MEMORY[0x277CBF030];
      v41 = v47;
      if (intValue)
      {
LABEL_37:
        CFPreferencesSetMultiple(v24, 0, serviceDomain, v37, v40);
        v42 = *MEMORY[0x277D193C8];
        CFPreferencesSetValue(*MEMORY[0x277D193C8], v41, serviceDomain, v37, v38);
        CFPreferencesSynchronize(serviceDomain, v37, v38);
        CFPreferencesSynchronize(serviceDomain, v37, v39);
        [v24 setObject:v41 forKey:v42];
        v43 = +[IMDBroadcastController sharedProvider];
        v44 = [v43 broadcasterForListenersSupportingService:selfCopy];
        internalName = [(IMDService *)selfCopy internalName];
        [v44 defaultsChanged:v24 forService:internalName];

        [(IMDService *)selfCopy purgeMemoryCaches];
        objc_autoreleasePoolPop(context);
        goto LABEL_38;
      }
    }

    else
    {
      v37 = *MEMORY[0x277CBF040];
      v38 = *MEMORY[0x277CBF030];
      v39 = *MEMORY[0x277CBF010];
      v41 = v47;
    }

    v40 = v39;
    goto LABEL_37;
  }

LABEL_38:
  v46 = *MEMORY[0x277D85DE8];
}

- (id)newAccountWithAccountDefaults:(id)defaults accountID:(id)d
{
  dCopy = d;
  defaultsCopy = defaults;
  v8 = [[IMDAccount alloc] initWithAccountID:dCopy defaults:defaultsCopy service:self];

  return v8;
}

- (BOOL)supportsCapability:(id)capability
{
  capabilityCopy = capability;
  _supportedCapabilities = [(IMDService *)self _supportedCapabilities];
  v6 = [_supportedCapabilities objectForKey:capabilityCopy];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)disallowDeactivation
{
  v3 = *MEMORY[0x277D19028];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19028]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)ignoresNetworkConnectivity
{
  v3 = *MEMORY[0x277D19040];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19040]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)wantsNullHostReachability
{
  v3 = *MEMORY[0x277D19098];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19098]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldCreateActiveAccounts
{
  v3 = *MEMORY[0x277D19020];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19020]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldForceAccountsActive
{
  v3 = *MEMORY[0x277D19008];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19008]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldForceAccountsConnected
{
  v3 = *MEMORY[0x277D19010];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19010]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)needsLogin
{
  v3 = *MEMORY[0x277D19050];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19050]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)needsPassword
{
  v3 = *MEMORY[0x277D19068];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19068]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldBeAlwaysLoggedIn
{
  v3 = *MEMORY[0x277D19010];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19010]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)requiresHost
{
  v3 = *MEMORY[0x277D19078];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19078]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)chatsIgnoreLoginStatus
{
  v3 = *MEMORY[0x277D19400];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19400]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)protocolVersion
{
  v3 = *MEMORY[0x277D19070];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19070]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)requiresSingleAccount
{
  v3 = *MEMORY[0x277D19088];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D19088]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    v6 = [v5 intValue] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)replicationSourceID
{
  v3 = *MEMORY[0x277D1A690];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D1A690]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int64_t)replicationSourceIDForSending
{
  v3 = *MEMORY[0x277D1A698];
  v4 = [(NSDictionary *)self->_serviceProperties objectForKey:*MEMORY[0x277D1A698]];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_serviceProperties objectForKey:v3];
    intValue = [v5 intValue];
    if (intValue)
    {
      replicationSourceID = intValue;
    }

    else
    {
      replicationSourceID = [(IMDService *)self replicationSourceID];
    }
  }

  else
  {
    replicationSourceID = [(IMDService *)self replicationSourceID];
  }

  return replicationSourceID;
}

- (NSArray)replicationServices
{
  v20 = *MEMORY[0x277D85DE8];
  serviceProperties = [(IMDService *)self serviceProperties];
  v3 = [serviceProperties objectForKeyedSubscript:*MEMORY[0x277D1A688]];

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = +[IMDServiceController sharedController];
        v12 = [v11 serviceWithName:v10];

        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (int64_t)transcodeTarget
{
  v3 = [(NSDictionary *)self->_serviceProperties objectForKey:@"TranscodeTarget"];
  if (v3)
  {
    v4 = [(NSDictionary *)self->_serviceProperties objectForKey:@"TranscodeTarget"];
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (NSArray)relayMessageDelegates
{
  serviceProperties = [(IMDService *)self serviceProperties];
  v3 = [serviceProperties objectForKeyedSubscript:*MEMORY[0x277D1A680]];

  return v3;
}

- (BOOL)fallbackHashIsContentBased
{
  serviceProperties = [(IMDService *)self serviceProperties];
  v3 = [serviceProperties objectForKeyedSubscript:*MEMORY[0x277D1A650]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)groupIDIsHistoricalIdentifier
{
  serviceProperties = [(IMDService *)self serviceProperties];
  v3 = [serviceProperties objectForKeyedSubscript:*MEMORY[0x277D1A658]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)purgeMemoryCaches
{
  cachedServiceDefaults = self->_cachedServiceDefaults;
  self->_cachedServiceDefaults = 0;

  cachedSetupServiceDefaults = self->_cachedSetupServiceDefaults;
  self->_cachedSetupServiceDefaults = 0;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  internalName = [(IMDService *)self internalName];
  v4 = [v2 stringWithFormat:@"IMDService (%@)", internalName];

  return v4;
}

@end