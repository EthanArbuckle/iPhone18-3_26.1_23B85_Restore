@interface HFRoomBuilder
- (BOOL)isEqual:(id)a3;
- (HFRoomBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (NSSet)accessories;
- (NSString)description;
- (id)_createRoom;
- (id)_performValidation;
- (id)_updateAccessories;
- (id)_updateName;
- (id)commitItem;
- (unint64_t)hash;
- (void)addAccessory:(id)a3;
- (void)removeAccessory:(id)a3;
@end

@implementation HFRoomBuilder

- (HFRoomBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = HFRoomBuilder;
  v7 = [(HFItemBuilder *)&v23 initWithExistingObject:v6 inHome:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(HFRoomBuilder *)v7 room];
    v10 = [v9 name];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_2824B1A78;
    }

    objc_storeStrong(&v8->_name, v12);

    if (+[HFExecutionEnvironment isHomeApp])
    {
      v13 = +[HFWallpaperManager sharedInstance];
      v14 = [v13 wallpaperSourceRegistered];

      if (v14)
      {
        v15 = [[HFWallpaperEditCollectionBuilder alloc] initWithHomeKitObject:v6 namedWallpaperCollectionType:1];
        wallpaperBuilder = v8->_wallpaperBuilder;
        v8->_wallpaperBuilder = v15;
      }
    }

    if (v6)
    {
      v17 = [(HFRoomBuilder *)v8 room];
      v18 = [v17 accessories];
      v19 = HFHomeKitObjectUniqueIdentifiers(v18);
    }

    else
    {
      v19 = [MEMORY[0x277CBEB98] set];
    }

    v20 = [[HFMutableSetDiff alloc] initWithFromSet:v19];
    accessoryUUIDs = v8->_accessoryUUIDs;
    v8->_accessoryUUIDs = v20;
  }

  return v8;
}

- (void)addAccessory:(id)a3
{
  v10 = a3;
  v4 = [(HFRoomBuilder *)self accessoryUUIDs];
  v5 = [v4 toSet];
  v6 = [v10 uniqueIdentifier];
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [(HFRoomBuilder *)self accessoryUUIDs];
    v9 = [v10 uniqueIdentifier];
    [v8 addObject:v9];
  }
}

- (void)removeAccessory:(id)a3
{
  v10 = a3;
  v4 = [(HFRoomBuilder *)self accessoryUUIDs];
  v5 = [v4 toSet];
  v6 = [v10 uniqueIdentifier];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [(HFRoomBuilder *)self accessoryUUIDs];
    v9 = [v10 uniqueIdentifier];
    [v8 deleteObject:v9];
  }
}

- (NSSet)accessories
{
  v3 = [(HFRoomBuilder *)self accessoryUUIDs];
  v4 = [v3 toSet];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__HFRoomBuilder_accessories__block_invoke;
  v7[3] = &unk_277DF5E10;
  v7[4] = self;
  v5 = [v4 na_map:v7];

  return v5;
}

id __28__HFRoomBuilder_accessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v4 hf_accessoryWithIdentifier:v3];

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFRoomBuilder *)self room];

  if (v4)
  {
    v5 = [(HFRoomBuilder *)self room];
    v6 = [v5 hf_prettyDescription];
    v7 = [v3 appendObject:v6 withName:@"room"];
  }

  else
  {
    v5 = [(HFRoomBuilder *)self name];
    v8 = [v3 appendObject:v5 withName:@"name"];
  }

  v9 = [v3 build];

  return v9;
}

