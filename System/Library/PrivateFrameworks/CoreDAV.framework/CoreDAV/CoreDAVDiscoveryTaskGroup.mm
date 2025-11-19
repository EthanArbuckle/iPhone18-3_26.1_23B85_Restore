@interface CoreDAVDiscoveryTaskGroup
- (CoreDAVDiscoveryTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4;
- (CoreDAVDiscoveryTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4 httpPorts:(id)a5 httpsPorts:(id)a6 httpServiceString:(id)a7 httpsServiceString:(id)a8 wellKnownPath:(id)a9 potentialContextPaths:(id)a10 requiredComplianceClass:(id)a11;
- (id)allDiscoveryPaths:(id)a3;
- (id)allDiscoveryPorts:(id)a3 withScheme:(id)a4;
- (id)cleanedStringsFromResponseHeaders:(id)a3 forHeader:(id)a4;
- (id)extractPrincipalURLFromPropFindTask:(id)a3 error:(id *)a4;
- (id)propFindProperties;
- (id)setupDiscoveries:(id)a3 withSchemes:(id)a4;
- (void)addToDiscoveryArray:(id *)a3 discovery:(id)a4;
- (void)cancelTaskGroup;
- (void)completeDiscovery:(id)a3 error:(id)a4;
- (void)completeOptionsTask:(id)a3 error:(id)a4;
- (void)getDiscoveryStatus:(id)a3 priorFailed:(id *)a4 subsequentFailed:(id *)a5 priorIncomplete:(id *)a6 subsequentIncomplete:(id *)a7 priorSuccess:(id *)a8 subsequentSuccess:(id *)a9;
- (void)noteDefinitiveAuthFailureFromTask:(id)a3;
- (void)optionsTask:(id)a3 error:(id)a4;
- (void)propFindTaskFinished:(id)a3;
- (void)srvLookupTask:(id)a3 error:(id)a4;
- (void)startOptionsTask:(id)a3;
- (void)startPropfindTask:(id)a3;
- (void)startSRVLookup:(id)a3 serviceString:(id)a4;
- (void)startTaskGroup;
- (void)startWellKnownFallbackHeadTask:(id)a3 withURL:(id)a4;
- (void)startWellKnownLocationTask:(id)a3 withURL:(id)a4;
- (void)task:(id)a3 didFinishWithError:(id)a4;
- (void)taskGroupWillCancelWithError:(id)a3;
@end

@implementation CoreDAVDiscoveryTaskGroup

- (CoreDAVDiscoveryTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4 httpPorts:(id)a5 httpsPorts:(id)a6 httpServiceString:(id)a7 httpsServiceString:(id)a8 wellKnownPath:(id)a9 potentialContextPaths:(id)a10 requiredComplianceClass:(id)a11
{
  v30 = a5;
  v29 = a6;
  v28 = a7;
  v27 = a8;
  v26 = a9;
  v25 = a10;
  v18 = a11;
  v31.receiver = self;
  v31.super_class = CoreDAVDiscoveryTaskGroup;
  v19 = [(CoreDAVTaskGroup *)&v31 initWithAccountInfoProvider:a3 taskManager:a4];
  if (v19)
  {
    v20 = [v18 lowercaseString];
    requiredComplianceClass = v19->_requiredComplianceClass;
    v19->_requiredComplianceClass = v20;

    objc_storeStrong(&v19->_httpPorts, a5);
    objc_storeStrong(&v19->_httpsPorts, a6);
    objc_storeStrong(&v19->_httpServiceString, a7);
    objc_storeStrong(&v19->_httpsServiceString, a8);
    objc_storeStrong(&v19->_wellKnownPath, a9);
    objc_storeStrong(&v19->_potentialContextPaths, a10);
    v19->_didReceiveAuthenticationError = 0;
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    discoveries = v19->_discoveries;
    v19->_discoveries = v22;
  }

  return v19;
}

- (CoreDAVDiscoveryTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4
{
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 cdvArrayWithIntegers:{80, 0}];
  v10 = [MEMORY[0x277CBEA60] cdvArrayWithIntegers:{443, 0}];
  v11 = [MEMORY[0x277CBEA60] arrayWithObject:@"/"];
  v12 = [(CoreDAVDiscoveryTaskGroup *)self initWithAccountInfoProvider:v8 taskManager:v7 httpPorts:v9 httpsPorts:v10 httpServiceString:0 httpsServiceString:0 wellKnownPath:0 potentialContextPaths:v11 requiredComplianceClass:0];

  return v12;
}

- (void)taskGroupWillCancelWithError:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__CoreDAVDiscoveryTaskGroup_taskGroupWillCancelWithError___block_invoke;
  v6[3] = &unk_278E30F90;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v5 delegateCallbackBlock:v6];
}

void __58__CoreDAVDiscoveryTaskGroup_taskGroupWillCancelWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 discoveryTask:*(a1 + 32) gotAccountInfo:0 error:*(a1 + 40)];
}

- (void)cancelTaskGroup
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_discoveries;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) setShouldFailAllTasks:1];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = CoreDAVDiscoveryTaskGroup;
  [(CoreDAVTaskGroup *)&v9 cancelTaskGroup];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)startTaskGroup
{
  v146 = *MEMORY[0x277D85DE8];
  v4 = +[CoreDAVLogging sharedLogging];
  v110 = self;
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v141 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
    _os_log_impl(&dword_2452FB000, v6, OS_LOG_TYPE_INFO, "%s - Started", buf, 0xCu);
  }

  p_httpServiceString = &self->_httpServiceString;
  if (!self->_httpServiceString && !self->_httpsServiceString)
  {
    v42 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v43 = [v42 serverRoot];
    if (v43)
    {
      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v2 = [WeakRetained serverRoot];
      if ([v2 length])
      {
        goto LABEL_41;
      }
    }

    v44 = [(CoreDAVDiscoveryTaskGroup *)self wellKnownPath];
    if (v44)
    {
      v45 = [(CoreDAVDiscoveryTaskGroup *)self wellKnownPath];
      v46 = [v45 length];

      if (v43)
      {
      }

      if (v46)
      {
        v47 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v48 = [v47 scheme];

        v101 = v48;
        if (v48 && [(NSMutableArray *)v48 length])
        {
          v49 = [MEMORY[0x277CBEA60] arrayWithObject:v48];
        }

        else
        {
          v49 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"https", @"http", 0}];
        }

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        obj = v49;
        v104 = [(NSMutableArray *)obj countByEnumeratingWithState:&v127 objects:v138 count:16];
        if (v104)
        {
          v103 = *v128;
          do
          {
            v71 = 0;
            do
            {
              if (*v128 != v103)
              {
                objc_enumerationMutation(obj);
              }

              v105 = v71;
              v72 = *(*(&v127 + 1) + 8 * v71);
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              v126 = 0u;
              v73 = objc_loadWeakRetained(&v110->super._accountInfoProvider);
              v109 = v72;
              v74 = [v72 lowercaseString];
              v75 = [(CoreDAVDiscoveryTaskGroup *)v110 allDiscoveryPorts:v73 withScheme:v74];

              v107 = v75;
              v76 = [v75 countByEnumeratingWithState:&v123 objects:v137 count:16];
              if (v76)
              {
                v77 = v76;
                v78 = *v124;
                do
                {
                  for (i = 0; i != v77; ++i)
                  {
                    if (*v124 != v78)
                    {
                      objc_enumerationMutation(v107);
                    }

                    v80 = *(*(&v123 + 1) + 8 * i);
                    v81 = [CoreDAVDiscoveryAccountInfo alloc];
                    v82 = objc_loadWeakRetained(&v110->super._accountInfoProvider);
                    v83 = [(CoreDAVDiscoveryAccountInfo *)v81 initWithAccountInfoProvider:v82];

                    [(CoreDAVDiscoveryAccountInfo *)v83 setScheme:v109];
                    -[CoreDAVDiscoveryAccountInfo setPort:](v83, "setPort:", [v80 integerValue]);
                    [(CoreDAVDiscoveryAccountInfo *)v83 setStarted:1];
                    [(NSMutableArray *)v110->_discoveries addObject:v83];
                    v84 = +[CoreDAVLogging sharedLogging];
                    v85 = objc_loadWeakRetained(&v110->super._accountInfoProvider);
                    v86 = [v84 logHandleForAccountInfoProvider:v85];

                    if (v86)
                    {
                      v87 = v86;
                      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                      {
                        v88 = [(NSMutableArray *)v110->_discoveries count]- 1;
                        v89 = [(CoreDAVDiscoveryAccountInfo *)v83 url];
                        *buf = 136315650;
                        v141 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
                        v142 = 2048;
                        v143 = v88;
                        v144 = 2112;
                        v145 = v89;
                        _os_log_impl(&dword_2452FB000, v87, OS_LOG_TYPE_INFO, "%s - Index: [%lu], URL: [%@]", buf, 0x20u);
                      }
                    }
                  }

                  v77 = [v107 countByEnumeratingWithState:&v123 objects:v137 count:16];
                }

                while (v77);
              }

              v71 = v105 + 1;
            }

            while (v105 + 1 != v104);
            v104 = [(NSMutableArray *)obj countByEnumeratingWithState:&v127 objects:v138 count:16];
          }

          while (v104);
        }

        if ([(NSMutableArray *)v110->_discoveries count])
        {
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v90 = v110->_discoveries;
          v91 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v119 objects:v136 count:16];
          v65 = v101;
          if (v91)
          {
            v92 = v91;
            v93 = *v120;
            do
            {
              for (j = 0; j != v92; ++j)
              {
                if (*v120 != v93)
                {
                  objc_enumerationMutation(v90);
                }

                v95 = *(*(&v119 + 1) + 8 * j);
                v96 = [v95 serverRoot];
                v97 = [(CoreDAVDiscoveryTaskGroup *)v110 wellKnownPath];
                [v95 setServerRoot:v97];

                v98 = [v95 url];
                [v95 setServerRoot:v96];
                [(CoreDAVDiscoveryTaskGroup *)v110 startWellKnownLocationTask:v95 withURL:v98];
              }

              v92 = [(NSMutableArray *)v90 countByEnumeratingWithState:&v119 objects:v136 count:16];
            }

            while (v92);
          }
        }

        else
        {
          v99 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
          v117[0] = MEMORY[0x277D85DD0];
          v117[1] = 3221225472;
          v117[2] = __43__CoreDAVDiscoveryTaskGroup_startTaskGroup__block_invoke;
          v117[3] = &unk_278E30F90;
          v117[4] = v110;
          v118 = v99;
          v90 = v99;
          [(CoreDAVTaskGroup *)v110 finishCoreDAVTaskGroupWithError:v90 delegateCallbackBlock:v117];

          v65 = v101;
        }

        v28 = obj;
