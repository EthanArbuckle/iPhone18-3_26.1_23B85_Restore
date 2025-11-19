@interface DABabysitter
+ (DABabysitter)sharedBabysitter;
- (BOOL)accountShouldContinue:(id)a3;
- (BOOL)accountWithIDShouldContinue:(id)a3;
- (BOOL)registerAccount:(id)a3 forOperationWithName:(id)a4;
- (DABabysitter)init;
- (id)_init;
- (void)_decrementRefreshCountForWaiter:(id)a3 forOperationWithName:(id)a4;
- (void)_decrementRefreshCountForWaiterID:(id)a3 operationName:(id)a4;
- (void)_incrementRefreshCountForWaiterID:(id)a3 operationName:(id)a4;
- (void)_reloadBabysitterProperties;
- (void)giveAccountWithIDAnotherChance:(id)a3;
- (void)unregisterAccount:(id)a3 forOperationWithName:(id)a4;
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

    v104 = self;
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
        v10 = [v96 allKeys];
        v11 = [v10 countByEnumeratingWithState:&v133 objects:v151 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v133 + 1) + 8 * i);
              v16 = [v96 objectForKeyedSubscript:v15];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = [v16 mutableCopy];
                [(NSMutableDictionary *)v104->_refreshingWaiters setObject:v17 forKeyedSubscript:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v133 objects:v151 count:16];
          }

          while (v12);
        }

        self = v104;
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
      v22 = [v19 allKeys];
      v23 = [v22 countByEnumeratingWithState:&v129 objects:v150 count:16];
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
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v129 + 1) + 8 * j);
            v28 = [v19 objectForKeyedSubscript:v27];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [v28 mutableCopy];
              [(NSMutableDictionary *)v104->_failedWaiters setObject:v29 forKeyedSubscript:v27];

              v19 = v95;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v129 objects:v150 count:16];
        }

        while (v24);
        self = v104;
      }
    }

    else
    {
      v30 = objc_opt_new();
      v22 = self->_failedWaiters;
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
          v38 = [(NSMutableDictionary *)v104->_refreshingWaiters objectForKeyedSubscript:v37];
          *type = v37;
          v39 = [(NSMutableDictionary *)v104->_failedWaiters objectForKeyedSubscript:v37];
          if (!v39)
          {
            v39 = [MEMORY[0x277CBEB38] dictionary];
            [(NSMutableDictionary *)v104->_failedWaiters setObject:v39 forKeyedSubscript:v37];
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
                v46 = [v39 objectForKeyedSubscript:v45];
                v47 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v46, "intValue") + 1}];
                [v39 setObject:v47 forKeyedSubscript:v45];
                v48 = DALoggingwithCategory();
                if (os_log_type_enabled(v48, v35))
                {
                  v49 = [v46 intValue];
                  *buf = 138412802;
                  *v145 = *type;
                  *&v145[8] = 1024;
                  *&v145[10] = v49;
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
    v50 = v104;
    v103 = [(NSMutableDictionary *)v104->_failedWaiters allKeys];
    v51 = [v103 countByEnumeratingWithState:&v117 objects:v143 count:16];
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
            objc_enumerationMutation(v103);
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
            v56 = [v55 allKeys];
            v57 = [v56 countByEnumeratingWithState:&v113 objects:v142 count:16];
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
                    objc_enumerationMutation(v56);
                  }

                  v61 = *(*(&v113 + 1) + 8 * m);
                  v62 = [v55 objectForKeyedSubscript:v61];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v63 = [v62 intValue];
                    if (v63 >= 3)
                    {
                      v64 = v63;
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
                          v68 = [MEMORY[0x277CBEAA8] distantPast];

                          v67 = v68;
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

                        [(NSMutableDictionary *)v104->_restrictedWaiters setValue:v72 forKey:*typea];
                        v50 = v104;
                      }
                    }
                  }
                }

                v58 = [v56 countByEnumeratingWithState:&v113 objects:v142 count:16];
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
        v52 = [v103 countByEnumeratingWithState:&v117 objects:v143 count:16];
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
          v79 = [(NSMutableDictionary *)v104->_restrictedWaiters objectForKeyedSubscript:v78];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = [v79 objectForKeyedSubscript:@"NumFailures"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v81 = [MEMORY[0x277D03910] babysitterEnabled];
              v82 = DALoggingwithCategory();
              v83 = os_log_type_enabled(v82, typeb);
              if (v81)
              {
                if (v83)
                {
                  v84 = [v80 intValue];
                  *buf = 67109378;
                  *v145 = v84;
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
                v88 = [v80 intValue];
                *buf = 138412546;
                *v145 = v78;
                *&v145[8] = 1024;
                *&v145[10] = v88;
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

    [(NSMutableDictionary *)v104->_refreshingWaiters removeAllObjects];
    if ([(NSMutableDictionary *)v104->_restrictedWaiters count])
    {
      v89 = DALoggingwithCategory();
      v90 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v89, v90))
      {
        v91 = v104->_restrictedWaiters;
        *buf = 138412290;
        *v145 = v91;
        _os_log_impl(&dword_24844D000, v89, v90, "Restricted accounts are: %@", buf, 0xCu);
      }
    }

    CFPreferencesSetAppValue(@"LastSystemVersion", v104->_buildVersion, @"com.apple.dataaccess.babysitter");
    CFPreferencesSetAppValue(@"RefreshingWaiters", v104->_refreshingWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesSetAppValue(@"FailedWaiters", v104->_failedWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesSetAppValue(@"RestrictedWaiters", v104->_restrictedWaiters, @"com.apple.dataaccess.babysitter");
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"DABabysitter.m" lineNumber:187 description:{@"Use the shared babysitter, jerk."}];

  return 0;
}

- (void)_incrementRefreshCountForWaiterID:(id)a3 operationName:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(NSMutableDictionary *)self->_refreshingWaiters objectForKeyedSubscript:v6];
    if (!v8)
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
      [(NSMutableDictionary *)self->_refreshingWaiters setObject:v8 forKeyedSubscript:v6];
    }

    v9 = [v8 objectForKeyedSubscript:v7];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "intValue") + 1}];
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v11, v12))
    {
      v14 = 138412802;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 1024;
      v19 = [v10 intValue];
      _os_log_impl(&dword_24844D000, v11, v12, "Babysitter: Marking waiter %@ as performing operation %@ (attempt #%d)", &v14, 0x1Cu);
    }

    [v8 setObject:v10 forKeyedSubscript:v7];
    CFPreferencesSetAppValue(@"RefreshingWaiters", self->_refreshingWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_decrementRefreshCountForWaiter:(id)a3 forOperationWithName:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_refreshingWaiters objectForKeyedSubscript:v13];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:v6];
    if ([v9 intValue] < 2)
    {
      [v8 removeObjectForKey:v6];
      v10 = [(NSMutableDictionary *)self->_failedWaiters objectForKeyedSubscript:v13];
      v11 = [v10 objectForKeyedSubscript:v6];
      if ([v11 intValue] < 2)
      {
        [v10 removeObjectForKey:v6];
      }

      else
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "intValue") - 1}];
        [v10 setObject:v12 forKeyedSubscript:v6];
      }
    }

    else
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "intValue") - 1}];
      [v8 setObject:v10 forKeyedSubscript:v6];
    }
  }
}

