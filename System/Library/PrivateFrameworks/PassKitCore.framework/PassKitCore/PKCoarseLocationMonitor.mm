@interface PKCoarseLocationMonitor
+ (id)sharedInstance;
- (PKCoarseLocationMonitor)init;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation PKCoarseLocationMonitor

+ (id)sharedInstance
{
  if (_MergedGlobals_289 != -1)
  {
    dispatch_once(&_MergedGlobals_289, &__block_literal_global_241);
  }

  v3 = qword_1ED6D2320;

  return v3;
}

void __41__PKCoarseLocationMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PKCoarseLocationMonitor);
  v1 = qword_1ED6D2320;
  qword_1ED6D2320 = v0;
}

- (PKCoarseLocationMonitor)init
{
  v7.receiver = self;
  v7.super_class = PKCoarseLocationMonitor;
  v2 = [(PKCoarseLocationMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__PKCoarseLocationMonitor_init__block_invoke;
    block[3] = &unk_1E79C4E28;
    v6 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v3;
}

void __31__PKCoarseLocationMonitor_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695FBE8]);
  v7 = PKPassKitCoreBundle();
  v3 = [v7 bundlePath];
  v4 = [v2 initWithEffectiveBundlePath:v3 delegate:*(a1 + 32) onQueue:MEMORY[0x1E69E96A0]];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PKCoarseLocationMonitor_locationManagerDidChangeAuthorization___block_invoke;
  v6[3] = &unk_1E79C4DD8;
  v7 = authorizationCopy;
  selfCopy = self;
  v5 = authorizationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __65__PKCoarseLocationMonitor_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _limitsPrecision];
  v3 = *(a1 + 40);
  if (*(v3 + 16) != v2)
  {
    *(v3 + 16) = v2;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:@"PKCoarseLocationMonitorEnabledStateChangedNotification" object:*(a1 + 40)];
  }
}

@end