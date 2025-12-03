@interface DTApplicationWorkspaceObserver
+ (id)sharedInstance;
- (DTApplicationWorkspaceObserver)init;
- (id)registerNotificationToken:(id)token observer:(id)observer query:(id)query;
- (void)_notifyWithDictionaryRepresentation:(id)representation addition:(BOOL)addition;
- (void)_unregisterNotificationTokenInternal:(id)internal;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)unregisterNotificationToken:(id)token observer:(id)observer;
@end

@implementation DTApplicationWorkspaceObserver

+ (id)sharedInstance
{
  if (qword_27EE841E8 != -1)
  {
    sub_24802BD74();
  }

  v3 = qword_27EE841F0;

  return v3;
}

- (DTApplicationWorkspaceObserver)init
{
  v8.receiver = self;
  v8.super_class = DTApplicationWorkspaceObserver;
  v2 = [(DTApplicationWorkspaceObserver *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    registrationsByToken = v2->_registrationsByToken;
    v2->_registrationsByToken = v3;

    v5 = objc_opt_new();
    knownAppsByPath = v2->_knownAppsByPath;
    v2->_knownAppsByPath = v5;
  }

  return v2;
}

- (void)_notifyWithDictionaryRepresentation:(id)representation addition:(BOOL)addition
{
  additionCopy = addition;
  representationCopy = representation;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [representationCopy objectForKeyedSubscript:@"CFBundleIdentifier"];
  if ([v8 length])
  {
    v9 = [representationCopy objectForKeyedSubscript:@"Type"];
    isAppleInternal = [MEMORY[0x277CCAC38] isAppleInternal];
    if (isAppleInternal & 1 | (([v9 isEqualToString:@"System"] & 1) == 0))
    {
      if (![v9 isEqualToString:@"Internal"])
      {
LABEL_9:
        v14 = [(NSMutableDictionary *)selfCopy->_knownAppsByPath objectForKeyedSubscript:v8];
        v15 = v14;
        if (v14)
        {
          registrationsByToken = selfCopy->_registrationsByToken;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = sub_247F6D420;
          v20[3] = &unk_278EF1190;
          v21 = v14;
          [(NSMutableDictionary *)registrationsByToken enumerateKeysAndObjectsUsingBlock:v20];
          [(NSMutableDictionary *)selfCopy->_knownAppsByPath removeObjectForKey:v8];
        }

        if (additionCopy)
        {
          [(NSMutableDictionary *)selfCopy->_knownAppsByPath setObject:representationCopy forKeyedSubscript:v8];
          v17 = selfCopy->_registrationsByToken;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = sub_247F6D438;
          v18[3] = &unk_278EF1190;
          v19 = representationCopy;
          [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v18];
        }

        goto LABEL_14;
      }

      if (isAppleInternal)
      {
        v11 = CFPreferencesCopyValue(@"SBShowInternalApps", @"com.apple.springboard", @"mobile", *MEMORY[0x277CBF010]);
        v12 = v11;
        if (v11)
        {
          v13 = CFGetTypeID(v11);
          if (v13 == CFBooleanGetTypeID())
          {
            CFBooleanGetValue(v12);
          }

          CFRelease(v12);
        }

        goto LABEL_9;
      }
    }

LABEL_14:
  }

  objc_sync_exit(selfCopy);
}

- (id)registerNotificationToken:(id)token observer:(id)observer query:(id)query
{
  v64 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  val = observer;
  queryCopy = query;
  v42 = tokenCopy;
  if (val)
  {
    v41 = [tokenCopy length];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    obj = selfCopy;
    if (![(NSMutableDictionary *)selfCopy->_registrationsByToken count])
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      if (v41)
      {
        [defaultWorkspace addObserver:selfCopy];
      }

      v45 = [MEMORY[0x277CBEB58] set];
      v11 = [queryCopy objectForKeyedSubscript:@"Type"];
      v12 = [v11 isEqualToString:@"PluginKit"];

      if ((v12 & 1) == 0)
      {
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v13 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
        v14 = [v13 countByEnumeratingWithState:&v58 objects:v63 count:16];
        if (v14)
        {
          v15 = *v59;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v59 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v58 + 1) + 8 * i);
              applicationState = [v17 applicationState];
              isRestricted = [applicationState isRestricted];

              if ((isRestricted & 1) == 0)
              {
                applicationState = [v17 bundleIdentifier];
                [v45 addObject:applicationState];
              }

              v19 = sub_247F6CCA0(v17, 0);
              [(DTApplicationWorkspaceObserver *)selfCopy _notifyWithDictionaryRepresentation:v19 addition:1];
            }

            v14 = [v13 countByEnumeratingWithState:&v58 objects:v63 count:16];
          }

          while (v14);
        }
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v20 = [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
      v21 = [v20 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v21)
      {
        v22 = *v55;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v55 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v54 + 1) + 8 * j);
            v25 = sub_247F6D034(v24, 0);
            containingBundleRecord = [v24 containingBundleRecord];
            bundleIdentifier = [containingBundleRecord bundleIdentifier];

            if (!bundleIdentifier)
            {
              v28 = 1;
LABEL_25:
              isAppleInternal = [MEMORY[0x277CCAC38] isAppleInternal];
              if (!bundleIdentifier)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }

            v28 = [v45 containsObject:bundleIdentifier];
            applicationState = [v24 bundleIdentifier];
            if ([applicationState hasPrefix:@"com.apple."])
            {
              goto LABEL_25;
            }

            isAppleInternal = 1;
