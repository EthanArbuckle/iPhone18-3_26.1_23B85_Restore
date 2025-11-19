@interface HFZoneBuilder
+ (id)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFZoneBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (NSSet)rooms;
- (id)_createZone;
- (id)_performValidation;
- (id)_updateName;
- (id)_updateRooms;
- (id)commitItem;
- (unint64_t)hash;
- (void)addRoom:(id)a3;
- (void)removeRoom:(id)a3;
@end

@implementation HFZoneBuilder

- (HFZoneBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v17.receiver = self;
  v17.super_class = HFZoneBuilder;
  v5 = [(HFItemBuilder *)&v17 initWithExistingObject:a3 inHome:a4];
  v6 = v5;
  if (v5)
  {
    v7 = [(HFZoneBuilder *)v5 zone];
    v8 = [v7 name];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_2824B1A78;
    }

    objc_storeStrong(&v6->_name, v10);

    if (a3)
    {
      v11 = [(HFZoneBuilder *)v6 zone];
      v12 = [v11 rooms];
      v13 = HFHomeKitObjectUniqueIdentifiers(v12);
    }

    else
    {
      v13 = [MEMORY[0x277CBEB98] set];
    }

    v14 = [[HFMutableSetDiff alloc] initWithFromSet:v13];
    roomUUIDs = v6->_roomUUIDs;
    v6->_roomUUIDs = v14;
  }

  return v6;
}

- (void)addRoom:(id)a3
{
  v10 = a3;
  v4 = [(HFZoneBuilder *)self roomUUIDs];
  v5 = [v4 toSet];
  v6 = [v10 uniqueIdentifier];
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(HFZoneBuilder *)self roomUUIDs];
    v9 = [v10 uniqueIdentifier];
    [v8 addObject:v9];
  }
}

- (void)removeRoom:(id)a3
{
  v10 = a3;
  v4 = [(HFZoneBuilder *)self roomUUIDs];
  v5 = [v4 toSet];
  v6 = [v10 uniqueIdentifier];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [(HFZoneBuilder *)self roomUUIDs];
    v9 = [v10 uniqueIdentifier];
    [v8 deleteObject:v9];
  }
}

- (NSSet)rooms
{
  v3 = [(HFZoneBuilder *)self roomUUIDs];
  v4 = [v3 toSet];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __22__HFZoneBuilder_rooms__block_invoke;
  v7[3] = &unk_277DF5E10;
  v7[4] = self;
  v5 = [v4 na_map:v7];

  return v5;
}

id __22__HFZoneBuilder_rooms__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v4 hf_roomWithIdentifier:v3];

  return v5;
}

- (id)_performValidation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v4 = [(HFItemBuilder *)self lazy_verifyPropertyIsSet:@"name"];
  v11[0] = v4;
  v5 = [(HFZoneBuilder *)self name];
  v6 = [(HFItemBuilder *)self lazy_verifyNameIsNotEmpty:v5];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v3 chainFutures:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)commitItem
{
  v27 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Starting a commit %@", buf, 0xCu);
  }

  v4 = [(HFZoneBuilder *)self zone];
  v5 = HFOperationEditZone;
  if (!v4)
  {
    v5 = HFOperationAddZone;
  }

  v6 = *v5;

  v7 = [(HFZoneBuilder *)self _performValidation];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __27__HFZoneBuilder_commitItem__block_invoke;
  v22[3] = &unk_277DF3D10;
  objc_copyWeak(&v23, &location);
  v8 = [v7 flatMap:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __27__HFZoneBuilder_commitItem__block_invoke_2;
  v20[3] = &unk_277DF3D10;
  objc_copyWeak(&v21, &location);
  v9 = [v8 flatMap:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __27__HFZoneBuilder_commitItem__block_invoke_3;
  v17[3] = &unk_277E01118;
  objc_copyWeak(&v19, &location);
  v10 = v6;
  v18 = v10;
  v11 = [v9 recover:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __27__HFZoneBuilder_commitItem__block_invoke_4;
  v15[3] = &unk_277DF3D10;
  objc_copyWeak(&v16, &location);
  v12 = [v11 flatMap:v15];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __27__HFZoneBuilder_commitItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained zone];

  v3 = [WeakRetained name];
  v4 = [WeakRetained zone];
  v5 = [v4 name];
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    if (v2)
    {
      v7 = [WeakRetained _updateName];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
    v9 = [WeakRetained roomUUIDs];
    v10 = [v9 toSet];
    v11 = [(HFSetDiff *)HFMutableSetDiff diffFromSet:v8 toSet:v10];
    [WeakRetained setRoomUUIDs:v11];
  }

  v7 = [WeakRetained _createZone];
LABEL_6:
  v12 = v7;

  return v12;
}

id __27__HFZoneBuilder_commitItem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _updateRooms];

  return v2;
}

