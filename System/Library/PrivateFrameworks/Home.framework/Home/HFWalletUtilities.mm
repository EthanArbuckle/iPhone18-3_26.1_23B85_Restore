@interface HFWalletUtilities
+ (BOOL)isWalletKeyDeviceStateCompatible:(id)a3;
+ (id)handleAddOrShowHomeKeyButtonTapForHome:(id)a3;
+ (id)packageIconIdentifierForHome:(id)a3 shouldUseKeyholeAsset:(BOOL)a4;
+ (id)walletKeyColorOfDeviceState:(id)a3;
+ (id)walletKeyIconDescriptorForHome:(id)a3 shouldUseKeyholeAsset:(BOOL)a4 foriPhoneDevice:(BOOL)a5;
+ (unint64_t)pkPassHomeKeyLiveRenderTypeForHMHomeWalletKeyColor:(int64_t)a3;
@end

@implementation HFWalletUtilities

+ (id)handleAddOrShowHomeKeyButtonTapForHome:(id)a3
{
  v4 = a3;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v5 = [v4 hf_hasWalletKey];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke;
  v24[3] = &unk_277DFE8F0;
  v26 = v28;
  v6 = v4;
  v25 = v6;
  v27 = v30;
  v7 = [v5 flatMap:v24];

  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v8 = [v6 hf_walletKeyDeviceStatesOfCompatiblePairedWatches];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_3;
  v21[3] = &unk_277DFE938;
  v21[4] = v22;
  v9 = [v8 flatMap:v21];

  objc_initWeak(&location, a1);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_5;
  v14[3] = &unk_277DFE9A8;
  objc_copyWeak(&v19, &location);
  v17 = v28;
  v10 = v6;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v18 = v22;
  v12 = [v7 addSuccessBlock:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);

  return v7;
}

id __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC28]];
  }

  else
  {
    v6 = [*(a1 + 32) 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];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_2;
    v8[3] = &unk_277DF7BF8;
    v8[4] = *(a1 + 48);
    v5 = [v6 addSuccessBlock:v8];
  }

  return v5;
}

uint64_t __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 BOOLValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

id __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 count] != 0;
  v4 = [v3 na_filter:&__block_literal_global_171];

  v5 = MEMORY[0x277D2C900];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "count") != 0}];
  v7 = [v5 futureWithResult:v6];

  return v7;
}

BOOL __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 walletKey];
  v3 = v2 == 0;

  return v3;
}

void __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v5 = [*(a1 + 32) hf_walletKeyInWalletAppURL];
    v6 = [v5 flatMap:&__block_literal_global_29_2];
  }

  else
  {
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_7;
    v9[3] = &unk_277DFE980;
    v10 = v3;
    v11 = *(a1 + 32);
    v12 = WeakRetained;
    v13 = *(a1 + 56);
    v8 = [v7 addSuccessBlock:v9];
  }
}

id __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFOpenURLRouter sharedInstance];
  v4 = [v3 openURL:v2];

  return v4;
}

void __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  LODWORD(v3) = [v3 BOOLValue];
  v5 = [v4 BOOLValue];

  if (!v3)
  {
    if (v5 & 1 | ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0))
    {
      v8 = [MEMORY[0x277D2C900] futureWithNoResult];
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = +[HFOpenURLRouter sharedInstance];
      v11 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=com.apple.NanoPassbookBridgeSettings%230"];
      v8 = [v10 openURL:v11];

      if (!v5)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v12 = [*(a1 + 40) hf_addWalletKeyToPairedWatchesWithOptions:{0, *&v16}];
    v9 = [v12 recover:&__block_literal_global_35_3];

    goto LABEL_9;
  }

  v6 = [*(a1 + 40) hf_addWalletKeyWithOptions:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_8;
  v19[3] = &unk_277DF2D30;
  v16 = *(a1 + 40);
  v7 = v16.i64[0];
  v20 = vextq_s8(v16, v16, 8uLL);
  v8 = [v6 recover:v19];

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  v9 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_9:
  v13 = objc_opt_new();
  [v13 na_safeAddObject:v8];
  [v13 na_safeAddObject:v9];
  v14 = [MEMORY[0x277D2C900] combineAllFutures:v13];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_2_39;
  v17[3] = &unk_277DF5938;
  v18 = *(a1 + 40);
  v15 = [v14 flatMap:v17];
}

