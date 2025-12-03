@interface DABabysitter
+ (id)sharedBabysitter;
- (BOOL)accountShouldContinue:(id)continue;
- (BOOL)accountWithIDShouldContinue:(id)continue;
- (BOOL)registerAccount:(id)account forOperationWithName:(id)name;
- (DABabysitter)init;
- (id)_init;
- (id)_populatedStringDictionaryWithWaitersDictionary:(id)dictionary;
- (id)tokenByRegisteringAccount:(id)account forOperationWithName:(id)name;
- (void)_incrementRefreshCountForWaiterID:(id)d operationName:(id)name;
- (void)_l_decrementRefreshCountForWaiter:(id)waiter forOperationWithName:(id)name;
- (void)_l_decrementRefreshCountForWaiterID:(id)d operationName:(id)name;
- (void)_l_giveAccountWithIDAnotherChance:(id)chance;
- (void)_l_incrementRefreshCountForWaiterID:(id)d operationName:(id)name;
- (void)_l_reloadBabysitterWaitersWithRefreshingWaitersPrefs:(id)prefs failedWaitersPrefs:(id)waitersPrefs restrictedWaitersPrefs:(id)restrictedWaitersPrefs;
- (void)_reloadBabysitterProperties;
- (void)dealloc;
- (void)giveAccountWithIDAnotherChance:(id)chance;
- (void)statusReportWithCompletionBlock:(id)block;
- (void)unregisterAccount:(id)account forOperationWithName:(id)name;
@end

@implementation DABabysitter

+ (id)sharedBabysitter
{
  if (sharedBabysitter_onceToken != -1)
  {
    +[DABabysitter sharedBabysitter];
  }

  v3 = sharedBabysitter_sBabysitter;

  return v3;
}

