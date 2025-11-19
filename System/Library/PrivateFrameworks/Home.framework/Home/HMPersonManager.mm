@interface HMPersonManager
@end

@implementation HMPersonManager

void __56__HMPersonManager_HFAdditions__hf_personWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEB98] na_setWithSafeObject:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HMPersonManager_HFAdditions__hf_personWithIdentifier___block_invoke_2;
  v9[3] = &unk_277DFD018;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v4 fetchPersonsWithUUIDs:v5 completion:v9];
}

void __56__HMPersonManager_HFAdditions__hf_personWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v8 = [v5 anyObject];
    [v7 finishWithResult:v8];
  }

  else
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    }

    v8 = v9;
    v10 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = 138412802;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      v18 = 2112;
      v19 = v8;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "%@: Unable to fetch person with identifier:%@ (error: %@)", &v14, 0x20u);
    }

    [*(a1 + 32) finishWithError:v8];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __68__HMPersonManager_HFAdditions__hf_faceCropsForPersonWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v2 na_setWithSafeObject:v4];
  [v3 fetchFaceCropsForPersonsWithUUIDs:v6 completion:v5];
}

id __68__HMPersonManager_HFAdditions__hf_faceCropsForPersonWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 count])
  {
    v4 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%@: No face crops for person with identifier:%@", &v13, 0x16u);
    }
  }

  v5 = [v3 allObjects];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_134];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = [MEMORY[0x277D2C900] futureWithResult:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __68__HMPersonManager_HFAdditions__hf_faceCropsForPersonWithIdentifier___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v4;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];

LABEL_7:
    v9 = 0;
  }

  v12 = objc_opt_class();
  v13 = v5;
  if (!v13)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13;
  if (!v14)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v16 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];

    goto LABEL_14;
  }

LABEL_15:

  v18 = [v9 dateCreated];
  v19 = [v15 dateCreated];
  v20 = [v18 compare:v19];

  return v20;
}

id __70__HMPersonManager_HFAdditions__hf_keyFaceCropForPersonWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 count];
  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [v2 lastObject];
    [v4 futureWithResult:v5];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    [v4 futureWithError:v5];
  }
  v6 = ;

  return v6;
}

void __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) mutableCopy];
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CD1C70]);
    v7 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v6 initWithUUID:v7];
  }

  [v5 setName:*(a1 + 40)];
  v8 = [v5 personLinks];
  if ([v8 count])
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_2;
    v22[3] = &unk_277DFD040;
    v22[4] = WeakRetained;
    v9 = [v8 na_filter:v22];
    v10 = [v5 personLinks];
    v11 = [v10 na_setByRemovingObjectsFromSet:v9];

    [v5 setPersonLinks:v11];
    v12 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v9;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Removing links %@, setting person links to %@", buf, 0x16u);
    }
  }

  v13 = [MEMORY[0x277CBEB98] setWithObject:v5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_15;
  v17[3] = &unk_277DFD090;
  objc_copyWeak(&v21, (a1 + 48));
  v14 = v5;
  v18 = v14;
  v15 = v3;
  v19 = v15;
  v20 = *(a1 + 32);
  [WeakRetained addOrUpdatePersons:v13 completion:v17];

  objc_destroyWeak(&v21);
  v16 = *MEMORY[0x277D85DE8];
}

BOOL __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 personManagerUUID];
  v4 = [*(a1 + 32) UUID];
  v5 = v3 != v4;

  return v5;
}

void __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_15(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = HFLogForCategory(0x13uLL);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412802;
      v19 = WeakRetained;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%@: Unable to update person:%@ (error:%@)", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      *buf = 138412802;
      v19 = WeakRetained;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@: Renamed and updated person %@ to %@", buf, 0x20u);
    }

    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_17;
    v15 = &unk_277DFD068;
    v16 = WeakRetained;
    v17 = *(a1 + 32);
    [v9 dispatchHomePersonManagerObserverMessage:&v12 sender:0];

    [*(a1 + 40) finishWithResult:{*(a1 + 32), v12, v13, v14, v15, v16}];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_17(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    [v5 personManager:v3 didUpdatePersons:v4];
  }
}

void __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] hf_faceCropsForPersonWithIdentifier:a1[5]];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_2;
  v7[3] = &unk_277DFD0E0;
  objc_copyWeak(&v10, a1 + 6);
  v8 = a1[5];
  v5 = v3;
  v9 = v5;
  v6 = [v4 addCompletionBlock:v7];

  objc_destroyWeak(&v10);
}

void __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_2(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    *buf = 138412546;
    v21 = WeakRetained;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@: Removing person with identifier:%@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CBEB98] setWithObject:a1[4]];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_20;
  v14[3] = &unk_277DFD0B8;
  objc_copyWeak(&v19, a1 + 6);
  v15 = a1[4];
  v16 = a1[5];
  v11 = v6;
  v17 = v11;
  v12 = v5;
  v18 = v12;
  [WeakRetained removePersonsWithUUIDs:v10 completion:v14];

  objc_destroyWeak(&v19);
  v13 = *MEMORY[0x277D85DE8];
}

