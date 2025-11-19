@interface TSUTemporaryDirectoryManager
+ (id)baseDirectoryURL;
+ (id)makeUniqueDirectoryWithBaseDirectory:(id)a3 filename:(id)a4;
+ (id)sharedManager;
- (TSUTemporaryDirectoryManager)init;
- (id)_readDirectories;
- (id)newDirectoryWithFilename:(id)a3;
- (void)_clearDirectories:(id)a3;
@end

@implementation TSUTemporaryDirectoryManager

+ (id)baseDirectoryURL
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUTemporaryDirectoryManager baseDirectoryURL]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectoryManager.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:51 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "+[TSUTemporaryDirectoryManager baseDirectoryURL]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

+ (id)sharedManager
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUTemporaryDirectoryManager sharedManager]"];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectoryManager.m"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OITSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:59 isFatal:0 description:"Abstract method not overridden by %@", v5];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"Abstract method not overridden by %@: %s", v10, "+[TSUTemporaryDirectoryManager sharedManager]"];
  v12 = [v6 exceptionWithName:v7 reason:v11 userInfo:0];
  v13 = v12;

  objc_exception_throw(v12);
}

+ (id)makeUniqueDirectoryWithBaseDirectory:(id)a3 filename:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUTemporaryDirectoryManager makeUniqueDirectoryWithBaseDirectory:filename:]"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectoryManager.m"];
    [OITSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:63 isFatal:0 description:"invalid nil value for '%{public}s'", "baseDirectory"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUTemporaryDirectoryManager makeUniqueDirectoryWithBaseDirectory:filename:]"];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectoryManager.m"];
    [OITSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:64 isFatal:0 description:"invalid nil value for '%{public}s'", "filename"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    goto LABEL_3;
  }

  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = 0;
  v9 = [v8 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v26];

  if ((v9 & 1) == 0 && TSUDefaultCat_init_token != -1)
  {
    +[TSUTemporaryDirectoryManager makeUniqueDirectoryWithBaseDirectory:filename:];
  }

  v10 = 0;
  if (v5 && v7)
  {
    v11 = [v7 stringByAppendingString:@".XXXXXX"];
    v12 = [v5 stringByAppendingPathComponent:v11];

    v5 = v12;
    v13 = [v12 fileSystemRepresentation];
    if (v13 && (v14 = strlen(v13), (v15 = malloc_type_calloc(v14 + 1, 1uLL, 0x100004077774924uLL)) != 0))
    {
      v16 = v15;
      v17 = strncpy(v15, [v5 fileSystemRepresentation], v14);
      v16[v14] = 0;
      v18 = mkdtemp(v17);
      if (v18)
      {
        v19 = MEMORY[0x277CBEBC0];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
        v10 = [v19 tsu_fileURLWithPath:v20];
      }

      else
      {
        v10 = 0;
      }

      free(v16);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void __78__TSUTemporaryDirectoryManager_makeUniqueDirectoryWithBaseDirectory_filename___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

- (TSUTemporaryDirectoryManager)init
{
  v14.receiver = self;
  v14.super_class = TSUTemporaryDirectoryManager;
  v2 = [(TSUTemporaryDirectoryManager *)&v14 init];
  if (v2)
  {
    v3 = [objc_opt_class() baseDirectoryURL];
    v4 = [v3 copy];
    baseDirectoryURL = v2->_baseDirectoryURL;
    v2->_baseDirectoryURL = v4;

    if (!v2->_baseDirectoryURL)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectoryManager init]"];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectoryManager.m"];
      [OITSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:101 isFatal:0 description:"invalid nil value for '%{public}s'", "_baseDirectoryURL"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v8 = [(TSUTemporaryDirectoryManager *)v2 _readDirectories];
    if ([v8 count])
    {
      v9 = dispatch_get_global_queue(-32768, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__TSUTemporaryDirectoryManager_init__block_invoke;
      block[3] = &unk_2799C68A8;
      v12 = v8;
      v13 = v2;
      dispatch_async(v9, block);
    }
  }

  return v2;
}

uint64_t __36__TSUTemporaryDirectoryManager_init__block_invoke(uint64_t a1)
{
  if (TSUManagedTemporaryLogCat_init_token != -1)
  {
    __36__TSUTemporaryDirectoryManager_init__block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _clearDirectories:v3];
}

void __36__TSUTemporaryDirectoryManager_init__block_invoke_2()
{
  v0 = TSULogCreateCategory("TSUManagedTemporaryLogCat");
  v1 = TSUManagedTemporaryLogCat_log_t;
  TSUManagedTemporaryLogCat_log_t = v0;
}

- (id)_readDirectories
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (self->_baseDirectoryURL)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    baseDirectoryURL = self->_baseDirectoryURL;
    v20[0] = *MEMORY[0x277CBE8F8];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v6 = [v3 contentsOfDirectoryAtURL:baseDirectoryURL includingPropertiesForKeys:v5 options:0 error:0];

    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) path];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_clearDirectories:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 removeItemAtPath:*(*(&v10 + 1) + 8 * v9++) error:{0, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)newDirectoryWithFilename:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectoryManager newDirectoryWithFilename:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectoryManager.m"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:139 isFatal:0 description:"invalid nil value for '%{public}s'", "filename"];

    +[OITSUAssertionHandler logBacktraceThrottled];
    v7 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v7 UUIDString];
  }

  v8 = objc_opt_class();
  v9 = [(NSURL *)self->_baseDirectoryURL path];
  v10 = [v8 makeUniqueDirectoryWithBaseDirectory:v9 filename:v4];

  if (!v10)
  {
    if (TSUDefaultCat_init_token != -1)
    {
      [TSUTemporaryDirectoryManager newDirectoryWithFilename:];
    }

    baseDirectoryURL = self->_baseDirectoryURL;
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    v10 = [(NSURL *)baseDirectoryURL URLByAppendingPathComponent:v13];

    if (!v10)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectoryManager newDirectoryWithFilename:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectoryManager.m"];
      [OITSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:151 isFatal:0 description:"invalid nil value for '%{public}s'", "URL"];

      +[OITSUAssertionHandler logBacktraceThrottled];
      v10 = 0;
    }
  }

  v16 = [objc_opt_class() managedTemporaryDirectoryClass];
  if (([(objc_class *)v16 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUTemporaryDirectoryManager newDirectoryWithFilename:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUTemporaryDirectoryManager.m"];
    v19 = NSStringFromClass(v16);
    [OITSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:154 isFatal:0 description:"Invalid managed temporary directory class: %{public}@", v19];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v20 = [[v16 alloc] initWithURL:v10];

  return v20;
}

void __57__TSUTemporaryDirectoryManager_newDirectoryWithFilename___block_invoke()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;
}

@end