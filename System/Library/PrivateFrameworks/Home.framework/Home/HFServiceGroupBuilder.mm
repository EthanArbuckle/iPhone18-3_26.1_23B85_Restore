@interface HFServiceGroupBuilder
- (BOOL)_supportsCustomIcons;
- (BOOL)shouldAllowAddingService:(id)a3;
- (HFIconDescriptor)iconDescriptor;
- (HFRoomBuilder)room;
- (HFServiceGroupBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (NSArray)availableIconDescriptors;
- (NSArray)services;
- (NSString)originalName;
- (NSString)primaryServiceType;
- (id)_createServiceGroup;
- (id)_mostCommonIconDescriptor;
- (id)_performValidation;
- (id)_rooms;
- (id)_updateIcon;
- (id)_updateName;
- (id)_updateRooms;
- (id)_updateServices;
- (id)_updateValueForContextType:(unint64_t)a3;
- (id)accessories;
- (id)commitItem;
- (id)removeItemFromHome;
- (void)addService:(id)a3;
- (void)removeService:(id)a3;
- (void)setIconDescriptor:(id)a3;
- (void)setRoom:(id)a3;
@end

@implementation HFServiceGroupBuilder

- (HFServiceGroupBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v6 = a4;
  v24.receiver = self;
  v24.super_class = HFServiceGroupBuilder;
  v7 = [(HFItemBuilder *)&v24 initWithExistingObject:a3 inHome:v6];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = [(HFServiceGroupBuilder *)v7 serviceGroup];
      v10 = [v9 services];
      v11 = HFHomeKitObjectUniqueIdentifiers(v10);
    }

    else
    {
      v11 = [MEMORY[0x277CBEB98] set];
    }

    v12 = [[HFMutableSetDiff alloc] initWithFromSet:v11];
    serviceUUIDs = v8->_serviceUUIDs;
    v8->_serviceUUIDs = v12;

    v14 = [(HFServiceGroupBuilder *)v8 serviceGroup];
    v15 = [v14 name];
    [(HFServiceGroupBuilder *)v8 setName:v15];

    v16 = [(HFServiceGroupBuilder *)v8 serviceGroup];
    -[HFServiceGroupBuilder setShowInHomeDashboard:](v8, "setShowInHomeDashboard:", [v16 hf_effectiveShowInHomeDashboard]);

    v17 = [(HFServiceGroupBuilder *)v8 serviceGroup];
    -[HFServiceGroupBuilder setIsFavorite:](v8, "setIsFavorite:", [v17 hf_effectiveIsFavorite]);

    v18 = [(HFServiceGroupBuilder *)v8 _rooms];
    v19 = [v18 allObjects];

    if ([v19 count] == 1)
    {
      v20 = [HFRoomBuilder alloc];
      v21 = [v19 firstObject];
      v22 = [(HFRoomBuilder *)v20 initWithExistingObject:v21 inHome:v6];
      [(HFServiceGroupBuilder *)v8 setRoom:v22];
    }

    [(HFServiceGroupBuilder *)v8 setHasSetRoom:0];
    [(HFServiceGroupBuilder *)v8 setHasSetIcon:0];
  }

  return v8;
}

