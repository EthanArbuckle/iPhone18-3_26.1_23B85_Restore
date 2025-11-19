@interface HUServiceDetailsLockAddHomeKeyToWalletItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsLockAddHomeKeyToWalletItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  if ([MEMORY[0x277D14CE8] isAnIPhone] && (-[HUServiceDetailsAbstractItem sourceServiceItem](self, "sourceServiceItem"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "accessories"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6, v8 == 1))
  {
    v9 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    v10 = [v9 accessories];
    v11 = [v10 anyObject];

    v12 = objc_opt_new();
    v13 = [(HUServiceDetailsAbstractItem *)self home];
    [v12 na_safeAddObject:v13];

    [v12 na_safeAddObject:v11];
    v14 = [v12 copy];
    [v5 na_safeSetObject:v14 forKey:*MEMORY[0x277D13DA8]];

    v15 = _HULocalizedStringWithDefaultValue(@"HUHomeSettingsLockAddHomeKeyToWallet", @"HUHomeSettingsLockAddHomeKeyToWallet", 1);
    [v5 na_safeSetObject:v15 forKey:*MEMORY[0x277D13F60]];

    if ([v11 hf_showAsIndividualServices] && (-[HUServiceDetailsAbstractItem sourceServiceItem](self, "sourceServiceItem"), v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, (isKindOfClass & 1) == 0))
    {
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
      v30 = MEMORY[0x277D2C900];
      v31 = [MEMORY[0x277D14780] outcomeWithResults:v5];
      v22 = [v30 futureWithResult:v31];
    }

    else if ([v11 supportsWalletKey] && (-[HUServiceDetailsAbstractItem home](self, "home"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "hasOnboardedForWalletKey"), v18, (v19 & 1) != 0))
    {
      [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
      objc_initWeak(location, self);
      v20 = [(HUServiceDetailsAbstractItem *)self home];
      v21 = [v20 hf_fetchWalletKeyDeviceStateForCurrentDeviceIfNecessary];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __74__HUServiceDetailsLockAddHomeKeyToWalletItem__subclass_updateWithOptions___block_invoke;
      v33[3] = &unk_277DC4C28;
      v33[4] = self;
      v34 = v5;
      objc_copyWeak(&v35, location);
      v22 = [v21 flatMap:v33];
      objc_destroyWeak(&v35);

      objc_destroyWeak(location);
    }

    else
    {
      v25 = HFLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v11 supportsWalletKey];
        v27 = [(HUServiceDetailsAbstractItem *)self home];
        *location = 138413058;
        *&location[4] = self;
        v37 = 2080;
        v38 = "[HUServiceDetailsLockAddHomeKeyToWalletItem _subclass_updateWithOptions:]";
        v39 = 1024;
        v40 = v26;
        v41 = 1024;
        v42 = [v27 hasOnboardedForWalletKey];
        _os_log_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_DEFAULT, "(%@: %s) Hiding Add/Show Home Key to Wallet buttonbecause accessory.supportsWalletKey=%{BOOL}d and home.hasOnboardedForWalletKey=%{BOOL}d", location, 0x22u);
      }

      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
      v28 = MEMORY[0x277D2C900];
      v29 = [MEMORY[0x277D14780] outcomeWithResults:v5];
      v22 = [v28 futureWithResult:v29];
    }
  }

  else
  {
    [v5 na_safeSetObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D13FB8]];
    v23 = MEMORY[0x277D2C900];
    v24 = [MEMORY[0x277D14780] outcomeWithResults:v5];
    v22 = [v23 futureWithResult:v24];
  }

  return v22;
}

id __74__HUServiceDetailsLockAddHomeKeyToWalletItem__subclass_updateWithOptions___block_invoke(id *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 canAddWalletKeyErrorCode] == 8)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      *buf = 138412546;
      v15 = v5;
      v16 = 2080;
      v17 = "[HUServiceDetailsLockAddHomeKeyToWalletItem _subclass_updateWithOptions:]_block_invoke";
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(%@: %s) Hiding Add/Show Home Key to Wallet buttonbecause current device has Wallet app deleted", buf, 0x16u);
    }

    [a1[5] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v6 = MEMORY[0x277D2C900];
    v7 = [MEMORY[0x277D14780] outcomeWithResults:a1[5]];
    v8 = [v6 futureWithResult:v7];
  }

  else
  {
    v7 = [a1[4] home];
    v9 = [v7 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];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__HUServiceDetailsLockAddHomeKeyToWalletItem__subclass_updateWithOptions___block_invoke_6;
    v11[3] = &unk_277DB91E0;
    objc_copyWeak(&v13, a1 + 6);
    v12 = a1[5];
    v8 = [v9 flatMap:v11];

    objc_destroyWeak(&v13);
  }

  return v8;
}