uint64_t __32__DABabysitter_sharedBabysitter__block_invoke()
{
  sharedBabysitter_sBabysitter = [[DABabysitter alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (void)_l_reloadBabysitterWaitersWithRefreshingWaitersPrefs:(id)prefs failedWaitersPrefs:(id)waitersPrefs restrictedWaitersPrefs:(id)restrictedWaitersPrefs
{
  v155 = *MEMORY[0x277D85DE8];
  prefsCopy = prefs;
  waitersPrefsCopy = waitersPrefs;
  restrictedWaitersPrefsCopy = restrictedWaitersPrefs;
  v10 = objc_opt_new();
  l_refreshingWaiters = self->_l_refreshingWaiters;
  selfCopy = self;
  self->_l_refreshingWaiters = v10;

  v96 = waitersPrefsCopy;
  if (prefsCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      allKeys = [prefsCopy allKeys];
      v13 = [allKeys countByEnumeratingWithState:&v136 objects:v154 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v137;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v137 != v15)
            {
              objc_enumerationMutation(allKeys);
            }

            v17 = *(*(&v136 + 1) + 8 * i);
            v18 = [prefsCopy objectForKeyedSubscript:v17];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v18 mutableCopy];
              [(NSMutableDictionary *)selfCopy->_l_refreshingWaiters setObject:v19 forKeyedSubscript:v17];
            }
          }

          v14 = [allKeys countByEnumeratingWithState:&v136 objects:v154 count:16];
        }

        while (v14);
      }

      waitersPrefsCopy = v96;
    }
  }

  if (waitersPrefsCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = objc_opt_new();
    l_failedWaiters = selfCopy->_l_failedWaiters;
    selfCopy->_l_failedWaiters = v20;

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    allKeys2 = [waitersPrefsCopy allKeys];
    v23 = [allKeys2 countByEnumeratingWithState:&v132 objects:v153 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v133;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v133 != v25)
          {
            objc_enumerationMutation(allKeys2);
          }

          v27 = *(*(&v132 + 1) + 8 * j);
          v28 = [waitersPrefsCopy objectForKeyedSubscript:v27];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [v28 mutableCopy];
            [(NSMutableDictionary *)selfCopy->_l_failedWaiters setObject:v29 forKeyedSubscript:v27];
          }

          waitersPrefsCopy = v96;
        }

        v24 = [allKeys2 countByEnumeratingWithState:&v132 objects:v153 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v30 = objc_opt_new();
    allKeys2 = selfCopy->_l_failedWaiters;
    selfCopy->_l_failedWaiters = v30;
  }

  if (restrictedWaitersPrefsCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v31 = [restrictedWaitersPrefsCopy mutableCopy];
  }

  else
  {
    v31 = objc_opt_new();
  }

  v94 = prefsCopy;
  l_restrictedWaiters = selfCopy->_l_restrictedWaiters;
  selfCopy->_l_restrictedWaiters = v31;

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = [(NSMutableDictionary *)selfCopy->_l_refreshingWaiters allKeys];
  v102 = [obj countByEnumeratingWithState:&v128 objects:v152 count:16];
  if (v102)
  {
    v100 = *v129;
    v33 = *(MEMORY[0x277CF3AF0] + 3);
    do
    {
      v34 = 0;
      do
      {
        if (*v129 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v104 = v34;
        v35 = *(*(&v128 + 1) + 8 * v34);
        v36 = [(NSMutableDictionary *)selfCopy->_l_refreshingWaiters objectForKeyedSubscript:v35];
        *type = v35;
        dictionary = [(NSMutableDictionary *)selfCopy->_l_failedWaiters objectForKeyedSubscript:v35];
        if (!dictionary)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)selfCopy->_l_failedWaiters setObject:dictionary forKeyedSubscript:*type];
        }

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v38 = v36;
        v39 = [v38 countByEnumeratingWithState:&v124 objects:v151 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v125;
          do
          {
            for (k = 0; k != v40; ++k)
            {
              if (*v125 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v124 + 1) + 8 * k);
              v44 = [dictionary objectForKeyedSubscript:v43];
              v45 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v44, "intValue") + 1}];
              [dictionary setObject:v45 forKeyedSubscript:v43];
              v46 = DALoggingwithCategory();
              if (os_log_type_enabled(v46, v33))
              {
                intValue = [v45 intValue];
                *buf = 138543874;
                v146 = *type;
                v147 = 1024;
                v148 = intValue;
                v149 = 2114;
                v150 = v43;
                _os_log_impl(&dword_24244C000, v46, v33, "Babysitter: Noting that waiter %{public}@ failed %d times for operation %{public}@", buf, 0x1Cu);
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v124 objects:v151 count:16];
          }

          while (v40);
        }

        v34 = v104 + 1;
      }

      while (v104 + 1 != v102);
      v102 = [obj countByEnumeratingWithState:&v128 objects:v152 count:16];
    }

    while (v102);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  allKeys3 = [(NSMutableDictionary *)selfCopy->_l_failedWaiters allKeys];
  v48 = [allKeys3 countByEnumeratingWithState:&v120 objects:v144 count:16];
  v49 = 0x277CBE000uLL;
  if (v48)
  {
    v50 = v48;
    v51 = *v121;
    v97 = *v121;
    do
    {
      v52 = 0;
      obja = v50;
      do
      {
        if (*v121 != v51)
        {
          objc_enumerationMutation(allKeys3);
        }

        *typea = *(*(&v120 + 1) + 8 * v52);
        v53 = [(NSMutableDictionary *)selfCopy->_l_failedWaiters objectForKeyedSubscript:?];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v103 = v52;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          allKeys4 = [v53 allKeys];
          v55 = [allKeys4 countByEnumeratingWithState:&v116 objects:v143 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v117;
            v107 = v53;
            v105 = allKeys4;
            do
            {
              for (m = 0; m != v56; ++m)
              {
                if (*v117 != v57)
                {
                  objc_enumerationMutation(allKeys4);
                }

                v59 = *(*(&v116 + 1) + 8 * m);
                v60 = [v53 objectForKeyedSubscript:v59];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  intValue2 = [v60 intValue];
                  if (intValue2 >= 5)
                  {
                    v62 = intValue2;
                    v63 = [(NSMutableDictionary *)selfCopy->_l_restrictedWaiters objectForKeyedSubscript:*typea];

                    if (!v63)
                    {
                      [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.caldavsyncd.babysitter.timeout.%@", v59];
                      ADClientAddValueForScalarKey();
                      v64 = [*(v49 + 2728) dateWithTimeIntervalSinceNow:{fmin((3600 * v62 - 14400), 86400.0) + (arc4random() % 0x384)}];
                      if (([MEMORY[0x277CF3AC8] babysitterEnabled] & 1) == 0)
                      {
                        distantPast = [*(v49 + 2728) distantPast];

                        v64 = distantPast;
                      }

                      v66 = objc_alloc_init(MEMORY[0x277CCA968]);
                      [v66 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
                      v67 = [v66 stringFromDate:v64];
                      v141[0] = @"RestrictionTimeout";
                      v68 = MEMORY[0x277CCABB0];
                      [v64 timeIntervalSinceReferenceDate];
                      v69 = [v68 numberWithDouble:?];
                      v142[0] = v69;
                      v142[1] = v67;
                      v141[1] = @"RestrictionTimeoutDate";
                      v141[2] = @"NumFailures";
                      v70 = [MEMORY[0x277CCABB0] numberWithInt:v62];
                      v142[2] = v70;
                      v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:3];

                      [(NSMutableDictionary *)selfCopy->_l_restrictedWaiters setValue:v71 forKey:*typea];
                      v49 = 0x277CBE000;
                      v53 = v107;
                      allKeys4 = v105;
                    }
                  }
                }
              }

              v56 = [allKeys4 countByEnumeratingWithState:&v116 objects:v143 count:16];
            }

            while (v56);
          }

          v51 = v97;
          v50 = obja;
          v52 = v103;
        }

        ++v52;
      }

      while (v52 != v50);
      v50 = [allKeys3 countByEnumeratingWithState:&v120 objects:v144 count:16];
    }

    while (v50);
  }

  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v72 = selfCopy->_l_restrictedWaiters;
  v73 = [(NSMutableDictionary *)v72 countByEnumeratingWithState:&v112 objects:v140 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v113;
    typeb = *(MEMORY[0x277CF3AF0] + 3);
    v108 = v72;
    do
    {
      for (n = 0; n != v74; ++n)
      {
        if (*v113 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v112 + 1) + 8 * n);
        v78 = [(NSMutableDictionary *)selfCopy->_l_restrictedWaiters objectForKeyedSubscript:v77];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v79 = [v78 objectForKeyedSubscript:@"NumFailures"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = [v78 objectForKeyedSubscript:@"RestrictionTimeout"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v80 = 0;
            }

            babysitterEnabled = [MEMORY[0x277CF3AC8] babysitterEnabled];
            v82 = DALoggingwithCategory();
            v83 = os_log_type_enabled(v82, typeb);
            if (babysitterEnabled)
            {
              if (v83)
              {
                intValue3 = [v79 intValue];
                v85 = MEMORY[0x277CBEAA8];
                [v80 doubleValue];
                v86 = [v85 dateWithTimeIntervalSinceReferenceDate:?];
                *buf = 138543874;
                v146 = v77;
                v147 = 1024;
                v148 = intValue3;
                v149 = 2114;
                v150 = v86;
                _os_log_impl(&dword_24244C000, v82, typeb, "===================\n\n\n\nBabysitter: Account with ID %{public}@ had previously failed %d times and is from now restricted until it stops crashing. Please file a bug for any remindd crashes you find. (Timeout: %{public}@)\n\n\n===================\n", buf, 0x1Cu);

                v72 = v108;
              }

              -[DABabysitter _diagnosticReportWithWaiterID:failureCount:](selfCopy, "_diagnosticReportWithWaiterID:failureCount:", v77, [v79 intValue]);
            }

            else
            {
              if (v83)
              {
                intValue4 = [v79 intValue];
                v88 = MEMORY[0x277CBEAA8];
                [v80 doubleValue];
                v89 = [v88 dateWithTimeIntervalSinceReferenceDate:?];
                *buf = 138543874;
                v146 = v77;
                v147 = 1024;
                v148 = intValue4;
                v149 = 2114;
                v150 = v89;
                _os_log_impl(&dword_24244C000, v82, typeb, "===================\n\n\n\nBabysitter: Waiter with ID %{public}@ had crashed %d times. Since you have the babysitter disabled, we're going to assume you know what you're doing and not disable the waiter. Consider yourself warned. (Timeout: %{public}@)\n\n\n===================\n", buf, 0x1Cu);

                v72 = v108;
              }
            }
          }
        }
      }

      v74 = [(NSMutableDictionary *)v72 countByEnumeratingWithState:&v112 objects:v140 count:16];
    }

    while (v74);
  }

  [(NSMutableDictionary *)selfCopy->_l_refreshingWaiters removeAllObjects];
  if ([(NSMutableDictionary *)selfCopy->_l_restrictedWaiters count])
  {
    v90 = DALoggingwithCategory();
    v91 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v90, v91))
    {
      v92 = selfCopy->_l_restrictedWaiters;
      *buf = 138543362;
      v146 = v92;
      _os_log_impl(&dword_24244C000, v90, v91, "Babysitter: Restricted accounts are: %{public}@", buf, 0xCu);
    }
  }

  v93 = *MEMORY[0x277D85DE8];
}

