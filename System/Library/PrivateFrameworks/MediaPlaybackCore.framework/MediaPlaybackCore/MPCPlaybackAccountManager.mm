@interface MPCPlaybackAccountManager
+ (MPCPlaybackAccountManager)sharedManager;
- (BOOL)hasLoadedInitialAccounts;
- (MPCPlaybackAccount)activeAccount;
- (MPCPlaybackAccount)anyDelegationHostingAccount;
- (MPCPlaybackAccount)fallbackAccount;
- (NSArray)accounts;
- (id)_init;
- (id)accountForDSID:(id)d;
- (id)accountForHashedDSID:(id)d;
- (id)accountForUserIdentity:(id)identity;
- (id)getDelegateTokenBWithTokenA:(id)a forDSID:(unint64_t)d error:(id *)error;
- (id)musicPlaybackRequestEnvironmentForAccount:(id)account;
- (void)_buildAccountFromDelegatedIdentity:(id)identity completion:(id)completion;
- (void)_buildAccountFromLocalIdentity:(id)identity completion:(id)completion;
- (void)_enumerateIdentitiesWithCompletion:(id)completion;
- (void)_handleURLBagProviderDidUpdateBagNotification:(id)notification;
- (void)_notifyObserversForChange:(id)change;
- (void)_setNeedsRefreshDueToMissingBag:(BOOL)bag;
- (void)_updateAccountsWithAttemptCount:(int64_t)count completion:(id)completion;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)performAfterLoadingAccounts:(id)accounts;
- (void)registerObserver:(id)observer;
- (void)start;
- (void)unregisterObserver:(id)observer;
- (void)updateCredentialsWithDelegateTokenE:(_MPCProtoDelegateInfoTokenE *)e forDSID:(unint64_t)d completion:(id)completion;
@end

@implementation MPCPlaybackAccountManager

+ (MPCPlaybackAccountManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_696);
  }

  v3 = __sharedManager;

  return v3;
}

uint64_t __42__MPCPlaybackAccountManager_sharedManager__block_invoke()
{
  v0 = [[MPCPlaybackAccountManager alloc] _init];
  v1 = __sharedManager;
  __sharedManager = v0;

  v2 = __sharedManager;

  return [v2 start];
}

- (id)_init
{
  v14.receiver = self;
  v14.super_class = MPCPlaybackAccountManager;
  v2 = [(MPCPlaybackAccountManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_group_create();
    initialAccountGroup = v3->_initialAccountGroup;
    v3->_initialAccountGroup = v4;

    dispatch_group_enter(v3->_initialAccountGroup);
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    accounts = v3->_accounts;
    v3->_accounts = dictionary;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = weakObjectsHashTable;

    v3->_observersLock = 0;
    v10 = v3->_initialAccountGroup;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__MPCPlaybackAccountManager__init__block_invoke;
    block[3] = &unk_1E8239298;
    v13 = v3;
    dispatch_group_notify(v10, MEMORY[0x1E69E96A0], block);
  }

  return v3;
}

- (void)start
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  if ((ICCurrentApplicationIsSystemApp() & 1) == 0)
  {
    [defaultCenter addObserver:self selector:sel__subscriptionStatusChangedNotification_ name:*MEMORY[0x1E69E41D8] object:0];
  }

  [defaultCenter addObserver:self selector:sel__userIdentityStoreChangedNotification_ name:*MEMORY[0x1E69E4380] object:0];
  if ([MEMORY[0x1E6970538] isCurrentDeviceValidHomeAccessory])
  {
    [defaultCenter addObserver:self selector:sel__homeUserSettingsChangeNotification_ name:*MEMORY[0x1E696F8D0] object:0];
  }

  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MPCPlaybackAccountManager_start__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(v4, block);
}

- (BOOL)hasLoadedInitialAccounts
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_initialAccountGroup == 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSArray)accounts
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSDictionary *)self->_accounts allValues];
  v4 = [allValues copy];

  os_unfair_lock_unlock(&self->_lock);
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_167];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (MPCPlaybackAccount)activeAccount
{
  activeAccount = [MEMORY[0x1E69E4680] activeAccount];
  v4 = [(MPCPlaybackAccountManager *)self accountForUserIdentity:activeAccount];

  return v4;
}

- (MPCPlaybackAccount)fallbackAccount
{
  defaultMediaIdentity = [MEMORY[0x1E69E4680] defaultMediaIdentity];
  v4 = [(MPCPlaybackAccountManager *)self accountForUserIdentity:defaultMediaIdentity];

  return v4;
}

- (id)getDelegateTokenBWithTokenA:(id)a forDSID:(unint64_t)d error:(id *)error
{
  aCopy = a;
  selfCopy = self;
  v8 = sub_1C5CB997C(aCopy);

  return v8;
}

- (void)updateCredentialsWithDelegateTokenE:(_MPCProtoDelegateInfoTokenE *)e forDSID:(unint64_t)d completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = e;
  v9[3] = d;
  v9[4] = v8;
  v9[5] = self;
  eCopy = e;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C6035BB0, v9);
}