- (NSString)primaryServiceType
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA940] set];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(HFServiceGroupBuilder *)self services];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v27 + 1) + 8 * i) hf_effectiveServiceType];
        [v3 na_safeAddObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v24;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        v18 = [v10 countForObject:{v17, v23}];
        if (v18 > v13)
        {
          v19 = v18;
          v20 = v17;

          v13 = v19;
          v14 = v20;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_mostCommonIconDescriptor
{
  v2 = [(HFServiceGroupBuilder *)self services];
  v3 = [v2 na_map:&__block_literal_global_110];

  if ([v3 count])
  {
    v4 = [MEMORY[0x277CCA940] setWithArray:v3];
    v5 = [v4 na_mostCommonObject];
  }

  else
  {
    v5 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:@"HFImageIconIdentifierGeneric"];
  }

  return v5;
}

- (BOOL)shouldAllowAddingService:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceType];

  if (v5)
  {
    v6 = [(HFItemBuilder *)self home];
    v7 = [v6 hf_serviceGroupsForService:v4];

    if (![v7 count])
    {
      goto LABEL_5;
    }

    v8 = [(HFServiceGroupBuilder *)self serviceGroup];
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = v8;
    v10 = [(HFServiceGroupBuilder *)self serviceGroup];
    v11 = [v7 containsObject:v10];

    if (v11)
    {
LABEL_5:
      v12 = [(HFServiceGroupBuilder *)self services];
      v13 = [v12 count];

      if (v13)
      {
        v14 = [(HFServiceGroupBuilder *)self services];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __50__HFServiceGroupBuilder_shouldAllowAddingService___block_invoke;
        v17[3] = &unk_277DF4020;
        v18 = v4;
        v15 = [v14 na_any:v17];
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
LABEL_8:
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)addService:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(HFServiceGroupBuilder *)self shouldAllowAddingService:v4])
  {
    v5 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 hf_prettyDescription];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Request to add a service that is not supported in this service group. We'll allow this to proceed (because there are no API restriction of what services can go into a group; we just want to enforce restrictions in our UI). Service: %@", &v10, 0xCu);
    }
  }

  v7 = [(HFServiceGroupBuilder *)self serviceUUIDs];
  v8 = [v4 uniqueIdentifier];
  [v7 addObject:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeService:(id)a3
{
  v4 = a3;
  v6 = [(HFServiceGroupBuilder *)self serviceUUIDs];
  v5 = [v4 uniqueIdentifier];

  [v6 deleteObject:v5];
}

- (NSArray)services
{
  v3 = [(HFServiceGroupBuilder *)self serviceUUIDs];
  v4 = [v3 toSet];
  v5 = [v4 allObjects];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__HFServiceGroupBuilder_services__block_invoke;
  v8[3] = &unk_277DF5E10;
  v8[4] = self;
  v6 = [v5 na_map:v8];

  return v6;
}

id __33__HFServiceGroupBuilder_services__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v4 hf_serviceWithIdentifier:v3];

  return v5;
}

- (id)removeItemFromHome
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [(HFServiceGroupBuilder *)self serviceGroup];
  v5 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 hf_prettyDescription];
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "HFServiceGroupBuilder: Removing service group from home: %@", buf, 0xCu);
  }

  v7 = [(HFItemBuilder *)self home];
  v8 = [v3 errorOnlyCompletionHandlerAdapter];
  [v7 removeServiceGroup:v4 completionHandler:v8];

  objc_initWeak(buf, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__HFServiceGroupBuilder_removeItemFromHome__block_invoke;
  v17[3] = &unk_277DF6F48;
  objc_copyWeak(&v19, buf);
  v9 = v4;
  v18 = v9;
  v10 = [v3 flatMap:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__HFServiceGroupBuilder_removeItemFromHome__block_invoke_2;
  v15[3] = &unk_277DF5038;
  v11 = v9;
  v16 = v11;
  v12 = [v10 recover:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __43__HFServiceGroupBuilder_removeItemFromHome__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) hf_prettyDescription];
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFServiceGroupBuilder: Request to remove service group from home completed successfully: %@", buf, 0xCu);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __43__HFServiceGroupBuilder_removeItemFromHome__block_invoke_10;
  v12 = &unk_277DF3810;
  v13 = WeakRetained;
  v14 = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:&v9 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __43__HFServiceGroupBuilder_removeItemFromHome__block_invoke_10(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didRemoveServiceGroup:*(a1 + 40)];
  }
}

