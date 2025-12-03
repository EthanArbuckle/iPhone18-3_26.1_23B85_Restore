@interface PCCJob
- (PCCJob)initWithID:(id)d forTarget:(id)target options:(id)options;
- (PCCJob)initWithID:(id)d forTarget:(id)target options:(id)options forFile:(id)file;
- (id)description;
- (void)packageLog:(id)log forRouting:(id)routing info:(id)info options:(id)options;
- (void)registerResult:(BOOL)result error:(id)error;
@end

@implementation PCCJob

- (PCCJob)initWithID:(id)d forTarget:(id)target options:(id)options
{
  dCopy = d;
  targetCopy = target;
  optionsCopy = options;
  v23.receiver = self;
  v23.super_class = PCCJob;
  v12 = [(PCCJob *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_jid, d);
    objc_storeStrong(&v13->_target, target);
    objc_storeStrong(&v13->_options, options);
    date = [MEMORY[0x277CBEAA8] date];
    lastTouch = v13->_lastTouch;
    v13->_lastTouch = date;

    type = v13->_type;
    v13->_type = @"xfer-file";

    v17 = [optionsCopy objectForKeyedSubscript:@"event"];
    if (v17)
    {
      v18 = [optionsCopy objectForKeyedSubscript:@"event"];
      event = v13->_event;
      v13->_event = v18;
    }

    else
    {
      event = [optionsCopy objectForKeyedSubscript:@"jobEvent"];
      if (event)
      {
        v20 = [optionsCopy objectForKeyedSubscript:@"jobEvent"];
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
  filepath = [(OSALog *)self->_package filepath];
  v5 = [v2 stringWithFormat:@"single %@ %@", jid, filepath];

  return v5;
}

- (PCCJob)initWithID:(id)d forTarget:(id)target options:(id)options forFile:(id)file
{
  v44[3] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  fileCopy = file;
  v12 = [(PCCJob *)self initWithID:d forTarget:target options:optionsCopy];
  if (v12)
  {
    v13 = [optionsCopy objectForKeyedSubscript:@"<preserve>"];
    [v13 BOOLValue];

    v14 = OSAIsRSDDisplay();
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
    v37 = fileCopy;
    if (OSAIsConfiguredRSDDevice())
    {
      v16 = [standardUserDefaults objectForKey:@"autoCleanupProxiedFiles"];

      if (v16)
      {
        v17 = [standardUserDefaults BOOLForKey:@"autoCleanupProxiedFiles"];
        v14 = v17;
        v16 = v17;
      }
    }

    else
    {
      v16 = 0;
    }

    v18 = [(NSString *)v12->_jid isEqualToString:@"<unsolicited>", standardUserDefaults];
    mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
    pathSubmission = [mEMORY[0x277D36B80] pathSubmission];
    if ([v37 hasPrefix:pathSubmission])
    {
    }

    else
    {
      mEMORY[0x277D36B80]2 = [MEMORY[0x277D36B80] sharedInstance];
      stringByDeletingLastPathComponent = [v37 stringByDeletingLastPathComponent];
      v23 = [mEMORY[0x277D36B80]2 isWhitelisted:stringByDeletingLastPathComponent forDomain:@"transfer_paths"];

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
        fileCopy = v37;
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

    fileCopy = v37;
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

- (void)packageLog:(id)log forRouting:(id)routing info:(id)info options:(id)options
{
  v67 = *MEMORY[0x277D85DE8];
  logCopy = log;
  routingCopy = routing;
  infoCopy = info;
  optionsCopy = options;
  v14 = objc_alloc(MEMORY[0x277D36B68]);
  mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
  v16 = [v14 initWithPath:logCopy forRouting:routingCopy usingConfig:mEMORY[0x277D36B80] options:optionsCopy error:0];
  package = self->_package;
  self->_package = v16;

  v18 = self->_package;
  if (v18)
  {
    v60 = optionsCopy;
    [(OSALog *)v18 closeFileStream];
    filepath = [(OSALog *)self->_package filepath];
    mEMORY[0x277D36B80]2 = [MEMORY[0x277D36B80] sharedInstance];
    pathSubmission = [mEMORY[0x277D36B80]2 pathSubmission];
    v22 = [filepath hasPrefix:pathSubmission];

    if (v22)
    {
      filepath2 = [(OSALog *)self->_package filepath];
      mEMORY[0x277D36B80]3 = [MEMORY[0x277D36B80] sharedInstance];
      pathSubmission2 = [mEMORY[0x277D36B80]3 pathSubmission];
      v26 = [filepath2 stringByReplacingOccurrencesOfString:pathSubmission2 withString:&stru_286EAD908];
      stringByDeletingLastPathComponent = [v26 stringByDeletingLastPathComponent];
    }

    else
    {
      stringByDeletingLastPathComponent = &stru_286EAD908;
    }

    mEMORY[0x277D36B80]4 = [MEMORY[0x277D36B80] sharedInstance];
    crashReporterKey = [mEMORY[0x277D36B80]4 crashReporterKey];

    v62 = objc_opt_new();
    filepath3 = [(OSALog *)self->_package filepath];
    fileSystemRepresentation = [filepath3 fileSystemRepresentation];

    v30 = listxattr(fileSystemRepresentation, 0, 0, 0);
    v61 = routingCopy;
    if (v30 >= 1)
    {
      v31 = v30;
      v57 = infoCopy;
      v32 = malloc_type_malloc(v30, 0xD862EED1uLL);
      v33 = listxattr(fileSystemRepresentation, v32, v31, 0);
      if (v33 < 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v66 = fileSystemRepresentation;
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
          v38 = getxattr(fileSystemRepresentation, v37, 0, 0, 0, 0);
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
            v41 = getxattr(fileSystemRepresentation, v37, v40, v39, 0, 0);
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
      infoCopy = v57;
    }

    v63[0] = @"name";
    filepath4 = [(OSALog *)self->_package filepath];
    lastPathComponent = [filepath4 lastPathComponent];
    v64[0] = lastPathComponent;
    v64[1] = crashReporterKey;
    v63[1] = @"proxied_dev";
    v63[2] = @"subdir";
    v64[2] = stringByDeletingLastPathComponent;
    v64[3] = infoCopy;
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
    type = [(PCCJob *)self type];
    v64[8] = type;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:9];
    metadata = self->_metadata;
    self->_metadata = v51;

    date = [MEMORY[0x277CBEAA8] date];
    lastTouch = self->_lastTouch;
    self->_lastTouch = date;

    routingCopy = v61;
    optionsCopy = v60;
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)registerResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (resultCopy)
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
      v11 = errorCopy;
      _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "file send failure, abandoning job: %@", &v10, 0xCu);
    }

    objc_storeStrong(&self->_errObj, error);
  }

  package = self->_package;
  self->_package = 0;

  v9 = *MEMORY[0x277D85DE8];
}

@end