- (void)_notifyObserversForChange:(id)change
{
  changeCopy = change;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSHashTable *)self->_observers copy];
  os_unfair_recursive_lock_unlock();
  if ([v5 count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__MPCPlaybackAccountManager__notifyObserversForChange___block_invoke;
    block[3] = &unk_1E82391C0;
    v7 = v5;
    selfCopy = self;
    v9 = changeCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __55__MPCPlaybackAccountManager__notifyObserversForChange___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) accountManager:*(a1 + 40) didChangeAccounts:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_handleURLBagProviderDidUpdateBagNotification:(id)notification
{
  v23 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x1E69E4358]];

  userInfo2 = [notificationCopy userInfo];

  v8 = [userInfo2 objectForKey:*MEMORY[0x1E69E4350]];

  if (v6)
  {
    identity = [v8 identity];

    if (identity)
    {
      identity2 = [v8 identity];
      v11 = [(MPCPlaybackAccountManager *)self accountForUserIdentity:identity2];

      if (v11)
      {
        v12 = [v11 bag];
        v13 = [v12 isEqual:v6];

        if ((v13 & 1) == 0)
        {
          os_unfair_lock_lock(&self->_lock);
          v14 = [v11 copy];
          [v14 setBag:v6];
          v15 = [(NSDictionary *)self->_accounts mutableCopy];
          hashedDSID = [v14 hashedDSID];
          [v15 setObject:v14 forKeyedSubscript:hashedDSID];

          v17 = [v15 copy];
          accounts = self->_accounts;
          self->_accounts = v17;

          os_unfair_lock_unlock(&self->_lock);
          v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 138543362;
            v22 = v14;
            _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[AccountManager] - Updated account for bag change notification: %{public}@", &v21, 0xCu);
          }

          accounts = [(MPCPlaybackAccountManager *)self accounts];
          [(MPCPlaybackAccountManager *)self _notifyObserversForChange:accounts];
        }
      }
    }
  }
}

- (void)_setNeedsRefreshDueToMissingBag:(BOOL)bag
{
  bagCopy = bag;
  os_unfair_lock_lock(&self->_lock);
  needsRefreshDueToMissingBag = self->_needsRefreshDueToMissingBag;
  self->_needsRefreshDueToMissingBag = bagCopy;
  os_unfair_lock_unlock(&self->_lock);
  if (bagCopy)
  {
    if (!needsRefreshDueToMissingBag)
    {
      v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[AccountManager] - Waiting to refresh accounts due to missing bag", buf, 2u);
      }

      objc_initWeak(buf, self);
      mEMORY[0x1E69E45A0] = [MEMORY[0x1E69E45A0] sharedSecurityInfo];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __61__MPCPlaybackAccountManager__setNeedsRefreshDueToMissingBag___block_invoke;
      v9[3] = &unk_1E8239500;
      objc_copyWeak(&v10, buf);
      [mEMORY[0x1E69E45A0] performBlockAfterFirstUnlock:v9];

      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }
  }

  else if (needsRefreshDueToMissingBag)
  {
    mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
    [mEMORY[0x1E69E4428] unregisterObserver:self];
  }
}

void __61__MPCPlaybackAccountManager__setNeedsRefreshDueToMissingBag___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [MEMORY[0x1E69E4428] sharedMonitor];
    [v1 registerObserver:WeakRetained];

    v2 = [MEMORY[0x1E69E4428] sharedMonitor];
    v3 = [v2 isRemoteServerLikelyReachable];

    if (v3)
    {
      [WeakRetained _updateAccounts];
    }
  }
}

- (void)_enumerateIdentitiesWithCompletion:(id)completion
{
  v55 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v51 = 0;
  v5 = [defaultIdentityStore userIdentitiesForManageableAccountsWithError:&v51];
  v6 = v51;
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v54 = v6;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[AccountManager] Unable to get user identities: %{public}@", buf, 0xCu);
    }

    v46 = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __64__MPCPlaybackAccountManager__enumerateIdentitiesWithCompletion___block_invoke;
    v49 = &unk_1E8239528;
    v50 = completionCopy;
    msv_dispatch_on_main_queue();
    activeAccount = v50;
  }

  else
  {
    v26 = completionCopy;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v54 = v5;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[AccountManager] - Manageable user identities: %{public}@", buf, 0xCu);
    }

    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v43;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v42 + 1) + 8 * i);
          v16 = activeAccount;
          v17 = defaultIdentityStore;
          v18 = v17;
          if (v15 == v16)
          {

            v5 = v10;
            goto LABEL_22;
          }

          if (activeAccount && v15)
          {
            v19 = [v15 isEqualToIdentity:v16 inStore:v17];

            if (v19)
            {
              v5 = v10;
              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    activeAccount2 = [MEMORY[0x1E69E4680] activeAccount];
    v5 = [v10 arrayByAddingObject:activeAccount2];
    v15 = v10;
    v10 = activeAccount2;
LABEL_22:

LABEL_23:
    completionCopy = v26;

    if (MSVDeviceSupportsDelegatedIdentities())
    {
      v21 = dispatch_group_create();
      array = [MEMORY[0x1E695DF70] array];
      dispatch_group_enter(v21);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __64__MPCPlaybackAccountManager__enumerateIdentitiesWithCompletion___block_invoke_2;
      v34[3] = &unk_1E82317C0;
      v35 = array;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __64__MPCPlaybackAccountManager__enumerateIdentitiesWithCompletion___block_invoke_3;
      v31[3] = &unk_1E82392C0;
      v23 = v35;
      v32 = v23;
      v33 = v21;
      v24 = v21;
      [defaultIdentityStore enumerateDelegateTokensWithType:1 usingBlock:v34 completionHandler:v31];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__MPCPlaybackAccountManager__enumerateIdentitiesWithCompletion___block_invoke_226;
      block[3] = &unk_1E8239198;
      v30 = v26;
      v28 = v5;
      v29 = v23;
      v25 = v23;
      dispatch_group_notify(v24, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __64__MPCPlaybackAccountManager__enumerateIdentitiesWithCompletion___block_invoke_223;
      v39 = &unk_1E8239170;
      v41 = v26;
      v40 = v5;
      msv_dispatch_on_main_queue();

      v24 = v41;
    }

    v6 = 0;
  }
}

void __64__MPCPlaybackAccountManager__enumerateIdentitiesWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 identityAllowingDelegation:1];
  [v3 addObject:v4];
}

