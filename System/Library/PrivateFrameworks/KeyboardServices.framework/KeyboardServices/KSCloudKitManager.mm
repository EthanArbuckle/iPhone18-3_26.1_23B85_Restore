@interface KSCloudKitManager
@end

@implementation KSCloudKitManager

void __47___KSCloudKitManager_userIdentityWithResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___KSCloudKitManager_userIdentityWithResponse___block_invoke_2;
  block[3] = &unk_2797F6520;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __47___KSCloudKitManager_userIdentityWithResponse___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) recordName];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

uint64_t __44___KSCloudKitManager_setupAccountDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44___KSCloudKitManager_setupAccountDidChange___block_invoke_2;
  v3[3] = &unk_2797F65C0;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 queryAccountStatusWithCompletionHandler:v3];
}

void __44___KSCloudKitManager_setupAccountDidChange___block_invoke_2(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44___KSCloudKitManager_setupAccountDidChange___block_invoke_3;
  v11[3] = &unk_2797F6570;
  v11[4] = *(a1 + 32);
  v11[5] = a2;
  v12 = *(a1 + 40);
  v13 = a4;
  v14 = a3;
  v7 = MEMORY[0x259C41CB0](v11);
  if (a2 == 1 && ((a3 & 1) != 0 || ([*(a1 + 32) needsDeviceToDevice] & 1) == 0))
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44___KSCloudKitManager_setupAccountDidChange___block_invoke_4;
    v9[3] = &unk_2797F6598;
    v9[4] = v8;
    v10 = v7;
    [v8 setupRecordZoneWithCompletionHandler:v9 ignoreDefaults:0];
  }

  else
  {
    v7[2](v7, 0);
  }
}

void __44___KSCloudKitManager_setupAccountDidChange___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v13[0] = @"KSCloudKitAccountDidChangeStatusKey";
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v14[0] = v6;
  v13[1] = @"KSCloudKitAccountDidChangeAccountChangedKey";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  v14[1] = v7;
  v13[2] = @"KSCloudKitAccountDidChangeUserChangedKey";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 49)];
  v14[2] = v8;
  v13[3] = @"KSCloudKitAccountDidChangeDeviceToDeviceKey";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 50)];
  v14[3] = v9;
  v13[4] = @"KSCloudKitAccountDidSuccessfullyCreateZone";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v14[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];
  [v4 postNotificationName:@"KSCloudKitAccountDidChange" object:v5 userInfo:v11];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __44___KSCloudKitManager_setupAccountDidChange___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = KSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[_KSCloudKitManager setupAccountDidChange:]_block_invoke_4";
      _os_log_impl(&dword_2557E2000, v3, OS_LOG_TYPE_INFO, "%s  Failed to set up record zone", &v6, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) setupSubscription];
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __45___KSCloudKitManager_accountStatusDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 setupAccountDidChange:1];
  v3[2](v3, 0);
}

void __60___KSCloudKitManager_shouldDetectAccountChangeWithResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  if ([a3 code] == 9)
  {
    v5 = 0;
    goto LABEL_13;
  }

  v6 = v19;
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = +[_KSUtilities userDefaultsSuiteName];
  v9 = [v7 initWithSuiteName:v8];

  v10 = [*(a1 + 32) lastKnownUserKey];
  v11 = [v9 stringForKey:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v9 stringForKey:@"KSLastKnownUserID"];
  }

  v14 = v13;

  if (v6 | v14)
  {
    if (v6 || !v14)
    {
      v5 = [v14 isEqualToString:v6] ^ 1;
      if (v6)
      {
        v18 = [*(a1 + 32) lastKnownUserKey];
        [v9 setObject:v6 forKey:v18];

        goto LABEL_12;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = [*(a1 + 32) lastKnownUserKey];
  [v9 removeObjectForKey:v15];

  [v9 removeObjectForKey:@"KSLastKnownUserID"];
LABEL_12:

LABEL_13:
  v16 = v19;
  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v5);
    v16 = v19;
  }
}

void __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[_KSCloudKitManager queryAccountStatusWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  >>> checking account status", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_91;
  v5[3] = &unk_2797F66B0;
  v5[4] = v3;
  v6 = *(a1 + 40);
  [v3 _checkAccountStatusWithCompletionHandler:v5 withRetryCount:0];

  v4 = *MEMORY[0x277D85DE8];
}

