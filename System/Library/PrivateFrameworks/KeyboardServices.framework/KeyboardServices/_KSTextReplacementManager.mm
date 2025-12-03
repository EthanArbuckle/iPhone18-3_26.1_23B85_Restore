@interface _KSTextReplacementManager
+ (id)textReplacementStoreWithTestDirectory:(id)directory withDelegate:(id)delegate;
- (_KSTextReplacementManager)initWithDirectoryPath:(id)path;
- (void)dealloc;
- (void)notifyTextReplacementDidChange;
- (void)pushAllLocalRecordsOnceIfNeeded;
- (void)recordSyncStatus;
- (void)requestSync:(unint64_t)sync withCompletionBlock:(id)block;
- (void)requestSyncWithCompletionBlock:(id)block;
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

+ (id)textReplacementStoreWithTestDirectory:(id)directory withDelegate:(id)delegate
{
  directoryCopy = directory;
  v5 = [[_KSTextReplacementManager alloc] initWithDirectoryPath:directoryCopy];

  ckStore = [(_KSTextReplacementManager *)v5 ckStore];
  [(_KSTextReplacementManager *)v5 setTextReplacementStore:ckStore];

  return v5;
}

- (_KSTextReplacementManager)initWithDirectoryPath:(id)path
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = _KSTextReplacementManager;
  v6 = [(_KSTextReplacementManager *)&v14 init];
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [[_KSTextReplacementCKStore alloc] initWithDirectoryPath:pathCopy];
    ckStore = v6->_ckStore;
    v6->_ckStore = v8;

    objc_storeStrong(&v6->_directoryPath, path);
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_notifyTextReplacementDidChange name:@"_KSTRCKStoreDidReceiveChangesNotification" object:0];

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"KSTextReplacementDidChangeNotification" object:0];
}

- (void)requestSyncWithCompletionBlock:(id)block
{
  blockCopy = block;
  textReplacementStore = [(_KSTextReplacementManager *)self textReplacementStore];
  [textReplacementStore requestSyncWithCompletionBlock:blockCopy];
}

- (void)requestSync:(unint64_t)sync withCompletionBlock:(id)block
{
  blockCopy = block;
  textReplacementStore = [(_KSTextReplacementManager *)self textReplacementStore];
  [textReplacementStore requestSync:sync withCompletionBlock:blockCopy];
}

- (void)recordSyncStatus
{
  ckStore = [(_KSTextReplacementManager *)self ckStore];
  [ckStore recordSyncStatus];
}

@end