void __64__MPCPlaybackAccountManager__enumerateIdentitiesWithCompletion___block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[AccountManager] - Delegated user identities: %{public}@", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_buildAccountFromDelegatedIdentity:(id)identity completion:(id)completion
{
  v68 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  completionCopy = completion;
  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v64 = 0;
  v10 = [defaultIdentityStore DSIDForUserIdentity:identityCopy outError:&v64];
  v43 = v64;
  quot = [v10 longLongValue];
  v12 = quot;
  if (quot)
  {
    v13 = v66 + 1;
    do
    {
      v14 = lldiv(quot, 10);
      quot = v14.quot;
      if (v14.rem >= 0)
      {
        LOBYTE(v15) = v14.rem;
      }

      else
      {
        v15 = -v14.rem;
      }

      *(v13 - 2) = v15 + 48;
      v16 = (v13 - 2);
      --v13;
    }

    while (v14.quot);
    if (v12 < 0)
    {
      *(v13 - 2) = 45;
      v16 = (v13 - 2);
    }

    v39 = CFStringCreateWithBytes(0, v16, v66 - v16, 0x8000100u, 0);
  }

  else
  {
    v39 = @"0";
  }

  if (v43)
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = identityCopy;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[AccountManager] Unable to get DSID for delegated identity: %{public}@", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

  defaultIdentityStore2 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v19 = dispatch_group_create();
  v63 = 0;
  v42 = [defaultIdentityStore2 getPropertiesForUserIdentity:identityCopy error:&v63];
  v41 = v63;
  if (v41)
  {
    v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = identityCopy;
      *&buf[12] = 2114;
      *&buf[14] = v41;
      _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_ERROR, "[AccountManager] Unable to get properties for delegated identity: %{public}@ error:%{public}@", buf, 0x16u);
    }
  }

  storefrontIdentifier = [v42 storefrontIdentifier];
  os_unfair_lock_lock(&self->_lock);
  v22 = self->_initialAccountGroup == 0;
  os_unfair_lock_unlock(&self->_lock);
  v23 = objc_alloc(MEMORY[0x1E69E4618]);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __75__MPCPlaybackAccountManager__buildAccountFromDelegatedIdentity_completion___block_invoke;
  v59[3] = &unk_1E8231798;
  v24 = defaultIdentityStore2;
  v60 = v24;
  v62 = v22;
  v25 = identityCopy;
  v61 = v25;
  v26 = [v23 initWithBlock:v59];
  dispatch_group_enter(v19);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v66[0] = __Block_byref_object_copy__664;
  v66[1] = __Block_byref_object_dispose__665;
  v67 = 0;
  v27 = objc_alloc(MEMORY[0x1E69B13F0]);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __75__MPCPlaybackAccountManager__buildAccountFromDelegatedIdentity_completion___block_invoke_2;
  v55[3] = &unk_1E82392E8;
  v58 = a2;
  v55[4] = self;
  v28 = v25;
  v56 = v28;
  v29 = v19;
  v57 = v29;
  v30 = [v27 initWithTimeout:v55 interruptionHandler:2.0];
  mEMORY[0x1E69E4658] = [MEMORY[0x1E69E4658] sharedBagProvider];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __75__MPCPlaybackAccountManager__buildAccountFromDelegatedIdentity_completion___block_invoke_221;
  v50[3] = &unk_1E8231748;
  v32 = v28;
  v51 = v32;
  v54 = buf;
  v33 = v30;
  v52 = v33;
  v34 = v29;
  v53 = v34;
  [mEMORY[0x1E69E4658] getBagForRequestContext:v26 withCompletionHandler:v50];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MPCPlaybackAccountManager__buildAccountFromDelegatedIdentity_completion___block_invoke_222;
  block[3] = &unk_1E82366A8;
  v45 = v32;
  v46 = v40;
  v48 = completionCopy;
  v49 = buf;
  v47 = storefrontIdentifier;
  v35 = completionCopy;
  v36 = storefrontIdentifier;
  v37 = v40;
  v38 = v32;
  dispatch_group_notify(v34, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(buf, 8);
}