- (id)_performValidation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v4 = [(HFItemBuilder *)self lazy_verifyPropertyIsSet:@"name"];
  v11[0] = v4;
  v5 = [(HFRoomBuilder *)self name];
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
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Starting commit (%@)", buf, 0xCu);
  }

  v4 = [(HFRoomBuilder *)self room];
  v5 = HFOperationEditRoom;
  if (!v4)
  {
    v5 = HFOperationAddRoom;
  }

  v6 = *v5;

  v7 = [(HFRoomBuilder *)self _performValidation];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __27__HFRoomBuilder_commitItem__block_invoke;
  v24[3] = &unk_277DF2CE0;
  v24[4] = self;
  v8 = [v7 flatMap:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __27__HFRoomBuilder_commitItem__block_invoke_17;
  v23[3] = &unk_277DF2CE0;
  v23[4] = self;
  v9 = [v8 flatMap:v23];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __27__HFRoomBuilder_commitItem__block_invoke_2;
  v22[3] = &unk_277DF2CE0;
  v22[4] = self;
  v10 = [v9 flatMap:v22];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __27__HFRoomBuilder_commitItem__block_invoke_3;
  v19[3] = &unk_277DF2D30;
  v20 = v6;
  v21 = self;
  v11 = v6;
  v12 = [v10 recover:v19];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __27__HFRoomBuilder_commitItem__block_invoke_4;
  v18[3] = &unk_277DF2CE0;
  v18[4] = self;
  v13 = [v12 flatMap:v18];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __27__HFRoomBuilder_commitItem__block_invoke_5;
  v17[3] = &unk_277DF70B0;
  v17[4] = self;
  v14 = [v13 addCompletionBlock:v17];

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

id __27__HFRoomBuilder_commitItem__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) room];

  v3 = [*(a1 + 32) room];
  v4 = [*(a1 + 32) home];
  v5 = [v4 roomForEntireHome];
  if ([v3 isEqual:v5])
  {
    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 32) room];
    v8 = [v7 name];
    v9 = [v6 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v10 = HFLogForCategory(0x2BuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 32) name];
        v19 = 138412290;
        v20 = v11;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Request to modify name for default room. Creating a new room and moving accessories into it instead (%@)", &v19, 0xCu);
      }

      v12 = [MEMORY[0x277CBEB98] set];
      v13 = [*(a1 + 32) accessoryUUIDs];
      v14 = [v13 toSet];
      v15 = [(HFSetDiff *)HFMutableSetDiff diffFromSet:v12 toSet:v14];
      [*(a1 + 32) setAccessoryUUIDs:v15];

      goto LABEL_9;
    }
  }

  else
  {
  }

  if (v2)
  {
    v16 = [*(a1 + 32) _updateName];
    goto LABEL_10;
  }

LABEL_9:
  v16 = [*(a1 + 32) _createRoom];
LABEL_10:
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __27__HFRoomBuilder_commitItem__block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 32) wallpaperBuilder];
  if (v2)
  {
    v3 = [*(a1 + 32) wallpaperBuilder];
    v4 = [v3 commitWallpaper];
  }

  else
  {
    v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v4;
}

id __27__HFRoomBuilder_commitItem__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) name];
  v7 = [v6 length];
  if (v7)
  {
    v8 = [*(a1 + 40) name];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 hf_errorWithOperationType:v5 failedItemName:v8];
  v10 = [v4 futureWithError:v9];

  if (v7)
  {
  }

  return v10;
}

id __27__HFRoomBuilder_commitItem__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) room];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

void __27__HFRoomBuilder_commitItem__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Commit for %@ finished with error: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_createRoom
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HFRoomBuilder *)self name];
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Adding room with name: %@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __28__HFRoomBuilder__createRoom__block_invoke;
  v11[3] = &unk_277DF2C90;
  v11[4] = self;
  v5 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:v11];
  v6 = [v5 addFailureBlock:&__block_literal_global_221];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __28__HFRoomBuilder__createRoom__block_invoke_26;
  v10[3] = &unk_277E016F8;
  v10[4] = self;
  v7 = [v5 flatMap:v10];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __28__HFRoomBuilder__createRoom__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 home];
  v5 = [*(a1 + 32) name];
  [v6 addRoomWithName:v5 completionHandler:v4];
}

void __28__HFRoomBuilder__createRoom__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "HFRoomBuilder: Failed to add room with error: %@", &v6, 0xCu);
  }

  v4 = +[HFErrorHandler sharedHandler];
  [v4 logError:v2 operationDescription:@"HFRoomBuilder.addRoomWithName"];

  v5 = *MEMORY[0x277D85DE8];
}