LABEL_26:

LABEL_27:
            v30 = [MEMORY[0x277CCABB0] numberWithInt:isAppleInternal & v28 ^ 1u];
            [v25 setObject:v30 forKeyedSubscript:@"Restricted"];

            [(DTApplicationWorkspaceObserver *)obj _notifyWithDictionaryRepresentation:v25 addition:1];
          }

          v21 = [v20 countByEnumeratingWithState:&v54 objects:v62 count:16];
        }

        while (v21);
      }
    }

    if (v41)
    {
      objc_initWeak(&location, val);
      v31 = [v42 stringByAppendingFormat:@".%p", val];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_247F6DA18;
      aBlock[3] = &unk_278EF11B8;
      v51 = queryCopy;
      objc_copyWeak(&v52, &location);
      v32 = _Block_copy(aBlock);
      [(NSMutableDictionary *)obj->_registrationsByToken setObject:v32 forKeyedSubscript:v31];

      objc_destroyWeak(&v52);
      objc_destroyWeak(&location);
    }

    array = [MEMORY[0x277CBEB18] array];
    knownAppsByPath = obj->_knownAppsByPath;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_247F6DB90;
    v47[3] = &unk_278EF11E0;
    v48 = queryCopy;
    v35 = array;
    v49 = v35;
    [(NSMutableDictionary *)knownAppsByPath enumerateKeysAndObjectsUsingBlock:v47];
    v36 = v49;
    v37 = v35;

    objc_sync_exit(obj);
  }

  else
  {
    v37 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (void)_unregisterNotificationTokenInternal:(id)internal
{
  internalCopy = internal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(NSMutableDictionary *)selfCopy->_registrationsByToken count];
  [(NSMutableDictionary *)selfCopy->_registrationsByToken setObject:0 forKeyedSubscript:internalCopy];
  if (v5 && ![(NSMutableDictionary *)selfCopy->_registrationsByToken count])
  {
    [(NSMutableDictionary *)selfCopy->_knownAppsByPath removeAllObjects];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace removeObserver:selfCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)unregisterNotificationToken:(id)token observer:(id)observer
{
  observer = [token stringByAppendingFormat:@".%p", observer];
  [(DTApplicationWorkspaceObserver *)self _unregisterNotificationTokenInternal:observer];
}

- (void)applicationsDidInstall:(id)install
{
  v15 = *MEMORY[0x277D85DE8];
  installCopy = install;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        [(DTApplicationWorkspaceObserver *)self _notifyWithApplicationProxy:*(*(&v10 + 1) + 8 * v8++) addition:1];
      }

      while (v6 != v8);
      v6 = [installCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v15 = *MEMORY[0x277D85DE8];
  uninstallCopy = uninstall;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [uninstallCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        [(DTApplicationWorkspaceObserver *)self _notifyWithApplicationProxy:*(*(&v10 + 1) + 8 * v8++) addition:0];
      }

      while (v6 != v8);
      v6 = [uninstallCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end