void __75__MPCPlaybackAccountManager__buildAccountFromDelegatedIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
  [v8 setIdentity:v3];

  [v8 setIdentityStore:*(a1 + 32)];
  LODWORD(v3) = ICCurrentApplicationIsSystemApp();
  v4 = objc_alloc(MEMORY[0x1E69E43B0]);
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 initWithSystemApplicationType:v5];
  [v8 setClientInfo:v6];

  v7 = [objc_alloc(MEMORY[0x1E69E4628]) initWithUserInteractionLevel:1];
  [v8 setAuthenticationProvider:v7];

  [v8 setAllowsExpiredBags:(*(a1 + 48) & 1) == 0];
  [v8 setDelegatedIdentity:*(a1 + 40)];
}

void __75__MPCPlaybackAccountManager__buildAccountFromDelegatedIdentity_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPCPlaybackAccountManager.m" lineNumber:734 description:@"[AccountManager] URL bag handler not called"];
  }

  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 40);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "[AccountManager] URL bag timed out. identity=%{public}@", &v6, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 24) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  dispatch_group_leave(*(a1 + 48));
}

void __75__MPCPlaybackAccountManager__buildAccountFromDelegatedIdentity_completion___block_invoke_221(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[AccountManager] Failed to get URL bag for identity: %{public}@ error: %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  if ([*(a1 + 40) disarm])
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void __75__MPCPlaybackAccountManager__buildAccountFromDelegatedIdentity_completion___block_invoke_222(uint64_t a1)
{
  v3 = [[MPCPlaybackAccount alloc] initWithDelegatedUserIdentity:*(a1 + 32)];
  v2 = MPCHashedDSIDFromDSID(*(a1 + 40));
  [(MPCPlaybackAccount *)v3 setHashedDSID:v2];

  [(MPCPlaybackAccount *)v3 setHasCloudLibraryEnabled:1];
  [(MPCPlaybackAccount *)v3 setStoreFrontIdentifier:*(a1 + 48)];
  [(MPCPlaybackAccount *)v3 setBag:*(*(*(a1 + 64) + 8) + 40)];
  (*(*(a1 + 56) + 16))();
}

- (void)_buildAccountFromLocalIdentity:(id)identity completion:(id)completion
{
  v132 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  completionCopy = completion;
  defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v128 = 0;
  v8 = [defaultIdentityStore DSIDForUserIdentity:identityCopy outError:&v128];
  v85 = v128;
  quot = [v8 longLongValue];
  v10 = quot;
  if (quot)
  {
    v11 = v130 + 1;
    do
    {
      v12 = lldiv(quot, 10);
      quot = v12.quot;
      if (v12.rem >= 0)
      {
        LOBYTE(v13) = v12.rem;
      }

      else
      {
        v13 = -v12.rem;
      }

      *(v11 - 2) = v13 + 48;
      v14 = (v11 - 2);
      --v11;
    }

    while (v12.quot);
    if (v10 < 0)
    {
      *(v11 - 2) = 45;
      v14 = (v11 - 2);
    }

    v84 = CFStringCreateWithBytes(0, v14, v130 - v14, 0x8000100u, 0);
  }

  else
  {
    v84 = @"0";
  }

  if (v85)
  {
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = identityCopy;
      *&buf[12] = 2114;
      *&buf[14] = v85;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "[AccountManager] Unable to get DSID for identity: %{public}@ error: %{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v81 = MPCHashedDSIDFromDSID(v84);
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = identityCopy;
      *&buf[12] = 2114;
      *&buf[14] = v81;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[AccountManager] - DSID found for %{public}@ [%{public}@]", buf, 0x16u);
    }

    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
    v127 = 0;
    v18 = [defaultIdentityStore DSIDForUserIdentity:activeAccount outError:&v127];
    v82 = v127;
    longLongValue = [v18 longLongValue];
    v20 = longLongValue;
    if (longLongValue)
    {
      v21 = v130 + 1;
      do
      {
        v22 = lldiv(longLongValue, 10);
        longLongValue = v22.quot;
        if (v22.rem >= 0)
        {
          LOBYTE(v23) = v22.rem;
        }

        else
        {
          v23 = -v22.rem;
        }

        *(v21 - 2) = v23 + 48;
        v24 = (v21 - 2);
        --v21;
      }

      while (v22.quot);
      if (v20 < 0)
      {
        *(v21 - 2) = 45;
        v24 = (v21 - 2);
      }

      v79 = CFStringCreateWithBytes(0, v24, v130 - v24, 0x8000100u, 0);
    }

    else
    {
      v79 = @"0";
    }

    if (v82)
    {
      v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v82;
        _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_ERROR, "[AccountManager] Unable to get DSID for active identity error: %{public}@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      defaultMediaIdentity = [MEMORY[0x1E69E4680] defaultMediaIdentity];
      v126 = 0;
      v76 = [defaultIdentityStore DSIDForUserIdentity:defaultMediaIdentity outError:&v126];
      v82 = v126;

      if (v76)
      {
        longLongValue2 = [v76 longLongValue];
        v28 = longLongValue2;
        if (longLongValue2)
        {
          v29 = v130 + 1;
          do
          {
            v30 = lldiv(longLongValue2, 10);
            longLongValue2 = v30.quot;
            if (v30.rem >= 0)
            {
              LOBYTE(v31) = v30.rem;
            }

            else
            {
              v31 = -v30.rem;
            }

            *(v29 - 2) = v31 + 48;
            v32 = (v29 - 2);
            --v29;
          }

          while (v30.quot);
          if (v28 < 0)
          {
            *(v29 - 2) = 45;
            v32 = (v29 - 2);
          }

          v72 = CFStringCreateWithBytes(0, v32, v130 - v32, 0x8000100u, 0);
        }

        else
        {
          v72 = @"0";
        }
      }

      else
      {
        v72 = v79;
      }

      v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        dSID = [identityCopy DSID];
        stringValue = [dSID stringValue];
        v36 = MPCHashedDSIDFromDSID(stringValue);
        *buf = 138543618;
        *&buf[4] = identityCopy;
        *&buf[12] = 2114;
        *&buf[14] = v36;
        _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_DEFAULT, "[AccountManager] - DSID found for %{public}@ [%{public}@]", buf, 0x16u);
      }

      v37 = dispatch_group_create();
      v125 = 0;
      v78 = [defaultIdentityStore getPropertiesForUserIdentity:identityCopy error:&v125];
      v73 = v125;
      if (v73)
      {
        v38 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = identityCopy;
          *&buf[12] = 2114;
          *&buf[14] = v73;
          _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_ERROR, "[AccountManager] Unable to get properties for identity: %{public}@ error: %{public}@", buf, 0x16u);
        }
      }

      privateListeningEnabled = [v78 privateListeningEnabled];
      bOOLValue = [privateListeningEnabled BOOLValue];

      if ([MEMORY[0x1E6970538] isCurrentDeviceValidHomeAccessory])
      {
        v40 = MEMORY[0x1E6970548];
        homeUserIdentifiers = [v78 homeUserIdentifiers];
        v42 = [v40 userMonitorWithHomeIdentifiers:homeUserIdentifiers];

        if (v42)
        {
          bOOLValue = [v42 isPrivateListeningEnabledForCurrentAccessory];
        }

        else
        {
          bOOLValue = *MEMORY[0x1E696F8D8];
        }
      }

      isActiveLocker = [v78 isActiveLocker];
      storefrontIdentifier = [v78 storefrontIdentifier];
      os_unfair_lock_lock(&self->_lock);
      initialAccountGroup = self->_initialAccountGroup;
      v44 = [(NSDictionary *)self->_accounts objectForKeyedSubscript:v81];
      os_unfair_lock_unlock(&self->_lock);
      v45 = objc_alloc(MEMORY[0x1E69E4618]);
      v120[0] = MEMORY[0x1E69E9820];
      v120[1] = 3221225472;
      v120[2] = __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke;
      v120[3] = &unk_1E82316F8;
      v121 = defaultIdentityStore;
      v74 = identityCopy;
      v122 = v74;
      v124 = initialAccountGroup == 0;
      v46 = v44;
      v123 = v46;
      v77 = [v45 initWithBlock:v120];
      if (initialAccountGroup)
      {
        v47 = 2.0;
      }

      else
      {
        v47 = 20.0;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v130[0] = __Block_byref_object_copy__664;
      v130[1] = __Block_byref_object_dispose__665;
      subscriptionStatus = [v46 subscriptionStatus];
      if ((ICCurrentApplicationIsSystemApp() & 1) == 0)
      {
        v48 = v37;
        dispatch_group_enter(v37);
        v49 = [objc_alloc(MEMORY[0x1E69E44D8]) initWithStoreRequestContext:v77];
        [v49 setAllowsFallbackToExpiredStatus:1];
        [v49 setAllowsFallbackToStatusNeedingReload:1];
        [v49 setShouldReturnLastKnownStatusOnly:initialAccountGroup != 0];
        v50 = objc_alloc(MEMORY[0x1E69B13F0]);
        v115[0] = MEMORY[0x1E69E9820];
        v115[1] = 3221225472;
        v115[2] = __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_205;
        v115[3] = &unk_1E82393B0;
        v119 = a2;
        v115[4] = self;
        v51 = v74;
        v116 = v51;
        v52 = v49;
        v117 = v52;
        v53 = v37;
        v118 = v53;
        v54 = [v50 initWithTimeout:v115 interruptionHandler:v47];
        mEMORY[0x1E69E44C8] = [MEMORY[0x1E69E44C8] sharedStatusController];
        v110[0] = MEMORY[0x1E69E9820];
        v110[1] = 3221225472;
        v110[2] = __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_211;
        v110[3] = &unk_1E8231720;
        v111 = v51;
        v114 = buf;
        v56 = v54;
        v112 = v56;
        v113 = v53;
        [mEMORY[0x1E69E44C8] performSubscriptionStatusRequest:v52 withCompletionHandler:v110];

        v37 = v48;
      }

      dispatch_group_enter(v37);
      v108[0] = 0;
      v108[1] = v108;
      v108[2] = 0x3032000000;
      v108[3] = __Block_byref_object_copy__664;
      v108[4] = __Block_byref_object_dispose__665;
      v109 = [v46 bag];
      v57 = objc_alloc(MEMORY[0x1E69B13F0]);
      v104[0] = MEMORY[0x1E69E9820];
      v104[1] = 3221225472;
      v104[2] = __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_213;
      v104[3] = &unk_1E82392E8;
      v107 = a2;
      v104[4] = self;
      v58 = v74;
      v105 = v58;
      v59 = v37;
      v106 = v59;
      v60 = [v57 initWithTimeout:v104 interruptionHandler:v47];
      mEMORY[0x1E69E4658] = [MEMORY[0x1E69E4658] sharedBagProvider];
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_218;
      v99[3] = &unk_1E8231748;
      v62 = v58;
      v100 = v62;
      v103 = v108;
      v63 = v60;
      v101 = v63;
      v64 = v59;
      v102 = v64;
      [mEMORY[0x1E69E4658] getBagForRequestContext:v77 withCompletionHandler:v99];

      v65 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_220;
      block[3] = &unk_1E8231770;
      v87 = v62;
      v95 = buf;
      v88 = v79;
      v89 = v84;
      v90 = v72;
      v97 = isActiveLocker;
      v98 = bOOLValue;
      v91 = v81;
      v92 = v70;
      v96 = v108;
      v93 = v46;
      v94 = completionCopy;
      v66 = v46;
      v67 = v70;
      v68 = v72;
      dispatch_group_notify(v64, v65, block);

      _Block_object_dispose(v108, 8);
      _Block_object_dispose(buf, 8);
    }
  }
}

