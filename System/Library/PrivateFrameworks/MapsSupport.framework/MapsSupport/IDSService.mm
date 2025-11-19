@interface IDSService
@end

@implementation IDSService

void __44__IDSService_MSPExtras___msp_currentAccount__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = MSPGetSharedTripLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 40);
    v11 = [v8 loginID];
    v12 = [v8 _msp_validityDescription];
    v16 = 134218755;
    v17 = a3 + 1;
    v18 = 2048;
    v19 = v10;
    v20 = 2113;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_INFO, "Checking account %lu/%lu: %{private}@ (%{public}@)...", &v16, 0x2Au);
  }

  if ([v8 accountType] == 1 && objc_msgSend(v8, "isActive") && objc_msgSend(v8, "canSend"))
  {
    v13 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = a3 + 1;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_INFO, "- account %lu is eligible for trip sharing", &v16, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }

  else
  {
    v14 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "- account is NOT eligible for trip sharing", &v16, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end