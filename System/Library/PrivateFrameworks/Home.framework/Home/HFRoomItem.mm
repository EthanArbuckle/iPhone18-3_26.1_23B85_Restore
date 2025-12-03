@interface HFRoomItem
- (HFRoomItem)init;
- (HFRoomItem)initWithHome:(id)home room:(id)room;
- (NSString)description;
- (id)_reorderableListsForAccessoryTypes;
- (id)_subclass_updateWithOptions:(id)options;
- (id)togglePowerState;
@end

@implementation HFRoomItem

- (HFRoomItem)initWithHome:(id)home room:(id)room
{
  homeCopy = home;
  roomCopy = room;
  v16.receiver = self;
  v16.super_class = HFRoomItem;
  v9 = [(HFRoomItem *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_room, room);
    room = [(HFRoomItem *)v10 room];
    uniqueIdentifier = [room uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    uuidString = v10->_uuidString;
    v10->_uuidString = uUIDString;
  }

  return v10;
}

- (HFRoomItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFRoomItem.m" lineNumber:47 description:@"Use -initWithHome:room:"];

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  room = [(HFRoomItem *)self room];
  hf_prettyDescription = [room hf_prettyDescription];
  latestResults = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, hf_prettyDescription, latestResults];

  return v9;
}

- (id)_subclass_updateWithOptions:(id)options
{
  room = [(HFRoomItem *)self room];

  if (!room)
  {
    NSLog(&cfstr_RoomMustBeSetO.isa);
  }

  room2 = [(HFRoomItem *)self room];

  v6 = MEMORY[0x277D2C900];
  if (room2)
  {
    v7 = objc_alloc_init(MEMORY[0x277D2C900]);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    room3 = [(HFRoomItem *)self room];
    name = [room3 name];
    [dictionary setObject:name forKeyedSubscript:@"title"];

    room4 = [(HFRoomItem *)self room];
    uniqueIdentifier = [room4 uniqueIdentifier];
    [dictionary setObject:uniqueIdentifier forKeyedSubscript:@"roomIdentifier"];

    room5 = [(HFRoomItem *)self room];
    hf_reorderableServicesList = [room5 hf_reorderableServicesList];
    [dictionary setObject:hf_reorderableServicesList forKeyedSubscript:@"reorderableServiceItemList"];

    v15 = [HFReorderableHomeKitItemList alloc];
    room6 = [(HFRoomItem *)self room];
    v17 = [(HFReorderableHomeKitItemList *)v15 initWithApplicationDataContainer:room6 category:@"roomActionSets"];
    [dictionary setObject:v17 forKeyedSubscript:@"reorderableActionSetItemList"];

    v18 = [HFReorderableHomeKitItemList alloc];
    room7 = [(HFRoomItem *)self room];
    v20 = [(HFReorderableHomeKitItemList *)v18 initWithApplicationDataContainer:room7 category:@"roomCameras"];
    [dictionary setObject:v20 forKeyedSubscript:@"reorderableCameraItemList"];

    _reorderableListsForAccessoryTypes = [(HFRoomItem *)self _reorderableListsForAccessoryTypes];
    [dictionary setObject:_reorderableListsForAccessoryTypes forKeyedSubscript:@"reorderableServicesByTypeList"];

    v22 = MEMORY[0x277CCABB0];
    room8 = [(HFRoomItem *)self room];
    home = [room8 home];
    v25 = [v22 numberWithBool:{objc_msgSend(home, "hf_currentUserIsAdministrator")}];
    [dictionary setObject:v25 forKeyedSubscript:@"administrator"];

    room9 = [(HFRoomItem *)self room];
    name2 = [room9 name];
    [dictionary setObject:name2 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

    v28 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
    [v7 finishWithResult:v28];
  }

  else
  {
    dictionary = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v7 = [v6 futureWithError:dictionary];
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

        uniqueIdentifier = [*(*(&v18 + 1) + 8 * i) uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];

        v11 = [@"roomServicesGroupedByType-" stringByAppendingString:uUIDString];
        v12 = [HFReorderableHomeKitItemList alloc];
        room = [(HFRoomItem *)self room];
        v14 = [(HFReorderableHomeKitItemList *)v12 initWithApplicationDataContainer:room category:v11];

        [v4 setValue:v14 forKey:uUIDString];
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
  room = [(HFRoomItem *)self room];

  if (!room)
  {
    NSLog(&cfstr_RoomMustBeSetO_0.isa);
  }

  room2 = [(HFRoomItem *)self room];
  if (room2)
  {
    selfCopy = self;
    home = [(HFRoomItem *)self home];
    hf_characteristicValueManager = [home hf_characteristicValueManager];

    accessories = [room2 accessories];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __30__HFRoomItem_togglePowerState__block_invoke;
    v60[3] = &unk_277DF3888;
    v34 = hf_characteristicValueManager;
    v61 = v34;
    v45 = [accessories na_all:v60];

    v35 = objc_alloc_init(MEMORY[0x277D2C900]);
    v8 = objc_alloc_init(HFCharacteristicValueSet);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v36 = room2;
    obj = [room2 accessories];
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
          services = [v10 services];
          v43 = [services countByEnumeratingWithState:&v52 objects:v63 count:16];
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
                  objc_enumerationMutation(services);
                }

                v44 = v11;
                v12 = *(*(&v52 + 1) + 8 * v11);
                v48 = 0u;
                v49 = 0u;
                v50 = 0u;
                v51 = 0u;
                characteristics = [v12 characteristics];
                v14 = [characteristics countByEnumeratingWithState:&v48 objects:v62 count:16];
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
                        objc_enumerationMutation(characteristics);
                      }

                      v18 = *(*(&v48 + 1) + 8 * i);
                      hf_powerStateCharacteristicTypes = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
                      characteristicType = [v18 characteristicType];
                      v21 = [hf_powerStateCharacteristicTypes containsObject:characteristicType];

                      if (v21)
                      {
                        v22 = [MEMORY[0x277CCABB0] numberWithBool:v45];
                        [(HFCharacteristicValueSet *)v8 setValue:v22 forCharacteristic:v18];
                      }
                    }

                    v15 = [characteristics countByEnumeratingWithState:&v48 objects:v62 count:16];
                  }

                  while (v15);
                }

                v11 = v44 + 1;
              }

              while (v44 + 1 != v43);
              v43 = [services countByEnumeratingWithState:&v52 objects:v63 count:16];
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

    allCharacteristics = [(HFCharacteristicValueSet *)v8 allCharacteristics];
    v24 = [allCharacteristics count];

    if (v24)
    {
      home2 = [(HFRoomItem *)selfCopy home];
      hf_characteristicValueManager2 = [home2 hf_characteristicValueManager];

      [hf_characteristicValueManager2 beginTransactionWithReason:@"HFRoomItemTransactionReasonTogglePowerState"];
      v27 = [hf_characteristicValueManager2 writeValuesForCharacteristics:v8];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __30__HFRoomItem_togglePowerState__block_invoke_4;
      v46[3] = &unk_277DF4700;
      futureWithNoResult = v35;
      v47 = v35;
      v29 = [v27 addCompletionBlock:v46];

      [hf_characteristicValueManager2 commitTransactionWithReason:@"HFRoomItemTransactionReasonTogglePowerState"];
      v30 = v47;
      room2 = v36;
    }

    else
    {
      v30 = NAEmptyResult();
      futureWithNoResult = v35;
      [v35 finishWithResult:v30];
      room2 = v36;
      hf_characteristicValueManager2 = v34;
    }
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v31 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
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