LABEL_91:

        goto LABEL_92;
      }

LABEL_43:
      v50 = +[CoreDAVLogging sharedLogging];
      v51 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v52 = [v50 logHandleForAccountInfoProvider:v51];

      if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v141 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
        _os_log_impl(&dword_2452FB000, v52, OS_LOG_TYPE_INFO, "%s - Attempting PROPFIND", buf, 0xCu);
      }

      v53 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v54 = [v53 scheme];

      v55 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v56 = v55;
      if (v54)
      {
        v57 = [(__CFString *)v55 scheme];
        v58 = [v57 lowercaseString];
        v59 = @"https";
        if (([v58 isEqualToString:@"https"] & 1) == 0)
        {
          v60 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v61 = [v60 scheme];
          v59 = [v61 lowercaseString];
        }

        v62 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v63 = [MEMORY[0x277CBEA60] arrayWithObject:v59];
        v64 = [(CoreDAVDiscoveryTaskGroup *)self setupDiscoveries:v62 withSchemes:v63];

        v56 = v59;
      }

      else
      {
        v62 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"https", @"http", 0}];
        v64 = [(CoreDAVDiscoveryTaskGroup *)self setupDiscoveries:v56 withSchemes:v62];
      }

      if ([(NSMutableArray *)v64 count])
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v65 = v64;
        v66 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v113 objects:v135 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v114;
          do
          {
            for (k = 0; k != v67; ++k)
            {
              if (*v114 != v68)
              {
                objc_enumerationMutation(v65);
              }

              [(CoreDAVDiscoveryTaskGroup *)v110 startPropfindTask:*(*(&v113 + 1) + 8 * k)];
            }

            v67 = [(NSMutableArray *)v65 countByEnumeratingWithState:&v113 objects:v135 count:16];
          }

          while (v67);
        }

        v28 = v65;
      }

      else
      {
        v70 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = __43__CoreDAVDiscoveryTaskGroup_startTaskGroup__block_invoke_286;
        v111[3] = &unk_278E30F90;
        v28 = v64;
        v111[4] = v110;
        v112 = v70;
        v65 = v70;
        [(CoreDAVTaskGroup *)v110 finishCoreDAVTaskGroupWithError:v65 delegateCallbackBlock:v111];
      }

      goto LABEL_91;
    }

    if (v43)
    {
LABEL_41:
    }

    goto LABEL_43;
  }

  v7 = +[CoreDAVLogging sharedLogging];
  v8 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v9 = [v7 logHandleForAccountInfoProvider:v8];

  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v141 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
    _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_INFO, "%s - Attempting SRV lookups first", buf, 0xCu);
  }

  p_httpsServiceString = &self->_httpsServiceString;
  if (self->_httpsServiceString)
  {
    v10 = [CoreDAVDiscoveryAccountInfo alloc];
    v11 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v12 = [(CoreDAVDiscoveryAccountInfo *)v10 initWithAccountInfoProvider:v11];

    [(CoreDAVDiscoveryAccountInfo *)v12 setScheme:@"https"];
    [(CoreDAVDiscoveryAccountInfo *)v12 setStarted:1];
    [(NSMutableArray *)self->_discoveries addObject:v12];
    v13 = +[CoreDAVLogging sharedLogging];
    v14 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v15 = [v13 logHandleForAccountInfoProvider:v14];

    if (v15)
    {
      v16 = v15;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [(NSMutableArray *)self->_discoveries count]- 1;
        v18 = [(CoreDAVDiscoveryAccountInfo *)v12 url];
        *buf = 136315650;
        v141 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
        v142 = 2048;
        v143 = v17;
        v144 = 2112;
        v145 = v18;
        _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_INFO, "%s - Index: [%lu], URL: [%@]", buf, 0x20u);
      }
    }
  }

  if (*p_httpServiceString)
  {
    v19 = [CoreDAVDiscoveryAccountInfo alloc];
    v20 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v21 = [(CoreDAVDiscoveryAccountInfo *)v19 initWithAccountInfoProvider:v20];

    [(CoreDAVDiscoveryAccountInfo *)v21 setScheme:@"http"];
    [(CoreDAVDiscoveryAccountInfo *)v21 setStarted:1];
    [(NSMutableArray *)self->_discoveries addObject:v21];
    v22 = +[CoreDAVLogging sharedLogging];
    v23 = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v24 = [v22 logHandleForAccountInfoProvider:v23];

    if (v24)
    {
      v25 = v24;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [(NSMutableArray *)self->_discoveries count]- 1;
        v27 = [(CoreDAVDiscoveryAccountInfo *)v21 url];
        *buf = 136315650;
        v141 = "[CoreDAVDiscoveryTaskGroup startTaskGroup]";
        v142 = 2048;
        v143 = v26;
        v144 = 2112;
        v145 = v27;
        _os_log_impl(&dword_2452FB000, v25, OS_LOG_TYPE_INFO, "%s - Index: [%lu], URL: [%@]", buf, 0x20u);
      }
    }
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v28 = self->_discoveries;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v131 objects:v139 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v132;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v132 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v131 + 1) + 8 * m);
        v34 = MEMORY[0x277CCACA8];
        v35 = [v33 scheme];
        v36 = [v35 isEqualToString:@"https"];
        v37 = p_httpServiceString;
        if (v36)
        {
          v37 = p_httpsServiceString;
        }

        v38 = *v37;
        v39 = objc_loadWeakRetained(&v110->super._accountInfoProvider);
        v40 = [v39 host];
        v41 = [v34 stringWithFormat:@"%@%@", v38, v40];

        [(CoreDAVDiscoveryTaskGroup *)v110 startSRVLookup:v33 serviceString:v41];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v131 objects:v139 count:16];
    }

    while (v30);
  }

