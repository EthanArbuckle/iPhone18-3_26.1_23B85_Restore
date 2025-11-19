@interface HFAppleMusicAccountOperations
+ (id)_completeLoginForAccessory:(id)a3 results:(id)a4 error:(id)a5;
+ (id)_validateRemoteLoginHandlerForAccessory:(id)a3;
+ (id)executeCompanionLoginForAccessory:(id)a3 account:(id)a4;
+ (id)executeProxyLoginForAccessory:(id)a3 context:(id)a4;
+ (id)logoutAccessories:(id)a3;
@end

@implementation HFAppleMusicAccountOperations

+ (id)executeCompanionLoginForAccessory:(id)a3 account:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"HFAppleMusicAccountArbitrator.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"accessory"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x277CCA890] currentHandler];
  [v24 handleFailureInMethod:a2 object:a1 file:@"HFAppleMusicAccountArbitrator.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"account"}];

LABEL_3:
  v10 = +[HFMediaDispatcher sharedDispatcher];
  v11 = [v10 appleMusicAccountStore];

  v12 = [v11 accountTypeWithAccountTypeIdentifier:*MEMORY[0x277CB8C58]];
  v13 = [v11 accountsWithAccountType:v12];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke;
  v29[3] = &unk_277E01230;
  v14 = v9;
  v30 = v14;
  v15 = [v13 na_firstObjectPassingTest:v29];

  v16 = MEMORY[0x277D2C900];
  if (v15)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke_2;
    v25[3] = &unk_277DFAC08;
    v28 = a1;
    v26 = v7;
    v27 = v15;
    v17 = [v16 lazyFutureWithBlock:v25];

    v18 = v26;
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v31 = @"accessory";
    v32[0] = v7;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v20 = [v19 hf_errorWithCode:10 operation:@"AppleMusicProxyLogin" options:v18];
    v17 = [v16 futureWithError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 aa_altDSID];
  v5 = [v3 aa_altDSID];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

void __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 48) _validateRemoteLoginHandlerForAccessory:*(a1 + 32)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke_3;
  v7[3] = &unk_277E01258;
  v8 = *(a1 + 40);
  v9 = v3;
  v5 = v3;
  v6 = [v4 addSuccessBlock:v7];
}

void __75__HFAppleMusicAccountOperations_executeCompanionLoginForAccessory_account___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 errorOnlyCompletionHandlerAdapter];
  [v4 companionLoginWithAccount:v2 completion:v5];
}

+ (id)executeProxyLoginForAccessory:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"HFAppleMusicAccountArbitrator.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"accessory"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:a1 file:@"HFAppleMusicAccountArbitrator.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v10 = MEMORY[0x277D2C900];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke;
  v17[3] = &unk_277DFAC08;
  v19 = v9;
  v20 = a1;
  v18 = v7;
  v11 = v9;
  v12 = v7;
  v13 = [v10 lazyFutureWithBlock:v17];

  return v13;
}

void __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[6] _validateRemoteLoginHandlerForAccessory:a1[4]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_2;
  v9[3] = &unk_277E012A8;
  v10 = a1[5];
  v5 = a1[4];
  v6 = a1[6];
  v12 = v3;
  v13 = v6;
  v11 = v5;
  v7 = v3;
  v8 = [v4 addSuccessBlock:v9];
}

void __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Calling [AKAppleIDAuthenticationController authenticateWithContext:completion:]", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_24;
  v7[3] = &unk_277DFEA80;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  [v2 authenticateWithContext:v4 completion:v7];
}

void __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "AKAppleIDAuthenticationController returned with results %@ - error = %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_25;
  block[3] = &unk_277E01280;
  v14 = *(a1 + 32);
  v15 = v5;
  v16 = v6;
  v12 = *(a1 + 40);
  v8 = v12;
  v17 = v12;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v11 = *MEMORY[0x277D85DE8];
}

void __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_25(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Now completing Login for Accessory %@ ", buf, 0xCu);
  }

  v4 = [*(a1 + 64) _completeLoginForAccessory:*(a1 + 32) results:*(a1 + 40) error:*(a1 + 48)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_26;
  v7[3] = &unk_277DF70B0;
  v8 = *(a1 + 56);
  v5 = [v4 addCompletionBlock:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __71__HFAppleMusicAccountOperations_executeProxyLoginForAccessory_context___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "_completeLoginForAccessory returned with result [%@] Error - [%@] ", &v9, 0x16u);
  }

  [*(a1 + 32) finishWithResult:v5 error:v6];
  v8 = *MEMORY[0x277D85DE8];
}

