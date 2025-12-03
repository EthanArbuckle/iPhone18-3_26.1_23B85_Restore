@interface DABabysitter
+ (DABabysitter)sharedBabysitter;
- (BOOL)accountShouldContinue:(id)continue;
- (BOOL)accountWithIDShouldContinue:(id)continue;
- (BOOL)registerAccount:(id)account forOperationWithName:(id)name;
- (DABabysitter)init;
- (id)_init;
- (void)_decrementRefreshCountForWaiter:(id)waiter forOperationWithName:(id)name;
- (void)_decrementRefreshCountForWaiterID:(id)d operationName:(id)name;
- (void)_incrementRefreshCountForWaiterID:(id)d operationName:(id)name;
- (void)_reloadBabysitterProperties;
- (void)giveAccountWithIDAnotherChance:(id)chance;
- (void)unregisterAccount:(id)account forOperationWithName:(id)name;
@end

@implementation DABabysitter

+ (DABabysitter)sharedBabysitter
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

- (void)_reloadBabysitterProperties
{
  v152 = *MEMORY[0x277D85DE8];
  if (DAIsRunningInDataAccessD())
  {
    CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
    v3 = MGCopyAnswer();
    buildVersion = self->_buildVersion;
    self->_buildVersion = v3;

    v5 = CFPreferencesCopyAppValue(@"LastSystemVersion", @"com.apple.dataaccess.babysitter");
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![(NSString *)self->_buildVersion isEqualToString:v5])
      {
        v6 = DALoggingwithCategory();
        v7 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v6, v7))
        {
          *buf = 0;
          _os_log_impl(&dword_24844D000, v6, v7, "Babysitter: The OS version is different. Giving all accounts a second chance at life.", buf, 2u);
        }

        CFPreferencesSetAppValue(@"LastSystemVersion", 0, @"com.apple.dataaccess.babysitter");
        CFPreferencesSetAppValue(@"RestrictedWaiters", 0, @"com.apple.dataaccess.babysitter");
        CFPreferencesSetAppValue(@"RefreshingWaiters", 0, @"com.apple.dataaccess.babysitter");
        CFPreferencesSetAppValue(@"FailedWaiters", 0, @"com.apple.dataaccess.babysitter");
        CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
      }
    }

    v8 = objc_opt_new();
    refreshingWaiters = self->_refreshingWaiters;
    self->_refreshingWaiters = v8;

    selfCopy = self;
    v96 = CFPreferencesCopyAppValue(@"RefreshingWaiters", @"com.apple.dataaccess.babysitter");
    if (v96)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        allKeys = [v96 allKeys];
        v11 = [allKeys countByEnumeratingWithState:&v133 objects:v151 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v134;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v134 != v13)
              {
                objc_enumerationMutation(allKeys);
              }

              v15 = *(*(&v133 + 1) + 8 * i);
              v16 = [v96 objectForKeyedSubscript:v15];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = [v16 mutableCopy];
                [(NSMutableDictionary *)selfCopy->_refreshingWaiters setObject:v17 forKeyedSubscript:v15];
              }
            }

            v12 = [allKeys countByEnumeratingWithState:&v133 objects:v151 count:16];
          }

          while (v12);
        }

        self = selfCopy;
      }
    }

    v18 = CFPreferencesCopyAppValue(@"FailedWaiters", @"com.apple.dataaccess.babysitter");
    v95 = v18;
    if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v20 = objc_opt_new();
      failedWaiters = self->_failedWaiters;
      self->_failedWaiters = v20;

      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      allKeys2 = [v19 allKeys];
      v23 = [allKeys2 countByEnumeratingWithState:&v129 objects:v150 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v130;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v130 != v25)
            {
              objc_enumerationMutation(allKeys2);
            }

            v27 = *(*(&v129 + 1) + 8 * j);
            v28 = [v19 objectForKeyedSubscript:v27];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [v28 mutableCopy];
              [(NSMutableDictionary *)selfCopy->_failedWaiters setObject:v29 forKeyedSubscript:v27];

              v19 = v95;
            }
          }

          v24 = [allKeys2 countByEnumeratingWithState:&v129 objects:v150 count:16];
        }

        while (v24);
        self = selfCopy;
      }
    }

    else
    {
      v30 = objc_opt_new();
      allKeys2 = self->_failedWaiters;
      self->_failedWaiters = v30;
    }

    v31 = CFPreferencesCopyAppValue(@"RestrictedWaiters", @"com.apple.dataaccess.babysitter");
    v93 = v31;
    if (v31 && (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v33 = [v32 mutableCopy];
    }

    else
    {
      v33 = objc_opt_new();
    }

    v94 = v5;
    restrictedWaiters = self->_restrictedWaiters;
    self->_restrictedWaiters = v33;

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    obj = [(NSMutableDictionary *)self->_refreshingWaiters allKeys];
    v100 = [obj countByEnumeratingWithState:&v125 objects:v149 count:16];
    if (v100)
    {
      v98 = *v126;
      v35 = *(MEMORY[0x277D03988] + 6);
      do
      {
        v36 = 0;
        do
        {
          if (*v126 != v98)
          {
            objc_enumerationMutation(obj);
          }

          v102 = v36;
          v37 = *(*(&v125 + 1) + 8 * v36);
          v38 = [(NSMutableDictionary *)selfCopy->_refreshingWaiters objectForKeyedSubscript:v37];
          *type = v37;
          dictionary = [(NSMutableDictionary *)selfCopy->_failedWaiters objectForKeyedSubscript:v37];
          if (!dictionary)
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            [(NSMutableDictionary *)selfCopy->_failedWaiters setObject:dictionary forKeyedSubscript:v37];
          }

          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v40 = v38;
          v41 = [v40 countByEnumeratingWithState:&v121 objects:v148 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v122;
            do
            {
              for (k = 0; k != v42; ++k)
              {
                if (*v122 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                v45 = *(*(&v121 + 1) + 8 * k);
                v46 = [dictionary objectForKeyedSubscript:v45];
                v47 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v46, "intValue") + 1}];
                [dictionary setObject:v47 forKeyedSubscript:v45];
                v48 = DALoggingwithCategory();
                if (os_log_type_enabled(v48, v35))
                {
                  intValue = [v46 intValue];
                  *buf = 138412802;
                  *v145 = *type;
                  *&v145[8] = 1024;
                  *&v145[10] = intValue;
                  v146 = 2112;
                  v147 = v45;
                  _os_log_impl(&dword_24844D000, v48, v35, "Babysitter: Noting that waiter %@ failed %d times for operation %@", buf, 0x1Cu);
                }
              }

              v42 = [v40 countByEnumeratingWithState:&v121 objects:v148 count:16];
            }

            while (v42);
          }

          v36 = v102 + 1;
        }

        while (v102 + 1 != v100);
        v100 = [obj countByEnumeratingWithState:&v125 objects:v149 count:16];
      }

      while (v100);
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v50 = selfCopy;
    allKeys3 = [(NSMutableDictionary *)selfCopy->_failedWaiters allKeys];
    v51 = [allKeys3 countByEnumeratingWithState:&v117 objects:v143 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v118;
      v99 = *v118;
      do
      {
        v54 = 0;
        v101 = v52;
        do
        {
          if (*v118 != v53)
          {
            objc_enumerationMutation(allKeys3);
          }

          *typea = *(*(&v117 + 1) + 8 * v54);
          v55 = [(NSMutableDictionary *)v50->_failedWaiters objectForKeyedSubscript:?];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v105 = v54;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            allKeys4 = [v55 allKeys];
            v57 = [allKeys4 countByEnumeratingWithState:&v113 objects:v142 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = *v114;
              do
              {
                for (m = 0; m != v58; ++m)
                {
                  if (*v114 != v59)
                  {
                    objc_enumerationMutation(allKeys4);
                  }

                  v61 = *(*(&v113 + 1) + 8 * m);
                  v62 = [v55 objectForKeyedSubscript:v61];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    intValue2 = [v62 intValue];
                    if (intValue2 >= 3)
                    {
                      v64 = intValue2;
                      v65 = [(NSMutableDictionary *)v50->_restrictedWaiters objectForKeyedSubscript:*typea];

                      if (!v65)
                      {
                        v140 = @"failedOp";
                        v141 = v61;
                        v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
                        AnalyticsSendEvent();

                        v67 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(arc4random() % 0x384 + 3598 * v64)];
                        if (([MEMORY[0x277D03910] babysitterEnabled] & 1) == 0)
                        {
                          distantPast = [MEMORY[0x277CBEAA8] distantPast];

                          v67 = distantPast;
                        }

                        v138[0] = @"RestrictionTimeout";
                        v69 = MEMORY[0x277CCABB0];
                        [v67 timeIntervalSinceReferenceDate];
                        v70 = [v69 numberWithDouble:?];
                        v139[0] = v70;
                        v138[1] = @"NumFailures";
                        v71 = [MEMORY[0x277CCABB0] numberWithInt:v64];
                        v139[1] = v71;
                        v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:2];

                        [(NSMutableDictionary *)selfCopy->_restrictedWaiters setValue:v72 forKey:*typea];
                        v50 = selfCopy;
                      }
                    }
                  }
                }

                v58 = [allKeys4 countByEnumeratingWithState:&v113 objects:v142 count:16];
              }

              while (v58);
            }

            v53 = v99;
            v52 = v101;
            v54 = v105;
          }

          ++v54;
        }

        while (v54 != v52);
        v52 = [allKeys3 countByEnumeratingWithState:&v117 objects:v143 count:16];
      }

      while (v52);
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v73 = v50->_restrictedWaiters;
    v74 = [(NSMutableDictionary *)v73 countByEnumeratingWithState:&v109 objects:v137 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v110;
      typeb = *(MEMORY[0x277D03988] + 3);
      do
      {
        for (n = 0; n != v75; ++n)
        {
          if (*v110 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = *(*(&v109 + 1) + 8 * n);
          v79 = [(NSMutableDictionary *)selfCopy->_restrictedWaiters objectForKeyedSubscript:v78];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = [v79 objectForKeyedSubscript:@"NumFailures"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              babysitterEnabled = [MEMORY[0x277D03910] babysitterEnabled];
              v82 = DALoggingwithCategory();
              v83 = os_log_type_enabled(v82, typeb);
              if (babysitterEnabled)
              {
                if (v83)
                {
                  intValue3 = [v80 intValue];
                  *buf = 67109378;
                  *v145 = intValue3;
                  *&v145[4] = 2112;
                  *&v145[6] = v78;
                  v85 = v82;
                  v86 = typeb;
                  v87 = "===================\n\n\n\nBabysitter: You're once, twice, %d times a failure. Disabling account with ID %@ until it stops crashing. Please file a bug for any dataaccessd crashes you find.\n\n\n===================\n";
                  goto LABEL_89;
                }
              }

              else if (v83)
              {
                intValue4 = [v80 intValue];
                *buf = 138412546;
                *v145 = v78;
                *&v145[8] = 1024;
                *&v145[10] = intValue4;
                v85 = v82;
                v86 = typeb;
                v87 = "===================\n\n\n\nBabysitter: Waiter %@ has crashed %d times now. Since you have the babysitter disabled, we're going to assume you know what you're doing and not disable the waiter. Consider yourself warned.\n\n\n===================\n";
LABEL_89:
                _os_log_impl(&dword_24844D000, v85, v86, v87, buf, 0x12u);
              }
            }
          }
        }

        v75 = [(NSMutableDictionary *)v73 countByEnumeratingWithState:&v109 objects:v137 count:16];
      }

      while (v75);
    }

    [(NSMutableDictionary *)selfCopy->_refreshingWaiters removeAllObjects];
    if ([(NSMutableDictionary *)selfCopy->_restrictedWaiters count])
    {
      v89 = DALoggingwithCategory();
      v90 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v89, v90))
      {
        v91 = selfCopy->_restrictedWaiters;
        *buf = 138412290;
        *v145 = v91;
        _os_log_impl(&dword_24844D000, v89, v90, "Restricted accounts are: %@", buf, 0xCu);
      }
    }

    CFPreferencesSetAppValue(@"LastSystemVersion", selfCopy->_buildVersion, @"com.apple.dataaccess.babysitter");
    CFPreferencesSetAppValue(@"RefreshingWaiters", selfCopy->_refreshingWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesSetAppValue(@"FailedWaiters", selfCopy->_failedWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesSetAppValue(@"RestrictedWaiters", selfCopy->_restrictedWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
  }

  v92 = *MEMORY[0x277D85DE8];
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = DABabysitter;
  v2 = [(DABabysitter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DABabysitter *)v2 _reloadBabysitterProperties];
    [MEMORY[0x277CF77C0] addObserver:v3 selector:sel__reloadBabysitterProperties name:@"DataAccessBabysitterPrefsChanged"];
  }

  return v3;
}

