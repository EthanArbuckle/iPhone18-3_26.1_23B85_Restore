@interface CHProtectedAppProvider
- (CHProtectedAppProvider)init;
- (CHProtectedAppProviderDelegate)delegate;
- (id)firstPartyProviderBundleIDs;
- (id)protectedApplicationBundleIDs;
- (id)systemProviderBundleIDs;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
@end

@implementation CHProtectedAppProvider

- (CHProtectedAppProvider)init
{
  v8.receiver = self;
  v8.super_class = CHProtectedAppProvider;
  v2 = [(CHProtectedAppProvider *)&v8 init];
  if (v2)
  {
    v3 = +[CHProcessHandle processHandle];
    currentProcessHandle = v2->_currentProcessHandle;
    v2->_currentProcessHandle = v3;

    subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
    v6 = [subjectMonitorRegistry addMonitor:v2 subjectMask:1];
  }

  return v2;
}

- (id)protectedApplicationBundleIDs
{
  v60 = *MEMORY[0x1E69E9840];
  currentProcessHandle = [(CHProtectedAppProvider *)self currentProcessHandle];
  bundleIdentifier = [currentProcessHandle bundleIdentifier];

  v5 = [MEMORY[0x1E695DFA8] set];
  hiddenApplications = [MEMORY[0x1E698B0D0] hiddenApplications];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v7 = [hiddenApplications countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(hiddenApplications);
        }

        bundleIdentifier2 = [*(*(&v46 + 1) + 8 * i) bundleIdentifier];
        [v5 addObject:bundleIdentifier2];
      }

      v8 = [hiddenApplications countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v8);
  }

  lockedApplications = [MEMORY[0x1E698B0D0] lockedApplications];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v13 = [lockedApplications countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v43;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(lockedApplications);
        }

        bundleIdentifier3 = [*(*(&v42 + 1) + 8 * j) bundleIdentifier];
        [v5 addObject:bundleIdentifier3];
      }

      v14 = [lockedApplications countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v14);
  }

  logHandle = [(CHSynchronizedLoggable *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v53 = bundleIdentifier;
    v54 = 2114;
    v55 = hiddenApplications;
    v56 = 2114;
    v57 = lockedApplications;
    _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "CH protectedBundleID requestorBundleID %{public}@ hiddenApplications %{public}@ lockedApplications %{public}@", buf, 0x20u);
  }

  if (bundleIdentifier)
  {
    systemProviderBundleIDs = [(CHProtectedAppProvider *)self systemProviderBundleIDs];
    v20 = [systemProviderBundleIDs containsObject:bundleIdentifier];

    if (v20)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      firstPartyProviderBundleIDs = [(CHProtectedAppProvider *)self firstPartyProviderBundleIDs];
      v22 = [firstPartyProviderBundleIDs countByEnumeratingWithState:&v38 objects:v51 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v39;
        do
        {
          for (k = 0; k != v23; ++k)
          {
            if (*v39 != v24)
            {
              objc_enumerationMutation(firstPartyProviderBundleIDs);
            }

            [v5 removeObject:*(*(&v38 + 1) + 8 * k)];
          }

          v23 = [firstPartyProviderBundleIDs countByEnumeratingWithState:&v38 objects:v51 count:16];
        }

        while (v23);
      }
    }

    else
    {
      [v5 removeObject:bundleIdentifier];
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  allowedProtectedAppBundleIDs = [(CHProtectedAppProvider *)self allowedProtectedAppBundleIDs];
  v27 = [allowedProtectedAppBundleIDs countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(allowedProtectedAppBundleIDs);
        }

        [v5 removeObject:*(*(&v34 + 1) + 8 * m)];
      }

      v28 = [allowedProtectedAppBundleIDs countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v28);
  }

  v31 = [v5 copy];
  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)systemProviderBundleIDs
{
  v2 = [MEMORY[0x1E695DFA8] set];
  [v2 addObject:@"com.apple.TelephonyUtilities"];
  v3 = [v2 copy];

  return v3;
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v4 = [(CHProtectedAppProvider *)self delegate:changed];
  [v4 protectedAppsChanged];
}

- (id)firstPartyProviderBundleIDs
{
  v2 = [MEMORY[0x1E695DFA8] set];
  [v2 addObject:@"com.apple.mobilephone"];
  [v2 addObject:@"com.apple.facetime"];
  v3 = [v2 copy];

  return v3;
}

- (CHProtectedAppProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end