- (void)_reloadBabysitterProperties
{
  CFPreferencesAppSynchronize(@"com.apple.remindd.babysitter");
  v3 = MGCopyAnswer();
  buildVersion = self->_buildVersion;
  self->_buildVersion = v3;

  v5 = CFPreferencesCopyAppValue(@"LastSystemVersion", @"com.apple.remindd.babysitter");
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![(NSString *)self->_buildVersion isEqualToString:v5])
    {
      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v6, v7))
      {
        *v14 = 0;
        _os_log_impl(&dword_24244C000, v6, v7, "Babysitter: The OS version is different. Giving all accounts a second chance at life.", v14, 2u);
      }

      CFPreferencesSetAppValue(@"LastSystemVersion", 0, @"com.apple.remindd.babysitter");
      CFPreferencesSetAppValue(@"RestrictedWaiters", 0, @"com.apple.remindd.babysitter");
      CFPreferencesSetAppValue(@"RefreshingWaiters", 0, @"com.apple.remindd.babysitter");
      CFPreferencesSetAppValue(@"FailedWaiters", 0, @"com.apple.remindd.babysitter");
      CFPreferencesAppSynchronize(@"com.apple.remindd.babysitter");
    }
  }

  v8 = CFPreferencesCopyAppValue(@"RefreshingWaiters", @"com.apple.remindd.babysitter");
  v9 = CFPreferencesCopyAppValue(@"FailedWaiters", @"com.apple.remindd.babysitter");
  v10 = CFPreferencesCopyAppValue(@"RestrictedWaiters", @"com.apple.remindd.babysitter");
  os_unfair_lock_lock(&self->_lock);
  [(DABabysitter *)self _l_reloadBabysitterWaitersWithRefreshingWaitersPrefs:v8 failedWaitersPrefs:v9 restrictedWaitersPrefs:v10];
  v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_l_refreshingWaiters copyItems:1];
  v12 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_l_failedWaiters copyItems:1];
  v13 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_l_restrictedWaiters copyItems:1];
  os_unfair_lock_unlock(&self->_lock);
  CFPreferencesSetAppValue(@"LastSystemVersion", self->_buildVersion, @"com.apple.remindd.babysitter");
  CFPreferencesSetAppValue(@"RefreshingWaiters", v11, @"com.apple.remindd.babysitter");
  CFPreferencesSetAppValue(@"FailedWaiters", v12, @"com.apple.remindd.babysitter");
  CFPreferencesSetAppValue(@"RestrictedWaiters", v13, @"com.apple.remindd.babysitter");
  CFPreferencesAppSynchronize(@"com.apple.remindd.babysitter");
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = DABabysitter;
  v2 = [(DABabysitter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    [(DABabysitter *)v2 _reloadBabysitterProperties];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _reloadBabysitterProperties, @"DataAccessBabysitterPrefsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v3;
}

- (DABabysitter)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DABabysitter.m" lineNumber:242 description:{@"Use the shared babysitter, jerk."}];

  return 0;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"DataAccessBabysitterPrefsChanged", 0);
  v4.receiver = self;
  v4.super_class = DABabysitter;
  [(DABabysitter *)&v4 dealloc];
}