LABEL_92:

  v100 = *MEMORY[0x277D85DE8];
}

void __43__CoreDAVDiscoveryTaskGroup_startTaskGroup__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 discoveryTask:*(a1 + 32) gotAccountInfo:0 error:*(a1 + 40)];
}

void __43__CoreDAVDiscoveryTaskGroup_startTaskGroup__block_invoke_286(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 discoveryTask:*(a1 + 32) gotAccountInfo:0 error:*(a1 + 40)];
}

- (id)setupDiscoveries:(id)a3 withSchemes:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32 = [MEMORY[0x277CBEB18] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v7;
  v30 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v30)
  {
    v29 = *v52;
    v8 = 0x278E30000uLL;
    v9 = 0x27EE11000uLL;
    do
    {
      v10 = 0;
      do
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v10;
        v38 = *(*(&v51 + 1) + 8 * v10);
        if ([v38 isEqualToString:@"https"])
        {
          v11 = 0;
        }

        else
        {
          v11 = [*(&self->super.super.isa + *(v9 + 3644)) count];
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v33 = [(CoreDAVDiscoveryTaskGroup *)self allDiscoveryPorts:v6 withScheme:v38];
        v35 = [v33 countByEnumeratingWithState:&v47 objects:v62 count:16];
        if (v35)
        {
          v34 = *v48;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v48 != v34)
              {
                objc_enumerationMutation(v33);
              }

              v40 = *(*(&v47 + 1) + 8 * i);
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v13 = [(CoreDAVDiscoveryTaskGroup *)self allDiscoveryPaths:v6];
              v41 = [v13 countByEnumeratingWithState:&v43 objects:v61 count:16];
              if (!v41)
              {
                v14 = v13;
                goto LABEL_30;
              }

              v36 = i;
              v14 = 0;
              v39 = *v44;
              v37 = v13;
              do
              {
                for (j = 0; j != v41; ++j)
                {
                  v42 = v14;
                  if (*v44 != v39)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v16 = *(*(&v43 + 1) + 8 * j);
                  v17 = [objc_alloc(*(v8 + 2832)) initWithAccountInfoProvider:v6];
                  [v17 setScheme:v38];
                  [v17 setServerRoot:v16];
                  [v17 setPort:{objc_msgSend(v40, "integerValue")}];
                  [*(&self->super.super.isa + *(v9 + 3644)) insertObject:v17 atIndex:v11];
                  v18 = +[CoreDAVLogging sharedLogging];
                  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
                  v20 = [v18 logHandleForAccountInfoProvider:WeakRetained];

                  if (v20)
                  {
                    v21 = v20;
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                    {
                      [v17 url];
                      v22 = v8;
                      v23 = self;
                      v25 = v24 = v6;
                      *buf = 136315650;
                      v56 = "[CoreDAVDiscoveryTaskGroup setupDiscoveries:withSchemes:]";
                      v57 = 2048;
                      v58 = v11;
                      v59 = 2112;
                      v60 = v25;
                      _os_log_impl(&dword_2452FB000, v21, OS_LOG_TYPE_INFO, "%s - Index: [%lu], URL: [%@]", buf, 0x20u);

                      v6 = v24;
                      self = v23;
                      v8 = v22;
                      v9 = 0x27EE11000;
                    }
                  }

                  v14 = v42;
                  if (!v42)
                  {
                    v14 = v17;
                  }

                  ++v11;
                }

                v41 = [v37 countByEnumeratingWithState:&v43 objects:v61 count:16];
              }

              while (v41);

              if (v14)
              {
                [v14 setStarted:1];
                [v32 addObject:v14];
                i = v36;
LABEL_30:

                continue;
              }

              i = v36;
            }

            v35 = [v33 countByEnumeratingWithState:&v47 objects:v62 count:16];
          }

          while (v35);
        }

        v10 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v30);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)allDiscoveryPorts:(id)a3 withScheme:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  if ([v6 port])
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "port")}];
    [v8 addObject:v9];
  }

  else
  {
    if ([v7 isEqualToString:@"https"])
    {
      v10 = 104;
    }

    else
    {
      v10 = 96;
    }

    [v8 addObjectsFromArray:*(&self->super.super.isa + v10)];
  }

  return v8;
}

- (id)allDiscoveryPaths:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v4 serverRoot];

  if (v6)
  {
    v7 = [v4 serverRoot];
    [v5 addObject:v7];
  }

  else
  {
    v7 = [(CoreDAVDiscoveryTaskGroup *)self potentialContextPaths];
    [v5 addObjectsFromArray:v7];
  }

  return v5;
}

- (void)startSRVLookup:(id)a3 serviceString:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v6 url];
      v16 = 136315650;
      v17 = "[CoreDAVDiscoveryTaskGroup startSRVLookup:serviceString:]";
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_INFO, "%s - URL: [%@], serviceString: [%@]", &v16, 0x20u);
    }
  }

  [v6 setStarted:1];
  v13 = [[CoreDAVSRVLookupTask alloc] initWithServiceString:v7];
  [(CoreDAVTask *)v13 setDelegate:self];
  [(CoreDAVTask *)v13 setAccountInfoProvider:v6];
  [(CoreDAVTask *)v13 setTimeoutInterval:self->super._timeoutInterval];
  if (self->super._isCancelling)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v13 error:v14];
  }

  else
  {
    [(NSMutableSet *)self->super._outstandingTasks addObject:v13];
    v14 = objc_loadWeakRetained(&self->super._taskManager);
    [v14 submitIndependentCoreDAVTask:v13];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startWellKnownLocationTask:(id)a3 withURL:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v6 url];
      *buf = 136315394;
      v29 = "[CoreDAVDiscoveryTaskGroup startWellKnownLocationTask:withURL:]";
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_INFO, "%s - URL: [%@]", buf, 0x16u);
    }
  }

  [v6 setStarted:1];
  v13 = [CoreDAVPropFindTask alloc];
  v14 = [(CoreDAVDiscoveryTaskGroup *)self propFindProperties];
  v15 = [(CoreDAVPropFindTask *)v13 initWithPropertiesToFind:v14 atURL:v7 withDepth:2];

  [(CoreDAVTask *)v15 setAccountInfoProvider:v6];
  [(CoreDAVTask *)v15 setTimeoutInterval:self->super._timeoutInterval];
  objc_initWeak(buf, v15);
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __64__CoreDAVDiscoveryTaskGroup_startWellKnownLocationTask_withURL___block_invoke;
  v23 = &unk_278E30FE0;
  objc_copyWeak(&v27, buf);
  v24 = self;
  v16 = v6;
  v25 = v16;
  v17 = v7;
  v26 = v17;
  [(CoreDAVTask *)v15 setCompletionBlock:&v20];
  if (!v17 || self->super._isCancelling)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:{0, v20, v21, v22, v23, v24, v25}];
    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v15 error:v18];
  }

  else
  {
    [(NSMutableSet *)self->super._outstandingTasks addObject:v15, v20, v21, v22, v23, v24, v25];
    v18 = objc_loadWeakRetained(&self->super._taskManager);
    [v18 submitIndependentCoreDAVTask:v15];
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];
}

void __64__CoreDAVDiscoveryTaskGroup_startWellKnownLocationTask_withURL___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(*(a1 + 32) + 32) removeObject:WeakRetained];
    v3 = [WeakRetained error];
    if ([WeakRetained responseStatusCode] == 405)
    {
      [*(a1 + 32) startWellKnownFallbackHeadTask:*(a1 + 40) withURL:*(a1 + 48)];
    }

    else
    {
      if (v3)
      {
        v4 = [v3 domain];
        if ([v4 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
        {
          v5 = [v3 code];

          if (v5 == 401)
          {
            v6 = +[CoreDAVLogging sharedLogging];
            v7 = objc_loadWeakRetained((*(a1 + 32) + 16));
            v8 = [v6 logHandleForAccountInfoProvider:v7];

            if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v29 = "[CoreDAVDiscoveryTaskGroup startWellKnownLocationTask:withURL:]_block_invoke";
              _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_INFO, "%s - Bailing early because of 401 on .well-known", buf, 0xCu);
            }

            [*(a1 + 32) noteDefinitiveAuthFailureFromTask:WeakRetained];
            [*(a1 + 32) propFindTaskFinished:WeakRetained];
            goto LABEL_24;
          }
        }

        else
        {
        }

        v11 = *(*(a1 + 32) + 144);
        objc_sync_enter(v11);
        [*(*(a1 + 32) + 144) removeObject:*(a1 + 40)];
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v14 = MEMORY[0x277CBEA60];
        v15 = [v13 scheme];
        v16 = [v14 arrayWithObject:v15];
        v17 = [v12 setupDiscoveries:v13 withSchemes:v16];

        objc_sync_exit(v11);
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v18 = v17;
        v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v19)
        {
          v20 = *v24;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v24 != v20)
              {
                objc_enumerationMutation(v18);
              }

              [*(a1 + 32) startPropfindTask:{*(*(&v23 + 1) + 8 * i), v23}];
            }

            v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v19);
        }

        goto LABEL_24;
      }

      v9 = [*(a1 + 32) extractPrincipalURLFromPropFindTask:WeakRetained error:0];
      v10 = *(a1 + 32);
      if (v9)
      {
        [v10 propFindTaskFinished:WeakRetained];
      }

      else
      {
        [v10 startWellKnownFallbackHeadTask:*(a1 + 40) withURL:*(a1 + 48)];
      }
    }

