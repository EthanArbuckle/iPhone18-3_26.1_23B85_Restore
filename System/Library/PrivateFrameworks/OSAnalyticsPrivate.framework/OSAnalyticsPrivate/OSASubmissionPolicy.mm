@interface OSASubmissionPolicy
- (OSASubmissionPolicy)init;
- (OSASubmissionPolicy)initWithTemplate:(id)template options:(id)options;
- (id)_loadPreviousResults;
- (id)buildSubmissionTemplateForConfig:(id)config;
- (id)shouldSubmitRouting:(id)routing;
- (void)persist;
- (void)registerRouting:(id)routing result:(BOOL)result;
@end

@implementation OSASubmissionPolicy

- (OSASubmissionPolicy)init
{
  v35 = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = OSASubmissionPolicy;
  v2 = [(OSASubmissionPolicy *)&v33 init];
  v3 = v2;
  if (v2)
  {
    _loadPreviousResults = [(OSASubmissionPolicy *)v2 _loadPreviousResults];
    results = v3->_results;
    v3->_results = _loadPreviousResults;

    if (!v3->_results)
    {
      v6 = objc_opt_new();
      v7 = v3->_results;
      v3->_results = v6;
    }

    v8 = objc_opt_new();
    allowOptOutByRouting = v3->_allowOptOutByRouting;
    v3->_allowOptOutByRouting = v8;

    v10 = objc_opt_new();
    scanOptions = v3->_scanOptions;
    v3->_scanOptions = v10;

    mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
    v13 = [mEMORY[0x277D36B80] submissionParam:@"templates"];
    v14 = [v13 objectForKeyedSubscript:@"default"];
    default_template = v3->_default_template;
    v3->_default_template = v14;

    objc_storeStrong(&v3->_primary_template, v3->_default_template);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v3->_default_template;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          v22 = [v21 objectForKeyedSubscript:@"policy"];
          v23 = [v22 objectForKeyedSubscript:@"allow-optout"];
          bOOLValue = [v23 BOOLValue];

          if (bOOLValue)
          {
            v25 = v3->_allowOptOutByRouting;
            v26 = [v21 objectForKeyedSubscript:@"routing"];
            [(NSMutableSet *)v25 addObject:v26];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v18);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v3;
}

- (OSASubmissionPolicy)initWithTemplate:(id)template options:(id)options
{
  templateCopy = template;
  optionsCopy = options;
  v8 = [(OSASubmissionPolicy *)self init];
  v9 = v8;
  if (templateCopy && v8)
  {
    if (([templateCopy isEqualToString:@"default"] & 1) == 0)
    {
      mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
      v11 = [mEMORY[0x277D36B80] submissionParam:@"templates"];
      v12 = [v11 objectForKeyedSubscript:templateCopy];
      primary_template = v9->_primary_template;
      v9->_primary_template = v12;
    }

    v14 = [optionsCopy objectForKeyedSubscript:@"logs"];
    specific_files = v9->_specific_files;
    v9->_specific_files = v14;

    v16 = [optionsCopy objectForKeyedSubscript:@"submission_info"];
    identifier = v9->_identifier;
    v9->_identifier = v16;

    v18 = [optionsCopy objectForKeyedSubscript:@"prefaces"];
    prefaces = v9->_prefaces;
    v9->_prefaces = v18;
  }

  return v9;
}

- (id)_loadPreviousResults
{
  v2 = MEMORY[0x277CBEAC0];
  mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
  pathDiagnostics = [mEMORY[0x277D36B80] pathDiagnostics];
  v5 = [pathDiagnostics stringByAppendingPathComponent:@"com.apple.osanalytics.submissionStatus.plist"];
  v6 = [v2 dictionaryWithContentsOfFile:v5];
  v7 = [v6 mutableCopy];

  return v7;
}

- (void)persist
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*self + 40);
  v3 = 138412290;
  v4 = v1;
  _os_log_error_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting submission results: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __30__OSASubmissionPolicy_persist__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:a2 closeOnDealloc:0];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  obj = 0;
  [v3 writeData:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
}