id __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_8(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 138413058;
    v11 = v8;
    v12 = 2080;
    v13 = "+[HFWalletUtilities handleAddOrShowHomeKeyButtonTapForHome:]_block_invoke_8";
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v9;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "(%@:%s) hf_addWalletKeyWithOptions: with notification but without enabling Express Mode returned error %@ for home %@", &v10, 0x2Au);
  }

  v5 = [MEMORY[0x277D2C900] futureWithResult:v3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_33(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CD1A60] errorByDeviceWithOverallError:v2];
  v4 = objc_opt_new();
  v5 = [v3 objectEnumerator];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 na_safeAddObject:*(*(&v16 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  v10 = [v4 count];
  v11 = MEMORY[0x277D2C900];
  if (v10)
  {
    v12 = [MEMORY[0x277D2C900] futureWithResult:v4];
  }

  else
  {
    v20 = v2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v12 = [v11 futureWithResult:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

id __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_2_39(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x49uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v13 = 136315650;
    v14 = "+[HFWalletUtilities handleAddOrShowHomeKeyButtonTapForHome:]_block_invoke_2";
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "(HFWalletUtilities : %s) Completed adding Wallet Key without enabling Express Mode for iPhone and paired Apple Watches for home %@ with results %@", &v13, 0x20u);
  }

  v6 = [v3 na_arrayByFlattening];
  v7 = [v6 na_filter:&__block_literal_global_43_2];

  if ([v7 count] == 1 || objc_msgSend(v7, "count") >= 2)
  {
    v8 = +[HFErrorHandler sharedHandler];
    v9 = [v7 firstObject];
    [v8 handleError:v9];
  }

  v10 = [MEMORY[0x277D2C900] futureWithResult:v7];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __60__HFWalletUtilities_handleAddOrShowHomeKeyButtonTapForHome___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)isWalletKeyDeviceStateCompatible:(id)a3
{
  v3 = a3;
  v4 = ([v3 canAddWalletKey] & 1) != 0 || objc_msgSend(v3, "canAddWalletKeyErrorCode") != 4 && objc_msgSend(v3, "canAddWalletKeyErrorCode") != 3;

  return v4;
}

+ (id)walletKeyColorOfDeviceState:(id)a3
{
  v3 = a3;
  v4 = [v3 walletKey];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [v3 walletKey];
    v4 = [v5 numberWithInteger:{objc_msgSend(v6, "color")}];
  }

  return v4;
}

+ (unint64_t)pkPassHomeKeyLiveRenderTypeForHMHomeWalletKeyColor:(int64_t)a3
{
  if (a3 <= 14935010)
  {
    if (a3 == 14341582)
    {
      return 2;
    }

    return 3;
  }

  if (a3 != 14935011)
  {
    if (a3 == 15521450)
    {
      return 4;
    }

    return 3;
  }

  return 1;
}

+ (id)packageIconIdentifierForHome:(id)a3 shouldUseKeyholeAsset:(BOOL)a4
{
  v5 = [a3 hf_walletKeyColorToDisplay];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HFWalletUtilities_packageIconIdentifierForHome_shouldUseKeyholeAsset___block_invoke;
  v8[3] = &__block_descriptor_33_e28___NAFuture_16__0__NSNumber_8l;
  v9 = a4;
  v6 = [v5 flatMap:v8];

  return v6;
}

id __72__HFWalletUtilities_packageIconIdentifierForHome_shouldUseKeyholeAsset___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = @"HFCAPackageIconIdentifierLockKeyhole";
  }

  else
  {
    v1 = @"HFCAPackageIconIdentifierLockKeypad";
  }

  v2 = MEMORY[0x277D75C80];
  v3 = v1;
  v4 = [v2 currentTraitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = @"%@DarkModeMatteBlack";
  }

  else
  {
    v6 = @"%@LightModeMatteBlack";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:v6, v3];

  v8 = [MEMORY[0x277D2C900] futureWithResult:v7];

  return v8;
}

+ (id)walletKeyIconDescriptorForHome:(id)a3 shouldUseKeyholeAsset:(BOOL)a4 foriPhoneDevice:(BOOL)a5
{
  v7 = [a1 packageIconIdentifierForHome:a3 shouldUseKeyholeAsset:?];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__HFWalletUtilities_walletKeyIconDescriptorForHome_shouldUseKeyholeAsset_foriPhoneDevice___block_invoke;
  v10[3] = &__block_descriptor_34_e28___NAFuture_16__0__NSString_8l;
  v11 = a4;
  v12 = a5;
  v8 = [v7 flatMap:v10];

  return v8;
}

id __90__HFWalletUtilities_walletKeyIconDescriptorForHome_shouldUseKeyholeAsset_foriPhoneDevice___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v3 = @"Lock";
  }

  else
  {
    v3 = @"Keypad";
  }

  v4 = MEMORY[0x277CCACA8];
  if (*(a1 + 33))
  {
    v5 = @"iPhone";
  }

  else
  {
    v5 = @"Watch";
  }

  v6 = a2;
  v7 = [v4 stringWithFormat:@"%@ %@", v3, v5];
  if (*(a1 + 33) == 1)
  {
    v8 = objc_alloc_init(MEMORY[0x277CD4790]);
    v18 = 0;
    v9 = [v8 canEvaluatePolicy:2 error:&v18];
    v10 = v18;
    if (v9)
    {
      if ([v8 biometryType] == 1)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ Home Button", v7];

        v12 = 1;
        v7 = v11;
      }

      else
      {
        v12 = 2;
      }

      v13 = HFLogForCategory(0x49uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v20 = "+[HFWalletUtilities walletKeyIconDescriptorForHome:shouldUseKeyholeAsset:foriPhoneDevice:]_block_invoke";
        v21 = 2048;
        v22 = v12;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "(%s) biometryType is %ld. localAuthenticationError: %@", buf, 0x20u);
      }
    }
  }

  v14 = [[HFCAPackageIconDescriptor alloc] initWithPackageIdentifier:v6 state:v7];

  v15 = [MEMORY[0x277D2C900] futureWithResult:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end