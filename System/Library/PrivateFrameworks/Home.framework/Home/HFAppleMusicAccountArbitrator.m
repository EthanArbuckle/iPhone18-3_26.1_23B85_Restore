@interface HFAppleMusicAccountArbitrator
- (HFAppleMusicAccountArbitrator)init;
- (HFAppleMusicAccountArbitrator)initWithAccessories:(id)a3 account:(id)a4 contextGenerator:(id)a5;
- (id)pendingArbitrationExecutionFuture;
- (int64_t)_resolvedLoginType:(id *)a3;
@end

@implementation HFAppleMusicAccountArbitrator

- (HFAppleMusicAccountArbitrator)initWithAccessories:(id)a3 account:(id)a4 contextGenerator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (![v9 count])
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HFAppleMusicAccountArbitrator.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"accessories.count > 0"}];
  }

  v19.receiver = self;
  v19.super_class = HFAppleMusicAccountArbitrator;
  v12 = [(HFAppleMusicAccountArbitrator *)&v19 init];
  if (v12)
  {
    v13 = [v9 copy];
    accessories = v12->_accessories;
    v12->_accessories = v13;

    objc_storeStrong(&v12->_account, a4);
    v15 = [v11 copy];
    contextGenerator = v12->_contextGenerator;
    v12->_contextGenerator = v15;

    v12->_loginType = 0;
  }

  return v12;
}

- (HFAppleMusicAccountArbitrator)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithAccessories_account_contextGenerator_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFAppleMusicAccountArbitrator.m" lineNumber:369 description:{@"%s is unavailable; use %@ instead", "-[HFAppleMusicAccountArbitrator init]", v5}];

  return 0;
}

- (id)pendingArbitrationExecutionFuture
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = [(HFAppleMusicAccountArbitrator *)self activeArbitrationFuture];

  if (v4)
  {
    v5 = [(HFAppleMusicAccountArbitrator *)self activeArbitrationFuture];
    goto LABEL_27;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = [(HFAppleMusicAccountArbitrator *)self accessories];
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v64 count:16];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = *v47;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v47 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v46 + 1) + 8 * i);
      v12 = [v11 remoteLoginHandler];
      v13 = v12;
      if (!v12)
      {
        v20 = MEMORY[0x277D2C900];
        v21 = MEMORY[0x277CCA9B8];
        v62[0] = @"accessory";
        v62[1] = @"accessories";
        v63[0] = v11;
        v22 = [(HFAppleMusicAccountArbitrator *)self accessories];
        v63[1] = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
        v24 = v21;
        v25 = 11;
LABEL_16:
        v27 = [v24 hf_errorWithCode:v25 operation:@"AppleMusicAccountArbitratorLogin" options:v23];
        v5 = [v20 futureWithError:v27];

        goto LABEL_26;
      }

      if (([v12 isControllable] & 1) == 0)
      {
        v20 = MEMORY[0x277D2C900];
        v26 = MEMORY[0x277CCA9B8];
        v60[0] = @"accessory";
        v60[1] = @"accessories";
        v61[0] = v11;
        v22 = [(HFAppleMusicAccountArbitrator *)self accessories];
        v61[1] = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
        v24 = v26;
        v25 = 12;
        goto LABEL_16;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v46 objects:v64 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_12:

  v14 = objc_opt_new();
  v15 = [(HFAppleMusicAccountArbitrator *)self accessories];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __66__HFAppleMusicAccountArbitrator_pendingArbitrationExecutionFuture__block_invoke;
  v43[3] = &unk_277E01340;
  v43[4] = self;
  v45 = a2;
  v6 = v14;
  v44 = v6;
  [v15 na_each:v43];

  v16 = [(HFAppleMusicAccountArbitrator *)self account];
  v17 = [(HFAppleMusicAccountArbitrator *)self contextGenerator];
  v42 = 0;
  v18 = [(HFAppleMusicAccountArbitrator *)self _resolvedLoginType:&v42];
  v19 = v42;
  if (!v19)
  {
    if (v18 == 1)
    {
      v28 = v17;
      v17 = 0;
    }

    else
    {
      if (v18 != 2)
      {
LABEL_22:
        v29 = [(HFAppleMusicAccountArbitrator *)self accessories];
        v30 = [_HFAppleMusicAccountArbitrationActionItem loginActionItemForAccessories:v29 account:v16 contextGenerator:v17];

        [v6 addObject:v30];
        v31 = HFLogForCategory(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = NSStringFromSelector(a2);
          v33 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
          *buf = 138413314;
          v51 = self;
          v52 = 2112;
          v53 = v32;
          v54 = 2112;
          v55 = v30;
          v56 = 2112;
          v57 = v16;
          v58 = 2112;
          v59 = v33;
          _os_log_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@ Added Login plan = [%@] account = [%@] loginType = [%@]", buf, 0x34u);
        }

        v34 = [v6 na_map:&__block_literal_global_158_1];
        v35 = MEMORY[0x277D2C900];
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __66__HFAppleMusicAccountArbitrator_pendingArbitrationExecutionFuture__block_invoke_2;
        v40[3] = &unk_277DF29A0;
        v41 = v34;
        v36 = v34;
        v37 = [v35 lazyFutureWithBlock:v40];
        [(HFAppleMusicAccountArbitrator *)self setActiveArbitrationFuture:v37];

        v5 = [(HFAppleMusicAccountArbitrator *)self activeArbitrationFuture];

        goto LABEL_25;
      }

      v28 = v16;
      v16 = 0;
    }

    goto LABEL_22;
  }

  v5 = [MEMORY[0x277D2C900] futureWithError:v19];
LABEL_25:

LABEL_26:
LABEL_27:
  v38 = *MEMORY[0x277D85DE8];

  return v5;
}

