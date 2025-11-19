@interface CDPRPDProbationDurationProvider
+ (double)_defaultProbationDurationForUserType:(unint64_t)a3;
+ (id)_serverProbationDurationForUserType:(unint64_t)a3 rpdDurationConfigurations:(id)a4;
+ (unint64_t)_userTypeForRecoveryContext:(id)a3;
+ (void)probationDurationForRecoveryContext:(id)a3 completion:(id)a4;
@end

@implementation CDPRPDProbationDurationProvider

+ (void)probationDurationForRecoveryContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CFD560];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke;
  v11[3] = &unk_278E25B78;
  v13 = v7;
  v14 = a1;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  [v8 fetchRPDProbationDurationConfigsWithCompletion:v11];
}

void __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 48) _userTypeForRecoveryContext:*(a1 + 32)];
  [*(a1 + 48) _defaultProbationDurationForUserType:v7];
  v9 = v8;
  if (v5)
  {
    v10 = [*(a1 + 48) _serverProbationDurationForUserType:v7 rpdDurationConfigurations:v5];
    v11 = _CDPLogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v12)
      {
        __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke_cold_1(v11);
      }

      if (!*(a1 + 40))
      {
        goto LABEL_22;
      }

      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v13 = *(a1 + 40);
        v14.n128_f64[0] = (86400 * [v10 integerValue]);
        (*(v13 + 16))(v13, v14);
LABEL_22:

        goto LABEL_23;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke_31;
      block[3] = &unk_278E25B50;
      v23 = *(a1 + 40);
      v22 = v10;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v17 = v23;
    }

    else
    {
      if (v12)
      {
        __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke_cold_2(v6, v11);
      }

      if (!*(a1 + 40))
      {
        goto LABEL_22;
      }

      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v16.n128_f64[0] = v9;
        (*(*(a1 + 40) + 16))(*(a1 + 40), v16);
        goto LABEL_22;
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke_32;
      v18[3] = &unk_278E25B28;
      v19 = *(a1 + 40);
      v20 = v9;
      dispatch_async(MEMORY[0x277D85CD0], v18);
      v17 = v19;
    }

    goto LABEL_22;
  }

  v15 = _CDPLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke_cold_3(v6, v15);
  }

  if (*(a1 + 40))
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      (*(*(a1 + 40) + 16))(v9);
    }

    else
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke_29;
      v24[3] = &unk_278E25B28;
      v25 = *(a1 + 40);
      v26 = v9;
      dispatch_async(MEMORY[0x277D85CD0], v24);
    }
  }

LABEL_23:
}

uint64_t __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke_31(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2.n128_f64[0] = (86400 * [*(a1 + 32) integerValue]);
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

+ (unint64_t)_userTypeForRecoveryContext:(id)a3
{
  v3 = a3;
  v4 = [v3 hasViableICSC];
  v5 = [v3 isWalrusEnabled];

  v6 = 3;
  if (v4)
  {
    v6 = 1;
  }

  v7 = 2;
  if (v4)
  {
    v7 = 0;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

+ (id)_serverProbationDurationForUserType:(unint64_t)a3 rpdDurationConfigurations:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 <= 3)
  {
    v4 = [v6 valueForKey:*(&off_278E25B98 + a3)];
  }

  return v4;
}

+ (double)_defaultProbationDurationForUserType:(unint64_t)a3
{
  if (!a3 || a3 == 3)
  {
    v4 = &CDPRPDProbationTimeInterval;
  }

  else
  {
    result = 0.0;
    if (a3 != 1)
    {
      return result;
    }

    v4 = &CDPRPDExtendedProbationTimeInterval;
  }

  return *v4;
}

void __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Probation days is nil, falling back to default values. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __82__CDPRPDProbationDurationProvider_probationDurationForRecoveryContext_completion___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "RPD Config is nil, falling back to default values. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end