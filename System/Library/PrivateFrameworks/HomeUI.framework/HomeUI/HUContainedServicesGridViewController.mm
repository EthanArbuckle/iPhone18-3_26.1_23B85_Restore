@interface HUContainedServicesGridViewController
@end

@implementation HUContainedServicesGridViewController

id __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  if (*(a1 + 32))
  {
    v5 = [objc_alloc(MEMORY[0x277D14AD0]) initWithHome:v3 serviceTypes:0];
    [v5 setValueSource:*(a1 + 40)];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke_2;
    v28[3] = &unk_277DB83E8;
    v29 = *(a1 + 32);
    [v5 setFilter:v28];
    [v4 addObject:v5];
    v6 = [objc_alloc(MEMORY[0x277D142F0]) initWithHome:v3];
    [v6 setValueSource:*(a1 + 40)];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke_3;
    v25[3] = &unk_277DB8410;
    v26 = *(a1 + 32);
    v27 = *(a1 + 56);
    [v6 setFilter:v25];
    [v4 addObject:v6];
    v7 = [objc_alloc(MEMORY[0x277D14BA8]) initWithHome:v3];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke_137;
    v23[3] = &unk_277DB83E8;
    v24 = *(a1 + 32);
    [v7 setFilter:v23];
    [v4 addObject:v7];
  }

  if (*(a1 + 48))
  {
    v8 = [objc_alloc(MEMORY[0x277D147F0]) initWithHome:v3 includeContainedProfiles:0];
    [v8 setValueSource:*(a1 + 40)];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke_2_139;
    v20[3] = &unk_277DB8410;
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    [v8 setFilter:v20];
    [v4 addObject:v8];
    v9 = [objc_alloc(MEMORY[0x277D14AD0]) initWithHome:v3 serviceTypes:0];
    [v9 setValueSource:*(a1 + 40)];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke_349;
    v17 = &unk_277DB8410;
    v19 = *(a1 + 64);
    v13 = *(a1 + 48);
    v10 = v13;
    v18 = v13;
    [v9 setFilter:&v14];
    [v4 addObject:v9];
  }

  v11 = [v4 copy];

  return v11;
}

uint64_t __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [*(a1 + 32) hu_containedServices];
  v8 = [v7 containsObject:v6];

  return v8;
}

uint64_t __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [*(a1 + 32) hu_containedAccessories];
  if (![v7 containsObject:v6])
  {

    goto LABEL_10;
  }

  v8 = [v6 hf_isHomePod];

  if (!v8)
  {
LABEL_10:
    v11 = [*(a1 + 32) hu_containedAccessories];
    v10 = [v11 containsObject:v6];

    goto LABEL_11;
  }

  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 40);
    v14 = NSStringFromSelector(*(a1 + 48));
    v15 = 138412802;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v6;
    _os_log_error_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_ERROR, "%@:%@ HomePod %@ reports itself as part of the service container, filtering out", &v15, 0x20u);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

uint64_t __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke_137(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if ([v6 hf_isRemoteControl])
  {
    v7 = [*(a1 + 32) hu_containedAccessories];
    v8 = [v6 hf_owningBridgeAccessory];
    v9 = [v7 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke_2_139(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2825BCB38])
  {
    v4 = v3;
    if ([v4 conformsToProtocol:&unk_2825BCB38])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    v7 = [*(a1 + 32) accessories];
    v8 = [v6 hf_backingAccessory];
    if ([v7 containsObject:v8])
    {
      v9 = [*(a1 + 32) accessories];
      if ([v9 count] == 1)
      {
        v10 = [v6 hf_backingAccessory];
        v11 = [v10 hf_isHomePod];

        if (v11)
        {
          v12 = HFLogForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 40);
            v17 = NSStringFromSelector(*(a1 + 48));
            v18 = [v6 hf_backingAccessory];
            v19 = 138412802;
            v20 = v16;
            v21 = 2112;
            v22 = v17;
            v23 = 2112;
            v24 = v18;
            _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "%@:%@ HomePod %@ reports itself as part of the service container as a media item, filtering out", &v19, 0x20u);
          }

          v13 = 0;
          goto LABEL_15;
        }

LABEL_14:
        v14 = [*(a1 + 32) mediaProfileContainers];
        v13 = [v14 containsObject:v6];

LABEL_15:
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

uint64_t __124__HUContainedServicesGridViewController_legacy_itemManagerWithServiceContainerItem_shouldGroupByRoom_mediaItem_valueSource___block_invoke_349(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 40);
    v16 = NSStringFromSelector(*(a1 + 48));
    v20 = 138412802;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    v24 = 2112;
    v25 = v3;
    _os_log_debug_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEBUG, "%@:%@: Filtering check for: %@", &v20, 0x20u);
  }

  objc_opt_class();
  v5 = v3;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = v5;
  v9 = [*(a1 + 32) accessories];
  v10 = [v8 accessory];
  if (![v9 containsObject:v10])
  {

    goto LABEL_12;
  }

  v11 = [*(a1 + 32) isHomePodMediaSystem];

  if (!v11)
  {
LABEL_12:
    v12 = [*(a1 + 32) hu_containedServices];
    v13 = [v12 containsObject:v7];
    goto LABEL_13;
  }

  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v17 = *(a1 + 40);
    v18 = NSStringFromSelector(*(a1 + 48));
    v19 = [v8 accessory];
    v20 = 138412802;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "%@:%@ HomePod %@ has services but is part of a media group, filtering out", &v20, 0x20u);
  }

  v13 = 0;
LABEL_13:

  return v13;
}

@end