id __28__HFRoomBuilder__createRoom__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Finished adding room", buf, 2u);
  }

  [*(a1 + 32) setRoom:v3];
  v5 = [*(a1 + 32) wallpaperBuilder];
  [v5 setHkObject:v3];

  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__HFRoomBuilder__createRoom__block_invoke_28;
  v9[3] = &unk_277DF2CB8;
  v9[4] = *(a1 + 32);
  [v6 dispatchHomeObserverMessage:v9 sender:0];

  v7 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v7;
}

void __28__HFRoomBuilder__createRoom__block_invoke_28(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) room];
    [v5 home:v3 didAddRoom:v4];
  }
}

- (id)_updateName
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HFRoomBuilder *)self room];
  v4 = [v3 name];
  v5 = [(HFRoomBuilder *)self name];
  v6 = [v4 isEqualToString:v5];

  v7 = HFLogForCategory(0x2BuLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [(HFRoomBuilder *)self name];
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Not updating name because it hasn't changed (%@)", buf, 0xCu);
    }

    v10 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    if (v8)
    {
      v11 = [(HFRoomBuilder *)self room];
      v12 = [v11 name];
      v13 = [(HFRoomBuilder *)self name];
      *buf = 138412546;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Updating name from %@ to %@", buf, 0x16u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __28__HFRoomBuilder__updateName__block_invoke;
    v19[3] = &unk_277DF2C68;
    v19[4] = self;
    v14 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v19];
    v15 = [v14 addFailureBlock:&__block_literal_global_35_5];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __28__HFRoomBuilder__updateName__block_invoke_39;
    v18[3] = &unk_277DF2CE0;
    v18[4] = self;
    v10 = [v14 flatMap:v18];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

void __28__HFRoomBuilder__updateName__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 room];
  v5 = [*(a1 + 32) name];
  [v6 updateName:v5 completionHandler:v4];
}

void __28__HFRoomBuilder__updateName__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "HFRoomBuilder: Failed to update name with error: %@", &v6, 0xCu);
  }

  v4 = +[HFErrorHandler sharedHandler];
  [v4 logError:v2 operationDescription:@"HFRoomBuilder.updateName"];

  v5 = *MEMORY[0x277D85DE8];
}

id __28__HFRoomBuilder__updateName__block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Finished updating name", buf, 2u);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__HFRoomBuilder__updateName__block_invoke_40;
  v8[3] = &unk_277DF2CB8;
  v8[4] = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

void __28__HFRoomBuilder__updateName__block_invoke_40(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) room];
    [v5 home:v3 didUpdateNameForRoom:v4];
  }
}

- (id)_updateAccessories
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HFRoomBuilder *)self accessories];
    v5 = [v4 hf_prettyDescription];
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Updating accessories: %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__HFRoomBuilder__updateAccessories__block_invoke;
  aBlock[3] = &unk_277E01748;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = [(HFRoomBuilder *)self accessoryUUIDs];
  v8 = [(HFRoomBuilder *)self room];
  v9 = v6[2](v6, v8);
  v10 = [(HFItemBuilder *)self home];
  v11 = [v10 roomForEntireHome];
  v12 = v6[2](v6, v11);
  v13 = [(HFItemBuilder *)self commitSetDiff:v7 addBlock:v9 updateBlock:&__block_literal_global_56_3 deleteBlock:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __35__HFRoomBuilder__updateAccessories__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HFRoomBuilder__updateAccessories__block_invoke_2;
  v7[3] = &unk_277E01720;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

id __35__HFRoomBuilder__updateAccessories__block_invoke_2(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) home];
  v5 = [v4 hf_accessoryWithIdentifier:v3];

  if (!v5)
  {
    v6 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v21 = [*(a1 + 32) home];
      *buf = 138412546;
      v33 = v3;
      v34 = 2112;
      v35 = v21;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Could not find accessory with UUID: %@ in home: %@. This is going to cause the HFRoomBuilder commit to fail.", buf, 0x16u);
    }
  }

  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) hf_prettyDescription];
    v9 = [v5 hf_prettyDescription];
    *buf = 138412546;
    v33 = v8;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Assigning accessory to room: %@. Accessory: %@", buf, 0x16u);
  }

  v10 = MEMORY[0x277D2C900];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __35__HFRoomBuilder__updateAccessories__block_invoke_43;
  v29[3] = &unk_277DF6F70;
  v29[4] = *(a1 + 32);
  v11 = v5;
  v30 = v11;
  v31 = *(a1 + 40);
  v12 = [v10 futureWithErrorOnlyHandlerAdapterBlock:v29];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __35__HFRoomBuilder__updateAccessories__block_invoke_2_44;
  v26[3] = &unk_277DF2748;
  v13 = v11;
  v27 = v13;
  v28 = *(a1 + 40);
  v14 = [v12 addFailureBlock:v26];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __35__HFRoomBuilder__updateAccessories__block_invoke_48;
  v22[3] = &unk_277DF9400;
  v23 = v13;
  v15 = *(a1 + 40);
  v16 = *(a1 + 32);
  v24 = v15;
  v25 = v16;
  v17 = v13;
  v18 = [v12 flatMap:v22];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __35__HFRoomBuilder__updateAccessories__block_invoke_43(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 home];
  [v5 assignAccessory:a1[5] toRoom:a1[6] completionHandler:v4];
}