void __66__HFAppleMusicAccountArbitrator_pendingArbitrationExecutionFuture__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 supportsMultiUser] & 1) == 0)
  {
    if ([*(a1 + 32) forceLogout])
    {
      v4 = 0;
    }

    else
    {
      v4 = [*(a1 + 32) account];
    }

    v5 = [MEMORY[0x277CBEB98] setWithObject:v3];
    v6 = [_HFAppleMusicAccountArbitrationActionItem logoutActionItemForAccessories:v5 desiredAccount:v4];

    v7 = HFLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = NSStringFromSelector(*(a1 + 48));
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Added Logout plan for account = [%@]", &v11, 0x20u);
    }

    [*(a1 + 40) addObject:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __66__HFAppleMusicAccountArbitrator_pendingArbitrationExecutionFuture__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v2 chainFutures:v3];
  v5 = [v4 completionHandlerAdapter];

  v6 = [v7 addCompletionBlock:v5];
}

- (int64_t)_resolvedLoginType:(id *)a3
{
  v5 = [(HFAppleMusicAccountArbitrator *)self loginType];
  v6 = v5;
  if (!v5)
  {
    v9 = [(HFAppleMusicAccountArbitrator *)self contextGenerator];
    if (!v9 || (v10 = v9, [(HFAppleMusicAccountArbitrator *)self account], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
    {
      v12 = [(HFAppleMusicAccountArbitrator *)self contextGenerator];

      if (v12)
      {
        return 2;
      }

      v13 = [(HFAppleMusicAccountArbitrator *)self account];

      if (v13)
      {
        return 1;
      }

      if (a3)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  if (v5 != 1)
  {
    return v6;
  }

  v7 = [(HFAppleMusicAccountArbitrator *)self account];

  result = 1;
  if (a3 && !v7)
  {
LABEL_5:
    *a3 = [MEMORY[0x277CCA9B8] hf_errorWithCode:9 operation:@"Failed verification of login type" options:0];
    return v6;
  }

  return result;
}

@end