@interface MFSearchableIndex_iOS
+ (OS_os_log)log;
- (BOOL)isPluggedIn;
- (MFSearchableIndex_iOS)initWithName:(id)name dataSource:(id)source;
- (id)currentReasons;
- (id)dataSourceRefreshReasons;
- (id)exclusionReasons;
- (id)powerObservable;
- (id)purgeReasons;
@end

@implementation MFSearchableIndex_iOS

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MFSearchableIndex_iOS_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_30 != -1)
  {
    dispatch_once(&log_onceToken_30, block);
  }

  v2 = log_log_30;

  return v2;
}

- (MFSearchableIndex_iOS)initWithName:(id)name dataSource:(id)source
{
  nameCopy = name;
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = MFSearchableIndex_iOS;
  v8 = [(EDSearchableIndex *)&v13 initWithName:nameCopy dataSource:sourceCopy];
  if (v8)
  {
    v9 = MFUserAgent();
    -[EDSearchableIndex setForeground:](v8, "setForeground:", [v9 isForeground]);

    mEMORY[0x1E69AD6C0] = [MEMORY[0x1E69AD6C0] sharedController];
    [mEMORY[0x1E69AD6C0] addDiagnosticsGenerator:v8];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v8 selector:sel_attachmentBecameAvailable_ name:@"LibraryMessageAttachmentDataBecameAvailableNotification" object:0];

  return v8;
}

- (id)dataSourceRefreshReasons
{
  if (dataSourceRefreshReasons_onceToken[0] != -1)
  {
    [MFSearchableIndex_iOS dataSourceRefreshReasons];
  }

  v3 = dataSourceRefreshReasons_reasons;

  return v3;
}

- (id)purgeReasons
{
  if (purgeReasons_onceToken != -1)
  {
    [MFSearchableIndex_iOS purgeReasons];
  }

  v3 = purgeReasons_reasons;

  return v3;
}

- (id)exclusionReasons
{
  if (exclusionReasons_onceToken != -1)
  {
    [MFSearchableIndex_iOS exclusionReasons];
  }

  v3 = exclusionReasons_reasons;

  return v3;
}

- (id)currentReasons
{
  v3 = +[MFActivityMonitor currentMonitor];
  reasons = [v3 reasons];

  if ([reasons count])
  {
    currentReasons = reasons;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFSearchableIndex_iOS;
    currentReasons = [(EDSearchableIndex *)&v8 currentReasons];
  }

  v6 = currentReasons;

  return v6;
}

- (id)powerObservable
{
  v2 = +[MFPowerController sharedInstance];
  powerObservable = [v2 powerObservable];

  return powerObservable;
}

- (BOOL)isPluggedIn
{
  v2 = +[MFPowerController sharedInstance];
  isPluggedIn = [v2 isPluggedIn];

  return isPluggedIn;
}

@end