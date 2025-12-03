@interface SUUIBootstrapScriptFallback
+ (id)cacheFilenameForStoreFrontIdentifier:(id)identifier;
+ (id)defaultCacheFolder;
- (BOOL)_setCacheAge:(id)age error:(id *)error;
- (BOOL)canFallbackForError:(id)error;
- (BOOL)isBagAvailable;
- (NSURL)cachedFileLocation;
- (SUUIBootstrapScriptFallback)init;
- (SUUIBootstrapScriptFallback)initWithCacheFolder:(id)folder filename:(id)filename;
- (SUUIBootstrapScriptFallback)initWithFilename:(id)filename;
- (id)retrieveScript:(id *)script;
- (int64_t)_unsynchronizedState;
- (int64_t)state;
- (void)_createCacheDirectoriesIfNeeded;
- (void)_logError:(id)error forOperation:(id)operation;
- (void)_runWhenBackgroundWorkFinished:(id)finished;
- (void)invalidate;
- (void)scriptEvaluated:(id)evaluated;
@end

@implementation SUUIBootstrapScriptFallback

+ (id)defaultCacheFolder
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v3 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v12];
  v4 = v12;

  if (!v3)
  {
    NSLog(&cfstr_CouldNotFindCa.isa, v4);
    v5 = MEMORY[0x277CBEBC0];
    v6 = NSTemporaryDirectory();
    v3 = [v5 fileURLWithPath:v6];
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier length])
  {
    v9 = [v3 URLByAppendingPathComponent:bundleIdentifier];

    v3 = v9;
  }

  v10 = [v3 URLByAppendingPathComponent:@"SUUIBootstrapScriptFallback"];

  return v10;
}

