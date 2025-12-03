@interface FAFamilyDetailsCache
+ (id)sharedCache;
- (unint64_t)pendingInviteCount;
- (void)_fetchPendingInviteCount;
- (void)_setPendingInviteCount:(unint64_t)count;
- (void)invalidate;
@end

@implementation FAFamilyDetailsCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[FAFamilyDetailsCache sharedCache];
  }

  v3 = sharedCache__sharedCache;

  return v3;
}

void __35__FAFamilyDetailsCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(FAFamilyDetailsCache);
  v1 = sharedCache__sharedCache;
  sharedCache__sharedCache = v0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = sharedCache__sharedCache;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getINFamilyDidChangeNotificationSymbolLoc_ptr_0;
  v10 = getINFamilyDidChangeNotificationSymbolLoc_ptr_0;
  if (!getINFamilyDidChangeNotificationSymbolLoc_ptr_0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getINFamilyDidChangeNotificationSymbolLoc_block_invoke_0;
    v6[3] = &unk_2782F2988;
    v6[4] = &v7;
    __getINFamilyDidChangeNotificationSymbolLoc_block_invoke_0(v6);
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    v5 = +[FAHomeUISoftLinking getURLScheme];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _FAFamilyDetailsCacheFamilyDidChangeNotificationHandler, *v4, 0, CFNotificationSuspensionBehaviorCoalesce);
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isValid = 0;
  obj->_pendingInviteCount = 0;
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_3);
  objc_sync_exit(obj);
}

void __34__FAFamilyDetailsCache_invalidate__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"FAFamilyDetailsCacheDidChangeNotification" object:0];
}

- (unint64_t)pendingInviteCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_isValid && !selfCopy->_isValidating)
  {
    selfCopy->_isValidating = 1;
    [(FAFamilyDetailsCache *)selfCopy _fetchPendingInviteCount];
  }

  pendingInviteCount = selfCopy->_pendingInviteCount;
  objc_sync_exit(selfCopy);

  return pendingInviteCount;
}

- (void)_fetchPendingInviteCount
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__FAFamilyDetailsCache__fetchPendingInviteCount__block_invoke;
  block[3] = &unk_2782F29E8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __48__FAFamilyDetailsCache__fetchPendingInviteCount__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [v2 aa_primaryAppleAccount];
  if (v3)
  {
    v4 = [v2 aa_grandSlamAccountForiCloudAccount:v3];
    v5 = objc_alloc(MEMORY[0x277CEC808]);
    v6 = [v5 initWithAccountStore:v2 grandSlamAccount:v4 appTokenID:*MEMORY[0x277CEC6F0]];
    v7 = [objc_alloc(MEMORY[0x277CEC7D8]) initWithGrandSlamSigner:v6];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__FAFamilyDetailsCache__fetchPendingInviteCount__block_invoke_2;
    v8[3] = &unk_2782F3F78;
    v8[4] = *(a1 + 32);
    [v7 performRequestWithHandler:v8];
  }
}

void __48__FAFamilyDetailsCache__fetchPendingInviteCount__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  objc_sync_enter(v8);
  *(*(a1 + 32) + 17) = 0;
  objc_sync_exit(v8);

  if (v6 && !v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [*(a1 + 32) _setPendingInviteCount:{objc_msgSend(v6, "pendingInviteCount")}];
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "FAFamilyDetailsCache _fetchPendingInviteCount error %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setPendingInviteCount:(unint64_t)count
{
  obj = self;
  objc_sync_enter(obj);
  pendingInviteCount = obj->_pendingInviteCount;
  obj->_pendingInviteCount = count;
  obj->_isValid = 1;
  if (pendingInviteCount != count)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_11);
  }

  objc_sync_exit(obj);
}

void __47__FAFamilyDetailsCache__setPendingInviteCount___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"FAFamilyDetailsCacheDidChangeNotification" object:0];
}

@end