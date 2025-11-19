@interface ML3MultiUserDaemonMusicLibraryResourcesManager
@end

@implementation ML3MultiUserDaemonMusicLibraryResourcesManager

void __66___ML3MultiUserDaemonMusicLibraryResourcesManager__notifyClients___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEBUG, "%{public}@ - Posting notification %{public}@", &v6, 0x16u);
  }

  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v5 postNotificationName:*(a1 + 40) object:0 userInfo:0 deliverImmediately:1];
}

uint64_t __79___ML3MultiUserDaemonMusicLibraryResourcesManager_setCurrentActiveAccountDSID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t __75___ML3MultiUserDaemonMusicLibraryResourcesManager_currentActiveAccountDSID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __84___ML3MultiUserDaemonMusicLibraryResourcesManager__blockingCurrentActiveAccountDSID__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) currentActiveAccountDSID];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end