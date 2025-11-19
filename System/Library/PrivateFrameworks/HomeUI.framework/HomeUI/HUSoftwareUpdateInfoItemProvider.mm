@interface HUSoftwareUpdateInfoItemProvider
- (HUSoftwareUpdateInfoItemProvider)init;
- (HUSoftwareUpdateInfoItemProvider)initWithHome:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUSoftwareUpdateInfoItemProvider

- (HUSoftwareUpdateInfoItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUSoftwareUpdateInfoItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = objc_opt_new();
    softwareUpdateItems = v7->_softwareUpdateItems;
    v7->_softwareUpdateItems = v8;
  }

  return v7;
}

- (HUSoftwareUpdateInfoItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUSoftwareUpdateInfoItemProvider.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUSoftwareUpdateInfoItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HUSoftwareUpdateInfoItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (id)reloadItems
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v4 = [(HUSoftwareUpdateInfoItemProvider *)self home];
  v5 = [v4 accessories];

  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v8 = *v33;
    *&v7 = 138412290;
    v25 = v7;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        if ([v10 hf_hasSoftwareUpdate])
        {
          v11 = [(HUSoftwareUpdateInfoItemProvider *)self filter];
          if (!v11 || ([(HUSoftwareUpdateInfoItemProvider *)self filter], v12 = objc_claimAutoreleasedReturnValue(), v13 = (v12)[2](v12, v10), v12, v11, v13))
          {
            if ([v10 hf_isReadyToInstallSoftwareUpdate] && (objc_msgSend(v10, "hf_hasNewValidSoftwareUpdate") & 1) == 0)
            {
              v14 = HFLogForCategory();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                *buf = v25;
                v37 = v10;
                _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "Software update is ready to install but controller not controllable: %@", buf, 0xCu);
              }
            }

            else
            {
              v14 = [v10 hf_softwareUpdateHash];
              if ([v10 hf_isSoftwareUpdateInstalled])
              {
                v15 = [v14 stringByAppendingString:@"-Installed"];

                v14 = v15;
              }

              v16 = [v3 na_objectForKey:v14 withDefaultValue:&__block_literal_global_161];
              [v16 addObject:v10];
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v6);
  }

  v17 = [v3 allKeys];
  v18 = [v17 sortedArrayUsingSelector:sel_compare_];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __47__HUSoftwareUpdateInfoItemProvider_reloadItems__block_invoke_2;
  v30[3] = &unk_277DBAC58;
  v19 = v3;
  v31 = v19;
  v20 = [v18 na_map:v30];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__HUSoftwareUpdateInfoItemProvider_reloadItems__block_invoke_5;
  aBlock[3] = &unk_277DBFD00;
  v29 = &__block_literal_global_17;
  v21 = _Block_copy(aBlock);
  objc_initWeak(buf, self);
  v22 = [(HFItemProvider *)self reloadItemsWithObjects:v20 keyAdaptor:&__block_literal_global_17 itemAdaptor:v21 filter:0 itemMap:&__block_literal_global_23_3];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __47__HUSoftwareUpdateInfoItemProvider_reloadItems__block_invoke_7;
  v26[3] = &unk_277DB7FA8;
  objc_copyWeak(&v27, buf);
  v23 = [v22 flatMap:v26];
  objc_destroyWeak(&v27);

  objc_destroyWeak(buf);

  return v23;
}

id __47__HUSoftwareUpdateInfoItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HUSoftwareUpdateInfoItemProvider_reloadItems__block_invoke_4;
  v5[3] = &unk_277DBFCD8;
  v5[4] = &v6;
  [v2 na_each:v5];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v7[3]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__HUSoftwareUpdateInfoItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  *(*(*(a1 + 32) + 8) + 24) ^= [v3 hash];
}

id __47__HUSoftwareUpdateInfoItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessories];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

HUSoftwareUpdateInfoItem *__47__HUSoftwareUpdateInfoItemProvider_reloadItems__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HUSoftwareUpdateInfoItem alloc] initWithAccessories:v2];

  return v3;
}

id __47__HUSoftwareUpdateInfoItemProvider_reloadItems__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained softwareUpdateItems];
  v6 = [v3 removedItems];
  [v5 minusSet:v6];

  v7 = [WeakRetained softwareUpdateItems];
  v8 = [v3 addedItems];
  [v7 unionSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUSoftwareUpdateInfoItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = *MEMORY[0x277D13B78];
  v8[0] = *MEMORY[0x277D13B28];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v2 setByAddingObjectsFromArray:v4];

  return v5;
}

@end