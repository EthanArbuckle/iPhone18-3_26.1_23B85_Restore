@interface DOCNodeStartupManager
+ (DOCNodeStartupManager)shared;
- (void)_start;
- (void)startIfNeeded;
@end

@implementation DOCNodeStartupManager

+ (DOCNodeStartupManager)shared
{
  if (shared_onceToken_1 != -1)
  {
    +[DOCNodeStartupManager shared];
  }

  v3 = shared_shared;

  return v3;
}

uint64_t __31__DOCNodeStartupManager_shared__block_invoke()
{
  shared_shared = objc_alloc_init(DOCNodeStartupManager);

  return MEMORY[0x2821F96F8]();
}

- (void)startIfNeeded
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DOCNodeStartupManager_startIfNeeded__block_invoke;
  block[3] = &unk_278F9B408;
  block[4] = self;
  if (startIfNeeded_onceToken != -1)
  {
    dispatch_once(&startIfNeeded_onceToken, block);
  }
}

- (void)_start
{
  v2 = os_log_create("com.apple.DocumentManager", "PointsOfInterest");
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  if (v3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    StartFINode();
    v7 = v5;
  }

  else
  {
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_249340000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Files-FINode.start", "", buf, 2u);
    }

    StartFINode();
    v6 = v5;
    if (os_signpost_enabled(v6))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_249340000, v6, OS_SIGNPOST_INTERVAL_END, v3, "Files-FINode.start", "", v8, 2u);
    }
  }
}

@end