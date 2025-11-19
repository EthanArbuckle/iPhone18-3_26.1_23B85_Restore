@interface ML3MultiUserDaemonAccountChangeOperation
@end

@implementation ML3MultiUserDaemonAccountChangeOperation

void __52___ML3MultiUserDaemonAccountChangeOperation_execute__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) finish];
  v2 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_22D2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Active account changed - Database path change is complete: %{public}@", &v5, 0x16u);
  }
}

@end