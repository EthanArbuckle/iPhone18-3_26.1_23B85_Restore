@interface PCCJob
- (PCCJob)initWithID:(id)a3 forTarget:(id)a4 options:(id)a5;
- (PCCJob)initWithID:(id)a3 forTarget:(id)a4 options:(id)a5 forFile:(id)a6;
- (id)description;
- (void)packageLog:(id)a3 forRouting:(id)a4 info:(id)a5 options:(id)a6;
- (void)registerResult:(BOOL)a3 error:(id)a4;
@end

@implementation PCCJob

- (PCCJob)initWithID:(id)a3 forTarget:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = PCCJob;
  v12 = [(PCCJob *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_jid, a3);
    objc_storeStrong(&v13->_target, a4);
    objc_storeStrong(&v13->_options, a5);
    v14 = [MEMORY[0x277CBEAA8] date];
    lastTouch = v13->_lastTouch;
    v13->_lastTouch = v14;

    type = v13->_type;
    v13->_type = @"xfer-file";

    v17 = [v11 objectForKeyedSubscript:@"event"];
    if (v17)
    {
      v18 = [v11 objectForKeyedSubscript:@"event"];
      event = v13->_event;
      v13->_event = v18;
    }

    else
    {
      event = [v11 objectForKeyedSubscript:@"jobEvent"];
      if (event)
      {
        v20 = [v11 objectForKeyedSubscript:@"jobEvent"];
      }

      else
      {
        v20 = @"<unknown>";
      }

      v21 = v13->_event;
      v13->_event = &v20->isa;
    }
  }

  return v13;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  jid = self->_jid;
  v4 = [(OSALog *)self->_package filepath];
  v5 = [v2 stringWithFormat:@"single %@ %@", jid, v4];

  return v5;
}

- (PCCJob)initWithID:(id)a3 forTarget:(id)a4 options:(id)a5 forFile:(id)a6
{
  v44[3] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = [(PCCJob *)self initWithID:a3 forTarget:a4 options:v10];
  if (v12)
  {
    v13 = [v10 objectForKeyedSubscript:@"<preserve>"];
    [v13 BOOLValue];

    v14 = OSAIsRSDDisplay();
    v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v15 addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
    v37 = v11;
    if (OSAIsConfiguredRSDDevice())
    {
      v16 = [v15 objectForKey:@"autoCleanupProxiedFiles"];

      if (v16)
      {
        v17 = [v15 BOOLForKey:@"autoCleanupProxiedFiles"];
        v14 = v17;
        v16 = v17;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = [(NSString *)v12->_jid isEqualToString:@"<unsolicited>", v15];
    v19 = [MEMORY[0x277D36B80] sharedInstance];
    v20 = [v19 pathSubmission];
    if ([v37 hasPrefix:v20])
    {
    }

    else
    {
      v21 = [MEMORY[0x277D36B80] sharedInstance];
      v22 = [v37 stringByDeletingLastPathComponent];
      v23 = [v21 isWhitelisted:v22 forDomain:@"transfer_paths"];

      if (!v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "path non-accessible, abandoning job", buf, 2u);
        }

        v32 = MEMORY[0x277CCA9B8];
        v39 = *MEMORY[0x277CCA450];
        v40 = @"Path non-accessible";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v33 = [v32 errorWithDomain:@"ProxyJobErrorDomain" code:3 userInfo:v27];
        errObj = v12->_errObj;
        v12->_errObj = v33;
        v11 = v37;
        goto LABEL_16;
      }
    }

    v43[0] = @"<preserve>";
    v24 = [MEMORY[0x277CCABB0] numberWithBool:v14 ^ 1u];
    v44[0] = v24;
    v43[1] = @"<exempt>";
    v25 = [MEMORY[0x277CCABB0] numberWithBool:!v18];
    v44[1] = v25;
    v43[2] = @"<cleanup>";
    v26 = [MEMORY[0x277CCABB0] numberWithBool:v16];
    v44[2] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];

    v11 = v37;
    [(PCCJob *)v12 packageLog:v37 forRouting:@"<sync>" info:&unk_286EB2300 options:v27];
    if (v12->_package)
    {
LABEL_17:

      goto LABEL_18;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "specific file not available, abandoning job", buf, 2u);
    }

    v28 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA450];
    v42 = @"File unavailable";
    errObj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v30 = [v28 errorWithDomain:@"ProxyJobErrorDomain" code:2 userInfo:errObj];
    v31 = v12->_errObj;
    v12->_errObj = v30;

LABEL_16:
    goto LABEL_17;
  }