id __74__HUServiceDetailsLockAddHomeKeyToWalletItem__subclass_updateWithOptions___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 BOOLValue];

  v6 = [WeakRetained home];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 hf_hasWalletKey];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__HUServiceDetailsLockAddHomeKeyToWalletItem__subclass_updateWithOptions___block_invoke_2;
    v15[3] = &unk_277DB7AB8;
    v9 = &v16;
    v16 = *(a1 + 32);
    v10 = v15;
  }

  else
  {
    v8 = [v6 hf_walletKeyDeviceStatesOfCompatiblePairedWatches];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__HUServiceDetailsLockAddHomeKeyToWalletItem__subclass_updateWithOptions___block_invoke_8;
    v13[3] = &unk_277DBB198;
    v9 = v14;
    v14[0] = *(a1 + 32);
    v14[1] = WeakRetained;
    v10 = v13;
  }

  v11 = [v8 flatMap:v10];

  return v11;
}

id __74__HUServiceDetailsLockAddHomeKeyToWalletItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 BOOLValue])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v10 = 136315650;
    v11 = "[HUServiceDetailsLockAddHomeKeyToWalletItem _subclass_updateWithOptions:]_block_invoke_2";
    v12 = 2112;
    v13 = v5;
    v14 = 1024;
    v15 = [v3 BOOLValue];
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "(HUServiceDetailsLockAddHomeKeyToWalletItem: %s) Results for Add/Show Home Key to Wallet button is %@ because current device is wallet key compatible and hasWalletKey = %{BOOL}d", &v10, 0x1Cu);
  }

  v6 = MEMORY[0x277D2C900];
  v7 = [MEMORY[0x277D14780] outcomeWithResults:*(a1 + 32)];
  v8 = [v6 futureWithResult:v7];

  return v8;
}

id __74__HUServiceDetailsLockAddHomeKeyToWalletItem__subclass_updateWithOptions___block_invoke_8(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 na_filter:&__block_literal_global_294];
    v5 = [v4 count];
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 0];
    [v6 na_safeSetObject:v7 forKey:*MEMORY[0x277D13FB8]];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() description];
      v10 = v9;
      v11 = @"Showing";
      if (!v5)
      {
        v11 = @"Hiding";
      }

      v18 = 138412802;
      v19 = v9;
      v20 = 2080;
      v21 = "[HUServiceDetailsLockAddHomeKeyToWalletItem _subclass_updateWithOptions:]_block_invoke_2";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "(%@: %s) %@ Add/Show Home Key to Wallet buttonbecause iPhone is not compatible and there are no wallet key compatible paired watches that doesn't have a wallet key.", &v18, 0x20u);
    }

    v12 = MEMORY[0x277D2C900];
    v13 = [MEMORY[0x277D14780] outcomeWithResults:*(a1 + 32)];
    v14 = [v12 futureWithResult:v13];
  }

  else
  {
    [*(a1 + 32) na_safeSetObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D13FB8]];
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = "[HUServiceDetailsLockAddHomeKeyToWalletItem _subclass_updateWithOptions:]_block_invoke";
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "(HUServiceDetailsLockAddHomeKeyToWalletItem: %s) Hiding Add/Show Home Key to Wallet buttonbecause iPhone and all paired watches are not wallet key compatible.", &v18, 0xCu);
    }

    v16 = MEMORY[0x277D2C900];
    v4 = [MEMORY[0x277D14780] outcomeWithResults:*(a1 + 32)];
    v14 = [v16 futureWithResult:v4];
  }

  return v14;
}

BOOL __74__HUServiceDetailsLockAddHomeKeyToWalletItem__subclass_updateWithOptions___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 walletKey];
  v3 = v2 == 0;

  return v3;
}

@end