@interface _KSTextReplacementManager
+ (id)textReplacementStoreWithTestDirectory:(id)a3 withDelegate:(id)a4;
- (_KSTextReplacementManager)initWithDirectoryPath:(id)a3;
- (void)dealloc;
- (void)notifyTextReplacementDidChange;
- (void)pushAllLocalRecordsOnceIfNeeded;
- (void)recordSyncStatus;
- (void)requestSync:(unint64_t)a3 withCompletionBlock:(id)a4;
- (void)requestSyncWithCompletionBlock:(id)a3;
@end

@implementation _KSTextReplacementManager

- (void)pushAllLocalRecordsOnceIfNeeded
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60___KSTextReplacementManager_pushAllLocalRecordsOnceIfNeeded__block_invoke;
  block[3] = &unk_2797F6310;
  block[4] = self;
  if (pushAllLocalRecordsOnceIfNeeded_onceToken != -1)
  {
    dispatch_once(&pushAllLocalRecordsOnceIfNeeded_onceToken, block);
  }
}

+ (id)textReplacementStoreWithTestDirectory:(id)a3 withDelegate:(id)a4
{
  v4 = a3;
  v5 = [[_KSTextReplacementManager alloc] initWithDirectoryPath:v4];

  v6 = [(_KSTextReplacementManager *)v5 ckStore];
  [(_KSTextReplacementManager *)v5 setTextReplacementStore:v6];

  return v5;
}

- (_KSTextReplacementManager)initWithDirectoryPath:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _KSTextReplacementManager;
  v6 = [(_KSTextReplacementManager *)&v14 init];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [[_KSTextReplacementCKStore alloc] initWithDirectoryPath:v5];
    ckStore = v6->_ckStore;
    v6->_ckStore = v8;

    objc_storeStrong(&v6->_directoryPath, a3);
    v10 = KSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[_KSTextReplacementManager initWithDirectoryPath:]";
      _os_log_impl(&dword_2557E2000, v10, OS_LOG_TYPE_INFO, "%s  >>> using cloudkit store", buf, 0xCu);
    }

    objc_storeStrong(&v6->_textReplacementStore, v6->_ckStore);
    [_KSAggdLogger setValue:1 forScalarKey:@"com.apple.keyboard.textReplacement.usingCloudKitSyncing"];
    [(_KSTextReplacementManager *)v6 pushAllLocalRecordsOnceIfNeeded];
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v6 selector:sel_notifyTextReplacementDidChange name:@"_KSTRCKStoreDidReceiveChangesNotification" object:0];

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _KSTextReplacementManager;
  [(_KSTextReplacementManager *)&v4 dealloc];
}

- (void)notifyTextReplacementDidChange
{
  if (notify_post([@"KSTextReplacementDidChangeNotification" UTF8String]))
  {
    NSLog(&cfstr_ErrorSendingDa.isa);
  }

  NSLog(&cfstr_SendingOutShor.isa);
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"KSTextReplacementDidChangeNotification" object:0];
}

- (void)requestSyncWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(_KSTextReplacementManager *)self textReplacementStore];
  [v5 requestSyncWithCompletionBlock:v4];
}

- (void)requestSync:(unint64_t)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = [(_KSTextReplacementManager *)self textReplacementStore];
  [v7 requestSync:a3 withCompletionBlock:v6];
}

- (void)recordSyncStatus
{
  v2 = [(_KSTextReplacementManager *)self ckStore];
  [v2 recordSyncStatus];
}

@end