id __27__HFZoneBuilder_commitItem__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x277D2C900];
  v6 = *(a1 + 32);
  v7 = [WeakRetained name];
  v8 = [v3 hf_errorWithOperationType:v6 failedItemName:v7];

  v9 = [v5 futureWithError:v8];

  return v9;
}

id __27__HFZoneBuilder_commitItem__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v3 = [WeakRetained zone];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)_createZone
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__HFZoneBuilder__createZone__block_invoke;
  v8[3] = &unk_277DF2C90;
  v8[4] = self;
  v3 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:v8];
  v4 = [v3 addFailureBlock:&__block_literal_global_217];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__HFZoneBuilder__createZone__block_invoke_18;
  v7[3] = &unk_277E01140;
  v7[4] = self;
  v5 = [v3 flatMap:v7];

  return v5;
}

void __28__HFZoneBuilder__createZone__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) name];
    v6 = [*(a1 + 32) home];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Creating zone with name %@ in home %@", &v10, 0x16u);
  }

  v7 = [*(a1 + 32) home];
  v8 = [*(a1 + 32) name];
  [v7 addZoneWithName:v8 completionHandler:v3];

  v9 = *MEMORY[0x277D85DE8];
}

void __28__HFZoneBuilder__createZone__block_invoke_12(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "HFZoneBuilder: Zone creation failed with error %@", &v6, 0xCu);
  }

  v4 = +[HFErrorHandler sharedHandler];
  [v4 logError:v2 operationDescription:@"HFZoneBuilder.addZone"];

  v5 = *MEMORY[0x277D85DE8];
}

id __28__HFZoneBuilder__createZone__block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Zone creation successful", buf, 2u);
  }

  [*(a1 + 32) setZone:v3];
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__HFZoneBuilder__createZone__block_invoke_20;
  v8[3] = &unk_277DF2CB8;
  v8[4] = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

void __28__HFZoneBuilder__createZone__block_invoke_20(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) zone];
    [v5 home:v3 didAddZone:v4];
  }
}

- (id)_updateName
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HFZoneBuilder *)self name];
    v5 = [(HFItemBuilder *)self home];
    *buf = 138412546;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Updating zone with name %@ in home %@", buf, 0x16u);
  }

  v6 = [(HFZoneBuilder *)self zone];
  v7 = [v6 name];
  v8 = [(HFZoneBuilder *)self name];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Skipping the name update", buf, 2u);
    }

    v11 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __28__HFZoneBuilder__updateName__block_invoke;
    v17[3] = &unk_277DF2C68;
    v17[4] = self;
    v12 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v17];
    v13 = [v12 addFailureBlock:&__block_literal_global_27_13];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __28__HFZoneBuilder__updateName__block_invoke_31;
    v16[3] = &unk_277DF2CE0;
    v16[4] = self;
    v11 = [v12 flatMap:v16];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