id __43__HFServiceGroupBuilder_removeItemFromHome__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) hf_prettyDescription];
    *buf = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceGroupBuilder: Request to remove service group from home failed with error: %@, %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) name];
  v7 = v6;
  v8 = &stru_2824B1A78;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v15[0] = @"HFErrorHandlerOptionFailedItemName";
  v15[1] = @"HFErrorUserInfoOperationKey";
  v16[0] = v9;
  v16[1] = @"HFOperationRemoveServiceGroup";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v11 = [v3 hf_errorWithAddedUserInfo:v10];

  v12 = [MEMORY[0x277D2C900] futureWithError:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)commitItem
{
  v3 = [(HFItemBuilder *)self home];
  v4 = [v3 hf_currentUserIsAdministrator];

  if (v4)
  {
    v5 = [(HFServiceGroupBuilder *)self serviceGroup];
    v6 = HFOperationEditItemGroup;
    if (!v5)
    {
      v6 = HFOperationAddServiceGroup;
    }

    v7 = *v6;

    v8 = [(HFServiceGroupBuilder *)self serviceGroup];

    if (!v8)
    {
      v9 = [(HFItemBuilder *)self home];
      v10 = [v9 serviceGroups];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __35__HFServiceGroupBuilder_commitItem__block_invoke;
      v23[3] = &unk_277DF7F28;
      v23[4] = self;
      v11 = [v10 na_firstObjectPassingTest:v23];
      [(HFServiceGroupBuilder *)self setServiceGroup:v11];
    }

    v12 = [(HFServiceGroupBuilder *)self _performValidation];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __35__HFServiceGroupBuilder_commitItem__block_invoke_2;
    v22[3] = &unk_277DF2CE0;
    v22[4] = self;
    v13 = [v12 flatMap:v22];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __35__HFServiceGroupBuilder_commitItem__block_invoke_3;
    v21[3] = &unk_277DF2CE0;
    v21[4] = self;
    v14 = [v13 flatMap:v21];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __35__HFServiceGroupBuilder_commitItem__block_invoke_4;
    v18[3] = &unk_277DF2D30;
    v19 = v7;
    v20 = self;
    v15 = v7;
    v16 = [v14 recover:v18];
  }

  else
  {
    v16 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v16;
}

BOOL __35__HFServiceGroupBuilder_commitItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = [v4 lowercaseString];
  v6 = [*(a1 + 32) name];
  v7 = [v6 lowercaseString];
  if ([v5 isEqualToString:v7])
  {
    v8 = [v3 services];
    v9 = [v8 count] == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __35__HFServiceGroupBuilder_commitItem__block_invoke_2(uint64_t a1)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serviceGroup];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 _updateValueForContextType:2];
    v17[0] = v4;
    v5 = [*(a1 + 32) _updateValueForContextType:3];
    v17[1] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

    v7 = [MEMORY[0x277D2C900] combineAllFutures:v6];
    v8 = MEMORY[0x277D2C900];
    v9 = [*(a1 + 32) _updateName];
    v16[0] = v9;
    v16[1] = v7;
    v10 = [*(a1 + 32) _updateRooms];
    v16[2] = v10;
    v11 = [*(a1 + 32) _updateIcon];
    v16[3] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
    v13 = [v8 chainFutures:v12];
  }

  else
  {
    v13 = [v3 _createServiceGroup];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __35__HFServiceGroupBuilder_commitItem__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 name];
  v7 = [v5 hf_errorWithOperationType:v3 failedItemName:v6];

  v8 = [v2 futureWithError:v7];

  return v8;
}

- (id)_performValidation
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v4 = [(HFItemBuilder *)self lazy_verifyPropertyIsSet:@"name"];
  v11[0] = v4;
  v5 = [(HFServiceGroupBuilder *)self name];
  v6 = [(HFItemBuilder *)self lazy_verifyNameIsNotEmpty:v5];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v3 chainFutures:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_createServiceGroup
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HFServiceGroupBuilder__createServiceGroup__block_invoke;
  v7[3] = &unk_277DF2C90;
  v7[4] = self;
  v3 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__HFServiceGroupBuilder__createServiceGroup__block_invoke_2;
  v6[3] = &unk_277DFB450;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

void __44__HFServiceGroupBuilder__createServiceGroup__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 home];
  v5 = [*(a1 + 32) name];
  [v6 addServiceGroupWithName:v5 completionHandler:v4];
}

id __44__HFServiceGroupBuilder__createServiceGroup__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setServiceGroup:v3];
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __44__HFServiceGroupBuilder__createServiceGroup__block_invoke_3;
  v11 = &unk_277DF3810;
  v12 = *(a1 + 32);
  v13 = v3;
  v5 = v3;
  [v4 dispatchHomeObserverMessage:&v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:{v5, v8, v9, v10, v11, v12}];

  return v6;
}

void __44__HFServiceGroupBuilder__createServiceGroup__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didAddServiceGroup:*(a1 + 40)];
  }
}

