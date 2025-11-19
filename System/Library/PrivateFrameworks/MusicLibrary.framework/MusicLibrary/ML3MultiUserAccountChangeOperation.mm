@interface ML3MultiUserAccountChangeOperation
@end

@implementation ML3MultiUserAccountChangeOperation

void __46___ML3MultiUserAccountChangeOperation_execute__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "_ML3MultiUserAccountChangeOperation %p - Finished operation", &v7, 0xCu);
  }

  [*(a1 + 32) finishWithError:v4];
}

@end