void __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_20(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v3)
  {
    v5 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138412802;
      v19 = WeakRetained;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@: Unable to remove person with identifier:%@ (error: %@)", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:*(a1 + 48)];
  }

  else
  {
    if (*(a1 + 56))
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    v7 = [v6 na_map:&__block_literal_global_24_5];
    v8 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v19 = WeakRetained;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@: Removing face crops with identifiers:%@", buf, 0x16u);
    }

    v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_25;
    v13[3] = &unk_277DFD090;
    objc_copyWeak(&v17, (a1 + 64));
    v14 = *(a1 + 32);
    v10 = v7;
    v15 = v10;
    v16 = *(a1 + 40);
    [WeakRetained removeFaceCropsWithUUIDs:v9 completion:v13];

    objc_destroyWeak(&v17);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_25(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_2_26;
  v12 = &unk_277DFD068;
  v13 = WeakRetained;
  v14 = *(a1 + 32);
  [v5 dispatchHomePersonManagerObserverMessage:&v9 sender:0];

  if (v3)
  {
    v6 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      *buf = 138412802;
      v16 = WeakRetained;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%@: Unable to remove face crops with identifiers:%@ (error: %@)", buf, 0x20u);
    }

    [*(a1 + 48) finishWithError:{v3, v9, v10, v11, v12, v13}];
  }

  else
  {
    [*(a1 + 48) finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_2_26(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    [v5 personManager:v3 didRemovePersonsWithUUIDs:v4];
  }
}

void __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@: Removing face crops with identifiers:%@", buf, 0x16u);
  }

  if ([*(a1 + 40) count])
  {
    v8 = *(a1 + 40);
    v7 = (a1 + 40);
    v9 = *(v7 - 1);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke_30;
    v11[3] = &unk_277DFD130;
    objc_copyWeak(&v14, v7 + 1);
    v12 = *v7;
    v13 = v3;
    [v9 removeFaceCropsWithUUIDs:v8 completion:v11];

    objc_destroyWeak(&v14);
  }

  else
  {
    [v3 finishWithNoResult];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke_30(id *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v3)
  {
    v5 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      *buf = 138412802;
      v16 = WeakRetained;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@: Unable to remove face crop with identifier:%@ (error: %@)", buf, 0x20u);
    }

    [a1[5] finishWithError:v3];
  }

  else
  {
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke_31;
    v12 = &unk_277DFD068;
    v13 = WeakRetained;
    v14 = a1[4];
    [v6 dispatchHomePersonManagerObserverMessage:&v9 sender:0];

    [a1[5] finishWithNoResult];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 personManager:*(a1 + 32) didRemoveFaceCropsWithUUIDs:*(a1 + 40)];
  }
}

void __80__HMPersonManager_HFAdditions__hf_associateFaceCropsWithUUIDs_toPersonWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMPersonManager_HFAdditions__hf_associateFaceCropsWithUUIDs_toPersonWithUUID___block_invoke_2;
  v8[3] = &unk_277DF81C8;
  v8[4] = WeakRetained;
  v9 = v5;
  v10 = v3;
  v11 = *(a1 + 32);
  v7 = v3;
  [WeakRetained associateFaceCropsWithUUIDs:v6 toPersonWithUUID:v9 forSource:2 completion:v8];
}

void __80__HMPersonManager_HFAdditions__hf_associateFaceCropsWithUUIDs_toPersonWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x13uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@: Unable to associate face crops to person with identifier:%@ (error: %@)", &v12, 0x20u);
    }

    [*(a1 + 48) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@: Associated face crops:%@ to person with identifier:%@", &v12, 0x20u);
    }

    [*(a1 + 48) finishWithNoResult];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) hf_faceCropsForPersonWithIdentifier:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_2;
  v9[3] = &unk_277DFD1A8;
  v5 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  v6 = *(a1 + 48);
  v13 = *(a1 + 56);
  v11 = v6;
  v12 = v3;
  v7 = v3;
  v8 = [v4 addSuccessBlock:v9];
}

void __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 na_map:&__block_literal_global_35_2];
  v5 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 138413058;
    v23 = v6;
    v24 = 2112;
    v25 = v3;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@: Reassociating face crops:%@ from person with identifier:%@ to person with identifier:%@", buf, 0x2Au);
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v11 = [v9 hf_associateFaceCropsWithUUIDs:v10 toPersonWithUUID:*(a1 + 48)];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_36;
  v18[3] = &unk_277DFD180;
  v21 = *(a1 + 64);
  v12 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v12;
  v20 = *(a1 + 56);
  v13 = [v11 addSuccessBlock:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_4;
  v16[3] = &unk_277DF2D08;
  v17 = *(a1 + 56);
  v14 = [v13 addFailureBlock:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_36(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) hf_removePersonWithUUID:*(a1 + 40)];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_2_37;
    v8[3] = &unk_277DFD158;
    v9 = *(a1 + 48);
    v3 = [v2 addSuccessBlock:v8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_3_39;
    v6[3] = &unk_277DF2D08;
    v7 = *(a1 + 48);
    v4 = [v3 addFailureBlock:v6];
  }

  else
  {
    v5 = *(a1 + 48);

    [v5 finishWithNoResult];
  }
}

void __79__HMPersonManager_HFAdditions__hf_linkFromPerson_toPerson_toPersonManagerUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMPersonManager_HFAdditions__hf_linkFromPerson_toPerson_toPersonManagerUUID___block_invoke_2;
  v7[3] = &unk_277DF6FE8;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v3;
  v6 = v3;
  [v4 addOrUpdatePersons:v5 completion:v7];
}

void __79__HMPersonManager_HFAdditions__hf_linkFromPerson_toPerson_toPersonManagerUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x13uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Unable to create link between person %@ and %@", &v11, 0x16u);
    }

    [*(a1 + 48) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Created link between person %@ and %@", &v11, 0x16u);
    }

    [*(a1 + 48) finishWithNoResult];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end