LABEL_24:
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)startWellKnownFallbackHeadTask:(id)a3 withURL:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

  if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "[CoreDAVDiscoveryTaskGroup startWellKnownFallbackHeadTask:withURL:]";
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_2452FB000, v10, OS_LOG_TYPE_INFO, "%s - URL: [%@]", buf, 0x16u);
  }

  v11 = [(CoreDAVTask *)[CoreDAVHeadTask alloc] initWithURL:v7];
  [(CoreDAVTask *)v11 setAccountInfoProvider:v6];
  [(CoreDAVTask *)v11 setTimeoutInterval:self->super._timeoutInterval];
  [(CoreDAVTask *)v11 setAllowAutomaticRedirects:0];
  objc_initWeak(buf, v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__CoreDAVDiscoveryTaskGroup_startWellKnownFallbackHeadTask_withURL___block_invoke;
  v15[3] = &unk_278E31008;
  objc_copyWeak(&v17, buf);
  v15[4] = self;
  v12 = v7;
  v16 = v12;
  [(CoreDAVTask *)v11 setCompletionBlock:v15];
  if (self->super._isCancelling)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v11 error:v13];
  }

  else
  {
    [(NSMutableSet *)self->super._outstandingTasks addObject:v11];
    v13 = objc_loadWeakRetained(&self->super._taskManager);
    [v13 submitIndependentCoreDAVTask:v11];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];
}

void __68__CoreDAVDiscoveryTaskGroup_startWellKnownFallbackHeadTask_withURL___block_invoke(id *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    [*(a1[4] + 4) removeObject:WeakRetained];
    v3 = a1[4];
    if (v3[40] == 1)
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
      [v3 completeDiscovery:WeakRetained error:v4];

      goto LABEL_31;
    }

    v5 = [WeakRetained accountInfoProvider];
    v6 = [WeakRetained error];
    v7 = [v6 domain];
    if ([v7 isEqualToString:@"CoreDAVErrorDomain"])
    {
      v8 = [v6 code];

      if (v8 == 1)
      {
        v9 = +[CoreDAVLogging sharedLogging];
        v10 = objc_loadWeakRetained(a1[4] + 2);
        v11 = [v9 logHandleForAccountInfoProvider:v10];

        if (v11)
        {
          v12 = v11;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = a1[4];
            *buf = 138412290;
            v41 = objc_opt_class();
            v14 = v41;
            _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "Task cancelled: [%@]", buf, 0xCu);
          }
        }

        [a1[4] completeDiscovery:WeakRetained error:v6];
        goto LABEL_30;
      }
    }

    else
    {
    }

    if (CDVHTTPStatusCodeRepresentsRedirection([WeakRetained responseStatusCode]))
    {
      v15 = [WeakRetained responseHeaders];
      v16 = [v15 CDVObjectForKeyCaseInsensitive:@"Location"];

      v17 = MEMORY[0x277CBEBC0];
      v18 = [WeakRetained url];
      v19 = [v17 URLWithString:v16 relativeToURL:v18];
      v20 = [v19 absoluteURL];

      if (v20)
      {
        v21 = [a1[5] scheme];
        if (![v21 hasPrefix:@"https"])
        {

LABEL_28:
          [a1[4] startWellKnownLocationTask:v5 withURL:v20];
LABEL_29:

LABEL_30:
          goto LABEL_31;
        }

        v22 = [v20 scheme];
        v23 = [v22 hasPrefix:@"https"];

        if (v23)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }
    }

    else
    {
      v20 = 0;
    }

    v24 = *(a1[4] + 18);
    objc_sync_enter(v24);
    [*(a1[4] + 18) removeObject:v5];
    v25 = a1[4];
    v26 = MEMORY[0x277CBEA60];
    v27 = [v5 scheme];
    v28 = [v26 arrayWithObject:v27];
    v29 = [v25 setupDiscoveries:v5 withSchemes:v28];

    objc_sync_exit(v24);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v31)
    {
      v32 = *v36;
      do
      {
        v33 = 0;
        do
        {
          if (*v36 != v32)
          {
            objc_enumerationMutation(v30);
          }

          [a1[4] startPropfindTask:{*(*(&v35 + 1) + 8 * v33++), v35}];
        }

        while (v31 != v33);
        v31 = [v30 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v31);
    }

    goto LABEL_29;
  }

LABEL_31:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)startOptionsTask:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v4 url];
      v15 = 136315394;
      v16 = "[CoreDAVDiscoveryTaskGroup startOptionsTask:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_INFO, "%s - URL: [%@]", &v15, 0x16u);
    }
  }

  v10 = [CoreDAVOptionsTask alloc];
  v11 = [v4 url];
  v12 = [(CoreDAVTask *)v10 initWithURL:v11];

  [(CoreDAVTask *)v12 setDelegate:self];
  [(CoreDAVTask *)v12 setAccountInfoProvider:v4];
  [(CoreDAVTask *)v12 setTimeoutInterval:self->super._timeoutInterval];
  if (self->super._isCancelling)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v12 error:v13];
  }

  else
  {
    [(NSMutableSet *)self->super._outstandingTasks addObject:v12];
    v13 = objc_loadWeakRetained(&self->super._taskManager);
    [v13 submitIndependentCoreDAVTask:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startPropfindTask:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v4 url];
      *buf = 136315394;
      v23 = "[CoreDAVDiscoveryTaskGroup startPropfindTask:]";
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_2452FB000, v8, OS_LOG_TYPE_INFO, "%s - URL: [%@]", buf, 0x16u);
    }
  }

  [v4 setStarted:1];
  v10 = [CoreDAVPropFindTask alloc];
  v11 = [(CoreDAVDiscoveryTaskGroup *)self propFindProperties];
  v12 = [v4 url];
  v13 = [(CoreDAVPropFindTask *)v10 initWithPropertiesToFind:v11 atURL:v12 withDepth:2];

  [(CoreDAVTask *)v13 setAccountInfoProvider:v4];
  [(CoreDAVTask *)v13 setTimeoutInterval:self->super._timeoutInterval];
  objc_initWeak(buf, v13);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __47__CoreDAVDiscoveryTaskGroup_startPropfindTask___block_invoke;
  v19 = &unk_278E30F68;
  objc_copyWeak(&v21, buf);
  v20 = self;
  [(CoreDAVTask *)v13 setCompletionBlock:&v16];
  if (self->super._isCancelling)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:{0, v16, v17, v18, v19}];
    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v13 error:v14];
  }

  else
  {
    [(NSMutableSet *)self->super._outstandingTasks addObject:v13, v16, v17, v18, v19];
    v14 = objc_loadWeakRetained(&self->super._taskManager);
    [v14 submitIndependentCoreDAVTask:v13];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __47__CoreDAVDiscoveryTaskGroup_startPropfindTask___block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 40));

  if (v2)
  {
    [*(*(a1 + 32) + 32) removeObject:v2];
    [*(a1 + 32) propFindTaskFinished:v2];
  }
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CoreDAVDiscoveryTaskGroup *)self srvLookupTask:v7 error:v6];
  }
}