LABEL_18:

  v34 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)packageLog:(id)a3 forRouting:(id)a4 info:(id)a5 options:(id)a6
{
  v67 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc(MEMORY[0x277D36B68]);
  v15 = [MEMORY[0x277D36B80] sharedInstance];
  v16 = [v14 initWithPath:v10 forRouting:v11 usingConfig:v15 options:v13 error:0];
  package = self->_package;
  self->_package = v16;

  v18 = self->_package;
  if (v18)
  {
    v60 = v13;
    [(OSALog *)v18 closeFileStream];
    v19 = [(OSALog *)self->_package filepath];
    v20 = [MEMORY[0x277D36B80] sharedInstance];
    v21 = [v20 pathSubmission];
    v22 = [v19 hasPrefix:v21];

    if (v22)
    {
      v23 = [(OSALog *)self->_package filepath];
      v24 = [MEMORY[0x277D36B80] sharedInstance];
      v25 = [v24 pathSubmission];
      v26 = [v23 stringByReplacingOccurrencesOfString:v25 withString:&stru_286EAD908];
      v59 = [v26 stringByDeletingLastPathComponent];
    }

    else
    {
      v59 = &stru_286EAD908;
    }

    v27 = [MEMORY[0x277D36B80] sharedInstance];
    v58 = [v27 crashReporterKey];

    v62 = objc_opt_new();
    v28 = [(OSALog *)self->_package filepath];
    v29 = [v28 fileSystemRepresentation];

    v30 = listxattr(v29, 0, 0, 0);
    v61 = v11;
    if (v30 >= 1)
    {
      v31 = v30;
      v57 = v12;
      v32 = malloc_type_malloc(v30, 0xD862EED1uLL);
      v33 = listxattr(v29, v32, v31, 0);
      if (v33 < 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v66 = v29;
          _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "failed to get xattr list size for file: %s", buf, 0xCu);
        }
      }

      else
      {
        v35 = v33;
        v36 = MEMORY[0x277D86220];
        *&v34 = 138412290;
        v56 = v34;
        v37 = v32;
        do
        {
          v38 = getxattr(v29, v37, 0, 0, 0, 0);
          if (v38 < 1)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v66 = v37;
              _os_log_impl(&dword_25D12D000, v36, OS_LOG_TYPE_DEFAULT, "failed to get xattr value size for key: %s", buf, 0xCu);
            }
          }

          else
          {
            v39 = v38;
            v40 = malloc_type_malloc(v38 + 1, 0x4FD68610uLL);
            v41 = getxattr(v29, v37, v40, v39, 0, 0);
            if (v41 < 1)
            {
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v66 = v37;
                _os_log_impl(&dword_25D12D000, v36, OS_LOG_TYPE_DEFAULT, "failed to get xattr value for key: %s", buf, 0xCu);
              }
            }

            else
            {
              v42 = v41;
              *(v40 + v41) = 0;
              v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:v37];
              if (([v43 isEqualToString:@"com.apple.dataprotection.policy.exception-applied-by"] & 1) == 0)
              {
                v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v40 length:v42 encoding:4];
                if (v44)
                {
                  [v62 setObject:v44 forKeyedSubscript:v43];
                }

                else if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v56;
                  v66 = v43;
                  _os_log_impl(&dword_25D12D000, v36, OS_LOG_TYPE_DEFAULT, "failed to decode xattr value for key: %@", buf, 0xCu);
                }
              }
            }

            free(v40);
          }

          v37 += strlen(v37) + 1;
        }

        while (v37 - v32 < v35);
      }

      free(v32);
      v12 = v57;
    }

    v63[0] = @"name";
    v45 = [(OSALog *)self->_package filepath];
    v46 = [v45 lastPathComponent];
    v64[0] = v46;
    v64[1] = v58;
    v63[1] = @"proxied_dev";
    v63[2] = @"subdir";
    v64[2] = v59;
    v64[3] = v12;
    v63[3] = @"status";
    v63[4] = @"xattr_list";
    v64[4] = v62;
    v63[5] = @"device_class";
    v47 = [MEMORY[0x277CCABB0] numberWithInt:MGGetSInt32Answer()];
    event = self->_event;
    jid = self->_jid;
    v64[5] = v47;
    v64[6] = jid;
    v63[6] = @"jobId";
    v63[7] = @"jobEvent";
    v64[7] = event;
    v63[8] = @"jobType";
    v50 = [(PCCJob *)self type];
    v64[8] = v50;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:9];
    metadata = self->_metadata;
    self->_metadata = v51;

    v53 = [MEMORY[0x277CBEAA8] date];
    lastTouch = self->_lastTouch;
    self->_lastTouch = v53;

    v11 = v61;
    v13 = v60;
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)registerResult:(BOOL)a3 error:(id)a4
{
  v5 = a3;
  v12 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v5)
  {
    [(OSALog *)self->_package retire:"transferred"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "finished transferring log successfully", &v10, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "file send failure, abandoning job: %@", &v10, 0xCu);
    }

    objc_storeStrong(&self->_errObj, a4);
  }

  package = self->_package;
  self->_package = 0;

  v9 = *MEMORY[0x277D85DE8];
}

@end