void __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 setIdentityStore:*(a1 + 32)];
  [v9 setIdentity:*(a1 + 40)];
  IsSystemApp = ICCurrentApplicationIsSystemApp();
  v4 = objc_alloc(MEMORY[0x1E69E43B0]);
  if (IsSystemApp)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 initWithSystemApplicationType:v5];
  [v9 setClientInfo:v6];

  [v9 setAllowsExpiredBags:(*(a1 + 56) & 1) == 0];
  if (objc_opt_respondsToSelector())
  {
    v7 = [*(a1 + 48) bag];
    [v9 setPreloadedBag:v7];
  }

  v8 = [objc_alloc(MEMORY[0x1E69E4628]) initWithUserInteractionLevel:1];
  [v9 setAuthenticationProvider:v8];
}

void __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_205(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPCPlaybackAccountManager.m" lineNumber:633 description:@"[AccountManager] subscription status handler not called"];
  }

  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) shouldReturnLastKnownStatusOnly];
    v7 = 138543618;
    v8 = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "[AccountManager] Subscription status timed out. identity=%{public}@ firstLoad=%{BOOL}u", &v7, 0x12u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 24) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  dispatch_group_leave(*(a1 + 56));
}

void __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_211(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "[AccountManager] Failed to get subscription status for identity: %{public}@ error: %{public}@", &v12, 0x16u);
    }
  }

  else
  {
    v9 = [v5 subscriptionStatus];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  if ([*(a1 + 40) disarm])
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_213(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPCPlaybackAccountManager.m" lineNumber:656 description:@"[AccountManager] URL bag handler not called"];
  }

  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 40);
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "[AccountManager] URL bag timed out. identity=%{public}@", &v6, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 24) = 1;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  dispatch_group_leave(*(a1 + 48));
}