- (void)srvLookupTask:(id)a3 error:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v65 = a4;
  [(NSMutableSet *)self->super._outstandingTasks removeObject:v6];
  v64 = v6;
  if (!self->super._isCancelling)
  {
    v66 = [v6 accountInfoProvider];
    v8 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v10 = [v8 logHandleForAccountInfoProvider:WeakRetained];

    if (v10)
    {
      v11 = v10;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v66 url];
        *buf = 136315650;
        v83 = "[CoreDAVDiscoveryTaskGroup srvLookupTask:error:]";
        v84 = 2112;
        v85 = v12;
        v86 = 2112;
        v87 = v65;
        _os_log_impl(&dword_2452FB000, v11, OS_LOG_TYPE_INFO, "%s - URL: [%@],  error: [%@]", buf, 0x20u);
      }
    }

    v13 = [v65 domain];
    if ([v13 isEqualToString:@"CoreDAVErrorDomain"])
    {
      v14 = [v65 code]== 1;

      if (v14)
      {
        v15 = +[CoreDAVLogging sharedLogging];
        v16 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v17 = [v15 logHandleForAccountInfoProvider:v16];

        if (v17)
        {
          v18 = v17;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = objc_opt_class();
            *buf = 138543362;
            v83 = v19;
            v20 = v19;
            _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_INFO, "Task cancelled: [%{public}@]", buf, 0xCu);
          }
        }

        [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v64 error:v65];
        goto LABEL_59;
      }
    }

    else
    {
    }

    v63 = [v64 fetchedRecords];
    if ([v63 count])
    {
      v21 = [v63 objectAtIndex:0];
      v22 = [v21 target];
      v23 = [v21 port];
      v24 = [v23 integerValue];

      v25 = +[CoreDAVLogging sharedLogging];
      v26 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v27 = [v25 logHandleForAccountInfoProvider:v26];

      if (v27)
      {
        v28 = v27;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v66 url];
          *buf = 136315906;
          v83 = "[CoreDAVDiscoveryTaskGroup srvLookupTask:error:]";
          v84 = 2112;
          v85 = v29;
          v86 = 2112;
          v87 = v22;
          v88 = 2048;
          v89 = v24;
          _os_log_impl(&dword_2452FB000, v28, OS_LOG_TYPE_INFO, "%s - URL: [%@] srvHost: [%@], srvPort: [%ld]", buf, 0x2Au);
        }
      }

      if ([v22 length]&& v24)
      {
        [v66 setHost:v22];
        [v66 setPort:v24];
      }
    }

    else
    {
      v21 = +[CoreDAVLogging sharedLogging];
      v30 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v22 = [v21 logHandleForAccountInfoProvider:v30];

      if (v22)
      {
        v22 = v22;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v31 = [v66 url];
          *buf = 136315394;
          v83 = "[CoreDAVDiscoveryTaskGroup srvLookupTask:error:]";
          v84 = 2112;
          v85 = v31;
          _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_INFO, "%s - Could not find any SRV records.  URL: [%@]", buf, 0x16u);
        }
      }
    }

    v32 = [v66 serverRoot];
    if (!v32 || ([v66 serverRoot], v22 = objc_claimAutoreleasedReturnValue(), !-[NSObject length](v22, "length")))
    {
      v33 = [(CoreDAVDiscoveryTaskGroup *)self wellKnownPath];
      if (v33)
      {
        v34 = [(CoreDAVDiscoveryTaskGroup *)self wellKnownPath];
        v35 = [v34 length];

        if (v32)
        {

          if (!v35)
          {
LABEL_35:
            obja = self->_discoveries;
            objc_sync_enter(obja);
            [(NSMutableArray *)self->_discoveries removeObject:v66];
            v36 = MEMORY[0x277CBEA60];
            v37 = [v66 scheme];
            v38 = [v36 arrayWithObject:v37];
            v39 = [(CoreDAVDiscoveryTaskGroup *)self setupDiscoveries:v66 withSchemes:v38];

            objc_sync_exit(obja);
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v40 = v39;
            v41 = [v40 countByEnumeratingWithState:&v67 objects:v79 count:16];
            if (v41)
            {
              v42 = *v68;
              do
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v68 != v42)
                  {
                    objc_enumerationMutation(v40);
                  }

                  [(CoreDAVDiscoveryTaskGroup *)self startPropfindTask:*(*(&v67 + 1) + 8 * i)];
                }

                v41 = [v40 countByEnumeratingWithState:&v67 objects:v79 count:16];
              }

              while (v41);
            }

LABEL_58:

LABEL_59:
            goto LABEL_60;
          }
        }

        else if (!v35)
        {
          goto LABEL_35;
        }

        v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
        obj = self->_discoveries;
        objc_sync_enter(obj);
        [(NSMutableArray *)self->_discoveries removeObject:v66];
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v45 = [v66 scheme];
        v46 = [v45 lowercaseString];
        v47 = [(CoreDAVDiscoveryTaskGroup *)self allDiscoveryPorts:v66 withScheme:v46];

        v48 = [v47 countByEnumeratingWithState:&v75 objects:v81 count:16];
        if (v48)
        {
          v49 = *v76;
          do
          {
            for (j = 0; j != v48; ++j)
            {
              if (*v76 != v49)
              {
                objc_enumerationMutation(v47);
              }

              v51 = *(*(&v75 + 1) + 8 * j);
              v52 = [[CoreDAVDiscoveryAccountInfo alloc] initWithAccountInfoProvider:v66];
              -[CoreDAVDiscoveryAccountInfo setPort:](v52, "setPort:", [v51 integerValue]);
              [(CoreDAVDiscoveryAccountInfo *)v52 setStarted:1];
              [v44 addObject:v52];
              [(NSMutableArray *)self->_discoveries addObject:v52];
            }

            v48 = [v47 countByEnumeratingWithState:&v75 objects:v81 count:16];
          }

          while (v48);
        }

        objc_sync_exit(obj);
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v40 = v44;
        v53 = [v40 countByEnumeratingWithState:&v71 objects:v80 count:16];
        if (v53)
        {
          v54 = *v72;
          do
          {
            for (k = 0; k != v53; ++k)
            {
              if (*v72 != v54)
              {
                objc_enumerationMutation(v40);
              }

              v56 = *(*(&v71 + 1) + 8 * k);
              v57 = [v56 serverRoot];
              v58 = [(CoreDAVDiscoveryTaskGroup *)self wellKnownPath];
              [v56 setServerRoot:v58];

              v59 = [v56 url];
              [v56 setServerRoot:v57];
              [(CoreDAVDiscoveryTaskGroup *)self startWellKnownLocationTask:v56 withURL:v59];
            }

            v53 = [v40 countByEnumeratingWithState:&v71 objects:v80 count:16];
          }

          while (v53);
        }

        goto LABEL_58;
      }

      if (!v32)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_35;
  }

  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v6 error:v7];

LABEL_60:
  v60 = *MEMORY[0x277D85DE8];
}

