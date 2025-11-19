@interface DTApplicationWorkspaceObserver
+ (id)sharedInstance;
- (DTApplicationWorkspaceObserver)init;
- (id)registerNotificationToken:(id)a3 observer:(id)a4 query:(id)a5;
- (void)_notifyWithDictionaryRepresentation:(id)a3 addition:(BOOL)a4;
- (void)_unregisterNotificationTokenInternal:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)unregisterNotificationToken:(id)a3 observer:(id)a4;
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

- (void)_notifyWithDictionaryRepresentation:(id)a3 addition:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [v6 objectForKeyedSubscript:@"CFBundleIdentifier"];
  if ([v8 length])
  {
    v9 = [v6 objectForKeyedSubscript:@"Type"];
    v10 = [MEMORY[0x277CCAC38] isAppleInternal];
    if (v10 & 1 | (([v9 isEqualToString:@"System"] & 1) == 0))
    {
      if (![v9 isEqualToString:@"Internal"])
      {
LABEL_9:
        v14 = [(NSMutableDictionary *)v7->_knownAppsByPath objectForKeyedSubscript:v8];
        v15 = v14;
        if (v14)
        {
          registrationsByToken = v7->_registrationsByToken;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = sub_247F6D420;
          v20[3] = &unk_278EF1190;
          v21 = v14;
          [(NSMutableDictionary *)registrationsByToken enumerateKeysAndObjectsUsingBlock:v20];
          [(NSMutableDictionary *)v7->_knownAppsByPath removeObjectForKey:v8];
        }

        if (v4)
        {
          [(NSMutableDictionary *)v7->_knownAppsByPath setObject:v6 forKeyedSubscript:v8];
          v17 = v7->_registrationsByToken;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = sub_247F6D438;
          v18[3] = &unk_278EF1190;
          v19 = v6;
          [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v18];
        }

        goto LABEL_14;
      }

      if (v10)
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

  objc_sync_exit(v7);
}

- (id)registerNotificationToken:(id)a3 observer:(id)a4 query:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = a3;
  val = a4;
  v44 = a5;
  v42 = v9;
  if (val)
  {
    v41 = [v9 length];
    v10 = self;
    objc_sync_enter(v10);
    obj = v10;
    if (![(NSMutableDictionary *)v10->_registrationsByToken count])
    {
      v40 = [MEMORY[0x277CC1E80] defaultWorkspace];
      if (v41)
      {
        [v40 addObserver:v10];
      }

      v45 = [MEMORY[0x277CBEB58] set];
      v11 = [v44 objectForKeyedSubscript:@"Type"];
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
              v5 = [v17 applicationState];
              v18 = [v5 isRestricted];

              if ((v18 & 1) == 0)
              {
                v5 = [v17 bundleIdentifier];
                [v45 addObject:v5];
              }

              v19 = sub_247F6CCA0(v17, 0);
              [(DTApplicationWorkspaceObserver *)v10 _notifyWithDictionaryRepresentation:v19 addition:1];
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
            v26 = [v24 containingBundleRecord];
            v27 = [v26 bundleIdentifier];

            if (!v27)
            {
              v28 = 1;
LABEL_25:
              v29 = [MEMORY[0x277CCAC38] isAppleInternal];
              if (!v27)
              {
                goto LABEL_27;
              }

              goto LABEL_26;
            }

            v28 = [v45 containsObject:v27];
            v5 = [v24 bundleIdentifier];
            if ([v5 hasPrefix:@"com.apple."])
            {
              goto LABEL_25;
            }

            v29 = 1;
LABEL_26:

LABEL_27:
            v30 = [MEMORY[0x277CCABB0] numberWithInt:v29 & v28 ^ 1u];
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
      v51 = v44;
      objc_copyWeak(&v52, &location);
      v32 = _Block_copy(aBlock);
      [(NSMutableDictionary *)obj->_registrationsByToken setObject:v32 forKeyedSubscript:v31];

      objc_destroyWeak(&v52);
      objc_destroyWeak(&location);
    }

    v33 = [MEMORY[0x277CBEB18] array];
    knownAppsByPath = obj->_knownAppsByPath;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_247F6DB90;
    v47[3] = &unk_278EF11E0;
    v48 = v44;
    v35 = v33;
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

- (void)_unregisterNotificationTokenInternal:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)v4->_registrationsByToken count];
  [(NSMutableDictionary *)v4->_registrationsByToken setObject:0 forKeyedSubscript:v7];
  if (v5 && ![(NSMutableDictionary *)v4->_registrationsByToken count])
  {
    [(NSMutableDictionary *)v4->_knownAppsByPath removeAllObjects];
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v6 removeObserver:v4];
  }

  objc_sync_exit(v4);
}

- (void)unregisterNotificationToken:(id)a3 observer:(id)a4
{
  v5 = [a3 stringByAppendingFormat:@".%p", a4];
  [(DTApplicationWorkspaceObserver *)self _unregisterNotificationTokenInternal:v5];
}

- (void)applicationsDidInstall:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(DTApplicationWorkspaceObserver *)self _notifyWithApplicationProxy:*(*(&v10 + 1) + 8 * v8++) addition:1];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)applicationsDidUninstall:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [(DTApplicationWorkspaceObserver *)self _notifyWithApplicationProxy:*(*(&v10 + 1) + 8 * v8++) addition:0];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end