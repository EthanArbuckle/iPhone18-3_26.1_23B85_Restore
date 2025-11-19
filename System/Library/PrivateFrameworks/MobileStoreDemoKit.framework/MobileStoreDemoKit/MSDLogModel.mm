@interface MSDLogModel
+ (id)sharedInstance;
- (BOOL)enableLogToFile:(id)a3;
- (BOOL)enableLogToFilesUnder:(id)a3 prefix:(id)a4 expireDays:(int64_t)a5;
- (id)fileNameForTodayUnder:(id)a3 prefix:(id)a4;
- (void)logMessage:(id)a3;
- (void)logWithFormat:(id)a3 andArgs:(char *)a4;
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

- (void)logWithFormat:(id)a3 andArgs:(char *)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [[v6 alloc] initWithFormat:v7 arguments:a4];

  [(MSDLogModel *)self logMessage:v8];
}

- (void)logMessage:(id)a3
{
  v9 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"dd-MM-yyyy HH:mm:ss:SSS"];
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = [v4 stringFromDate:v5];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@\n", v6, v9];
  if ([(MSDLogModel *)self logFP])
  {
    v8 = self;
    objc_sync_enter(v8);
    fputs([v7 UTF8String], -[MSDLogModel logFP](v8, "logFP"));
    fflush([(MSDLogModel *)v8 logFP]);
    objc_sync_exit(v8);
  }
}

- (BOOL)enableLogToFile:(id)a3
{
  v4 = MEMORY[0x277CCAA00];
  v5 = a3;
  v6 = [v4 defaultManager];
  v7 = [v5 stringByExpandingTildeInPath];

  v8 = [v7 stringByDeletingLastPathComponent];
  v9 = 0;
  if (([v6 fileExistsAtPath:v8] & 1) != 0 || objc_msgSend(v6, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v8, 1, 0, 0))
  {
    -[MSDLogModel setLogFP:](self, "setLogFP:", fopen([v7 fileSystemRepresentation], "a"));
    if ([(MSDLogModel *)self logFP])
    {
      v9 = 1;
    }
  }

  return v9;
}

- (BOOL)enableLogToFilesUnder:(id)a3 prefix:(id)a4 expireDays:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__0;
  v30[4] = __Block_byref_object_dispose__0;
  v31 = 0;
  v29 = 97;
  if (([v10 fileExistsAtPath:v8] & 1) == 0)
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v11 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

    if ((v12 & 1) == 0)
    {
      v18 = 0;
      v20 = 0;
      v13 = 0;
      goto LABEL_10;
    }
  }

  v13 = [v8 stringByAppendingPathComponent:@"testWritability.log"];
  v14 = [MEMORY[0x277CBEA90] dataWithBytes:&v29 length:1];
  v15 = [v10 createFileAtPath:v13 contents:v14 attributes:0];

  if (!v15)
  {
    v18 = 0;
    v20 = 0;
LABEL_10:
    v22 = 0;
    goto LABEL_7;
  }

  [v10 removeItemAtPath:v13 error:0];
  v16 = MEMORY[0x277CBEAA8];
  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = [v16 dateWithTimeInterval:v17 sinceDate:a5 * -86400.0];

  v19 = [MEMORY[0x277CCAA00] defaultManager];
  v20 = [v19 contentsOfDirectoryAtPath:v8 error:0];

  if (v20)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __55__MSDLogModel_enableLogToFilesUnder_prefix_expireDays___block_invoke;
    v24[3] = &unk_2798EF418;
    v25 = v8;
    v26 = v18;
    v28 = v30;
    v27 = v10;
    [v20 enumerateObjectsUsingBlock:v24];
  }

  v21 = [(MSDLogModel *)self fileNameForTodayUnder:v8 prefix:v9];
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

- (id)fileNameForTodayUnder:(id)a3 prefix:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v10 = [MEMORY[0x277CBEAF8] currentLocale];
  [v9 setLocale:v10];

  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = [v9 components:28 fromDate:v11];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@-%4ld%02ld%02ld.log", v7, v6, objc_msgSend(v12, "year"), objc_msgSend(v12, "month"), objc_msgSend(v12, "day")];

  return v13;
}

@end