void __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_218(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[AccountManager] Failed to get URL bag for identity: %{public}@ error: %{public}@", &v10, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  if ([*(a1 + 40) disarm])
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_220(uint64_t a1)
{
  v2 = [[MPCPlaybackAccount alloc] initWithUserIdentity:*(a1 + 32) subscriptionStatus:*(*(*(a1 + 96) + 8) + 40)];
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v4;
  if (v4 == v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:v3];
  }

  [(MPCPlaybackAccount *)v2 setActiveAccount:v6];
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = v8;
  if (v8 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = [v8 isEqual:v7];
  }

  [(MPCPlaybackAccount *)v2 setFallbackAccount:v10];
  [(MPCPlaybackAccount *)v2 setHashedDSID:*(a1 + 64)];
  [(MPCPlaybackAccount *)v2 setHasCloudLibraryEnabled:*(a1 + 112)];
  [(MPCPlaybackAccount *)v2 setPrivateListeningEnabled:*(a1 + 113)];
  [(MPCPlaybackAccount *)v2 setStoreFrontIdentifier:*(a1 + 72)];
  [(MPCPlaybackAccount *)v2 setBag:*(*(*(a1 + 104) + 8) + 40)];
  v11 = [(MPCPlaybackAccount *)v2 _copyStreamerStorage:*(a1 + 80)];
  [(MPCPlaybackAccount *)v2 set_whaStreamerStorage:v11];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__MPCPlaybackAccountManager__buildAccountFromLocalIdentity_completion___block_invoke_2;
  v14[3] = &unk_1E8239170;
  v12 = *(a1 + 88);
  v15 = v2;
  v16 = v12;
  v13 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_updateAccountsWithAttemptCount:(int64_t)count completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
  }

  else
  {
    v7 = &__block_literal_global_185;
  }

  if (count < 4)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v10 = os_signpost_id_generate(v9);

    hasLoadedInitialAccounts = [(MPCPlaybackAccountManager *)self hasLoadedInitialAccounts];
    v12 = !hasLoadedInitialAccounts;
    if (!hasLoadedInitialAccounts)
    {
      v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
      v14 = v13;
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v10, "UpdateAccounts", "", buf, 2u);
      }
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__MPCPlaybackAccountManager__updateAccountsWithAttemptCount_completion___block_invoke_186;
    v15[3] = &unk_1E82316D0;
    v15[4] = self;
    countCopy = count;
    v18 = v10;
    v19 = v12;
    v16 = v7;
    [(MPCPlaybackAccountManager *)self _enumerateIdentitiesWithCompletion:v15];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      countCopy2 = count;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[AccountManager] - Dropped account refresh because too many (%{public}ld) attempts have been made", buf, 0xCu);
    }

    v7[2](v7);
  }
}