- (void)_decrementRefreshCountForWaiterID:(id)a3 operationName:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(NSMutableDictionary *)self->_refreshingWaiters objectForKeyedSubscript:v6];
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 7);
    v11 = os_log_type_enabled(v9, v10);
    if (v7)
    {
      if (v11)
      {
        *buf = 138412546;
        v25 = v7;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_24844D000, v9, v10, "Babysitter: Decrementing refresh count for operation %@ on account %@", buf, 0x16u);
      }

      [(DABabysitter *)self _decrementRefreshCountForWaiter:v6 forOperationWithName:v7];
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v25 = v6;
        _os_log_impl(&dword_24844D000, v9, v10, "Babysitter: Decrementing refresh count for all operations on account %@", buf, 0xCu);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = [v8 allKeys];
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
              objc_enumerationMutation(v12);
            }

            [(DABabysitter *)self _decrementRefreshCountForWaiter:v6 forOperationWithName:*(*(&v20 + 1) + 8 * i)];
          }

          v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v14);
      }
    }

    if (![v8 count])
    {
      [(NSMutableDictionary *)self->_refreshingWaiters removeObjectForKey:v6];
    }

    v17 = [(NSMutableDictionary *)self->_failedWaiters objectForKeyedSubscript:v6];
    v18 = [v17 count];

    if (!v18)
    {
      [(NSMutableDictionary *)self->_failedWaiters removeObjectForKey:v6];
    }

    CFPreferencesSetAppValue(@"RefreshingWaiters", self->_refreshingWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesSetAppValue(@"FailedWaiters", self->_failedWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerAccount:(id)a3 forOperationWithName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (DAIsRunningInDataAccessD())
  {
    if (![(DABabysitter *)self accountShouldContinue:v6])
    {
      v9 = 0;
      goto LABEL_6;
    }

    v8 = [v6 waiterID];
    [(DABabysitter *)self _incrementRefreshCountForWaiterID:v8 operationName:v7];
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (void)unregisterAccount:(id)a3 forOperationWithName:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (DAIsRunningInDataAccessD() && [(DABabysitter *)self accountShouldContinue:v8])
  {
    v7 = [v8 waiterID];
    [(DABabysitter *)self _decrementRefreshCountForWaiterID:v7 operationName:v6];
  }
}

- (BOOL)accountWithIDShouldContinue:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DAIsRunningInDataAccessD();
  v6 = 1;
  if (v4 && v5)
  {
    v7 = [(NSMutableDictionary *)self->_restrictedWaiters objectForKeyedSubscript:v4];
    v8 = v7;
    if (v7)
    {
      v9 = MEMORY[0x277CBEAA8];
      v10 = [v7 objectForKeyedSubscript:@"RestrictionTimeout"];
      [v10 doubleValue];
      v11 = [v9 dateWithTimeIntervalSinceReferenceDate:?];

      v12 = [MEMORY[0x277CBEAA8] date];
      [v12 timeIntervalSinceDate:v11];
      v14 = v13;

      v6 = v14 >= 0.0;
      if (v14 >= 0.0)
      {
        v15 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v15, v16))
        {
          v19 = 138412290;
          v20 = v4;
          _os_log_impl(&dword_24844D000, v15, v16, "Babysitter: It's been long enough, we're going to give account %@ another try. Let's hope it doesn't crash this time.", &v19, 0xCu);
        }

        [(NSMutableDictionary *)self->_refreshingWaiters removeObjectForKey:v4];
        CFPreferencesSetAppValue(@"RefreshingWaiters", self->_refreshingWaiters, @"com.apple.dataaccess.babysitter");
        [(NSMutableDictionary *)self->_restrictedWaiters removeObjectForKey:v4];
        CFPreferencesSetAppValue(@"RestrictedWaiters", self->_restrictedWaiters, @"com.apple.dataaccess.babysitter");
        CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)accountShouldContinue:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277D03910] babysitterEnabled] && DAIsRunningInDataAccessD())
  {
    v5 = [v4 waiterID];
    v6 = [(DABabysitter *)self accountWithIDShouldContinue:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)giveAccountWithIDAnotherChance:(id)a3
{
  v5 = a3;
  if (DAIsRunningInDataAccessD() && [MEMORY[0x277D03910] babysitterEnabled])
  {
    v4 = self;
    objc_sync_enter(v4);
    [(NSMutableDictionary *)v4->_refreshingWaiters removeObjectForKey:v5];
    [(NSMutableDictionary *)v4->_restrictedWaiters removeObjectForKey:v5];
    CFPreferencesSetAppValue(@"RefreshingWaiters", v4->_refreshingWaiters, @"com.apple.dataaccess.babysitter");
    [(NSMutableDictionary *)v4->_failedWaiters removeObjectForKey:v5];
    CFPreferencesSetAppValue(@"FailedWaiters", v4->_failedWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesSetAppValue(@"RestrictedWaiters", v4->_restrictedWaiters, @"com.apple.dataaccess.babysitter");
    CFPreferencesAppSynchronize(@"com.apple.dataaccess.babysitter");
    objc_sync_exit(v4);
  }
}

@end