void __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_91(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(*(a1 + 32) + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_2797F6688;
  v9 = a2;
  v6 = *(a1 + 40);
  v10 = a3;
  v7[4] = *(a1 + 32);
  v8 = v6;
  dispatch_async(v5, v7);
}

void __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) | 4) == 4)
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 40) + 16);
    v5 = *MEMORY[0x277D85DE8];

    v4();
  }

  else
  {
    v6 = KSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[_KSCloudKitManager queryAccountStatusWithCompletionHandler:]_block_invoke_2";
      _os_log_impl(&dword_2557E2000, v6, OS_LOG_TYPE_INFO, "%s  >>> account is set up", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_92;
    v11[3] = &unk_2797F6660;
    v11[4] = v7;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = v8;
    v13 = v9;
    v14 = *(a1 + 56);
    [v7 shouldDetectAccountChangeWithResponse:v11];

    v10 = *MEMORY[0x277D85DE8];
  }
}

uint64_t __62___KSCloudKitManager_queryAccountStatusWithCompletionHandler___block_invoke_92(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = KSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "[_KSCloudKitManager queryAccountStatusWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v3, OS_LOG_TYPE_INFO, "%s  >>> user logged in has changed", &v13, 0xCu);
    }

    v4 = objc_alloc(MEMORY[0x277CBEBD0]);
    v5 = +[_KSUtilities userDefaultsSuiteName];
    v6 = [v4 initWithSuiteName:v5];

    v7 = [*(a1 + 32) recordZoneKey];
    [v6 removeObjectForKey:v7];

    v8 = [*(a1 + 32) subscriptionKey];
    [v6 removeObjectForKey:v8];
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  result = (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void __40___KSCloudKitManager_isAccountAvailable__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40___KSCloudKitManager_isAccountAvailable__block_invoke_2;
  v4[3] = &unk_2797F6700;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _checkAccountStatusWithCompletionHandler:v4 withRetryCount:0];
}

void __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  if (![v7 isEqualToString:*MEMORY[0x277CBBF50]] || objc_msgSend(v6, "code") != 3 && objc_msgSend(v6, "code") != 4 && objc_msgSend(v6, "code") != 9)
  {

    goto LABEL_9;
  }

  v8 = *(a1 + 48);

  if (v8 > 1)
  {
LABEL_9:
    v17 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke_99;
    block[3] = &unk_2797F6778;
    v28 = *(a1 + 40);
    v27 = v5;
    dispatch_async(v17, block);

    v18 = v28;
    goto LABEL_14;
  }

  v9 = [v6 userInfo];
  v10 = *MEMORY[0x277CBBF68];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

  if (v11)
  {
    v12 = [v6 userInfo];
    v13 = [v12 objectForKeyedSubscript:v10];
    [v13 doubleValue];
    v15 = v14;

    v16 = (v15 * 1000000000.0);
  }

  else
  {
    v16 = 60000000000;
  }

  v19 = dispatch_time(0, v16);
  v21 = *(a1 + 32);
  v20 = *(a1 + 40);
  v22 = *(v21 + 8);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke_2;
  v29[3] = &unk_2797F6750;
  v29[4] = v21;
  v23 = v20;
  v24 = *(a1 + 48);
  v30 = v23;
  v31 = v24;
  dispatch_after(v19, v22, v29);
  v25 = KSCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke_cold_1();
  }

  v18 = v30;
LABEL_14:
}

uint64_t __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke_99(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) accountStatus];
  v4 = [*(a1 + 32) supportsDeviceToDeviceEncryption];
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

void __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v7 = [a2 zoneID];
      v8 = [v7 zoneName];
      v9 = [*(a1 + 32) recordZone];
      v10 = [v9 zoneID];
      v11 = [v10 zoneName];
      v12 = [v8 isEqualToString:v11];

      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [*(a1 + 32) recordZoneKey];
        [v13 setBool:1 forKey:v14];
      }
    }
  }

  v15 = *(a1 + 32);
  v16 = *(v15 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2;
  block[3] = &unk_2797F67C8;
  block[4] = v15;
  v17 = *(a1 + 48);
  v20 = v6;
  v21 = v17;
  v18 = v6;
  dispatch_async(v16, block);
}

