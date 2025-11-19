@interface TSUStdioLogSink
+ (id)sharedInstance;
- (TSUStdioLogSink)init;
- (id)logSinkBlockWithFilePointer:(__sFILE *)a3;
@end

@implementation TSUStdioLogSink

- (TSUStdioLogSink)init
{
  v8.receiver = self;
  v8.super_class = TSUStdioLogSink;
  v2 = [(TSUStdioLogSink *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("TSUStdioLogSinkQueue", 0);
    logQueue = v2->_logQueue;
    v2->_logQueue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCA968]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v5;

    [(NSDateFormatter *)v2->_dateFormatter setFormatterBehavior:1040];
    [(NSDateFormatter *)v2->_dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[TSUStdioLogSink sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

void __33__TSUStdioLogSink_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(TSUStdioLogSink);
  v1 = sharedInstance_sInstance;
  sharedInstance_sInstance = v0;
}

- (id)logSinkBlockWithFilePointer:(__sFILE *)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__TSUStdioLogSink_logSinkBlockWithFilePointer___block_invoke;
  v6[3] = &unk_2799C7688;
  v6[4] = self;
  v6[5] = a3;
  v3 = _Block_copy(v6);
  v4 = [v3 copy];

  return v4;
}

void __47__TSUStdioLogSink_logSinkBlockWithFilePointer___block_invoke(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v11 = a3;
  v12 = a6;
  if (*(a1 + 40))
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = *(a1 + 32);
    v15 = *(v14 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__TSUStdioLogSink_logSinkBlockWithFilePointer___block_invoke_2;
    block[3] = &unk_2799C7660;
    block[4] = v14;
    v20 = v13;
    v21 = v11;
    v23 = a4;
    v25 = a2;
    v26 = a5;
    v16 = v12;
    v17 = *(a1 + 40);
    v22 = v16;
    v24 = v17;
    v18 = v13;
    dispatch_async(v15, block);
  }
}

void __47__TSUStdioLogSink_logSinkBlockWithFilePointer___block_invoke_2(uint64_t a1)
{
  v10 = [*(*(a1 + 32) + 16) stringFromDate:*(a1 + 40)];
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 processIdentifier];

  if (*(a1 + 48))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%@", *(a1 + 48)];
  }

  else
  {
    v6 = &stru_286EE1130;
  }

  v7 = *(a1 + 80) - 1;
  if (v7 > 4)
  {
    v8 = &stru_286EE1130;
  }

  else
  {
    v8 = off_2799C76A8[v7];
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@[%d] %@ %@ %s:%d %@", v10, v3, v5, v8, v6, *(a1 + 64), *(a1 + 84), *(a1 + 56)];
  fprintf(*(a1 + 72), "%s\n", [v9 UTF8String]);
  if (*(a1 + 80) <= 2)
  {
    fflush(*(a1 + 72));
  }
}

@end