- (void)_l_incrementRefreshCountForWaiterID:(id)d operationName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  dictionary = [(NSMutableDictionary *)self->_l_refreshingWaiters objectForKeyedSubscript:dCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(NSMutableDictionary *)self->_l_refreshingWaiters setObject:dictionary forKeyedSubscript:dCopy];
  }

  v9 = [dictionary objectForKeyedSubscript:nameCopy];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "intValue") + 1}];
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v11, v12))
  {
    v14 = 138412802;
    v15 = dCopy;
    v16 = 2112;
    v17 = nameCopy;
    v18 = 1024;
    intValue = [v10 intValue];
    _os_log_impl(&dword_24244C000, v11, v12, "Babysitter: Marking waiter %@ as performing operation %@ (attempt #%d)", &v14, 0x1Cu);
  }

  [dictionary setObject:v10 forKeyedSubscript:nameCopy];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_incrementRefreshCountForWaiterID:(id)d operationName:(id)name
{
  if (d)
  {
    nameCopy = name;
    dCopy = d;
    os_unfair_lock_lock(&self->_lock);
    [(DABabysitter *)self _l_incrementRefreshCountForWaiterID:dCopy operationName:nameCopy];

    value = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_l_refreshingWaiters copyItems:1];
    os_unfair_lock_unlock(&self->_lock);
    CFPreferencesSetAppValue(@"RefreshingWaiters", value, @"com.apple.remindd.babysitter");
    CFPreferencesAppSynchronize(@"com.apple.remindd.babysitter");
  }
}