- (void)completeOptionsTask:(id)a3 error:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->super._isCancelling)
  {
    v8 = [v6 accountInfoProvider];
    v12 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v14 = [v12 logHandleForAccountInfoProvider:WeakRetained];

    if (v14)
    {
      v15 = v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v36 = v8;
        v16 = [v8 url];
        requiredComplianceClass = self->_requiredComplianceClass;
        if (v7)
        {
          v18 = 0;
        }

        else
        {
          v18 = [v6 responseHeaders];
        }

        *buf = 136316162;
        v38 = "[CoreDAVDiscoveryTaskGroup completeOptionsTask:error:]";
        v39 = 2112;
        v40 = v16;
        v41 = 2112;
        v42 = requiredComplianceClass;
        v43 = 2112;
        v44 = v7;
        v45 = 2112;
        v46 = v18;
        _os_log_impl(&dword_2452FB000, v15, OS_LOG_TYPE_INFO, "%s - URL: [%@], requiredComplianceClass: [%@], error: [%@], responseHeaders: [%@]", buf, 0x34u);
        if (!v7)
        {
        }

        v8 = v36;
      }
    }

    if (v7)
    {
      v19 = [v7 domain];
      if ([v19 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
      {
        v20 = [v7 code];

        if (v20 == 401)
        {
          [(CoreDAVDiscoveryTaskGroup *)self setDidReceiveAuthenticationError:1];
        }
      }

      else
      {
      }

      v9 = self;
      v10 = v6;
      v11 = v7;
      goto LABEL_23;
    }

    v21 = [v6 responseHeaders];
    v22 = CDVCleanedStringsFromResponseHeaders(v21, @"DAV");

    if (self->_requiredComplianceClass)
    {
      if (([v22 containsObject:?] & 1) == 0)
      {
        v23 = +[CoreDAVLogging sharedLogging];
        v24 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v25 = [v23 logHandleForAccountInfoProvider:v24];

        if (v25)
        {
          v25 = v25;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = v8;
            v27 = self->_requiredComplianceClass;
            v28 = [v26 url];
            *buf = 136315650;
            v38 = "[CoreDAVDiscoveryTaskGroup completeOptionsTask:error:]";
            v39 = 2112;
            v40 = v27;
            v8 = v26;
            v41 = 2112;
            v42 = v28;
            v29 = "%s - No mention of compliance class [%@] in DAV header at URL: [%@]";
            v30 = v25;
            v31 = 32;
LABEL_30:
            _os_log_impl(&dword_2452FB000, v30, OS_LOG_TYPE_INFO, v29, buf, v31);

            goto LABEL_31;
          }

          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    else if (![v22 count])
    {
      v23 = +[CoreDAVLogging sharedLogging];
      v34 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v25 = [v23 logHandleForAccountInfoProvider:v34];

      if (v25)
      {
        v25 = v25;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v28 = [v8 url];
          *buf = 136315394;
          v38 = "[CoreDAVDiscoveryTaskGroup completeOptionsTask:error:]";
          v39 = 2112;
          v40 = v28;
          v29 = "%s - No DAV header at URL: [%@]";
          v30 = v25;
          v31 = 22;
          goto LABEL_30;
        }

LABEL_31:
      }

LABEL_32:

      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:6 userInfo:0];
      [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v6 error:v35];

      goto LABEL_33;
    }

    [v8 setServerComplianceClasses:v22];
    v33 = [v6 responseHeaders];
    [v8 setServerHeaders:v33];

    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v6 error:0];
LABEL_33:

    goto LABEL_24;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  v9 = self;
  v10 = v6;
  v11 = v8;
LABEL_23:
  [(CoreDAVDiscoveryTaskGroup *)v9 completeDiscovery:v10 error:v11];
LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)optionsTask:(id)a3 error:(id)a4
{
  outstandingTasks = self->super._outstandingTasks;
  v7 = a4;
  v8 = a3;
  [(NSMutableSet *)outstandingTasks removeObject:v8];
  [(CoreDAVDiscoveryTaskGroup *)self completeOptionsTask:v8 error:v7];
}

- (void)propFindTaskFinished:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 multiStatus];
  v6 = [v5 orderedResponses];

  v7 = [v4 error];
  [(NSMutableSet *)self->super._outstandingTasks removeObject:v4];
  if (!self->super._isCancelling)
  {
    v8 = [v4 accountInfoProvider];
    v9 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
    v11 = [v9 logHandleForAccountInfoProvider:WeakRetained];

    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v8 url];
        *buf = 136315906;
        v24 = "[CoreDAVDiscoveryTaskGroup propFindTaskFinished:]";
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v6;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_2452FB000, v12, OS_LOG_TYPE_INFO, "%s - URL: [%@], parsedResponses: [%@], error: [%@]", buf, 0x2Au);
      }
    }

    if (v7)
    {
      v14 = [v7 domain];
      if ([v14 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
      {
        v15 = [v7 code];

        if (v15 == 401)
        {
          [(CoreDAVDiscoveryTaskGroup *)self setDidReceiveAuthenticationError:1];
        }
      }

      else
      {
      }

      v16 = 0;
    }

    else
    {
      v22 = 0;
      v16 = [(CoreDAVDiscoveryTaskGroup *)self extractPrincipalURLFromPropFindTask:v4 error:&v22];
      v17 = v22;
      if (!v17)
      {
        [v8 setPrincipalURL:v16];
        v19 = [v8 principalURL];
        v20 = [v19 relativePath];
        v21 = [v20 CDVStringByAppendingSlashIfNeeded];
        [v8 setServerRoot:v21];

        [(CoreDAVDiscoveryTaskGroup *)self startOptionsTask:v8];
        v7 = 0;
        goto LABEL_16;
      }

      v7 = v17;
    }

    [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v4 error:v7];
LABEL_16:

    goto LABEL_17;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
  [(CoreDAVDiscoveryTaskGroup *)self completeDiscovery:v4 error:v8];
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)completeDiscovery:(id)a3 error:(id)a4
{
  v133 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v93 = a4;
  v88 = v5;
  v94 = [v5 accountInfoProvider];
  v6 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v8 = [v6 logHandleForAccountInfoProvider:WeakRetained];

  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v94 url];
      v11 = [v94 principalURL];
      v12 = [v94 serverComplianceClasses];
      *buf = 136316162;
      v124 = "[CoreDAVDiscoveryTaskGroup completeDiscovery:error:]";
      v125 = 2112;
      v126 = v10;
      v127 = 2112;
      v128 = v11;
      v129 = 2112;
      v130 = v12;
      v131 = 2112;
      v132 = v93;
      _os_log_impl(&dword_2452FB000, v9, OS_LOG_TYPE_INFO, "%s - URL: [%@] principalURL: [%@] complianceClasses: [%@] error: [%@]", buf, 0x34u);
    }
  }

  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  [(CoreDAVDiscoveryTaskGroup *)self getDiscoveryStatus:v94 priorFailed:&v120 subsequentFailed:0 priorIncomplete:&v119 subsequentIncomplete:&v118 priorSuccess:&v117 subsequentSuccess:&v116];
  v89 = v120;
  v13 = v119;
  v96 = v118;
  v92 = v117;
  v90 = v116;
  v91 = v13;
  v14 = [v13 count];
  v15 = [v96 count] + v14;
  if (v93)
  {
    [v94 setError:?];
    if (![v92 count] && !-[CoreDAVDiscoveryTaskGroup shouldBailEarly](self, "shouldBailEarly"))
    {
      v16 = self->_discoveries;
      objc_sync_enter(v16);
      v17 = [(NSMutableArray *)self->_discoveries indexOfObject:v94];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v83 = [MEMORY[0x277CCA890] currentHandler];
        [v83 handleFailureInMethod:a2 object:self file:@"CoreDAVDiscoveryTaskGroup.m" lineNumber:995 description:@"Current discovery was not found."];
      }

      if (v17 + 1 < [(NSMutableArray *)self->_discoveries count])
      {
        v18 = [(NSMutableArray *)self->_discoveries objectAtIndex:?];
        if (([v18 started] & 1) == 0 && !self->super._isCancelling)
        {
          [(CoreDAVDiscoveryTaskGroup *)self startPropfindTask:v18];
          ++v15;
        }
      }

      objc_sync_exit(v16);
    }

    if (v15)
    {
      v19 = +[CoreDAVLogging sharedLogging];
      v20 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v21 = [v19 logHandleForAccountInfoProvider:v20];

      if (v21)
      {
        v22 = v21;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [v94 url];
          *buf = 138412546;
          v124 = v23;
          v125 = 2048;
          v126 = v15;
          _os_log_impl(&dword_2452FB000, v22, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ failed, waiting for %lu incomplete.", buf, 0x16u);
        }
      }
    }

    else if ([v92 count] || objc_msgSend(v90, "count"))
    {
      if ([v92 count])
      {
        v40 = v92;
      }

      else
      {
        v40 = v90;
      }

      v41 = [v40 objectAtIndex:0];
      [(CoreDAVDiscoveryTaskGroup *)self setDiscoveredAccountInfo:v41];

      v42 = +[CoreDAVLogging sharedLogging];
      v43 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v44 = [v42 logHandleForAccountInfoProvider:v43];

      if (v44)
      {
        v45 = v44;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = [v94 url];
          v47 = [(CoreDAVDiscoveryTaskGroup *)self discoveredAccountInfo];
          v48 = [v47 principalURL];
          *buf = 138412546;
          v124 = v46;
          v125 = 2112;
          v126 = v48;
          _os_log_impl(&dword_2452FB000, v45, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ failed, returning previous success %@.", buf, 0x16u);
        }
      }

      v115[0] = MEMORY[0x277D85DD0];
      v115[1] = 3221225472;
      v115[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke;
      v115[3] = &unk_278E30F18;
      v115[4] = self;
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v115];
    }

    else if ([v89 count])
    {
      v87 = v94;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v60 = v89;
      v61 = [v60 countByEnumeratingWithState:&v111 objects:v122 count:16];
      v62 = v87;
      if (v61)
      {
        v63 = *v112;
        do
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v112 != v63)
            {
              objc_enumerationMutation(v60);
            }

            v65 = *(*(&v111 + 1) + 8 * i);
            v66 = [v65 error];
            v67 = [v66 domain];
            if ([v67 isEqualToString:@"CoreDAVHTTPStatusErrorDomain"])
            {
              v68 = [v65 error];
              v69 = [v68 code] == 401;

              if (v69)
              {
                v62 = v65;

                goto LABEL_86;
              }
            }

            else
            {
            }
          }

          v61 = [v60 countByEnumeratingWithState:&v111 objects:v122 count:16];
        }

        while (v61);
        v62 = v87;
      }

