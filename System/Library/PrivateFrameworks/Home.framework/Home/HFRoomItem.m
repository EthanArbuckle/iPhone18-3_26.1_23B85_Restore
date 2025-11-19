@interface HFRoomItem
- (HFRoomItem)init;
- (HFRoomItem)initWithHome:(id)a3 room:(id)a4;
- (NSString)description;
- (id)_reorderableListsForAccessoryTypes;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)togglePowerState;
@end

@implementation HFRoomItem

- (HFRoomItem)initWithHome:(id)a3 room:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HFRoomItem;
  v9 = [(HFRoomItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_room, a4);
    v11 = [(HFRoomItem *)v10 room];
    v12 = [v11 uniqueIdentifier];
    v13 = [v12 UUIDString];
    uuidString = v10->_uuidString;
    v10->_uuidString = v13;
  }

  return v10;
}

- (HFRoomItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFRoomItem.m" lineNumber:47 description:@"Use -initWithHome:room:"];

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFRoomItem *)self room];
  v7 = [v6 hf_prettyDescription];
  v8 = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, v7, v8];

  return v9;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HFRoomItem *)self room];

  if (!v4)
  {
    NSLog(&cfstr_RoomMustBeSetO.isa);
  }

  v5 = [(HFRoomItem *)self room];

  v6 = MEMORY[0x277D2C900];
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277D2C900]);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [(HFRoomItem *)self room];
    v10 = [v9 name];
    [v8 setObject:v10 forKeyedSubscript:@"title"];

    v11 = [(HFRoomItem *)self room];
    v12 = [v11 uniqueIdentifier];
    [v8 setObject:v12 forKeyedSubscript:@"roomIdentifier"];

    v13 = [(HFRoomItem *)self room];
    v14 = [v13 hf_reorderableServicesList];
    [v8 setObject:v14 forKeyedSubscript:@"reorderableServiceItemList"];

    v15 = [HFReorderableHomeKitItemList alloc];
    v16 = [(HFRoomItem *)self room];
    v17 = [(HFReorderableHomeKitItemList *)v15 initWithApplicationDataContainer:v16 category:@"roomActionSets"];
    [v8 setObject:v17 forKeyedSubscript:@"reorderableActionSetItemList"];

    v18 = [HFReorderableHomeKitItemList alloc];
    v19 = [(HFRoomItem *)self room];
    v20 = [(HFReorderableHomeKitItemList *)v18 initWithApplicationDataContainer:v19 category:@"roomCameras"];
    [v8 setObject:v20 forKeyedSubscript:@"reorderableCameraItemList"];

    v21 = [(HFRoomItem *)self _reorderableListsForAccessoryTypes];
    [v8 setObject:v21 forKeyedSubscript:@"reorderableServicesByTypeList"];

    v22 = MEMORY[0x277CCABB0];
    v23 = [(HFRoomItem *)self room];
    v24 = [v23 home];
    v25 = [v22 numberWithBool:{objc_msgSend(v24, "hf_currentUserIsAdministrator")}];
    [v8 setObject:v25 forKeyedSubscript:@"administrator"];

    v26 = [(HFRoomItem *)self room];
    v27 = [v26 name];
    [v8 setObject:v27 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

    v28 = [HFItemUpdateOutcome outcomeWithResults:v8];
    [v7 finishWithResult:v28];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v7 = [v6 futureWithError:v8];
  }

  return v7;
}