- (void)_l_decrementRefreshCountForWaiter:(id)waiter forOperationWithName:(id)name
{
  waiterCopy = waiter;
  nameCopy = name;
  v7 = [(NSMutableDictionary *)self->_l_refreshingWaiters objectForKeyedSubscript:waiterCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:nameCopy];
    if ([v9 intValue] < 2)
    {
      [v8 removeObjectForKey:nameCopy];
      v10 = [(NSMutableDictionary *)self->_l_failedWaiters objectForKeyedSubscript:waiterCopy];
      v11 = [v10 objectForKeyedSubscript:nameCopy];
      if ([v11 intValue] < 2)
      {
        [v10 removeObjectForKey:nameCopy];
      }

      else
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "intValue") - 1}];
        [v10 setObject:v12 forKeyedSubscript:nameCopy];
      }
    }

    else
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "intValue") - 1}];
      [v8 setObject:v10 forKeyedSubscript:nameCopy];
    }
  }
}

- (void)_l_decrementRefreshCountForWaiterID:(id)d operationName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  if (dCopy)
  {
    v8 = [(NSMutableDictionary *)self->_l_refreshingWaiters objectForKeyedSubscript:dCopy];
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277CF3AF0] + 7);
    v11 = os_log_type_enabled(v9, v10);
    if (nameCopy)
    {
      if (v11)
      {
        *buf = 138412546;
        v25 = nameCopy;
        v26 = 2112;
        v27 = dCopy;
        _os_log_impl(&dword_24244C000, v9, v10, "Babysitter: Decrementing refresh count for operation %@ on account %@", buf, 0x16u);
      }

      [(DABabysitter *)self _l_decrementRefreshCountForWaiter:dCopy forOperationWithName:nameCopy];
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v25 = dCopy;
        _os_log_impl(&dword_24244C000, v9, v10, "Babysitter: Decrementing refresh count for all operations on account %@", buf, 0xCu);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      allKeys = [v8 allKeys];
      v13 = [allKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(allKeys);
            }

            [(DABabysitter *)self _l_decrementRefreshCountForWaiter:dCopy forOperationWithName:*(*(&v20 + 1) + 8 * i)];
          }

          v14 = [allKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v14);
      }
    }

    if (![v8 count])
    {
      [(NSMutableDictionary *)self->_l_refreshingWaiters removeObjectForKey:dCopy];
    }

    v17 = [(NSMutableDictionary *)self->_l_failedWaiters objectForKeyedSubscript:dCopy];
    v18 = [v17 count];

    if (!v18)
    {
      [(NSMutableDictionary *)self->_l_failedWaiters removeObjectForKey:dCopy];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerAccount:(id)account forOperationWithName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  v8 = [(DABabysitter *)self accountShouldContinue:accountCopy];
  if (v8)
  {
    waiterID = [accountCopy waiterID];
    [(DABabysitter *)self _incrementRefreshCountForWaiterID:waiterID operationName:nameCopy];
  }

  return v8;
}

- (id)tokenByRegisteringAccount:(id)account forOperationWithName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  if ([(DABabysitter *)self registerAccount:accountCopy forOperationWithName:nameCopy])
  {
    v8 = [DABabysitterRegistrationToken alloc];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__DABabysitter_tokenByRegisteringAccount_forOperationWithName___block_invoke;
    v11[3] = &unk_278D4C390;
    v11[4] = self;
    v12 = accountCopy;
    v13 = nameCopy;
    v9 = [(DABabysitterRegistrationToken *)v8 initWithBlock:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)unregisterAccount:(id)account forOperationWithName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  if ([(DABabysitter *)self accountShouldContinue:accountCopy])
  {
    os_unfair_lock_lock(&self->_lock);
    waiterID = [accountCopy waiterID];
    [(DABabysitter *)self _l_decrementRefreshCountForWaiterID:waiterID operationName:nameCopy];

    v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_l_refreshingWaiters copyItems:1];
    v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_l_failedWaiters copyItems:1];
    os_unfair_lock_unlock(&self->_lock);
    CFPreferencesSetAppValue(@"RefreshingWaiters", v8, @"com.apple.remindd.babysitter");
    CFPreferencesSetAppValue(@"FailedWaiters", v9, @"com.apple.remindd.babysitter");
    CFPreferencesAppSynchronize(@"com.apple.remindd.babysitter");
  }
}

