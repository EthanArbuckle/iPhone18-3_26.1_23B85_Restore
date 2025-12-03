@interface EFFileLogger
- (EFFileLogger)initWithFilename:(id)filename directory:(id)directory;
- (void)_ensureCustomLogFileInDirectory:(id)directory;
- (void)logSnippet:(id)snippet;
- (void)slurpAndRemoveLookasideFile:(id)file prefixString:(id)string suffixString:(id)suffixString;
@end

@implementation EFFileLogger

- (void)_ensureCustomLogFileInDirectory:(id)directory
{
  directoryCopy = directory;
  if (_ensureCustomLogFileInDirectory__once != -1)
  {
    [EFFileLogger _ensureCustomLogFileInDirectory:];
  }

  filename = [(EFFileLogger *)self filename];

  if (filename)
  {
    v6 = _ensureCustomLogFileInDirectory__logSetupQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__EFFileLogger__ensureCustomLogFileInDirectory___block_invoke_2;
    v7[3] = &unk_1E82485D0;
    v7[4] = self;
    v8 = directoryCopy;
    dispatch_sync(v6, v7);
  }
}

void __48__EFFileLogger__ensureCustomLogFileInDirectory___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _ensureCustomLogFileInDirectory__knownCustomNames;
  _ensureCustomLogFileInDirectory__knownCustomNames = v0;

  v2 = dispatch_queue_create("com.apple.email.queryLogging", 0);
  v3 = _ensureCustomLogFileInDirectory__logSetupQueue;
  _ensureCustomLogFileInDirectory__logSetupQueue = v2;
}

void __48__EFFileLogger__ensureCustomLogFileInDirectory___block_invoke_2(uint64_t a1)
{
  v18[6] = *MEMORY[0x1E69E9840];
  v2 = _ensureCustomLogFileInDirectory__knownCustomNames;
  v3 = [*(a1 + 32) filename];
  LOBYTE(v2) = [v2 containsObject:v3];

  if ((v2 & 1) == 0)
  {
    v4 = [&__block_literal_global_4_0 copy];
    DAMigrateLogsIfNeeded();
    v5 = *MEMORY[0x1E69998D8];
    v6 = *(a1 + 32);
    v18[0] = *(a1 + 40);
    v7 = *MEMORY[0x1E69998E0];
    v17[0] = v5;
    v17[1] = v7;
    v8 = [v6 filename];
    v18[1] = v8;
    v18[2] = &unk_1F45ACFB0;
    v9 = *MEMORY[0x1E69998F8];
    v17[2] = *MEMORY[0x1E69998E8];
    v17[3] = v9;
    v18[3] = *MEMORY[0x1E695E4C0];
    v17[4] = *MEMORY[0x1E69998D0];
    v10 = _Block_copy(v4);
    v17[5] = *MEMORY[0x1E69998F0];
    v18[4] = v10;
    v18[5] = &unk_1F45ACFC8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];

    v12 = [*(a1 + 32) filename];
    v16 = v12;
    MEMORY[0x1C6956E00]([MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1], v11);

    v13 = _ensureCustomLogFileInDirectory__knownCustomNames;
    v14 = [*(a1 + 32) filename];
    [v13 addObject:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (EFFileLogger)initWithFilename:(id)filename directory:(id)directory
{
  filenameCopy = filename;
  directoryCopy = directory;
  v11.receiver = self;
  v11.super_class = EFFileLogger;
  v8 = [(EFFileLogger *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(EFFileLogger *)v8 setFilename:filenameCopy];
    [(EFFileLogger *)v9 _ensureCustomLogFileInDirectory:directoryCopy];
  }

  return v9;
}

- (void)logSnippet:(id)snippet
{
  snippetCopy = snippet;
  if (+[EFFileLogger enabled])
  {
    v5 = [snippetCopy copy];

    snippetCopy = v5;
    filename = [(EFFileLogger *)self filename];
    DACPLoggingAppendDataToLogFile();
  }
}

void __27__EFFileLogger_logSnippet___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)slurpAndRemoveLookasideFile:(id)file prefixString:(id)string suffixString:(id)suffixString
{
  fileCopy = file;
  stringCopy = string;
  suffixStringCopy = suffixString;
  if (+[EFFileLogger enabled])
  {
    filename = [(EFFileLogger *)self filename];
    v12 = fileCopy;
    DACPLoggingSlurpFileIntoLogFile();
  }
}

void __70__EFFileLogger_slurpAndRemoveLookasideFile_prefixString_suffixString___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  [v2 removeItemAtPath:*(a1 + 32) error:0];
}

@end