- (id)_reorderableListsForAccessoryTypes
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = +[HFAccessoryListUtilities sortedAccessoryTypeGroups];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) uniqueIdentifier];
        v10 = [v9 UUIDString];

        v11 = [@"roomServicesGroupedByType-" stringByAppendingString:v10];
        v12 = [HFReorderableHomeKitItemList alloc];
        v13 = [(HFRoomItem *)self room];
        v14 = [(HFReorderableHomeKitItemList *)v12 initWithApplicationDataContainer:v13 category:v11];

        [v4 setValue:v14 forKey:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)togglePowerState
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = [(HFRoomItem *)self room];

  if (!v3)
  {
    NSLog(&cfstr_RoomMustBeSetO_0.isa);
  }

  v4 = [(HFRoomItem *)self room];
  if (v4)
  {
    v33 = self;
    v5 = [(HFRoomItem *)self home];
    v6 = [v5 hf_characteristicValueManager];

    v7 = [v4 accessories];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __30__HFRoomItem_togglePowerState__block_invoke;
    v60[3] = &unk_277DF3888;
    v34 = v6;
    v61 = v34;
    v45 = [v7 na_all:v60];

    v35 = objc_alloc_init(MEMORY[0x277D2C900]);
    v8 = objc_alloc_init(HFCharacteristicValueSet);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v36 = v4;
    obj = [v4 accessories];
    v39 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v39)
    {
      v38 = *v57;
      do
      {
        v9 = 0;
        do
        {
          if (*v57 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = v9;
          v10 = *(*(&v56 + 1) + 8 * v9);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v41 = [v10 services];
          v43 = [v41 countByEnumeratingWithState:&v52 objects:v63 count:16];
          if (v43)
          {
            v42 = *v53;
            do
            {
              v11 = 0;
              do
              {
                if (*v53 != v42)
                {
                  objc_enumerationMutation(v41);
                }

                v44 = v11;
                v12 = *(*(&v52 + 1) + 8 * v11);
                v48 = 0u;
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                v13 = [v12 characteristics];
                v14 = [v13 countByEnumeratingWithState:&v48 objects:v62 count:16];
                if (v14)
                {
                  v15 = v14;
                  v16 = *v49;
                  do
                  {
                    for (i = 0; i != v15; ++i)
                    {
                      if (*v49 != v16)
                      {
                        objc_enumerationMutation(v13);
                      }

                      v18 = *(*(&v48 + 1) + 8 * i);
                      v19 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
                      v20 = [v18 characteristicType];
                      v21 = [v19 containsObject:v20];

                      if (v21)
                      {
                        v22 = [MEMORY[0x277CCABB0] numberWithBool:v45];
                        [(HFCharacteristicValueSet *)v8 setValue:v22 forCharacteristic:v18];
                      }
                    }

                    v15 = [v13 countByEnumeratingWithState:&v48 objects:v62 count:16];
                  }

                  while (v15);
                }

                v11 = v44 + 1;
              }

              while (v44 + 1 != v43);
              v43 = [v41 countByEnumeratingWithState:&v52 objects:v63 count:16];
            }

            while (v43);
          }

          v9 = v40 + 1;
        }

        while (v40 + 1 != v39);
        v39 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v39);
    }

    v23 = [(HFCharacteristicValueSet *)v8 allCharacteristics];
    v24 = [v23 count];

    if (v24)
    {
      v25 = [(HFRoomItem *)v33 home];
      v26 = [v25 hf_characteristicValueManager];

      [v26 beginTransactionWithReason:@"HFRoomItemTransactionReasonTogglePowerState"];
      v27 = [v26 writeValuesForCharacteristics:v8];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __30__HFRoomItem_togglePowerState__block_invoke_4;
      v46[3] = &unk_277DF4700;
      v28 = v35;
      v47 = v35;
      v29 = [v27 addCompletionBlock:v46];

      [v26 commitTransactionWithReason:@"HFRoomItemTransactionReasonTogglePowerState"];
      v30 = v47;
      v4 = v36;
    }

    else
    {
      v30 = NAEmptyResult();
      v28 = v35;
      [v35 finishWithResult:v30];
      v4 = v36;
      v26 = v34;
    }
  }

  else
  {
    v28 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t __30__HFRoomItem_togglePowerState__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__HFRoomItem_togglePowerState__block_invoke_2;
  v6[3] = &unk_277DF4020;
  v7 = *(a1 + 32);
  v4 = [v3 na_all:v6];

  return v4;
}

uint64_t __30__HFRoomItem_togglePowerState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__HFRoomItem_togglePowerState__block_invoke_3;
  v6[3] = &unk_277DF6218;
  v7 = *(a1 + 32);
  v4 = [v3 na_all:v6];

  return v4;
}

uint64_t __30__HFRoomItem_togglePowerState__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
  v5 = [v3 characteristicType];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = [*(a1 + 32) cachedValueForCharacteristic:v3];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 isEqual:MEMORY[0x277CBEC28]];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end