uint64_t __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setRecordZoneOperationInProgress:0];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) recordZoneOperationInProgress] & 1) == 0)
  {
    [*(a1 + 32) setRecordZoneOperationInProgress:1];
    v2 = KSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[_KSCloudKitManager setupRecordZoneWithCompletionHandler:ignoreDefaults:]_block_invoke_3";
      _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  >>> creating record zone", buf, 0xCu);
    }

    v3 = *(a1 + 32);
    v4 = [v3 recordZone];
    v5 = [v4 zoneID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_102;
    v8[3] = &unk_2797F6840;
    v6 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v6;
    v10 = *(a1 + 48);
    [v3 _ckFetchRecordZoneWithID:v5 completionHandler:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 domain];
  v8 = [v7 isEqualToString:*MEMORY[0x277CBBF50]];

  if (v8)
  {
    v9 = [v6 code];
    switch(v9)
    {
      case 26:
        goto LABEL_5;
      case 112:
        v14 = *(a1 + 32);
        v15 = *(v14 + 8);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_104;
        v16[3] = &unk_2797F66D8;
        v16[4] = v14;
        v17 = *(a1 + 48);
        dispatch_async(v15, v16);
        v13 = v17;
        goto LABEL_8;
      case 28:
LABEL_5:
        v10 = *(a1 + 32);
        v11 = [v10 recordZone];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2_103;
        v18[3] = &unk_2797F6818;
        v12 = *(a1 + 40);
        v18[4] = *(a1 + 32);
        v19 = v12;
        [v10 _ckSaveRecordZone:v11 completionHandler:v18];

        v13 = v19;
LABEL_8:

        goto LABEL_9;
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_9:
}

void __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2_103(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = KSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2_103_cold_1(a1, v6, v7);
    }
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_104(uint64_t a1)
{
  [*(a1 + 32) setRecordZoneOperationInProgress:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 resetZoneWithDelete:2 withCompletionHandler:v3];
}

void __64___KSCloudKitManager_resetZoneWithDelete_withCompletionHandler___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) recordZoneOperationInProgress])
  {
LABEL_11:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    if (v2 != 2)
    {
      goto LABEL_7;
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) recordZoneKey];
  [v4 setBool:v3 forKey:v5];

LABEL_7:
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) recordZoneKey];
  LODWORD(v6) = [v6 BOOLForKey:v7];

  v8 = *(a1 + 32);
  if (v6)
  {
    [v8 setRecordZoneOperationInProgress:1];
    v9 = KSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[_KSCloudKitManager resetZoneWithDelete:withCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, "%s  >>> deleting record zone", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    v11 = [v10 recordZone];
    v12 = [v11 zoneID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64___KSCloudKitManager_resetZoneWithDelete_withCompletionHandler___block_invoke_105;
    v18[3] = &unk_2797F6890;
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v18[4] = *(a1 + 32);
    v21 = v13;
    v20 = v14;
    v19 = *(a1 + 40);
    [v10 _ckDeleteRecordZoneWithID:v12 completionHandler:v18];

    goto LABEL_11;
  }

  v16 = *(a1 + 48);
  v17 = *MEMORY[0x277D85DE8];

  [v8 setupRecordZoneWithCompletionHandler:v16 ignoreDefaults:0];
}

void __64___KSCloudKitManager_resetZoneWithDelete_withCompletionHandler___block_invoke_105(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  [*(a1 + 32) setRecordZoneOperationInProgress:0];
  if (!v10)
  {
LABEL_6:
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) recordZoneKey];
    [v6 setBool:0 forKey:v7];

    v8 = *(a1 + 32);
    v9 = *(a1 + 48);

    [v8 setupRecordZoneWithCompletionHandler:v9 ignoreDefaults:0];
    return;
  }

  if (*(a1 + 56) == 2)
  {
    v4 = [v10 domain];
    if ([v4 isEqualToString:*MEMORY[0x277CBBF50]])
    {
      v5 = [v10 code];

      if (v5 == 26)
      {

        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __79___KSCloudKitManager_recordWithName_type_cloudData_attributes_encryptedFields___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 encryptedValuesByKey];
  [v7 setObject:v5 forKey:v6];
}

void __69___KSCloudKitManager_recordWithName_type_attributes_encryptedFields___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 encryptedValuesByKey];
  [v7 setObject:v5 forKey:v6];
}