- (id)_updateName
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__HFServiceGroupBuilder__updateName__block_invoke;
  v8[3] = &unk_277DF2C68;
  v8[4] = self;
  v3 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v8];
  v4 = [v3 addFailureBlock:&__block_literal_global_30_5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__HFServiceGroupBuilder__updateName__block_invoke_3;
  v7[3] = &unk_277DF2CE0;
  v7[4] = self;
  v5 = [v3 flatMap:v7];

  return v5;
}

void __36__HFServiceGroupBuilder__updateName__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 serviceGroup];
  v5 = [*(a1 + 32) name];
  [v6 updateName:v5 completionHandler:v4];
}

void __36__HFServiceGroupBuilder__updateName__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceGroupBuilder.updateName"];
}

id __36__HFServiceGroupBuilder__updateName__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__HFServiceGroupBuilder__updateName__block_invoke_4;
  v7[3] = &unk_277DF2CB8;
  v7[4] = *(a1 + 32);
  [v4 dispatchHomeObserverMessage:v7 sender:0];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v5;
}

void __36__HFServiceGroupBuilder__updateName__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = [*(a1 + 32) serviceGroup];
    [v5 home:v3 didUpdateNameForServiceGroup:v4];
  }
}

- (id)_updateServices
{
  v3 = [(HFServiceGroupBuilder *)self serviceUUIDs];
  v6[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HFServiceGroupBuilder__updateServices__block_invoke;
  v7[3] = &unk_277DFB478;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HFServiceGroupBuilder__updateServices__block_invoke_7;
  v6[3] = &unk_277DFB478;
  v4 = [(HFItemBuilder *)self commitSetDiff:v3 addBlock:v7 updateBlock:&__block_literal_global_46_1 deleteBlock:v6];

  return v4;
}

id __40__HFServiceGroupBuilder__updateServices__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  v6 = [v5 hf_serviceWithIdentifier:v4];

  v7 = MEMORY[0x277D2C900];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__HFServiceGroupBuilder__updateServices__block_invoke_2;
  v16[3] = &unk_277DF4150;
  v16[4] = *(a1 + 32);
  v8 = v6;
  v17 = v8;
  v9 = [v7 futureWithErrorOnlyHandlerAdapterBlock:v16];
  v10 = [v9 addFailureBlock:&__block_literal_global_38_2];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__HFServiceGroupBuilder__updateServices__block_invoke_4;
  v14[3] = &unk_277DFA5C0;
  v14[4] = *(a1 + 32);
  v15 = v8;
  v11 = v8;
  v12 = [v9 flatMap:v14];

  return v12;
}

void __40__HFServiceGroupBuilder__updateServices__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 serviceGroup];
  [v5 addService:*(a1 + 40) completionHandler:v4];
}

void __40__HFServiceGroupBuilder__updateServices__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceGroupBuilder.addService"];
}

id __40__HFServiceGroupBuilder__updateServices__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __40__HFServiceGroupBuilder__updateServices__block_invoke_5;
  v11 = &unk_277DF3810;
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v5;
  [v4 dispatchHomeObserverMessage:&v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:{v3, v8, v9, v10, v11, v12}];

  return v6;
}

void __40__HFServiceGroupBuilder__updateServices__block_invoke_5(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) serviceGroup];
    [v6 home:v3 didAddService:v4 toServiceGroup:v5];
  }
}

id __40__HFServiceGroupBuilder__updateServices__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  v6 = [v5 hf_serviceWithIdentifier:v4];

  v7 = MEMORY[0x277D2C900];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__HFServiceGroupBuilder__updateServices__block_invoke_8;
  v16[3] = &unk_277DF4150;
  v16[4] = *(a1 + 32);
  v8 = v6;
  v17 = v8;
  v9 = [v7 futureWithErrorOnlyHandlerAdapterBlock:v16];
  v10 = [v9 addFailureBlock:&__block_literal_global_48_3];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__HFServiceGroupBuilder__updateServices__block_invoke_10;
  v14[3] = &unk_277DFA5C0;
  v14[4] = *(a1 + 32);
  v15 = v8;
  v11 = v8;
  v12 = [v9 flatMap:v14];

  return v12;
}

void __40__HFServiceGroupBuilder__updateServices__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 serviceGroup];
  [v5 removeService:*(a1 + 40) completionHandler:v4];
}

void __40__HFServiceGroupBuilder__updateServices__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceGroupBuilder.removeService"];
}

