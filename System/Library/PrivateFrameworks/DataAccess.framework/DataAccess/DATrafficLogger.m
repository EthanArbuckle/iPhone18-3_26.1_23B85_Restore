@interface DATrafficLogger
- (DATrafficLogger)initWithFilename:(id)a3;
- (void)_ensureCustomLogFile;
- (void)logSnippet:(id)a3;
- (void)slurpAndRemoveLookasideFile:(id)a3 prefixString:(id)a4 suffixString:(id)a5;
@end

@implementation DATrafficLogger

- (void)_ensureCustomLogFile
{
  if (_ensureCustomLogFile_once != -1)
  {
    [DATrafficLogger _ensureCustomLogFile];
  }

  v3 = [(DATrafficLogger *)self filename];

  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__DATrafficLogger__ensureCustomLogFile__block_invoke_2;
    block[3] = &unk_278F131F0;
    block[4] = self;
    dispatch_sync(_ensureCustomLogFile_logSetupQueue, block);
  }
}

uint64_t __39__DATrafficLogger__ensureCustomLogFile__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _ensureCustomLogFile_knownCustomNames;
  _ensureCustomLogFile_knownCustomNames = v0;

  _ensureCustomLogFile_logSetupQueue = dispatch_queue_create("com.apple.dataaccess.DATrafficQueue", 0);

  return MEMORY[0x2821F96F8]();
}

void __39__DATrafficLogger__ensureCustomLogFile__block_invoke_2(uint64_t a1)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v2 = _ensureCustomLogFile_knownCustomNames;
  v3 = [*(a1 + 32) filename];
  LOBYTE(v2) = [v2 containsObject:v3];

  if ((v2 & 1) == 0)
  {
    v4 = [&__block_literal_global_4 copy];
    DAMigrateLogsIfNeeded();
    v20[0] = *MEMORY[0x277D03998];
    v21[0] = DACustomLogDirectory();
    v20[1] = *MEMORY[0x277D039A8];
    v5 = [*(a1 + 32) filename];
    v6 = *MEMORY[0x277D039B0];
    v21[1] = v5;
    v21[2] = &unk_285AAFBF8;
    v7 = *MEMORY[0x277D039A0];
    v20[2] = v6;
    v20[3] = v7;
    v8 = *MEMORY[0x277D039C0];
    v9 = *MEMORY[0x277CBED10];
    v21[3] = @"DALogLevel";
    v21[4] = v9;
    v10 = *MEMORY[0x277D03990];
    v20[4] = v8;
    v20[5] = v10;
    v11 = MEMORY[0x24C1CE570](v4);
    v21[5] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];

    v13 = [MEMORY[0x277D03910] DAManagedDefaultForKey:@"DALogLevel"];

    if (!v13 && [MEMORY[0x277D03910] isAppleInternalInstall])
    {
      v14 = [v12 mutableCopy];
      [v14 setObject:&unk_285AAFC10 forKeyedSubscript:*MEMORY[0x277D039B8]];

      v12 = v14;
    }

    v15 = [*(a1 + 32) filename];
    v19 = v15;
    MEMORY[0x24C1CDEB0]([MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1], v12);

    v16 = _ensureCustomLogFile_knownCustomNames;
    v17 = [*(a1 + 32) filename];
    [v16 addObject:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (DATrafficLogger)initWithFilename:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DATrafficLogger;
  v5 = [(DATrafficLogger *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DATrafficLogger *)v5 setFilename:v4];
    [(DATrafficLogger *)v6 _ensureCustomLogFile];
  }

  return v6;
}

- (void)logSnippet:(id)a3
{
  v4 = a3;
  if (+[DATrafficLogger enabled])
  {
    v5 = [v4 copy];

    v4 = v5;
    v6 = [(DATrafficLogger *)self filename];
    DACPLoggingAppendDataToLogFile();
  }
}

void __30__DATrafficLogger_logSnippet___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)slurpAndRemoveLookasideFile:(id)a3 prefixString:(id)a4 suffixString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[DATrafficLogger enabled])
  {
    v11 = [(DATrafficLogger *)self filename];
    v12 = v8;
    DACPLoggingSlurpFileIntoLogFile();
  }
}

void __73__DATrafficLogger_slurpAndRemoveLookasideFile_prefixString_suffixString___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtPath:*(a1 + 32) error:0];
}

@end