void __28__HFZoneBuilder__updateName__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 zone];
  v5 = [*(a1 + 32) name];
  [v6 updateName:v5 completionHandler:v4];
}

void __28__HFZoneBuilder__updateName__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "HFZoneBuilder: Zone name change failed with error %@", &v6, 0xCu);
  }

  v4 = +[HFErrorHandler sharedHandler];
  [v4 logError:v2 operationDescription:@"HFRoomBuilder.updateName"];

  v5 = *MEMORY[0x277D85DE8];
}

id __28__HFZoneBuilder__updateName__block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Zone name change successful", buf, 2u);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__HFZoneBuilder__updateName__block_invoke_32;
  v8[3] = &unk_277DF2CB8;
  v8[4] = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

void __28__HFZoneBuilder__updateName__block_invoke_32(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) zone];
    [v5 home:v3 didUpdateNameForZone:v4];
  }
}

- (id)_updateRooms
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __29__HFZoneBuilder__updateRooms__block_invoke;
  aBlock[3] = &unk_277E01190;
  objc_copyWeak(&v15, &location);
  v3 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __29__HFZoneBuilder__updateRooms__block_invoke_5;
  v12[3] = &unk_277E01190;
  objc_copyWeak(&v13, &location);
  v4 = _Block_copy(v12);
  v5 = [(HFZoneBuilder *)self roomUUIDs];
  v6 = [(HFZoneBuilder *)self zone];
  v7 = v3[2](v3, v6);
  v8 = [(HFZoneBuilder *)self zone];
  v9 = v4[2](v4, v8);
  v10 = [(HFItemBuilder *)self commitSetDiff:v5 addBlock:v7 updateBlock:&__block_literal_global_61_6 deleteBlock:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

id __29__HFZoneBuilder__updateRooms__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__HFZoneBuilder__updateRooms__block_invoke_2;
  v7[3] = &unk_277E01168;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  objc_destroyWeak(&v9);

  return v5;
}

id __29__HFZoneBuilder__updateRooms__block_invoke_2(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained home];
  v6 = [v5 hf_roomWithIdentifier:v3];

  if (!v6)
  {
    v7 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = [WeakRetained home];
      *buf = 138412546;
      v31 = v3;
      v32 = 2112;
      v33 = v21;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Could not find room with UUID: %@ in home: %@. This is going to cause the HFZoneBuilder commit to fail.", buf, 0x16u);
    }
  }

  v8 = [*(a1 + 32) rooms];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __29__HFZoneBuilder__updateRooms__block_invoke_35;
  v28[3] = &unk_277DF7E60;
  v9 = v6;
  v29 = v9;
  v10 = [v8 na_any:v28];

  v11 = HFLogForCategory(0x2BuLL);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 138412290;
      v31 = v9;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Skipping adding room %@ as one already exists!", buf, 0xCu);
    }

    v13 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    if (v12)
    {
      v14 = [WeakRetained name];
      *buf = 138412546;
      v31 = v9;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Assigning room %@ to zone named %@", buf, 0x16u);
    }

    v15 = MEMORY[0x277D2C900];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __29__HFZoneBuilder__updateRooms__block_invoke_37;
    v25[3] = &unk_277DF4150;
    v26 = *(a1 + 32);
    v16 = v9;
    v27 = v16;
    v17 = [v15 futureWithErrorOnlyHandlerAdapterBlock:v25];
    v18 = [v17 addFailureBlock:&__block_literal_global_40_6];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __29__HFZoneBuilder__updateRooms__block_invoke_3;
    v22[3] = &unk_277DF9400;
    v22[4] = WeakRetained;
    v23 = v16;
    v24 = *(a1 + 32);
    v13 = [v17 flatMap:v22];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __29__HFZoneBuilder__updateRooms__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

void __29__HFZoneBuilder__updateRooms__block_invoke_2_38(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFZoneBuilder.assignZoneToRoom"];
}

