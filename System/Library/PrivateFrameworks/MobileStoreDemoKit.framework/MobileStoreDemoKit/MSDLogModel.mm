@interface MSDLogModel
+ (id)sharedInstance;
- (BOOL)enableLogToFile:(id)file;
- (BOOL)enableLogToFilesUnder:(id)under prefix:(id)prefix expireDays:(int64_t)days;
- (id)fileNameForTodayUnder:(id)under prefix:(id)prefix;
- (void)logMessage:(id)message;
- (void)logWithFormat:(id)format andArgs:(char *)args;
@end

@implementation MSDLogModel

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[MSDLogModel sharedInstance];
  }

  v3 = sharedInstance_shared_0;

  return v3;
}

uint64_t __29__MSDLogModel_sharedInstance__block_invoke()
{
  sharedInstance_shared_0 = objc_alloc_init(MSDLogModel);

  return MEMORY[0x2821F96F8]();
}

- (void)logWithFormat:(id)format andArgs:(char *)args
{
  v6 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v8 = [[v6 alloc] initWithFormat:formatCopy arguments:args];

  [(MSDLogModel *)self logMessage:v8];
}

- (void)logMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"dd-MM-yyyy HH:mm:ss:SSS"];
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v4 stringFromDate:v5];

  messageCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@\n", v6, messageCopy];
  if ([(MSDLogModel *)self logFP])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    fputs([messageCopy UTF8String], -[MSDLogModel logFP](selfCopy, "logFP"));
    fflush([(MSDLogModel *)selfCopy logFP]);
    objc_sync_exit(selfCopy);
  }
}

- (BOOL)enableLogToFile:(id)file
{
  v4 = MEMORY[0x277CCAA00];
  fileCopy = file;
  defaultManager = [v4 defaultManager];
  stringByExpandingTildeInPath = [fileCopy stringByExpandingTildeInPath];

  stringByDeletingLastPathComponent = [stringByExpandingTildeInPath stringByDeletingLastPathComponent];
  v9 = 0;
  if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent] & 1) != 0 || objc_msgSend(defaultManager, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", stringByDeletingLastPathComponent, 1, 0, 0))
  {
    -[MSDLogModel setLogFP:](self, "setLogFP:", fopen([stringByExpandingTildeInPath fileSystemRepresentation], "a"));
    if ([(MSDLogModel *)self logFP])
    {
      v9 = 1;
    }
  }

  return v9;
}

- (BOOL)enableLogToFilesUnder:(id)under prefix:(id)prefix expireDays:(int64_t)days
{
  underCopy = under;
  prefixCopy = prefix;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__0;
  v30[4] = __Block_byref_object_dispose__0;
  v31 = 0;
  v29 = 97;
  if (([defaultManager fileExistsAtPath:underCopy] & 1) == 0)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager2 createDirectoryAtPath:underCopy withIntermediateDirectories:1 attributes:0 error:0];

    if ((v12 & 1) == 0)
    {
      v18 = 0;
      v20 = 0;
      v13 = 0;
      goto LABEL_10;
    }
  }

  v13 = [underCopy stringByAppendingPathComponent:@"testWritability.log"];
  v14 = [MEMORY[0x277CBEA90] dataWithBytes:&v29 length:1];
  v15 = [defaultManager createFileAtPath:v13 contents:v14 attributes:0];

  if (!v15)
  {
    v18 = 0;
    v20 = 0;
LABEL_10:
    v22 = 0;
    goto LABEL_7;
  }

  [defaultManager removeItemAtPath:v13 error:0];
  v16 = MEMORY[0x277CBEAA8];
  date = [MEMORY[0x277CBEAA8] date];
  v18 = [v16 dateWithTimeInterval:date sinceDate:days * -86400.0];

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v20 = [defaultManager3 contentsOfDirectoryAtPath:underCopy error:0];

  if (v20)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __55__MSDLogModel_enableLogToFilesUnder_prefix_expireDays___block_invoke;
    v24[3] = &unk_2798EF418;
    v25 = underCopy;
    v26 = v18;
    v28 = v30;
    v27 = defaultManager;
    [v20 enumerateObjectsUsingBlock:v24];
  }

  v21 = [(MSDLogModel *)self fileNameForTodayUnder:underCopy prefix:prefixCopy];
  v22 = [(MSDLogModel *)self enableLogToFile:v21];

LABEL_7:
  _Block_object_dispose(v30, 8);

  return v22;
}

void __55__MSDLogModel_enableLogToFilesUnder_prefix_expireDays___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v14 = [*(a1 + 32) stringByAppendingFormat:@"/%@", a2];
  v6 = [*(a1 + 40) description];
  NSLog(&cfstr_CheckingExisti.isa, v14, v6);

  v7 = [*(a1 + 48) attributesOfItemAtPath:v14 error:0];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
  v11 = [v10 compare:*(a1 + 40)];

  if (v11 == -1)
  {
    v12 = [*(*(*(a1 + 56) + 8) + 40) fileCreationDate];
    v13 = [v12 description];
    NSLog(&cfstr_RemovingWhoseC.isa, v14, v13);

    [*(a1 + 48) removeItemAtPath:v14 error:0];
  }

  *a4 = 0;
}

- (id)fileNameForTodayUnder:(id)under prefix:(id)prefix
{
  v5 = MEMORY[0x277CBEA80];
  prefixCopy = prefix;
  underCopy = under;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v9 setLocale:currentLocale];

  date = [MEMORY[0x277CBEAA8] date];
  v12 = [v9 components:28 fromDate:date];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@-%4ld%02ld%02ld.log", underCopy, prefixCopy, objc_msgSend(v12, "year"), objc_msgSend(v12, "month"), objc_msgSend(v12, "day")];

  return v13;
}

@end