LABEL_86:

      v75 = +[CoreDAVLogging sharedLogging];
      v76 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v77 = [v75 logHandleForAccountInfoProvider:v76];

      if (v77)
      {
        v78 = v77;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          v79 = [v87 url];
          v80 = [v62 url];
          *buf = 138412546;
          v124 = v79;
          v125 = 2112;
          v126 = v80;
          _os_log_impl(&dword_2452FB000, v78, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ failed, returning prior error %@.", buf, 0x16u);
        }
      }

      v81 = [v62 error];
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_298;
      v109[3] = &unk_278E30F90;
      v109[4] = self;
      v110 = v62;
      v82 = v62;
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v81 delegateCallbackBlock:v109];
    }

    else
    {
      v70 = +[CoreDAVLogging sharedLogging];
      v71 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v72 = [v70 logHandleForAccountInfoProvider:v71];

      if (v72)
      {
        v73 = v72;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v74 = [v94 url];
          *buf = 138412290;
          v124 = v74;
          _os_log_impl(&dword_2452FB000, v73, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ failed, returning error.", buf, 0xCu);
        }
      }

      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_299;
      v107[3] = &unk_278E30F90;
      v107[4] = self;
      v108 = v93;
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v108 delegateCallbackBlock:v107];
    }
  }

  else
  {
    v24 = [v94 principalURL];
    v25 = v24 == 0;

    if (v25)
    {
      [CoreDAVDiscoveryTaskGroup completeDiscovery:error:];
    }

    [v94 setSuccess:1];
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_303;
    v106[3] = &unk_278E30F18;
    v106[4] = self;
    v86 = MEMORY[0x245D68C20](v106);
    when = dispatch_time(0, 5000000000);
    if ([v96 count])
    {
      v26 = +[CoreDAVLogging sharedLogging];
      v27 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v28 = [v26 logHandleForAccountInfoProvider:v27];

      if (v28)
      {
        v29 = v28;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = [v96 count];
          *buf = 134217984;
          v124 = v30;
          _os_log_impl(&dword_2452FB000, v29, OS_LOG_TYPE_INFO, "Principal information found. Tearing down %lu outstanding tasks", buf, 0xCu);
        }
      }

      v31 = [(NSMutableSet *)self->super._outstandingTasks copy];
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
      v102 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v102 objects:v121 count:16];
      if (v33)
      {
        v34 = *v103;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v103 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v102 + 1) + 8 * j);
            v37 = [v36 accountInfoProvider];
            v38 = [v96 containsObject:v37];

            if (v38)
            {
              v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:0];
              [v36 finishCoreDAVTaskWithError:v39];

              --v15;
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v102 objects:v121 count:16];
        }

        while (v33);
      }

      if (v15 != [v91 count])
      {
        [CoreDAVDiscoveryTaskGroup completeDiscovery:error:];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_307;
      block[3] = &unk_278E31030;
      v101 = v86;
      dispatch_after(when, MEMORY[0x277D85CD0], block);
    }

    else if ([v91 count])
    {
      v49 = +[CoreDAVLogging sharedLogging];
      v50 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v51 = [v49 logHandleForAccountInfoProvider:v50];

      if (v51)
      {
        v52 = v51;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = [v94 url];
          *buf = 138412546;
          v124 = v53;
          v125 = 2048;
          v126 = v15;
          _os_log_impl(&dword_2452FB000, v52, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ success, waiting for prior %lu incomplete.", buf, 0x16u);
        }
      }

      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_315;
      v97[3] = &unk_278E31030;
      v98 = v86;
      dispatch_after(when, MEMORY[0x277D85CD0], v97);
    }

    else
    {
      if ([v92 count])
      {
        [CoreDAVDiscoveryTaskGroup completeDiscovery:error:];
      }

      if (v15)
      {
        [CoreDAVDiscoveryTaskGroup completeDiscovery:error:];
      }

      [(CoreDAVDiscoveryTaskGroup *)self setDiscoveredAccountInfo:v94];
      v54 = +[CoreDAVLogging sharedLogging];
      v55 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v56 = [v54 logHandleForAccountInfoProvider:v55];

      if (v56)
      {
        v57 = v56;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v58 = [v94 url];
          *buf = 138412290;
          v124 = v58;
          _os_log_impl(&dword_2452FB000, v57, OS_LOG_TYPE_INFO, "CoreDAVDiscoveryTaskGroup.completeDiscovery:%@ success, returning.", buf, 0xCu);
        }
      }

      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_314;
      v99[3] = &unk_278E30F18;
      v99[4] = self;
      [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:v99];
    }
  }

  v59 = *MEMORY[0x277D85DE8];
}

void __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 discoveredAccountInfo];
  [v4 discoveryTask:v2 gotAccountInfo:v3 error:0];
}

void __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_298(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) error];
  [v4 discoveryTask:v2 gotAccountInfo:0 error:v3];
}

void __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_299(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 discoveryTask:*(a1 + 32) gotAccountInfo:0 error:*(a1 + 40)];
}

void __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_303(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 32) count])
  {
    v2 = +[CoreDAVLogging sharedLogging];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v4 = [v2 logHandleForAccountInfoProvider:WeakRetained];

    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(*(a1 + 32) + 32) count];
        *buf = 134217984;
        v22 = v6;
        _os_log_impl(&dword_2452FB000, v5, OS_LOG_TYPE_INFO, "Giving up on all outstanding tasks since we found some information already. Tearing down %lu outstanding tasks", buf, 0xCu);
      }
    }

    *(*(a1 + 32) + 40) = 1;
    v7 = [*(*(a1 + 32) + 32) copy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:{0, v16}];
          [v13 finishCoreDAVTaskWithError:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __53__CoreDAVDiscoveryTaskGroup_completeDiscovery_error___block_invoke_314(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 discoveredAccountInfo];
  [v4 discoveryTask:v2 gotAccountInfo:v3 error:0];
}

- (void)noteDefinitiveAuthFailureFromTask:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CoreDAVDiscoveryTaskGroup *)self setShouldBailEarly:1];
  v5 = +[CoreDAVLogging sharedLogging];
  WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v7 = [v5 logHandleForAccountInfoProvider:WeakRetained];

  if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2452FB000, v7, OS_LOG_TYPE_INFO, "Received definitive 401, canceling remaining tasks", buf, 2u);
  }

  v8 = [(NSMutableSet *)self->super._outstandingTasks copy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if (v14 != v4)
        {
          v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:1 userInfo:{0, v17}];
          [v14 finishCoreDAVTaskWithError:v15];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)propFindProperties
{
  v2 = objc_alloc_init(CoreDAVItemParserMapping);
  [(CoreDAVItemParserMapping *)v2 setNameSpace:@"DAV:"];
  [(CoreDAVItemParserMapping *)v2 setName:@"current-user-principal"];
  [(CoreDAVItemParserMapping *)v2 setParseClass:objc_opt_class()];
  v3 = objc_alloc_init(CoreDAVItemParserMapping);
  [(CoreDAVItemParserMapping *)v3 setNameSpace:@"DAV:"];
  [(CoreDAVItemParserMapping *)v3 setName:@"resourcetype"];
  [(CoreDAVItemParserMapping *)v3 setParseClass:objc_opt_class()];
  v4 = objc_alloc_init(CoreDAVItemParserMapping);
  [(CoreDAVItemParserMapping *)v4 setNameSpace:@"DAV:"];
  [(CoreDAVItemParserMapping *)v4 setName:@"principal-URL"];
  [(CoreDAVItemParserMapping *)v4 setParseClass:objc_opt_class()];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, v3, v4, 0}];

  return v5;
}