+ (id)cacheFilenameForStoreFrontIdentifier:(id)identifier
{
  v3 = [identifier stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@.%@", v3, @"v1", @"js"];

  return v4;
}

- (SUUIBootstrapScriptFallback)initWithCacheFolder:(id)folder filename:(id)filename
{
  folderCopy = folder;
  filenameCopy = filename;
  if (([folderCopy isFileURL] & 1) == 0)
  {
    [(SUUIBootstrapScriptFallback *)a2 initWithCacheFolder:folderCopy filename:?];
  }

  v17.receiver = self;
  v17.super_class = SUUIBootstrapScriptFallback;
  v10 = [(SUUIBootstrapScriptFallback *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_cacheFolder, folder);
    v12 = [filenameCopy copy];
    cacheFilename = v11->_cacheFilename;
    v11->_cacheFilename = v12;

    v11->_maximumAge = 604800.0;
    v14 = dispatch_queue_create("SUUIBootstrapScriptFallback", 0);
    queue = v11->_queue;
    v11->_queue = v14;

    [(SUUIBootstrapScriptFallback *)v11 _createCacheDirectoriesIfNeeded];
  }

  return v11;
}

- (SUUIBootstrapScriptFallback)initWithFilename:(id)filename
{
  filenameCopy = filename;
  defaultCacheFolder = [objc_opt_class() defaultCacheFolder];
  v6 = [(SUUIBootstrapScriptFallback *)self initWithCacheFolder:defaultCacheFolder filename:filenameCopy];

  return v6;
}

- (SUUIBootstrapScriptFallback)init
{
  [(SUUIBootstrapScriptFallback *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (int64_t)state
{
  queue = [(SUUIBootstrapScriptFallback *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue2 = [(SUUIBootstrapScriptFallback *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUUIBootstrapScriptFallback_state__block_invoke;
  v7[3] = &unk_2798F5B48;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue2, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __36__SUUIBootstrapScriptFallback_state__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _unsynchronizedState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSURL)cachedFileLocation
{
  cacheFolder = [(SUUIBootstrapScriptFallback *)self cacheFolder];
  cacheFilename = [(SUUIBootstrapScriptFallback *)self cacheFilename];
  v5 = [cacheFolder URLByAppendingPathComponent:cacheFilename];

  return v5;
}

- (BOOL)isBagAvailable
{
  v2 = [MEMORY[0x277D69C90] contextWithBagType:0];
  mEMORY[0x277D7FD50] = [MEMORY[0x277D7FD50] sharedCache];
  v4 = [mEMORY[0x277D7FD50] URLBagForContext:v2];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)canFallbackForError:(id)error
{
  errorCopy = error;
  state = [(SUUIBootstrapScriptFallback *)self state];
  if (state)
  {
    if (state == -1)
    {
      [(SUUIBootstrapScriptFallback *)self invalidate];
    }

    goto LABEL_13;
  }

  v6 = errorCopy;
  domain = [v6 domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA738]])
  {
    code = [v6 code];

    if (code == -1001)
    {
LABEL_11:
      isBagAvailable = [(SUUIBootstrapScriptFallback *)self isBagAvailable];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v9 = v6;
  userInfo = [v9 userInfo];
  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D6A118]];
  integerValue = [v11 integerValue];

  domain2 = [v9 domain];
  if (([domain2 isEqualToString:*MEMORY[0x277D6A110]] & 1) == 0)
  {

LABEL_13:
    isBagAvailable = 0;
    goto LABEL_14;
  }

  code2 = [v9 code];

  isBagAvailable = 0;
  if (code2 == 109 && (integerValue - 500) <= 0x63)
  {
    goto LABEL_11;
  }

LABEL_14:

  return isBagAvailable;
}

- (id)retrieveScript:(id *)script
{
  queue = [(SUUIBootstrapScriptFallback *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__42;
  v14 = __Block_byref_object_dispose__42;
  v15 = 0;
  queue2 = [(SUUIBootstrapScriptFallback *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SUUIBootstrapScriptFallback_retrieveScript___block_invoke;
  block[3] = &unk_2798FA928;
  block[5] = &v10;
  block[6] = script;
  block[4] = self;
  dispatch_sync(queue2, block);

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_24);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __46__SUUIBootstrapScriptFallback_retrieveScript___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _unsynchronizedState];
  if (v2)
  {
    if (!*(a1 + 48))
    {
      return;
    }

    if (v2 == -2)
    {
      v15 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"No cached script to retrieve.";
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v5 = v15;
      v6 = 560145512;
    }

    else
    {
      if (v2 != -1)
      {
        return;
      }

      v3 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = @"Cached script too old to retrieve.";
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v5 = v3;
      v6 = 1869374497;
    }

    **(a1 + 48) = [v5 errorWithDomain:@"SUUIBootstrapScriptFallbackErrorDomain" code:v6 userInfo:v4];
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [*(a1 + 32) cachedFileLocation];
    v16 = 0;
    v9 = [v7 initWithContentsOfURL:v8 encoding:4 error:&v16];
    v4 = v16;
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      if (*(a1 + 48))
      {
        v12 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277CCA450];
        v17[0] = *MEMORY[0x277CCA7E8];
        v17[1] = v13;
        v18[0] = v4;
        v18[1] = @"Could not retrieve script.";
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
        **(a1 + 48) = [v12 errorWithDomain:@"SUUIBootstrapScriptFallbackErrorDomain" code:561149042 userInfo:v14];
      }
    }
  }
}

- (void)scriptEvaluated:(id)evaluated
{
  evaluatedCopy = evaluated;
  queue = [(SUUIBootstrapScriptFallback *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUUIBootstrapScriptFallback_scriptEvaluated___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v8 = evaluatedCopy;
  selfCopy = self;
  v6 = evaluatedCopy;
  dispatch_async(queue, v7);
}

void __47__SUUIBootstrapScriptFallback_scriptEvaluated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cachedFileLocation];
  v6 = 0;
  v4 = [v2 writeToURL:v3 atomically:1 encoding:4 error:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) _logError:v5 forOperation:@"writing new JS file to cache"];
  }
}

- (void)invalidate
{
  queue = [(SUUIBootstrapScriptFallback *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SUUIBootstrapScriptFallback_invalidate__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__SUUIBootstrapScriptFallback_invalidate__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) cacheFolder];
  v29 = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:1 error:&v29];
  v5 = v29;

  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v21 = a1;
      v22 = v4;
      v23 = v5;
      v9 = 0;
      v10 = *v26;
      v11 = *MEMORY[0x277CCA050];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          v13 = v9;
          if (*v26 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v24 = v9;
          v15 = [v2 removeItemAtURL:v14 error:{&v24, v21}];
          v9 = v24;

          if ((v15 & 1) == 0)
          {
            v16 = v9;
            v17 = [v16 domain];
            if (([v17 isEqualToString:v11] & 1) == 0)
            {

LABEL_19:
              [*(v21 + 32) _logError:v16 forOperation:@"invalidating cached JS files"];
              goto LABEL_20;
            }

            if ([v16 code] == 4)
            {
            }

            else
            {
              v18 = [v16 code];

              if (v18 != 260)
              {
                goto LABEL_19;
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_20:

      v4 = v22;
      v5 = v23;
    }

    goto LABEL_21;
  }

  v6 = v5;
  v19 = [v6 domain];
  if (([v19 isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

LABEL_23:
    [*(a1 + 32) _logError:v6 forOperation:@"getting listing of cached JS files for invalidation"];
    goto LABEL_24;
  }

  if ([v6 code] != 4)
  {
    v20 = [v6 code];

    if (v20 == 260)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_21:
LABEL_24:
}

- (void)_createCacheDirectoriesIfNeeded
{
  queue = [(SUUIBootstrapScriptFallback *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SUUIBootstrapScriptFallback__createCacheDirectoriesIfNeeded__block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __62__SUUIBootstrapScriptFallback__createCacheDirectoriesIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) cacheFolder];
  v6 = 0;
  v4 = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) _logError:v5 forOperation:@"creating cache directory structure"];
  }
}

- (int64_t)_unsynchronizedState
{
  queue = [(SUUIBootstrapScriptFallback *)self queue];
  dispatch_assert_queue_V2(queue);

  cachedFileLocation = [(SUUIBootstrapScriptFallback *)self cachedFileLocation];
  v16 = 0;
  v5 = *MEMORY[0x277CBE7B0];
  v15 = 0;
  v6 = [cachedFileLocation getResourceValue:&v16 forKey:v5 error:&v15];
  v7 = v16;
  v8 = v15;

  if (v6)
  {
    cachedFileLocation2 = [(SUUIBootstrapScriptFallback *)self cachedFileLocation];
    [cachedFileLocation2 removeCachedResourceValueForKey:v5];

    [v7 timeIntervalSinceNow];
    v11 = fabs(v10);
    [(SUUIBootstrapScriptFallback *)self maximumAge];
    if (v11 <= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }
  }

  else
  {
    v13 = -2;
  }

  return v13;
}

- (void)_logError:(id)error forOperation:(id)operation
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  operationCopy = operation;
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = objc_opt_class();
  NSStringFromClass(v11);
  v15 = v14 = 138412802;
  v16 = 2112;
  v17 = operationCopy;
  v18 = 2112;
  v19 = errorCopy;
  LODWORD(v13) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v14, v13}];
    free(v12);
    SSFileLog();
LABEL_9:
  }
}

- (void)_runWhenBackgroundWorkFinished:(id)finished
{
  finishedCopy = finished;
  queue = [(SUUIBootstrapScriptFallback *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(SUUIBootstrapScriptFallback *)self queue];
  dispatch_barrier_async(queue2, finishedCopy);
}

- (BOOL)_setCacheAge:(id)age error:(id *)error
{
  ageCopy = age;
  queue = [(SUUIBootstrapScriptFallback *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue2 = [(SUUIBootstrapScriptFallback *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SUUIBootstrapScriptFallback__setCacheAge_error___block_invoke;
  v11[3] = &unk_2798FA970;
  v11[4] = self;
  v12 = ageCopy;
  v13 = &v15;
  errorCopy = error;
  v9 = ageCopy;
  dispatch_sync(queue2, v11);

  LOBYTE(ageCopy) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return ageCopy;
}

void __50__SUUIBootstrapScriptFallback__setCacheAge_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedFileLocation];
  v3 = *(a1 + 40);
  v4 = *MEMORY[0x277CBE7B0];
  v8 = 0;
  v5 = [v2 setResourceValue:v3 forKey:v4 error:&v8];
  v6 = v8;
  *(*(*(a1 + 48) + 8) + 24) = v5;

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && *(a1 + 56))
  {
    v7 = v6;
    **(a1 + 56) = v6;
  }
}

- (void)initWithCacheFolder:(uint64_t)a3 filename:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SUUIBootstrapScriptFallback.m" lineNumber:105 description:{@"cacheFolder is not a file URL: %@", a3}];
}

@end