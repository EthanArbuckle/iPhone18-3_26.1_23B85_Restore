@interface CPLNetworkIndicator
+ (void)_doProtected:(id)protected;
+ (void)_reallyHideNetworkIndicatorForBundleWithIdentifierLocked:(id)locked;
+ (void)_reallyShowNetworkIndicatorForBundleWithIdentifierLocked:(id)locked;
+ (void)hideNetworkIndicatorForBundleWithIdentifier:(id)identifier;
+ (void)showNetworkIndicatorForBundleWithIdentifier:(id)identifier;
@end

@implementation CPLNetworkIndicator

+ (void)hideNetworkIndicatorForBundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = @"com.apple.mobileslideshow";
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__CPLNetworkIndicator_hideNetworkIndicatorForBundleWithIdentifier___block_invoke;
  v8[3] = &unk_1E861FEE8;
  if (identifierCopy)
  {
    v6 = identifierCopy;
  }

  v9 = v6;
  v10 = a2;
  selfCopy = self;
  v7 = v6;
  [self _doProtected:v8];
}

uint64_t __67__CPLNetworkIndicator_hideNetworkIndicatorForBundleWithIdentifier___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (([bundleIdentifiersWithNetworkIndicator containsObject:*(a1 + 32)] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        v9 = *(a1 + 32);
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "%@ was called too many times for %@", buf, 0x16u);
      }
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLNetworkIndicator.m"];
    v14 = NSStringFromSelector(*(a1 + 40));
    [v10 handleFailureInMethod:v11 object:v12 file:v13 lineNumber:71 description:{@"%@ was called too many times for %@", v14, *(a1 + 32)}];

    abort();
  }

  [bundleIdentifiersWithNetworkIndicator removeObject:*(a1 + 32)];
  result = [bundleIdentifiersWithNetworkIndicator containsObject:*(a1 + 32)];
  if (result)
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *MEMORY[0x1E69E9840];

    return [v4 _reallyHideNetworkIndicatorForBundleWithIdentifierLocked:v5];
  }

  return result;
}

+ (void)showNetworkIndicatorForBundleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = @"com.apple.mobileslideshow";
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CPLNetworkIndicator_showNetworkIndicatorForBundleWithIdentifier___block_invoke;
  v7[3] = &unk_1E861B100;
  if (identifierCopy)
  {
    v5 = identifierCopy;
  }

  v8 = v5;
  selfCopy = self;
  v6 = v5;
  [self _doProtected:v7];
}

uint64_t __67__CPLNetworkIndicator_showNetworkIndicatorForBundleWithIdentifier___block_invoke(uint64_t a1)
{
  if (([bundleIdentifiersWithNetworkIndicator containsObject:*(a1 + 32)] & 1) == 0)
  {
    [*(a1 + 40) _reallyShowNetworkIndicatorForBundleWithIdentifierLocked:*(a1 + 32)];
  }

  v2 = bundleIdentifiersWithNetworkIndicator;
  v3 = *(a1 + 32);

  return [v2 addObject:v3];
}

+ (void)_doProtected:(id)protected
{
  protectedCopy = protected;
  if (_doProtected__onceToken_22950 != -1)
  {
    dispatch_once(&_doProtected__onceToken_22950, &__block_literal_global_22951);
  }

  v4 = _doProtected__queue_22952;
  v5 = protectedCopy;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cpl_dispatch_async_block_invoke_22953;
  block[3] = &unk_1E861B4E0;
  v9 = v5;
  v6 = v4;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

uint64_t __36__CPLNetworkIndicator__doProtected___block_invoke()
{
  v0 = CPLCopyDefaultSerialQueueAttributes();
  v1 = dispatch_queue_create("com.apple.cpl.networkindicator", v0);
  v2 = _doProtected__queue_22952;
  _doProtected__queue_22952 = v1;

  v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v4 = bundleIdentifiersWithNetworkIndicator;
  bundleIdentifiersWithNetworkIndicator = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

+ (void)_reallyHideNetworkIndicatorForBundleWithIdentifierLocked:(id)locked
{
  if (__SBSSetStatusBarShowsActivityForApplication)
  {
    __SBSSetStatusBarShowsActivityForApplication(0, locked, 3600);
  }
}

+ (void)_reallyShowNetworkIndicatorForBundleWithIdentifierLocked:(id)locked
{
  if (__SBSSetStatusBarShowsActivityForApplication)
  {
    __SBSSetStatusBarShowsActivityForApplication(1, locked, 3600);
  }
}

@end