id __40__HFServiceGroupBuilder__updateServices__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __40__HFServiceGroupBuilder__updateServices__block_invoke_11;
  v11 = &unk_277DF3810;
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v5;
  [v4 dispatchHomeObserverMessage:&v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:{v3, v8, v9, v10, v11, v12}];

  return v6;
}

void __40__HFServiceGroupBuilder__updateServices__block_invoke_11(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) serviceGroup];
    [v6 home:v3 didRemoveService:v4 fromServiceGroup:v5];
  }
}

- (id)_updateValueForContextType:(unint64_t)a3
{
  v5 = 0;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_10;
      }

      v6 = [(HFServiceGroupBuilder *)self showInHomeDashboard];
      goto LABEL_9;
    }

LABEL_8:
    v6 = [(HFServiceGroupBuilder *)self isFavorite];
LABEL_9:
    v5 = v6;
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    NSLog(&cfstr_IncludeInStatu_1.isa, a2);
LABEL_13:
    v10 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_15;
  }

LABEL_10:
  v7 = [(HFServiceGroupBuilder *)self serviceGroup];
  if (v5 == [v7 hf_isOnForContextType:a3])
  {
    v8 = [(HFServiceGroupBuilder *)self serviceGroup];
    v9 = [v8 hf_hasSetForContextType:a3];

    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = [(HFServiceGroupBuilder *)self serviceGroup];
  v12 = [v11 hf_updateValue:v5 forContextType:a3];

  v13 = [v12 addFailureBlock:&__block_literal_global_58_0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HFServiceGroupBuilder__updateValueForContextType___block_invoke_2;
  v15[3] = &unk_277DF2CE0;
  v15[4] = self;
  v10 = [v12 flatMap:v15];

LABEL_15:

  return v10;
}

void __52__HFServiceGroupBuilder__updateValueForContextType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceGroupBuilder.updateName"];
}

id __52__HFServiceGroupBuilder__updateValueForContextType___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 32) services];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = +[HFHomeKitDispatcher sharedDispatcher];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __52__HFServiceGroupBuilder__updateValueForContextType___block_invoke_3;
        v14[3] = &unk_277DF27B8;
        v14[4] = v8;
        [v9 dispatchAccessoryObserverMessage:v14 sender:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x277D2C900] futureWithResult:v13];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __52__HFServiceGroupBuilder__updateValueForContextType___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) accessory];
    [v4 accessory:v3 didUpdateApplicationDataForService:*(a1 + 32)];
  }
}

- (id)_updateRooms
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(HFServiceGroupBuilder *)self hasSetRoom])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [(HFServiceGroupBuilder *)self accessories];
    v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v3)
    {
      v4 = v3;
      v19 = *v21;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v20 + 1) + 8 * i);
          v7 = [v6 room];
          v8 = [v7 uniqueIdentifier];
          v9 = [(HFServiceGroupBuilder *)self room];
          v10 = [v9 room];
          v11 = [v10 uniqueIdentifier];
          v12 = [v8 isEqual:v11];

          if ((v12 & 1) == 0)
          {
            v13 = [(HFServiceGroupBuilder *)self room];
            [v13 addAccessory:v6];
          }
        }

        v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v4);
    }

    v14 = [(HFServiceGroupBuilder *)self room];
    v15 = [v14 commitItem];
  }

  else
  {
    v15 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_updateIcon
{
  if ([(HFServiceGroupBuilder *)self hasSetIcon])
  {
    v3 = MEMORY[0x277CBEB18];
    v4 = [(HFServiceGroupBuilder *)self services];
    v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

    v6 = [(HFServiceGroupBuilder *)self services];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __36__HFServiceGroupBuilder__updateIcon__block_invoke;
    v16 = &unk_277DFB4C0;
    v17 = self;
    v18 = v5;
    v7 = v5;
    v8 = [v6 na_map:&v13];

    v9 = MEMORY[0x277D2C900];
    v10 = [MEMORY[0x277D2C938] mainThreadScheduler];
    v11 = [v9 combineAllFutures:v7 ignoringErrors:1 scheduler:v10];
  }

  else
  {
    v11 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v11;
}

id __36__HFServiceGroupBuilder__updateIcon__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) iconDescriptor];
  v5 = [v3 hf_updateIconDescriptor:v4];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__HFServiceGroupBuilder__updateIcon__block_invoke_2;
  v11[3] = &unk_277DF8340;
  v6 = v3;
  v12 = v6;
  v7 = [v5 flatMap:v11];

  v8 = [v7 addFailureBlock:&__block_literal_global_65_2];
  [*(a1 + 40) addObject:v7];
  v9 = v6;

  return v6;
}