- (DABabysitter)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DABabysitter.m" lineNumber:187 description:{@"Use the shared babysitter, jerk."}];

  return 0;
}

- (void)_incrementRefreshCountForWaiterID:(id)d operationName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  if (dCopy)
  {
    dictionary = [(NSMutableDictionary *)self->_refreshingWaiters objectForKeyedSubscript:dCopy];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_refreshingWaiters setObject:dictionary forKeyedSubscript:dCopy];
    }

    v9 = [dictionary objectForKeyedSubscript:nameCopy];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "intValue") + 1}];
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v11, v12))
    {
      v14 = 138412802;
      v15 = dCopy;
      v16 = 2112;
      v17 = nameCopy;
      v18 = 1024;
      intValue = [v10 intValue];
      _os_log_impl(&dword_24844D000, v11, v12, "Babysitter: Marking waiter %@ as performing operation %@ (attempt #%d)", &v14, 0x1Cu);
    }

    [dictionary setObject:v10 forKeyedSubscript:nameCopy];
    CFPreferencesSetAppValue(@"RefreshingWaiters", self->_refreshingWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_decrementRefreshCountForWaiter:(id)waiter forOperationWithName:(id)name
{
  waiterCopy = waiter;
  nameCopy = name;
  v7 = [(NSMutableDictionary *)self->_refreshingWaiters objectForKeyedSubscript:waiterCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:nameCopy];
    if ([v9 intValue] < 2)
    {
      [v8 removeObjectForKey:nameCopy];
      v10 = [(NSMutableDictionary *)self->_failedWaiters objectForKeyedSubscript:waiterCopy];
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

- (void)_decrementRefreshCountForWaiterID:(id)d operationName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  if (dCopy)
  {
    v8 = [(NSMutableDictionary *)self->_refreshingWaiters objectForKeyedSubscript:dCopy];
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 7);
    v11 = os_log_type_enabled(v9, v10);
    if (nameCopy)
    {
      if (v11)
      {
        *buf = 138412546;
        v25 = nameCopy;
        v26 = 2112;
        v27 = dCopy;
        _os_log_impl(&dword_24844D000, v9, v10, "Babysitter: Decrementing refresh count for operation %@ on account %@", buf, 0x16u);
      }

      [(DABabysitter *)self _decrementRefreshCountForWaiter:dCopy forOperationWithName:nameCopy];
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v25 = dCopy;
        _os_log_impl(&dword_24844D000, v9, v10, "Babysitter: Decrementing refresh count for all operations on account %@", buf, 0xCu);
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

            [(DABabysitter *)self _decrementRefreshCountForWaiter:dCopy forOperationWithName:*(*(&v20 + 1) + 8 * i)];
          }

          v14 = [allKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v14);
      }
    }

    if (![v8 count])
    {
      [(NSMutableDictionary *)self->_refreshingWaiters removeObjectForKey:dCopy];
    }

    v17 = [(NSMutableDictionary *)self->_failedWaiters objectForKeyedSubscript:dCopy];
    v18 = [v17 count];

    if (!v18)
    {
      [(NSMutableDictionary *)self->_failedWaiters removeObjectForKey:dCopy];
    }

    CFPreferencesSetAppValue(@"RefreshingWaiters", self->_refreshingWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesSetAppValue(@"FailedWaiters", self->_failedWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerAccount:(id)account forOperationWithName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  if (DAIsRunningInDataAccessD())
  {
    if (![(DABabysitter *)self accountShouldContinue:accountCopy])
    {
      v9 = 0;
      goto LABEL_6;
    }

    waiterID = [accountCopy waiterID];
    [(DABabysitter *)self _incrementRefreshCountForWaiterID:waiterID operationName:nameCopy];
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (void)unregisterAccount:(id)account forOperationWithName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  if (DAIsRunningInDataAccessD() && [(DABabysitter *)self accountShouldContinue:accountCopy])
  {
    waiterID = [accountCopy waiterID];
    [(DABabysitter *)self _decrementRefreshCountForWaiterID:waiterID operationName:nameCopy];
  }
}

- (BOOL)accountWithIDShouldContinue:(id)continue
{
  v21 = *MEMORY[0x277D85DE8];
  continueCopy = continue;
  v5 = DAIsRunningInDataAccessD();
  v6 = 1;
  if (continueCopy && v5)
  {
    v7 = [(NSMutableDictionary *)self->_restrictedWaiters objectForKeyedSubscript:continueCopy];
    v8 = v7;
    if (v7)
    {
      v9 = MEMORY[0x277CBEAA8];
      v10 = [v7 objectForKeyedSubscript:@"RestrictionTimeout"];
      [v10 doubleValue];
      v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:v11];
      v14 = v13;

      v6 = v14 >= 0.0;
      if (v14 >= 0.0)
      {
        v15 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v15, v16))
        {
          v19 = 138412290;
          v20 = continueCopy;
          _os_log_impl(&dword_24844D000, v15, v16, "Babysitter: It's been long enough, we're going to give account %@ another try. Let's hope it doesn't crash this time.", &v19, 0xCu);
        }

        [(NSMutableDictionary *)self->_refreshingWaiters removeObjectForKey:continueCopy];
        CFPreferencesSetAppValue(@"RefreshingWaiters", self->_refreshingWaiters, @"com.apple.dataaccess.babysitter");
        [(NSMutableDictionary *)self->_restrictedWaiters removeObjectForKey:continueCopy];
        CFPreferencesSetAppValue(@"RestrictedWaiters", self->_restrictedWaiters, @"com.apple.dataaccess.babysitter");
        CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)accountShouldContinue:(id)continue
{
  continueCopy = continue;
  if ([MEMORY[0x277D03910] babysitterEnabled] && DAIsRunningInDataAccessD())
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

- (void)giveAccountWithIDAnotherChance:(id)chance
{
  chanceCopy = chance;
  if (DAIsRunningInDataAccessD() && [MEMORY[0x277D03910] babysitterEnabled])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_refreshingWaiters removeObjectForKey:chanceCopy];
    [(NSMutableDictionary *)selfCopy->_restrictedWaiters removeObjectForKey:chanceCopy];
    CFPreferencesSetAppValue(@"RefreshingWaiters", selfCopy->_refreshingWaiters, @"com.apple.dataaccess.babysitter");
    [(NSMutableDictionary *)selfCopy->_failedWaiters removeObjectForKey:chanceCopy];
    CFPreferencesSetAppValue(@"FailedWaiters", selfCopy->_failedWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesSetAppValue(@"RestrictedWaiters", selfCopy->_restrictedWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
    objc_sync_exit(selfCopy);
  }
}

@end