void __39___KSCloudKitManager_setupSubscription__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) subscriptionOperationInProgress] & 1) == 0)
  {
    [*(a1 + 32) setSubscriptionOperationInProgress:1];
    v2 = KSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[_KSCloudKitManager setupSubscription]_block_invoke";
      _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  Creating subscription", buf, 0xCu);
    }

    v3 = objc_alloc(MEMORY[0x277CBC618]);
    v4 = [*(a1 + 32) recordZone];
    v5 = [v4 zoneID];
    v6 = [v3 initWithZoneID:v5 subscriptionID:*(a1 + 40)];

    v7 = objc_opt_new();
    [v7 setShouldBadge:0];
    [v6 setNotificationInfo:v7];
    v8 = objc_alloc(MEMORY[0x277CBC4B0]);
    v9 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
    v10 = [v8 initWithSubscriptionsToSave:v9 subscriptionIDsToDelete:0];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39___KSCloudKitManager_setupSubscription__block_invoke_118;
    v15[3] = &unk_2797F6908;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = v11;
    v17 = v12;
    v18 = v13;
    [v10 setModifySubscriptionsCompletionBlock:v15];
    [*(a1 + 32) addOperation:v10];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __39___KSCloudKitManager_setupSubscription__block_invoke_118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v5 = *(a1 + 48);
    v6 = [a4 userInfo];
    NSLog(&cfstr_ErrorFailedToC.isa, v5, v6);
  }

  else
  {
    v7 = *(a1 + 32);
    v6 = [*(a1 + 40) subscriptionKey];
    [v7 setBool:1 forKey:v6];
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39___KSCloudKitManager_setupSubscription__block_invoke_2;
  block[3] = &unk_2797F6310;
  block[4] = v8;
  dispatch_async(v9, block);
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x277CBBF50]];

    if (v9)
    {
      if ([v7 code] == 14)
      {
        v10 = [v7 userInfo];
        v11 = *MEMORY[0x277CBBFD8];
        v25[0] = *MEMORY[0x277CBBFE8];
        v25[1] = v11;
        v25[2] = *MEMORY[0x277CBBFE0];
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
        v13 = [v10 dictionaryWithValuesForKeys:v12];

        [*(a1 + 32) addObject:v13];
      }

      else if ([v7 code] == 3 || objc_msgSend(v7, "code") == 4 || objc_msgSend(v7, "code") == 6 || objc_msgSend(v7, "code") == 23 || objc_msgSend(v7, "code") == 6)
      {
        [*(a1 + 40) addObject:v5];
      }

      else
      {
        v15 = KSCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v5 recordID];
          v17 = [v16 recordName];
          v18 = [v7 localizedDescription];
          v19 = 136315650;
          v20 = "[_KSCloudKitManager updateRecords:deleteRecordIDs:withPriority:completionHandler:retryCount:]_block_invoke";
          v21 = 2112;
          v22 = v17;
          v23 = 2112;
          v24 = v18;
          _os_log_impl(&dword_2557E2000, v15, OS_LOG_TYPE_INFO, "%s  >>> Could not save recordName=%@; error=%@", &v19, 0x20u);
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = KSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
    v10 = [v7 localizedDescription];
    *buf = 136315650;
    v86 = "[_KSCloudKitManager updateRecords:deleteRecordIDs:withPriority:completionHandler:retryCount:]_block_invoke";
    v87 = 2112;
    v88 = v9;
    v89 = 2112;
    v90 = v10;
    _os_log_impl(&dword_2557E2000, v8, OS_LOG_TYPE_INFO, "%s  >>> modify operation completed with rrorCode: %@ description: %@", buf, 0x20u);
  }

  if ([v7 code] == 2)
  {
    v11 = KSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v7 userInfo];
      v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];
      *buf = 136315394;
      v86 = "[_KSCloudKitManager updateRecords:deleteRecordIDs:withPriority:completionHandler:retryCount:]_block_invoke";
      v87 = 2112;
      v88 = v13;
      _os_log_impl(&dword_2557E2000, v11, OS_LOG_TYPE_INFO, "%s  >>> partial failure : %@", buf, 0x16u);
    }
  }

  if ([v7 code] == 28)
  {
    v14 = *(a1 + 32);
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_128;
    v84[3] = &unk_2797F69A8;
    v84[4] = v14;
    [v14 resetZoneWithDelete:0 withCompletionHandler:v84];
  }

  v15 = [v7 domain];
  v16 = *MEMORY[0x277CBBF50];
  if ([v15 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    if ([v7 code] == 3 || objc_msgSend(v7, "code") == 6 || objc_msgSend(v7, "code") == 23)
    {

LABEL_14:
      v17 = KSCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
      }

      v25 = [v7 userInfo];
      v26 = *MEMORY[0x277CBBF68];
      v27 = [v25 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

      if (v27)
      {
        v28 = [v7 userInfo];
        v29 = [v28 objectForKeyedSubscript:v26];
        [v29 doubleValue];
        v31 = v30;

        v32 = (v31 * 1000000000.0);
      }

      else
      {
        v32 = 60000000000;
      }

      v53 = dispatch_time(0, v32);
      v55 = *(a1 + 32);
      v54 = *(a1 + 40);
      v56 = *(v55 + 8);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_129;
      block[3] = &unk_2797F69D0;
      block[4] = v55;
      v79 = v54;
      v57 = v6;
      v59 = *(a1 + 64);
      v58 = *(a1 + 72);
      v80 = v57;
      v82 = v58;
      v60 = v59;
      v61 = *(a1 + 80);
      v81 = v60;
      v83 = v61;
      dispatch_after(v53, v56, block);

      v49 = v79;
      goto LABEL_31;
    }

    v65 = [v7 code];

    if (v65 == 7)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v33 = [v7 domain];
  if ([v33 isEqualToString:v16])
  {
    v34 = [v7 code];

    if (v34 == 26)
    {
      v35 = KSCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127_cold_1(v35, v36, v37, v38, v39, v40, v41, v42);
      }

      v43 = *(a1 + 32);
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_130;
      v70[3] = &unk_2797F69F8;
      v70[4] = v43;
      v71 = *(a1 + 40);
      v44 = v6;
      v46 = *(a1 + 64);
      v45 = *(a1 + 72);
      v72 = v44;
      v76 = v45;
      v47 = v46;
      v48 = *(a1 + 80);
      v75 = v47;
      v77 = v48;
      v73 = *(a1 + 48);
      v74 = v7;
      [v43 setupRecordZoneWithCompletionHandler:v70 ignoreDefaults:1];

      v49 = v71;
      goto LABEL_31;
    }
  }

  else
  {
  }

  v50 = [*(a1 + 56) count];
  v51 = *(a1 + 32);
  if (!v50)
  {
    v62 = v51[1];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_3;
    v66[3] = &unk_2797F6520;
    v69 = *(a1 + 64);
    v67 = *(a1 + 48);
    v68 = v7;
    dispatch_async(v62, v66);

    v49 = v69;
LABEL_31:

    goto LABEL_34;
  }

  v52 = [v51 resolveConflicts:*(a1 + 56)];
  if ([v52 count])
  {
    [*(a1 + 32) updateRecords:v52 deleteRecordIDs:0 withPriority:*(a1 + 72) completionHandler:*(a1 + 64)];
  }

  else
  {
    v63 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
  }

LABEL_34:
  v64 = *MEMORY[0x277D85DE8];
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_128(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) recordZone];
  v3 = [v2 zoneID];
  v4 = [v3 zoneName];
  [v5 userDidDeleteRecordZone:v4];
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_130(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CBBF50]), v5, (v6 & 1) != 0))
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 56);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_2;
    v17[3] = &unk_2797F69D0;
    v17[4] = v10;
    v18 = v9;
    v12 = *(a1 + 48);
    v14 = *(a1 + 72);
    v13 = *(a1 + 80);
    v19 = v12;
    v21 = v13;
    v15 = v14;
    v16 = *(a1 + 88);
    v20 = v15;
    v22 = v16;
    dispatch_async(v11, v17);
  }
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 recordName];
  [v2 addObject:v3];
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 zoneName];
  v7 = [*(a1 + 32) recordZone];
  v8 = [v7 zoneID];
  v9 = [v8 zoneName];
  v10 = [v6 isEqualToString:v9];

  if (v10)
  {
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    v12 = *(*(a1 + 64) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v14 = KSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 136315394;
        v33 = "[_KSCloudKitManager _submitFetchRecordsOperation:withPriority:changeToken:completionHandler:retryCount:]_block_invoke_3";
        v34 = 2112;
        v35 = v15;
        _os_log_impl(&dword_2557E2000, v14, OS_LOG_TYPE_INFO, "%s  server change token updated: %@", buf, 0x16u);
      }

      v16 = [*(a1 + 40) copy];
      v17 = [*(a1 + 48) copy];
      v18 = *(*(a1 + 32) + 8);
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_137;
      v27 = &unk_2797F6A98;
      v19 = *(a1 + 56);
      v28 = v16;
      v29 = v17;
      v20 = *(a1 + 64);
      v30 = v19;
      v31 = v20;
      v21 = v17;
      v22 = v16;
      dispatch_async(v18, &v24);
      [*(a1 + 40) removeAllObjects];
      [*(a1 + 48) removeAllObjects];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, void *a6)
{
  v109 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [a2 zoneName];
  v13 = [*(a1 + 32) recordZone];
  v14 = [v13 zoneID];
  v15 = [v14 zoneName];
  v16 = [v12 isEqualToString:v15];

  if (v16)
  {
    v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:0];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    if (v11)
    {
      v20 = [v11 domain];
      if (v20 == *MEMORY[0x277CBBF50])
      {
        v21 = *(a1 + 72);

        if (v21 <= 1)
        {
          if ([v11 code] == 28)
          {
            v22 = *(a1 + 32);
            v106[0] = MEMORY[0x277D85DD0];
            v106[1] = 3221225472;
            v106[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_3_140;
            v106[3] = &unk_2797F69A8;
            v106[4] = v22;
            [v22 resetZoneWithDelete:0 withCompletionHandler:v106];
          }

          v23 = KSCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_1(v11);
          }

          if ([v11 code] == 9)
          {
            v24 = [v11 userInfo];
            v25 = [v24 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];
            [v25 doubleValue];
            v27 = fmin(v26, 60.0);

            v28 = dispatch_time(0, (v27 * 1000000000.0));
            v29 = *(a1 + 32);
            v30 = *(v29 + 8);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_141;
            block[3] = &unk_2797F6B10;
            v31 = *(a1 + 80);
            block[4] = v29;
            v104 = v31;
            v78 = *(a1 + 56);
            v32 = v78;
            v103 = v78;
            v105 = *(a1 + 72);
            dispatch_after(v28, v30, block);
            v33 = v103;
          }

          else if ([v11 code] == 3 || objc_msgSend(v11, "code") == 6 || objc_msgSend(v11, "code") == 23 || objc_msgSend(v11, "code") == 7)
          {
            v40 = [v11 userInfo];
            v41 = [v40 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];
            [v41 doubleValue];
            v43 = v42;

            v44 = dispatch_time(0, (v43 * 1000000000.0));
            v45 = *(a1 + 32);
            v46 = *(v45 + 8);
            v98[0] = MEMORY[0x277D85DD0];
            v98[1] = 3221225472;
            v98[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_3_143;
            v98[3] = &unk_2797F6B10;
            v47 = *(a1 + 80);
            v98[4] = v45;
            v100 = v47;
            v79 = *(a1 + 56);
            v48 = v79;
            v99 = v79;
            v101 = *(a1 + 72);
            dispatch_after(v44, v46, v98);
            v33 = v99;
          }

          else if ([v11 code] == 21)
          {
            v49 = KSCategory();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v108 = "[_KSCloudKitManager _submitFetchRecordsOperation:withPriority:changeToken:completionHandler:retryCount:]_block_invoke_4";
              _os_log_impl(&dword_2557E2000, v49, OS_LOG_TYPE_INFO, "%s  CloudKit said our change token has expired!", buf, 0xCu);
            }

            v50 = *(*(a1 + 32) + 8);
            v93[0] = MEMORY[0x277D85DD0];
            v93[1] = 3221225472;
            v93[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_145;
            v93[3] = &unk_2797F6B38;
            v51 = *(a1 + 56);
            v52 = *(a1 + 40);
            v53 = *(a1 + 48);
            *&v54 = *(a1 + 32);
            *(&v54 + 1) = v51;
            *&v55 = v52;
            *(&v55 + 1) = v53;
            v97 = a5;
            v94 = v55;
            v95 = v54;
            v96 = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
            dispatch_async(v50, v93);

            v33 = *(&v95 + 1);
          }

          else
          {
            v56 = [v11 code];
            v57 = KSCategory();
            v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
            if (v56 == 26)
            {
              if (v58)
              {
                __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_3(v57, v59, v60, v61, v62, v63, v64, v65);
              }

              v66 = *(a1 + 32);
              v89[0] = MEMORY[0x277D85DD0];
              v89[1] = 3221225472;
              v89[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_146;
              v89[3] = &unk_2797F6B60;
              v67 = *(a1 + 56);
              v68 = *(a1 + 40);
              v69 = *(a1 + 48);
              *&v70 = v68;
              *(&v70 + 1) = v69;
              *&v71 = v67;
              *(&v71 + 1) = *(a1 + 64);
              v91 = v71;
              v90 = v70;
              v92 = a5;
              [v66 setupRecordZoneWithCompletionHandler:v89 ignoreDefaults:1];

              v33 = v91;
            }

            else
            {
              if (v58)
              {
                __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_2(v11);
              }

              v72 = *(*(a1 + 32) + 8);
              v85[0] = MEMORY[0x277D85DD0];
              v85[1] = 3221225472;
              v85[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_147;
              v85[3] = &unk_2797F6B88;
              v73 = *(a1 + 56);
              v74 = *(a1 + 40);
              v75 = *(a1 + 48);
              *&v76 = v74;
              *(&v76 + 1) = v75;
              *&v77 = v73;
              *(&v77 + 1) = *(a1 + 64);
              v86 = v76;
              v87 = v77;
              v88 = a5;
              dispatch_async(v72, v85);

              v33 = v87;
            }
          }

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v34 = *(*(a1 + 32) + 8);
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_148;
    v80[3] = &unk_2797F6BB0;
    v35 = *(a1 + 40);
    v36 = *(a1 + 48);
    *&v37 = *(a1 + 56);
    *(&v37 + 1) = *(a1 + 64);
    *&v38 = v35;
    *(&v38 + 1) = v36;
    v81 = v38;
    v82 = v37;
    v83 = a5;
    v84 = v11 == 0;
    dispatch_async(v34, v80);

    v33 = v81;
LABEL_13:
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_3_140(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) recordZone];
  v3 = [v2 zoneID];
  v4 = [v3 zoneName];
  [v5 userDidDeleteRecordZone:v4];
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_141(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_142;
  v6[3] = &unk_2797F6AE8;
  v3 = *(a1 + 56);
  v6[4] = v2;
  v8 = v3;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  v9 = *(a1 + 64);
  [v2 queryAccountStatusWithCompletionHandler:v6];
}

uint64_t __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_142(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    return [*(result + 32) fetchRecordsWithPriority:*(result + 56) changeToken:*(*(*(result + 48) + 8) + 40) completionHandler:*(result + 40) retryCount:*(result + 64) + 1];
  }

  return result;
}

uint64_t __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_145(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  (*(*(a1 + 56) + 16))();
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72) + 1;

  return [v5 fetchRecordsWithPriority:v7 changeToken:0 completionHandler:v6 retryCount:v8];
}

uint64_t __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_148(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
    v12 = 136315650;
    v13 = "[_KSCloudKitManager _submitFetchRecordsOperation:withPriority:changeToken:completionHandler:retryCount:]_block_invoke_2";
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  Completed fetching # records : %@, deleted records: %@", &v12, 0x20u);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(*(*(a1 + 56) + 8) + 40);
  v8 = *(a1 + 64);
  v9 = *(a1 + 65);
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:*(*(&v14 + 1) + 8 * v7)];

        v4 = v8;
        [v2 addObject:v8];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke_151;
  v12[3] = &unk_2797F6C00;
  v10 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v13 = v10;
  [v9 setFetchRecordsCompletionBlock:v12];
  [*(a1 + 40) addOperation:v9];

  v11 = *MEMORY[0x277D85DE8];
}

void __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke_151(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke_2;
  block[3] = &unk_2797F6520;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) allValues];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void __65___KSCloudKitManager__ckFetchRecordZoneWithID_completionHandler___block_invoke(id *a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CBC3D0]);
  v13[0] = a1[4];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v6 = [v4 initWithRecordZoneIDs:v5];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65___KSCloudKitManager__ckFetchRecordZoneWithID_completionHandler___block_invoke_2;
  v9[3] = &unk_2797F6C50;
  v11 = a1[6];
  v10 = a1[4];
  v12 = v3;
  v7 = v3;
  [v6 setFetchRecordZonesCompletionBlock:v9];
  [a1[5] _inconvenientOperation:v6];

  v8 = *MEMORY[0x277D85DE8];
}