void __35__HFRoomBuilder__updateAccessories__block_invoke_2_44(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) name];
    v8 = [*(a1 + 40) hf_prettyDescription];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "HFRoomBuilder: Failed to assign accessory (%@) to room (%@) with error: %@", &v9, 0x20u);
  }

  v5 = +[HFErrorHandler sharedHandler];
  [v5 logError:v3 operationDescription:@"HFRoomBuilder.assignAccessoryToRoom"];

  v6 = *MEMORY[0x277D85DE8];
}

id __35__HFRoomBuilder__updateAccessories__block_invoke_48(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) name];
    v6 = [*(a1 + 40) name];
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Finished assigning accessory (%@) to room (%@)", buf, 0x16u);
  }

  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __35__HFRoomBuilder__updateAccessories__block_invoke_49;
  v13[3] = &unk_277DF64F0;
  v12 = *(a1 + 40);
  v8 = v12.i64[0];
  v14 = vextq_s8(v12, v12, 8uLL);
  v15 = *(a1 + 32);
  [v7 dispatchHomeObserverMessage:v13 sender:0];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __35__HFRoomBuilder__updateAccessories__block_invoke_49(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didUpdateRoom:*(a1 + 40) forAccessory:*(a1 + 48)];
  }
}

- (unint64_t)hash
{
  v3 = [(HFRoomBuilder *)self room];

  if (v3)
  {
    v4 = [(HFRoomBuilder *)self room];
    v5 = [v4 uniqueIdentifier];
    v6 = [v5 hash];
  }

  else
  {
    v4 = [(HFRoomBuilder *)self name];
    v6 = [v4 hash];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  v6 = [(HFRoomBuilder *)self room];
  v7 = [v6 uniqueIdentifier];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v9 = [v5 room];
  v10 = [v9 uniqueIdentifier];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  if ([v8 isEqual:v11])
  {
    v19 = v8;
    v12 = [(HFRoomBuilder *)self name];
    v13 = [v5 name];
    if ([v12 isEqualToString:v13])
    {
      v17 = __25__HFRoomBuilder_isEqual___block_invoke(self);
      __25__HFRoomBuilder_isEqual___block_invoke(v5);
      v14 = v18 = v6;
      v15 = [v17 isEqual:v14];

      v6 = v18;
    }

    else
    {
      v15 = 0;
    }

    v8 = v19;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    if (!v10)
    {
LABEL_14:
    }
  }

  if (!v7)
  {
  }

LABEL_18:
  return v15;
}

id __25__HFRoomBuilder_isEqual___block_invoke(void *a1)
{
  v1 = [a1 accessories];
  v2 = [v1 na_map:&__block_literal_global_63_3];

  return v2;
}

@end