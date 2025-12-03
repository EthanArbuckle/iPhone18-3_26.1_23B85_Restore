@interface PCCGroupJob
- (PCCGroupJob)initWithID:(id)d forTarget:(id)target options:(id)options;
- (id)description;
- (id)result;
- (void)prepareNext;
- (void)registerResult:(BOOL)result error:(id)error;
@end

@implementation PCCGroupJob

- (id)result
{
  errObj = self->super._errObj;
  if (!errObj)
  {
    errObj = self->_content;
  }

  return errObj;
}

- (PCCGroupJob)initWithID:(id)d forTarget:(id)target options:(id)options
{
  v58[6] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v50.receiver = self;
  v50.super_class = PCCGroupJob;
  v9 = [(PCCJob *)&v50 initWithID:d forTarget:target options:optionsCopy];
  if (v9)
  {
    v10 = objc_opt_new();
    log_sets = v9->_log_sets;
    v9->_log_sets = v10;

    v12 = [optionsCopy objectForKeyedSubscript:@"allFiles"];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      v14 = @"xfer-all";
    }

    else
    {
      v14 = @"xfer-group";
    }

    objc_storeStrong(&v9->_group_type, v14);
    v15 = [optionsCopy objectForKeyedSubscript:@"<preserve>"];
    bOOLValue2 = [v15 BOOLValue];

    v17 = OSAIsRSDDisplay() ^ 1;
    v18 = v17 & bOOLValue2;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
    v49 = optionsCopy;
    if (OSAIsConfiguredRSDDevice())
    {
      v20 = [standardUserDefaults objectForKey:@"autoCleanupProxiedFiles"];

      if (v20)
      {
        v17 = [standardUserDefaults BOOLForKey:@"autoCleanupProxiedFiles"];
        v18 = v17 ^ 1;
      }
    }

    v48 = standardUserDefaults;
    v21 = v9->_log_sets;
    v57[0] = @"routing";
    v57[1] = @"extensions";
    v58[0] = @"<sync>";
    v58[1] = &unk_286EB23F8;
    v58[2] = @"log-aggregated";
    v57[2] = @"<sort>";
    v57[3] = @"<exempt>";
    [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v22 = v47 = bOOLValue;
    v58[3] = v22;
    v57[4] = @"<cleanup>";
    [MEMORY[0x277CCABB0] numberWithBool:v17];
    v24 = v23 = v17;
    v58[4] = v24;
    v57[5] = @"<preserve>";
    v25 = [MEMORY[0x277CCABB0] numberWithBool:v18];
    v58[5] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:6];
    v27 = [v26 mutableCopy];
    [(NSMutableArray *)v21 addObject:v27];

    v46 = v9->_log_sets;
    v55[0] = @"routing";
    v55[1] = @"extensions";
    v56[0] = @"<sync>";
    v56[1] = &unk_286EB2410;
    v56[2] = MEMORY[0x277CBEC28];
    v55[2] = @"<metadata>";
    v55[3] = @"<exempt>";
    v28 = [MEMORY[0x277CCABB0] numberWithBool:v47];
    v56[3] = v28;
    v55[4] = @"<cleanup>";
    v29 = [MEMORY[0x277CCABB0] numberWithBool:v23];
    v56[4] = v29;
    v55[5] = @"<preserve>";
    v30 = [MEMORY[0x277CCABB0] numberWithBool:v18];
    v56[5] = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:6];
    v32 = [v31 mutableCopy];
    [(NSMutableArray *)v46 addObject:v32];

    if (v47)
    {
      v33 = v9->_log_sets;
      v53[0] = @"routing";
      v53[1] = @"extensions";
      v54[0] = @"<sync>";
      v54[1] = &unk_286EB2428;
      v53[2] = @"<descend>";
      v53[3] = @"<exempt>";
      v54[2] = MEMORY[0x277CBEC38];
      v54[3] = MEMORY[0x277CBEC38];
      v53[4] = @"<cleanup>";
      v34 = [MEMORY[0x277CCABB0] numberWithBool:v23];
      v54[4] = v34;
      v53[5] = @"<preserve>";
      v35 = [MEMORY[0x277CCABB0] numberWithBool:v18];
      v54[5] = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:6];
      v37 = [v36 mutableCopy];
      [(NSMutableArray *)v33 addObject:v37];
    }

    v38 = objc_opt_new();
    mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
    pathSubmission = [mEMORY[0x277D36B80] pathSubmission];
    [v38 addObject:pathSubmission];

    if ([MEMORY[0x277D36B68] isDataVaultEnabled])
    {
      mEMORY[0x277D36B80]2 = [MEMORY[0x277D36B80] sharedInstance];
      pathSubmissionDataVault = [mEMORY[0x277D36B80]2 pathSubmissionDataVault];
      [v38 addObject:pathSubmissionDataVault];
    }

    v9->_total_count = [MEMORY[0x277D36B68] scanLogs:v9->_log_sets from:v38];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      total_count = v9->_total_count;
      *buf = 67109120;
      v52 = total_count;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "gathered %u files for transfer", buf, 8u);
    }

    [(PCCGroupJob *)v9 prepareNext];

    optionsCopy = v49;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PCCJob *)self jid];
  success_count = self->_success_count;
  total_count = self->_total_count;
  filepath = [(OSALog *)self->super._package filepath];
  v8 = [v3 stringWithFormat:@"group %@ %d/%d %@", v4, success_count, total_count, filepath];

  return v8;
}