id __29__HFZoneBuilder__updateRooms__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__HFZoneBuilder__updateRooms__block_invoke_4;
  v8[3] = &unk_277DF64F0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 48);
  [v4 dispatchHomeObserverMessage:v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

void __29__HFZoneBuilder__updateRooms__block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didAddRoom:*(a1 + 40) toZone:*(a1 + 48)];
  }
}

id __29__HFZoneBuilder__updateRooms__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__HFZoneBuilder__updateRooms__block_invoke_6;
  v7[3] = &unk_277E01168;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  objc_destroyWeak(&v9);

  return v5;
}

id __29__HFZoneBuilder__updateRooms__block_invoke_6(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained home];
  v6 = [v5 hf_roomWithIdentifier:v3];

  if (!v6)
  {
    v7 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = [WeakRetained home];
      *buf = 138412546;
      v26 = v3;
      v27 = 2112;
      v28 = v18;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Could not find room with UUID: %@ in home: %@. This is going to cause the HFZoneBuilder commit to fail.", buf, 0x16u);
    }
  }

  v8 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [WeakRetained name];
    *buf = 138412546;
    v26 = v6;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Removing room %@ from zone named %@", buf, 0x16u);
  }

  v10 = MEMORY[0x277D2C900];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __29__HFZoneBuilder__updateRooms__block_invoke_48;
  v22[3] = &unk_277DF4150;
  v23 = *(a1 + 32);
  v11 = v6;
  v24 = v11;
  v12 = [v10 futureWithErrorOnlyHandlerAdapterBlock:v22];
  v13 = [v12 addFailureBlock:&__block_literal_global_51_2];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __29__HFZoneBuilder__updateRooms__block_invoke_3_55;
  v19[3] = &unk_277DF9400;
  v19[4] = WeakRetained;
  v20 = v11;
  v21 = *(a1 + 32);
  v14 = v11;
  v15 = [v12 flatMap:v19];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __29__HFZoneBuilder__updateRooms__block_invoke_2_49(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFZoneBuilder.removeZoneToRoom"];
}

id __29__HFZoneBuilder__updateRooms__block_invoke_3_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__HFZoneBuilder__updateRooms__block_invoke_4_56;
  v8[3] = &unk_277DF64F0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 48);
  [v4 dispatchHomeObserverMessage:v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

void __29__HFZoneBuilder__updateRooms__block_invoke_4_56(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didRemoveRoom:*(a1 + 40) fromZone:*(a1 + 48)];
  }
}

+ (id)na_identity
{
  if (qword_280E02728 != -1)
  {
    dispatch_once(&qword_280E02728, &__block_literal_global_64_2);
  }

  v3 = _MergedGlobals_1_2;

  return v3;
}

void __28__HFZoneBuilder_na_identity__block_invoke()
{
  v6 = [MEMORY[0x277D2C908] builder];
  v0 = [v6 appendCharacteristic:&__block_literal_global_68_3 withRole:1];
  v1 = [v6 appendCharacteristic:&__block_literal_global_70_7 withRole:2];
  v2 = [v6 appendCharacteristic:&__block_literal_global_72_2 withRole:2];
  v3 = [v6 appendCharacteristic:&__block_literal_global_74_2 withRole:2];
  v4 = [v6 build];
  v5 = _MergedGlobals_1_2;
  _MergedGlobals_1_2 = v4;
}

id __28__HFZoneBuilder_na_identity__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 zone];

  if (v3)
  {
    v4 = [v2 zone];

    v5 = [v4 uniqueIdentifier];
    v6 = [v5 UUIDString];

    v2 = v4;
  }

  else
  {
    v6 = [v2 name];
  }

  return v6;
}

id __28__HFZoneBuilder_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 zone];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

id __28__HFZoneBuilder_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 zone];
  v3 = [v2 rooms];
  v4 = [v3 na_map:&__block_literal_global_77_0];

  return v4;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

@end