- (BOOL)accountWithIDShouldContinue:(id)continue
{
  v21 = *MEMORY[0x277D85DE8];
  continueCopy = continue;
  if (continueCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_l_restrictedWaiters objectForKeyedSubscript:continueCopy];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"RestrictionTimeout"];
      [v7 doubleValue];
      v9 = v8;

      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:v10];
      v13 = v12;

      v14 = v13 >= 0.0;
      if (v13 >= 0.0)
      {
        v15 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v15, v16))
        {
          v19 = 138543362;
          v20 = continueCopy;
          _os_log_impl(&dword_24244C000, v15, v16, "Babysitter: It's been long enough, we're going to give account %{public}@ another try. Let's hope it doesn't crash this time.", &v19, 0xCu);
        }

        [(NSMutableDictionary *)self->_l_refreshingWaiters removeObjectForKey:continueCopy];
        [(NSMutableDictionary *)self->_l_restrictedWaiters removeObjectForKey:continueCopy];
        CFPreferencesSetAppValue(@"RefreshingWaiters", self->_l_refreshingWaiters, @"com.apple.remindd.babysitter");
        CFPreferencesSetAppValue(@"RestrictedWaiters", self->_l_restrictedWaiters, @"com.apple.remindd.babysitter");
        CFPreferencesAppSynchronize(@"com.apple.remindd.babysitter");
      }
    }

    else
    {
      v14 = 1;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v14 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)accountShouldContinue:(id)continue
{
  continueCopy = continue;
  if ([MEMORY[0x277CF3AC8] babysitterEnabled])
  {
    waiterID = [continueCopy waiterID];
    v6 = [(DABabysitter *)self accountWithIDShouldContinue:waiterID];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_l_giveAccountWithIDAnotherChance:(id)chance
{
  chanceCopy = chance;
  if ([MEMORY[0x277CF3AC8] babysitterEnabled])
  {
    [(NSMutableDictionary *)self->_l_refreshingWaiters removeObjectForKey:chanceCopy];
    [(NSMutableDictionary *)self->_l_restrictedWaiters removeObjectForKey:chanceCopy];
    CFPreferencesSetAppValue(@"RefreshingWaiters", self->_l_refreshingWaiters, @"com.apple.remindd.babysitter");
    [(NSMutableDictionary *)self->_l_failedWaiters removeObjectForKey:chanceCopy];
    CFPreferencesSetAppValue(@"FailedWaiters", self->_l_failedWaiters, @"com.apple.remindd.babysitter");
    CFPreferencesSetAppValue(@"RestrictedWaiters", self->_l_restrictedWaiters, @"com.apple.remindd.babysitter");
    CFPreferencesAppSynchronize(@"com.apple.remindd.babysitter");
  }
}

- (void)giveAccountWithIDAnotherChance:(id)chance
{
  chanceCopy = chance;
  os_unfair_lock_lock(&self->_lock);
  [(DABabysitter *)self _l_giveAccountWithIDAnotherChance:chanceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

void __59__DABabysitter__diagnosticReportWithWaiterID_failureCount___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_24244C000, v3, v4, "AutoBugCapture did reply {response: %@}", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)statusReportWithCompletionBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(DABabysitter *)self _populatedStringDictionaryWithWaitersDictionary:self->_l_refreshingWaiters];
  v6 = [(DABabysitter *)self _populatedStringDictionaryWithWaitersDictionary:self->_l_failedWaiters];
  v7 = [(DABabysitter *)self _populatedStringDictionaryWithWaitersDictionary:self->_l_restrictedWaiters];
  [dictionary setValue:v5 forKey:@"refreshingWaiters"];
  [dictionary setValue:v6 forKey:@"failedWaiters"];
  [dictionary setValue:v7 forKey:@"restrictedWaiters"];
  os_unfair_lock_unlock(&self->_lock);
  blockCopy[2](blockCopy, dictionary);
}

- (id)_populatedStringDictionaryWithWaitersDictionary:(id)dictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = MEMORY[0x277CCAAA0];
        v11 = [dictionaryCopy objectForKeyedSubscript:v9];
        v19 = 0;
        v12 = [v10 dataWithJSONObject:v11 options:8 error:&v19];
        v13 = v19;

        if (v12)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
          if (v15)
          {
            [dictionary setValue:v15 forKey:v9];
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

@end