- (void)prepareNext
{
  v61 = *MEMORY[0x277D85DE8];
  package = self->super._package;
  self->super._package = 0;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_log_sets;
  v40 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v40)
  {
    v39 = *v45;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v45 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v44 + 1) + 8 * v4);
      v43 = [v5 objectForKeyedSubscript:@"routing"];
      v6 = [v5 objectForKeyedSubscript:@"logs"];
      v7 = [v5 objectForKeyedSubscript:@"<metadata>"];
      v41 = v4;
      if (v7)
      {
        v8 = [v5 objectForKeyedSubscript:@"<metadata>"];
        bOOLValue = [v8 BOOLValue];
      }

      else
      {
        bOOLValue = 1;
      }

      v58[0] = @"<metadata>";
      v42 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
      v59[0] = v42;
      v58[1] = @"<exempt>";
      v10 = MEMORY[0x277CCABB0];
      v11 = [v5 objectForKeyedSubscript:?];
      v12 = [v10 numberWithBool:{objc_msgSend(v11, "BOOLValue")}];
      v59[1] = v12;
      v58[2] = @"<cleanup>";
      v13 = MEMORY[0x277CCABB0];
      v14 = [v5 objectForKeyedSubscript:?];
      v15 = [v13 numberWithBool:{objc_msgSend(v14, "BOOLValue")}];
      v59[2] = v15;
      v58[3] = @"<preserve>";
      v16 = MEMORY[0x277CCABB0];
      v17 = [v5 objectForKeyedSubscript:?];
      v18 = [v16 numberWithBool:{objc_msgSend(v17, "BOOLValue")}];
      v59[3] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];

      while ([v6 count])
      {
        firstObject = [v6 firstObject];
        [v6 removeObjectAtIndex:0];
        v56[0] = @"current";
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_success_count + 1];
        v57[0] = v21;
        v56[1] = @"rejects";
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rejected_count];
        v57[1] = v22;
        v56[2] = @"errors";
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_error_count];
        v57[2] = v23;
        v56[3] = @"total";
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_total_count];
        v57[3] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:4];

        [(PCCJob *)self packageLog:firstObject forRouting:v43 info:v25 options:v19];
        if (self->super._package)
        {

          break;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v51 = firstObject;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "unable to package %@", buf, 0xCu);
        }

        ++self->_rejected_count;
      }

      v26 = self->super._package;

      if (v26)
      {
        break;
      }

      v4 = v41 + 1;
      if (v41 + 1 == v40)
      {
        v40 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v40)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (!self->super._package)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      success_count = self->_success_count;
      rejected_count = self->_rejected_count;
      error_count = self->_error_count;
      v30 = [(PCCJob *)self jid];
      *buf = 67109890;
      *v51 = success_count;
      *&v51[4] = 1024;
      *&v51[6] = rejected_count;
      v52 = 1024;
      v53 = error_count;
      v54 = 2112;
      v55 = v30;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "finished transferring %u logs successfully (%u rejected, %u errors) for job %@", buf, 0x1Eu);
    }

    v48[0] = @"current";
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_success_count];
    v49[0] = v31;
    v48[1] = @"rejects";
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rejected_count];
    v49[1] = v32;
    v48[2] = @"errors";
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_error_count];
    v49[2] = v33;
    v48[3] = @"total";
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_total_count];
    v49[3] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:4];
    content = self->_content;
    self->_content = v35;

    CFPreferencesSetAppValue(@"LastSuccess", [MEMORY[0x277CBEAA8] date], @"com.apple.ProxiedCrashCopier");
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)registerResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  package = self->super._package;
  if (!package)
  {
    [PCCGroupJob registerResult:error:];
  }

  if (resultCopy)
  {
    [(OSALog *)package retire:"transferred"];
    self->_consecutive_error_count = 0;
    ++self->_success_count;
LABEL_4:
    [(PCCGroupJob *)self prepareNext];
    goto LABEL_5;
  }

  ++self->_error_count;
  v10 = self->_consecutive_error_count + 1;
  self->_consecutive_error_count = v10;
  if (v10 <= 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      consecutive_error_count = self->_consecutive_error_count;
      v13[0] = 67109120;
      v13[1] = consecutive_error_count;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "consecutive file send failure #%u", v13, 8u);
    }

    goto LABEL_4;
  }

  objc_storeStrong(&self->super._errObj, error);
  v12 = self->super._package;
  self->super._package = 0;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "file send failure limit, abandoning job", v13, 2u);
  }

LABEL_5:

  v9 = *MEMORY[0x277D85DE8];
}

@end