void __72__MPCPlaybackAccountManager__updateAccountsWithAttemptCount_completion___block_invoke_186(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2810000000;
  v47[3] = &unk_1C60E49B1;
  v48 = 0;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count") + objc_msgSend(v5, "count")}];
  v22 = v6;
  v8 = dispatch_group_create();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v9)
  {
    v10 = *v44;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        dispatch_group_enter(v8);
        v13 = *(a1 + 32);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __72__MPCPlaybackAccountManager__updateAccountsWithAttemptCount_completion___block_invoke_2;
        v39[3] = &unk_1E8231660;
        v42 = v47;
        v40 = v7;
        v41 = v8;
        [v13 _buildAccountFromLocalIdentity:v12 completion:v39];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v9);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v22;
  v14 = [v23 countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v14)
  {
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v23);
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        dispatch_group_enter(v8);
        v18 = *(a1 + 32);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __72__MPCPlaybackAccountManager__updateAccountsWithAttemptCount_completion___block_invoke_3;
        v31[3] = &unk_1E8231660;
        v34 = v47;
        v32 = v7;
        v33 = v8;
        [v18 _buildAccountFromDelegatedIdentity:v17 completion:v31];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v23 countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v14);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MPCPlaybackAccountManager__updateAccountsWithAttemptCount_completion___block_invoke_4;
  block[3] = &unk_1E82316A8;
  v19 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v26 = v7;
  v30 = *(a1 + 64);
  v20 = *(a1 + 56);
  v28 = *(a1 + 48);
  v29 = v20;
  v27 = v19;
  v21 = v7;
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v47, 8);
}

void __72__MPCPlaybackAccountManager__updateAccountsWithAttemptCount_completion___block_invoke_2(void *a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1[6] + 8);
    v4 = a2;
    os_unfair_lock_lock(v3 + 8);
    v5 = a1[4];
    v6 = [v4 hashedDSID];
    [v5 setObject:v4 forKeyedSubscript:v6];

    os_unfair_lock_unlock((*(a1[6] + 8) + 32));
  }

  v7 = a1[5];

  dispatch_group_leave(v7);
}

void __72__MPCPlaybackAccountManager__updateAccountsWithAttemptCount_completion___block_invoke_3(void *a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1[6] + 8);
    v4 = a2;
    os_unfair_lock_lock(v3 + 8);
    v5 = a1[4];
    v6 = [v4 hashedDSID];
    [v5 setObject:v4 forKeyedSubscript:v6];

    os_unfair_lock_unlock((*(a1[6] + 8) + 32));
  }

  v7 = a1[5];

  dispatch_group_leave(v7);
}

void __72__MPCPlaybackAccountManager__updateAccountsWithAttemptCount_completion___block_invoke_4(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;

    v6 = *(a1 + 32);
  }

  v10 = *(v6 + 24);
  *(v6 + 24) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if ([v2 isEqual:*(a1 + 40)])
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [*(a1 + 32) accounts];
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_INFO, "[AccountManager] - Updated accounts [silent]: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = [*(a1 + 32) accounts];
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v11;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[AccountManager] - Updated accounts: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _notifyObserversForChange:v11];
  }

  if (v10)
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[AccountManager] - Refreshing due to previous timeout", buf, 2u);
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = 1000000000 * (1 << (v15 - 1));
    }

    else
    {
      v16 = 0;
    }

    v17 = dispatch_time(0, v16);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __72__MPCPlaybackAccountManager__updateAccountsWithAttemptCount_completion___block_invoke_190;
    v24[3] = &unk_1E8239338;
    v18 = *(a1 + 56);
    v24[4] = *(a1 + 32);
    v24[5] = v18;
    dispatch_after(v17, MEMORY[0x1E69E96A0], v24);
  }

  v19 = [*(a1 + 40) msv_firstWhere:&__block_literal_global_194];
  v20 = v19 != 0;

  [*(a1 + 32) _setNeedsRefreshDueToMissingBag:v20];
  if (*(a1 + 72) == 1)
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics");
    v22 = v21;
    v23 = *(a1 + 64);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v22, OS_SIGNPOST_INTERVAL_END, v23, "UpdateAccounts", " enableTelemetry=YES ", buf, 2u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

BOOL __72__MPCPlaybackAccountManager__updateAccountsWithAttemptCount_completion___block_invoke_2_191(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 bag];
  v4 = v3 == 0;

  return v4;
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  if ([reachability isRemoteServerReachable])
  {
    os_unfair_lock_lock(&self->_lock);
    needsRefreshDueToMissingBag = self->_needsRefreshDueToMissingBag;
    os_unfair_lock_unlock(&self->_lock);
    if (needsRefreshDueToMissingBag)
    {
      v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[AccountManager] - Network is reachable - Refreshing due to missing bag", v6, 2u);
      }

      [(MPCPlaybackAccountManager *)self _updateAccounts];
    }
  }
}

- (id)musicPlaybackRequestEnvironmentForAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlaybackAccountManager.m" lineNumber:413 description:{@"Invalid parameter not satisfying: %@", @"account"}];
  }

  if ([accountCopy isDelegated])
  {
    anyDelegationHostingAccount = [(MPCPlaybackAccountManager *)self anyDelegationHostingAccount];
    userIdentity = [anyDelegationHostingAccount userIdentity];
    v8 = userIdentity;
    if (userIdentity)
    {
      defaultMediaIdentity = userIdentity;
    }

    else
    {
      defaultMediaIdentity = [MEMORY[0x1E69E4680] defaultMediaIdentity];
    }

    userIdentity3 = defaultMediaIdentity;

    v12 = [MPCPlaybackRequestEnvironment musicRequestWithUserIdentity:userIdentity3];
    v11 = [v12 mutableCopy];

    v13 = [MPCMutablePlaybackDelegationProperties alloc];
    userIdentity2 = [accountCopy userIdentity];
    dSID = [userIdentity2 DSID];
    v16 = -[MPCPlaybackDelegationProperties initWithStoreAccountID:deviceGUID:](v13, "initWithStoreAccountID:deviceGUID:", [dSID longLongValue], @"unknown-guid");
    [v11 setDelegationProperties:v16];
  }

  else
  {
    userIdentity3 = [accountCopy userIdentity];
    v11 = [MPCPlaybackRequestEnvironment musicRequestWithUserIdentity:userIdentity3];
  }

  return v11;
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_recursive_lock_lock_with_options();
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_recursive_lock_unlock();
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    os_unfair_recursive_lock_lock_with_options();
    [(NSHashTable *)self->_observers addObject:observerCopy];
    if ([(MPCPlaybackAccountManager *)self hasLoadedInitialAccounts])
    {
      accounts = [(MPCPlaybackAccountManager *)self accounts];
      os_unfair_recursive_lock_unlock();
      if (accounts)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __46__MPCPlaybackAccountManager_registerObserver___block_invoke;
        block[3] = &unk_1E82391C0;
        v8 = observerCopy;
        selfCopy = self;
        v10 = accounts;
        v6 = accounts;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {
      os_unfair_recursive_lock_unlock();
    }
  }
}

- (id)accountForUserIdentity:(id)identity
{
  v24 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  os_unfair_lock_lock(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [(NSDictionary *)self->_accounts allValues];
  v6 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    selfCopy = self;
    v7 = *v20;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        userIdentity = [v9 userIdentity];
        defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
        v12 = userIdentity;
        v13 = identityCopy;
        v14 = defaultIdentityStore;
        v15 = v14;
        if (v12 == v13)
        {

LABEL_16:
          v6 = [v9 copy];
          goto LABEL_17;
        }

        if (identityCopy && v12)
        {
          v16 = [v12 isEqualToIdentity:v13 inStore:v14];

          if (v16)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

LABEL_17:
    self = selfCopy;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)accountForHashedDSID:(id)d
{
  v4 = [d substringToIndex:7];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSDictionary *)self->_accounts objectForKeyedSubscript:v4];
  v6 = [v5 copy];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)accountForDSID:(id)d
{
  v4 = MPCHashedDSIDFromDSID(d);
  v5 = [(MPCPlaybackAccountManager *)self accountForHashedDSID:v4];

  return v5;
}

- (MPCPlaybackAccount)anyDelegationHostingAccount
{
  v15 = *MEMORY[0x1E69E9840];
  fallbackAccount = [(MPCPlaybackAccountManager *)self fallbackAccount];
  if ([fallbackAccount hasDelegationCapability])
  {
    v4 = fallbackAccount;
  }

  else
  {
    [(MPCPlaybackAccountManager *)self accounts];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 hasDelegationCapability])
          {
            v4 = v8;
            goto LABEL_13;
          }
        }

        v4 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v4;
}

- (void)performAfterLoadingAccounts:(id)accounts
{
  accountsCopy = accounts;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_initialAccountGroup;
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    dispatch_group_notify(self->_initialAccountGroup, MEMORY[0x1E69E96A0], accountsCopy);
  }

  else
  {
    accountsCopy[2](accountsCopy);
  }
}

uint64_t __37__MPCPlaybackAccountManager_accounts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isActiveAccount] && !objc_msgSend(v5, "isActiveAccount"))
  {
    goto LABEL_10;
  }

  if ([v5 isActiveAccount] && !objc_msgSend(v4, "isActiveAccount") || objc_msgSend(v4, "isDelegated") && !objc_msgSend(v5, "isDelegated"))
  {
    v8 = 1;
    goto LABEL_12;
  }

  if ([v5 isDelegated] && !objc_msgSend(v4, "isDelegated"))
  {
LABEL_10:
    v8 = -1;
  }

  else
  {
    v6 = [v4 hashedDSID];
    v7 = [v5 hashedDSID];
    v8 = [v6 compare:v7];
  }

LABEL_12:

  return v8;
}

- (void)dealloc
{
  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  [mEMORY[0x1E69E4428] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = MPCPlaybackAccountManager;
  [(MPCPlaybackAccountManager *)&v4 dealloc];
}

void __34__MPCPlaybackAccountManager__init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__handleURLBagProviderDidUpdateBagNotification_ name:*MEMORY[0x1E69E4348] object:0];
}

@end