- (id)extractPrincipalURLFromPropFindTask:(id)a3 error:(id *)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 multiStatus];
  v8 = [v7 orderedResponses];

  v9 = [v6 accountInfoProvider];

  if ([v8 count] == 1)
  {
    v58 = a4;
    v57 = [v8 objectAtIndex:0];
    v10 = [v57 successfulPropertiesToValues];
    v56 = [v10 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"resourcetype"];
    v11 = [v56 principal];
    if (v11)
    {
      v12 = v11;
      WeakRetained = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v14 = [WeakRetained serverRoot];

      if (v14)
      {
        v15 = +[CoreDAVLogging sharedLogging];
        v16 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v17 = [v15 logHandleForAccountInfoProvider:v16];

        if (v17)
        {
          v18 = v17;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = objc_loadWeakRetained(&self->super._accountInfoProvider);
            v20 = [v19 serverRoot];
            *buf = 138412290;
            v60 = v20;
            _os_log_impl(&dword_2452FB000, v18, OS_LOG_TYPE_INFO, "Returning specified user principal [%@]", buf, 0xCu);
          }
        }

        if ([v9 port])
        {
          v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "port")}];
        }

        else
        {
          v21 = 0;
        }

        v47 = MEMORY[0x277CBEBC0];
        v36 = [v9 scheme];
        v25 = [v9 host];
        v48 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v49 = [v48 serverRoot];
        v26 = [v47 CDVURLWithScheme:v36 host:v25 port:v21 path:v49];

        goto LABEL_44;
      }
    }

    v27 = [v10 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"current-user-principal"];
    v21 = v27;
    if (v27)
    {
      v28 = [v27 unauthenticated];

      if (v28)
      {
        v29 = +[CoreDAVLogging sharedLogging];
        v30 = objc_loadWeakRetained(&self->super._accountInfoProvider);
        v31 = [v29 logHandleForAccountInfoProvider:v30];

        if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2452FB000, v31, OS_LOG_TYPE_DEFAULT, "Not authenticated to get current user principal", buf, 2u);
        }

        v55 = 0;
        v32 = 4;
LABEL_26:

        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:v32 userInfo:0];
        v35 = [v10 CDVObjectForKeyWithNameSpace:@"DAV:" andName:@"principal-URL"];
        v36 = v35;
        if (v35)
        {
          v37 = [v35 href];
          v26 = [v37 payloadAsFullURL];

          if (v26)
          {
LABEL_44:
            v46 = 0;
            a4 = v58;
            goto LABEL_45;
          }

          v38 = +[CoreDAVLogging sharedLogging];
          v39 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v40 = [v38 logHandleForAccountInfoProvider:v39];

          if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = v10;
            _os_log_impl(&dword_2452FB000, v40, OS_LOG_TYPE_DEFAULT, "Could not find the href of the user's principal URL. Found properties: [%@]", buf, 0xCu);
          }

          v41 = v55;
          if (!v25)
          {
            v41 = 1;
          }

          a4 = v58;
          if (v41 != 1)
          {
LABEL_34:
            v26 = 0;
LABEL_46:

            goto LABEL_47;
          }
        }

        else
        {
          v42 = +[CoreDAVLogging sharedLogging];
          v43 = objc_loadWeakRetained(&self->super._accountInfoProvider);
          v44 = [v42 logHandleForAccountInfoProvider:v43];

          if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = v10;
            _os_log_impl(&dword_2452FB000, v44, OS_LOG_TYPE_DEFAULT, "Could not find the user's principal URL. Found properties: [%@]", buf, 0xCu);
          }

          v45 = v55;
          if (!v25)
          {
            v45 = 1;
          }

          a4 = v58;
          if ((v45 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v46 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:8 userInfo:0];
        v26 = 0;
LABEL_45:

        v25 = v46;
        goto LABEL_46;
      }

      v53 = [v21 href];
      v26 = [v53 payloadAsFullURL];

      if (v26)
      {
        v25 = 0;
        a4 = v58;
LABEL_47:

        if (!a4)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      v29 = +[CoreDAVLogging sharedLogging];
      v54 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v31 = [v29 logHandleForAccountInfoProvider:v54];

      if (!v31 || !os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        v55 = 1;
        v32 = 8;
        goto LABEL_26;
      }

      *buf = 138412290;
      v60 = v21;
      v34 = "Could not find the current user principal's HREF.  Current user principal: [%@]";
    }

    else
    {
      v29 = +[CoreDAVLogging sharedLogging];
      v33 = objc_loadWeakRetained(&self->super._accountInfoProvider);
      v31 = [v29 logHandleForAccountInfoProvider:v33];

      if (!v31 || !os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 138412290;
      v60 = v10;
      v34 = "Could not find the current user principal. Found properties: [%@]";
    }

    _os_log_impl(&dword_2452FB000, v31, OS_LOG_TYPE_DEFAULT, v34, buf, 0xCu);
    goto LABEL_25;
  }

  v22 = +[CoreDAVLogging sharedLogging];
  v23 = objc_loadWeakRetained(&self->super._accountInfoProvider);
  v24 = [v22 logHandleForAccountInfoProvider:v23];

  if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v8;
    _os_log_impl(&dword_2452FB000, v24, OS_LOG_TYPE_DEFAULT, "We must have exactly one user principal for an account.  Parsed responses: [%@]", buf, 0xCu);
  }

  v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreDAVErrorDomain" code:8 userInfo:0];
  v26 = 0;
  if (a4)
  {
LABEL_48:
    if (v25)
    {
      v50 = v25;
      *a4 = v25;
    }
  }

LABEL_50:

  v51 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)cleanedStringsFromResponseHeaders:(id)a3 forHeader:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19 = a4;
  v6 = [v5 CDVObjectForKeyCaseInsensitive:?];
  v7 = [v6 lowercaseString];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v7 componentsSeparatedByString:{@", "}];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:v15];

        if ([v16 length])
        {
          if (v11)
          {
            [v11 addObject:v16];
          }

          else
          {
            v11 = [MEMORY[0x277CBEB58] setWithObject:v16];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)addToDiscoveryArray:(id *)a3 discovery:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    v7 = v5;
    if (*a3)
    {
      v5 = [*a3 addObject:v5];
      v6 = v7;
    }

    else
    {
      v5 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
      v6 = v7;
      *a3 = v5;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)getDiscoveryStatus:(id)a3 priorFailed:(id *)a4 subsequentFailed:(id *)a5 priorIncomplete:(id *)a6 subsequentIncomplete:(id *)a7 priorSuccess:(id *)a8 subsequentSuccess:(id *)a9
{
  v36 = *MEMORY[0x277D85DE8];
  v15 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  v30 = a4;
  if (a9)
  {
    *a9 = 0;
  }

  v27 = a6;
  v16 = a5;
  v28 = a7;
  v29 = a8;
  obj = self->_discoveries;
  objc_sync_enter(obj);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = self->_discoveries;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v31 + 1) + 8 * i);
        if (v22 == v15)
        {
          v19 = 1;
        }

        else if ([*(*(&v31 + 1) + 8 * i) started])
        {
          v23 = [v22 error];

          if (v23)
          {
            if (v19)
            {
              v24 = v16;
            }

            else
            {
              v24 = v30;
            }
          }

          else if ([v22 success])
          {
            if (v19)
            {
              v24 = a9;
            }

            else
            {
              v24 = v29;
            }
          }

          else if (v19)
          {
            v24 = v28;
          }

          else
          {
            v24 = v27;
          }

          [(CoreDAVDiscoveryTaskGroup *)self addToDiscoveryArray:v24 discovery:v22, obj];
        }
      }

      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v18);
  }

  objc_sync_exit(obj);
  v25 = *MEMORY[0x277D85DE8];
}

- (void)completeDiscovery:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)completeDiscovery:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)completeDiscovery:error:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)completeDiscovery:error:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end