+ (id)logoutAccessories:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:a1 file:@"HFAppleMusicAccountArbitrator.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"accessories.count >= 1"}];
  }

  v6 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v42 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v41 + 1) + 8 * v11);
      v13 = [v12 remoteLoginHandler];
      v14 = v13;
      if (!v13)
      {
        break;
      }

      if (([v13 isControllable] & 1) == 0)
      {
        v24 = MEMORY[0x277D2C900];
        v29 = MEMORY[0x277CCA9B8];
        v46[0] = @"accessories";
        v46[1] = @"failedAccessory";
        v47[0] = v7;
        v47[1] = v12;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
        v27 = v29;
        v28 = 12;
        goto LABEL_22;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    v24 = MEMORY[0x277D2C900];
    v25 = MEMORY[0x277CCA9B8];
    v48[0] = @"accessories";
    v48[1] = @"failedAccessory";
    v49[0] = v7;
    v49[1] = v12;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
    v27 = v25;
    v28 = 11;
LABEL_22:
    v30 = [v27 hf_errorWithCode:v28 operation:@"AppleMusicLogout" options:v26];
    v23 = [v24 futureWithError:v30];

    goto LABEL_23;
  }

LABEL_12:

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v15 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [*(*(&v37 + 1) + 8 * i) remoteLoginHandler];
        v20 = MEMORY[0x277D2C900];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke;
        v35[3] = &unk_277DF29A0;
        v36 = v19;
        v21 = v19;
        v22 = [v20 lazyFutureWithBlock:v35];
        [v6 addObject:v22];
      }

      v16 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v16);
  }

  v23 = [MEMORY[0x277D2C900] chainFutures:v6];
LABEL_23:

  v31 = *MEMORY[0x277D85DE8];

  return v23;
}

void __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke_2;
  v6[3] = &unk_277DF2D08;
  v7 = v3;
  v5 = v3;
  [v4 signout:v6];
}

void __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke_3;
  v5[3] = &unk_277DF3370;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __51__HFAppleMusicAccountOperations_logoutAccessories___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 finishWithError:?];
  }

  else
  {
    return [v1 finishWithNoResult];
  }
}

+ (id)_completeLoginForAccessory:(id)a3 results:(id)a4 error:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = HFLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Returning from _completeLoginForAccessory due to error  = [%@]", buf, 0xCu);
    }

    v11 = [MEMORY[0x277D2C900] futureWithError:v9];
    goto LABEL_5;
  }

  v13 = [v8 count];
  v14 = MEMORY[0x277D2C900];
  if (!v13)
  {
    v11 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_5:
    v12 = v11;
    goto LABEL_8;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__HFAppleMusicAccountOperations__completeLoginForAccessory_results_error___block_invoke;
  v17[3] = &unk_277DF4150;
  v18 = v7;
  v19 = v8;
  v12 = [v14 futureWithErrorOnlyHandlerAdapterBlock:v17];

LABEL_8:
  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

void __74__HFAppleMusicAccountOperations__completeLoginForAccessory_results_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Calling  proxyLoginWithAuthResults:", v6, 2u);
  }

  v5 = [*(a1 + 32) remoteLoginHandler];
  [v5 proxyLoginWithAuthResults:*(a1 + 40) completion:v3];
}

+ (id)_validateRemoteLoginHandlerForAccessory:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 remoteLoginHandler];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isControllable];
    v7 = MEMORY[0x277D2C900];
    if (v6)
    {
      v8 = [MEMORY[0x277D2C900] futureWithResult:v5];
      goto LABEL_7;
    }

    v13 = MEMORY[0x277CCA9B8];
    v17 = @"accessory";
    v18 = v3;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = v13;
    v12 = 12;
  }

  else
  {
    v7 = MEMORY[0x277D2C900];
    v9 = MEMORY[0x277CCA9B8];
    v19 = @"accessory";
    v20[0] = v3;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v11 = v9;
    v12 = 11;
  }

  v14 = [v11 hf_errorWithCode:v12 operation:@"AppleMusicProxyLogin" options:v10];
  v8 = [v7 futureWithError:v14];

LABEL_7:
  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

@end