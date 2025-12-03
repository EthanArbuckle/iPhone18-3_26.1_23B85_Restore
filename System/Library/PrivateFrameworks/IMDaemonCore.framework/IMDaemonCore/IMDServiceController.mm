@interface IMDServiceController
+ (IMDServiceController)sharedController;
- (BOOL)_bundleAllowedToLoadWithProperties:(id)properties;
- (IMDServiceController)init;
- (id)serviceNamesSupportingCapability:(id)capability;
- (id)serviceWithName:(id)name;
- (id)serviceWithReplicationSourceID:(int64_t)d;
- (id)servicesSupportingCapability:(id)capability;
- (void)registerSessionClassWithBundle:(id)bundle;
@end

@implementation IMDServiceController

+ (IMDServiceController)sharedController
{
  if (qword_281421220 != -1)
  {
    sub_22B7D48A4();
  }

  v3 = qword_281421208;

  return v3;
}

- (IMDServiceController)init
{
  v6.receiver = self;
  v6.super_class = IMDServiceController;
  v2 = [(IMDServiceController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    services = v2->_services;
    v2->_services = v3;
  }

  return v2;
}

- (BOOL)_bundleAllowedToLoadWithProperties:(id)properties
{
  v15 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x277D19048]];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMessagesAppDeletionEnabled = [mEMORY[0x277D1A9B8] isMessagesAppDeletionEnabled];

  if (!isMessagesAppDeletionEnabled || ([MEMORY[0x277D1A9A0] isMessagesInstalled] & 1) != 0 || (objc_msgSend(propertiesCopy, "objectForKeyedSubscript:", *MEMORY[0x277D1A630]), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "=> Skip loading this service, we don't allow it when Messages is uninstalled: %@", &v13, 0xCu);
      }
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)registerSessionClassWithBundle:(id)bundle
{
  v26 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v5 = MEMORY[0x277CBEAC0];
  v6 = [bundleCopy pathForResource:@"ServiceProperties" ofType:@"plist"];
  v7 = [v5 dictionaryWithContentsOfFile:v6];

  if ([(IMDServiceController *)self _bundleAllowedToLoadWithProperties:v7])
  {
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D19048]];
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D19090]];
    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277D19030]];
    bOOLValue = [v10 BOOLValue];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = bundleCopy;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Registering bundle: %@", &v24, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v8;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "   => Internal service with name: %@", &v24, 0xCu);
      }
    }

    if (v8)
    {
      services = self->_services;
      lowercaseString = [v8 lowercaseString];
      v16 = [(NSMutableDictionary *)services objectForKeyedSubscript:lowercaseString];
      LODWORD(services) = v16 == 0;

      if (services)
      {
        if (bOOLValue)
        {
          v17 = [objc_alloc(objc_opt_class()) initWithBundle:bundleCopy subServiceName:v9];
        }

        else
        {
          v17 = [objc_alloc(objc_opt_class()) initWithBundle:bundleCopy];
        }

        v20 = v17;
        if (v17)
        {
          v21 = self->_services;
          lowercaseString2 = [v8 lowercaseString];
          [(NSMutableDictionary *)v21 setObject:v20 forKeyedSubscript:lowercaseString2];

          [(NSMutableDictionary *)self->_serviceCapabilityCache removeAllObjects];
          [(NSMutableDictionary *)self->_serviceNameCapabilityCache removeAllObjects];
        }
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      bundlePath = [bundleCopy bundlePath];
      v24 = 138412290;
      v25 = bundlePath;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Refusing to register service %@, not allowed", &v24, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)serviceWithName:(id)name
{
  if (name)
  {
    services = self->_services;
    lowercaseString = [name lowercaseString];
    v5 = [(NSMutableDictionary *)services objectForKeyedSubscript:lowercaseString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)serviceWithReplicationSourceID:(int64_t)d
{
  if (d)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_22B4D7720;
    v11 = sub_22B4D78EC;
    v12 = 0;
    services = self->_services;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_22B5BB8D4;
    v6[3] = &unk_278705B18;
    v6[4] = &v7;
    v6[5] = d;
    [(NSMutableDictionary *)services enumerateKeysAndObjectsUsingBlock:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)servicesSupportingCapability:(id)capability
{
  capabilityCopy = capability;
  v5 = [(NSMutableDictionary *)self->_serviceCapabilityCache objectForKey:capabilityCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    services = self->_services;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = sub_22B5BBA80;
    v16 = &unk_278705B40;
    v9 = capabilityCopy;
    v17 = v9;
    v18 = v7;
    v10 = v7;
    [(NSMutableDictionary *)services enumerateKeysAndObjectsUsingBlock:&v13];
    v11 = [v10 copy];
    [(NSMutableDictionary *)self->_serviceCapabilityCache setObject:v11 forKey:v9];
    v6 = v11;
  }

  return v6;
}

- (id)serviceNamesSupportingCapability:(id)capability
{
  v23 = *MEMORY[0x277D85DE8];
  capabilityCopy = capability;
  v5 = [(NSMutableDictionary *)self->_serviceNameCapabilityCache objectForKey:capabilityCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(IMDServiceController *)self servicesSupportingCapability:capabilityCopy];
    v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          internalName = [*(*(&v18 + 1) + 8 * i) internalName];
          [v8 addObject:internalName];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v15 = [v8 copy];
    [(NSMutableDictionary *)self->_serviceNameCapabilityCache setObject:v15 forKey:capabilityCopy];
    v6 = v15;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

@end