- (id)shouldSubmitRouting:(id)routing
{
  v13 = *MEMORY[0x277D85DE8];
  routingCopy = routing;
  [routingCopy isEqualToString:@"ca1-ohttp"];
  mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
  if ([mEMORY[0x277D36B80] optInApple])
  {

LABEL_4:
    v7 = &stru_286EAD908;
    goto LABEL_8;
  }

  v6 = [(NSMutableSet *)self->_allowOptOutByRouting containsObject:routingCopy];

  if (v6)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = routingCopy;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ignoring %{public}@ during Opt-OUT", &v11, 0xCu);
  }

  v7 = @"opt-out";
LABEL_8:
  if (![(__CFString *)v7 length])
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)buildSubmissionTemplateForConfig:(id)config
{
  v48 = *MEMORY[0x277D85DE8];
  configCopy = config;
  getAvailableTaskingRoutings = [MEMORY[0x277D36B88] getAvailableTaskingRoutings];
  self->_hasTasking = 0;
  array = [MEMORY[0x277CBEB18] array];
  v30 = configCopy;
  v6 = [configCopy isProxy];
  v7 = 16;
  if (v6)
  {
    v7 = 8;
  }

  v8 = *(&self->super.isa + v7);
  v33 = objc_opt_new();
  v34 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = v8;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v35 objects:v47 count:16];
  v32 = array;
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
        v15 = [v14 objectForKeyedSubscript:@"routing"];
        v16 = [v14 mutableCopy];
        v17 = [(OSASubmissionPolicy *)self shouldSubmitRouting:v15];
        if ([v17 length])
        {
          [v16 setObject:v17 forKeyedSubscript:@"<inactive>"];
          v18 = v34;
        }

        else
        {
          if ([getAvailableTaskingRoutings containsObject:v15])
          {
            self->_hasTasking = 1;
          }

          if (v9 != self->_default_template)
          {
            if (self->_specific_files)
            {
              v19 = [v16 objectForKeyedSubscript:@"extensions"];
              v20 = [v19 count];

              if (!v20)
              {
                [v16 setObject:self->_identifier forKeyedSubscript:@"submission_info"];
                [v16 setObject:self->_specific_files forKeyedSubscript:@"logs"];
                specific_files = self->_specific_files;
                self->_specific_files = 0;
              }
            }
          }

          v22 = [(NSDictionary *)self->_prefaces objectForKeyedSubscript:v15];

          array = v32;
          v18 = v33;
          if (v22)
          {
            v23 = [(NSDictionary *)self->_prefaces objectForKeyedSubscript:v15];
            [v16 setObject:v23 forKeyedSubscript:@"<preface>"];

            v18 = v33;
          }
        }

        [v18 addObject:v15];
        [array addObject:v16];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v11);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if ([v30 isProxy])
    {
      v24 = @"proxy";
    }

    else
    {
      v24 = @"primary";
    }

    if (v9 == self->_default_template)
    {
      v25 = @"default";
    }

    else
    {
      v25 = @"custom";
    }

    v26 = [v33 componentsJoinedByString:{@", "}];
    v27 = [v34 componentsJoinedByString:{@", "}];
    *buf = 138413058;
    v40 = v24;
    v41 = 2112;
    v42 = v25;
    v43 = 2112;
    v44 = v26;
    v45 = 2112;
    v46 = v27;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "submission template '%@:%@' includes [%@]; excludes [%@]", buf, 0x2Au);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v32;
}

- (void)registerRouting:(id)routing result:(BOOL)result
{
  resultCopy = result;
  routingCopy = routing;
  v6 = [(NSMutableSet *)self->_allowOptOutByRouting containsObject:routingCopy];
  v7 = @"default";
  if (v6)
  {
    v7 = routingCopy;
  }

  v8 = v7;
  v9 = [(NSMutableDictionary *)self->_results objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = v9;
    if (resultCopy)
    {
      [v9 removeObjectForKey:@"attempt"];
    }
  }

  else
  {
    v10 = objc_opt_new();
    [(NSMutableDictionary *)self->_results setObject:v10 forKeyedSubscript:v8];
  }

  date = [MEMORY[0x277CBEAA8] date];
  if (resultCopy)
  {
    v12 = @"success";
  }

  else
  {
    v12 = @"attempt";
  }

  [v10 setObject:date forKeyedSubscript:v12];
}

@end