void __65___KSCloudKitManager__ckFetchRecordZoneWithID_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[5];
  if (v5)
  {
    v7 = a1[4];
    v8 = a3;
    v9 = [a2 objectForKeyedSubscript:v7];
    v10 = [MEMORY[0x277CBC560] itemErrorFromError:v8 forID:a1[4]];

    (*(v5 + 16))(v5, v9, v10);
  }

  v11 = a1[6];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:a3 == 0];
  (*(v11 + 16))(v11, v12);
}

void __58___KSCloudKitManager__ckSaveRecordZone_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = a4;
    v11 = [a2 firstObject];
    v8 = MEMORY[0x277CBC560];
    v9 = [*(a1 + 32) zoneID];
    v10 = [v8 itemErrorFromError:v7 forID:v9];

    (*(v4 + 16))(v4, v11, v10);
  }
}

void __66___KSCloudKitManager__ckDeleteRecordZoneWithID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v7 = a4;
    v9 = [a3 firstObject];
    v8 = [MEMORY[0x277CBC560] itemErrorFromError:v7 forID:*(a1 + 32)];

    (*(v4 + 16))(v4, v9, v8);
  }
}

void __78___KSCloudKitManager__checkAccountStatusWithCompletionHandler_withRetryCount___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_2();
  v4 = v0;
  _os_log_error_impl(&dword_2557E2000, v1, OS_LOG_TYPE_ERROR, "%s  Error in getting account status: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __74___KSCloudKitManager_setupRecordZoneWithCompletionHandler_ignoreDefaults___block_invoke_2_103_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) recordZone];
  v6 = [v5 zoneID];
  v7 = [v6 zoneName];
  v8 = [a2 localizedDescription];
  v12[0] = 136315650;
  OUTLINED_FUNCTION_2();
  v13 = v7;
  v14 = v9;
  v15 = v10;
  _os_log_error_impl(&dword_2557E2000, a3, OS_LOG_TYPE_ERROR, "%s  !!!ERROR: Could not save Record Zone %@: %@", v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2557E2000, a1, a3, "%s  >>> Record zone not found", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __94___KSCloudKitManager_updateRecords_deleteRecordIDs_withPriority_completionHandler_retryCount___block_invoke_127_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2557E2000, a1, a3, "%s  >>> ERROR reaching the network", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_2557E2000, v2, v3, "%s  >>> ERROR for fetch records operation: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_2557E2000, v2, v3, "%s  Could not fetch record changes: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __105___KSCloudKitManager__submitFetchRecordsOperation_withPriority_changeToken_completionHandler_retryCount___block_invoke_2_139_cold_3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3(&dword_2557E2000, a1, a3, "%s  >>> Record zone not found", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __68___KSCloudKitManager_fetchPublicRecordsWithNames_completionHandler___block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[_KSCloudKitManager fetchPublicRecordsWithNames:completionHandler:]_block_invoke";
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  Couldn't create recordID", buf, 0xCu);
}

@end