id __36__HFServiceGroupBuilder__updateIcon__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__HFServiceGroupBuilder__updateIcon__block_invoke_3;
  v7[3] = &unk_277DF27B8;
  v8 = *(a1 + 32);
  [v4 dispatchAccessoryObserverMessage:v7 sender:0];

  v5 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v5;
}

void __36__HFServiceGroupBuilder__updateIcon__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) accessory];
    [v4 accessory:v3 didUpdateApplicationDataForService:*(a1 + 32)];
  }
}

void __36__HFServiceGroupBuilder__updateIcon__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceGroupBuilder.updateIcon"];
}

- (id)_rooms
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA940] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(HFServiceGroupBuilder *)self services];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) accessory];
        v10 = [v9 room];
        [v3 na_safeAddObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)originalName
{
  v2 = [(HFServiceGroupBuilder *)self serviceGroup];
  v3 = [v2 name];

  return v3;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFServiceGroupBuilder *)self serviceGroup];
  v4 = [v3 services];
  v5 = [v4 na_map:&__block_literal_global_71_2];
  v6 = [v2 setWithArray:v5];

  return v6;
}

- (HFRoomBuilder)room
{
  roomBuilder = self->_roomBuilder;
  if (!roomBuilder)
  {
    v4 = [HFRoomBuilder alloc];
    v5 = [(HFItemBuilder *)self home];
    v6 = [(HFItemBuilder *)v4 initWithHome:v5];
    v7 = self->_roomBuilder;
    self->_roomBuilder = v6;

    roomBuilder = self->_roomBuilder;
  }

  return roomBuilder;
}

- (void)setRoom:(id)a3
{
  v4 = a3;
  [(HFServiceGroupBuilder *)self setHasSetRoom:1];
  roomBuilder = self->_roomBuilder;
  self->_roomBuilder = v4;
}

- (HFIconDescriptor)iconDescriptor
{
  iconDescriptor = self->_iconDescriptor;
  if (!iconDescriptor)
  {
    v4 = [(HFServiceGroupBuilder *)self _mostCommonIconDescriptor];
    v5 = self->_iconDescriptor;
    self->_iconDescriptor = v4;

    iconDescriptor = self->_iconDescriptor;
  }

  return iconDescriptor;
}

- (void)setIconDescriptor:(id)a3
{
  v4 = a3;
  [(HFServiceGroupBuilder *)self setHasSetIcon:1];
  iconDescriptor = self->_iconDescriptor;
  self->_iconDescriptor = v4;
}

- (NSArray)availableIconDescriptors
{
  if ([(HFServiceGroupBuilder *)self _supportsCustomIcons])
  {
    v3 = [(HFServiceGroupBuilder *)self primaryServiceType];
    v4 = [HFServiceIconFactory allIconDescriptorsForServiceType:v3 serviceSubtype:0];
    v5 = [v4 allObjects];
  }

  else
  {
    v5 = [MEMORY[0x277CBEA60] array];
  }

  return v5;
}

- (BOOL)_supportsCustomIcons
{
  v3 = [(HFServiceGroupBuilder *)self services];
  v4 = [v3 firstObject];
  v5 = [v4 hf_effectiveServiceType];

  v6 = [(HFServiceGroupBuilder *)self services];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HFServiceGroupBuilder__supportsCustomIcons__block_invoke;
  v9[3] = &unk_277DF4020;
  v10 = v5;
  v7 = v5;
  LOBYTE(v4) = [v6 na_all:v9];

  return v4;
}

uint64_t __45__HFServiceGroupBuilder__supportsCustomIcons__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hf_effectiveServiceType];
  v4 = [v3 isEqualToString:*(a1 + 32)];
  v5 = [HFServiceIconFactory allIconDescriptorsForServiceType:*(a1 + 32) serviceSubtype:0];
  v6 = [v5 count];

  if (v6 > 1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end