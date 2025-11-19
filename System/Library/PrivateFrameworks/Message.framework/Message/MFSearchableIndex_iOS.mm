@interface MFSearchableIndex_iOS
+ (OS_os_log)log;
- (BOOL)isPluggedIn;
- (MFSearchableIndex_iOS)initWithName:(id)a3 dataSource:(id)a4;
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
  block[4] = a1;
  if (log_onceToken_30 != -1)
  {
    dispatch_once(&log_onceToken_30, block);
  }

  v2 = log_log_30;

  return v2;
}

- (MFSearchableIndex_iOS)initWithName:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MFSearchableIndex_iOS;
  v8 = [(EDSearchableIndex *)&v13 initWithName:v6 dataSource:v7];
  if (v8)
  {
    v9 = MFUserAgent();
    -[EDSearchableIndex setForeground:](v8, "setForeground:", [v9 isForeground]);

    v10 = [MEMORY[0x1E69AD6C0] sharedController];
    [v10 addDiagnosticsGenerator:v8];
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:v8 selector:sel_attachmentBecameAvailable_ name:@"LibraryMessageAttachmentDataBecameAvailableNotification" object:0];

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
  v4 = [v3 reasons];

  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MFSearchableIndex_iOS;
    v5 = [(EDSearchableIndex *)&v8 currentReasons];
  }

  v6 = v5;

  return v6;
}

- (id)powerObservable
{
  v2 = +[MFPowerController sharedInstance];
  v3 = [v2 powerObservable];

  return v3;
}

- (BOOL)isPluggedIn
{
  v2 = +[MFPowerController sharedInstance];
  v3 = [v2 isPluggedIn];

  return v3;
}

@end