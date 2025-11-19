@interface HFAccessoryBuilder
- (BOOL)_shouldUpdateNilNameWithRoomName;
- (BOOL)supportsFavoriting;
- (HFAccessoryBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (NSString)originalName;
- (id)_lazilyUpdateName;
- (id)_lazilyUpdateRoom;
- (id)_lazilyUpdateValueForContextType:(unint64_t)a3;
- (id)accessories;
- (id)commitItem;
- (id)removeItemFromHome;
@end

@implementation HFAccessoryBuilder

- (HFAccessoryBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HFAccessoryBuilder.m" lineNumber:43 description:{@"%@ can only be used with existing HMAccessories", objc_opt_class()}];
  }

  v22.receiver = self;
  v22.super_class = HFAccessoryBuilder;
  v9 = [(HFItemBuilder *)&v22 initWithExistingObject:v7 inHome:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(HFItemBuilder *)v9 homeKitRepresentation];
    v12 = [HFNamingComponents namingComponentFromAccessory:v11];
    [(HFAccessoryBuilder *)v10 setNamingComponent:v12];

    v13 = [(HFAccessoryBuilder *)v10 originalName];
    [(HFAccessoryBuilder *)v10 setName:v13];

    v14 = [HFRoomBuilder alloc];
    v15 = [(HFAccessoryBuilder *)v10 accessory];
    v16 = [v15 room];
    v17 = [(HFRoomBuilder *)v14 initWithExistingObject:v16 inHome:v8];
    [(HFAccessoryBuilder *)v10 setRoom:v17];

    v18 = [(HFAccessoryBuilder *)v10 accessory];
    -[HFAccessoryBuilder setShowInHomeDashboard:](v10, "setShowInHomeDashboard:", [v18 hf_effectiveShowInHomeDashboard]);

    v19 = [(HFAccessoryBuilder *)v10 accessory];
    -[HFAccessoryBuilder setIsFavorite:](v10, "setIsFavorite:", [v19 hf_effectiveIsFavorite]);

    [(HFAccessoryBuilder *)v10 setSkipPropagateFavoriteToServices:0];
  }

  return v10;
}

- (NSString)originalName
{
  v2 = [(HFAccessoryBuilder *)self namingComponent];
  v3 = [v2 name];

  return v3;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFAccessoryBuilder *)self accessory];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (BOOL)supportsFavoriting
{
  v2 = [(HFAccessoryBuilder *)self accessory];
  v3 = [v2 hf_isNetworkRouter];

  return v3 ^ 1;
}

- (id)removeItemFromHome
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [(HFAccessoryBuilder *)self accessories];
  v5 = [v4 anyObject];

  v6 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 hf_prettyDescription];
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Removing accessory from home: %@", buf, 0xCu);
  }

  v8 = [(HFItemBuilder *)self home];
  v9 = [v3 errorOnlyCompletionHandlerAdapter];
  [v8 removeAccessory:v5 completionHandler:v9];

  objc_initWeak(buf, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__HFAccessoryBuilder_removeItemFromHome__block_invoke;
  v18[3] = &unk_277DF6F48;
  objc_copyWeak(&v20, buf);
  v10 = v5;
  v19 = v10;
  v11 = [v3 flatMap:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__HFAccessoryBuilder_removeItemFromHome__block_invoke_2;
  v16[3] = &unk_277DF5038;
  v12 = v10;
  v17 = v12;
  v13 = [v11 recover:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __40__HFAccessoryBuilder_removeItemFromHome__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) hf_prettyDescription];
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Request to remove accessory from home completed successfully: %@", buf, 0xCu);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __40__HFAccessoryBuilder_removeItemFromHome__block_invoke_10;
  v12 = &unk_277DF3810;
  v13 = WeakRetained;
  v14 = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:&v9 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __40__HFAccessoryBuilder_removeItemFromHome__block_invoke_10(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didRemoveAccessory:*(a1 + 40)];
  }
}

id __40__HFAccessoryBuilder_removeItemFromHome__block_invoke_2(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Request to remove accessory from home failed with error: %@, %@", buf, 0x16u);
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
  v16[1] = @"HFOperationRemoveAccessory";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v11 = [v3 hf_errorWithAddedUserInfo:v10];

  v12 = [MEMORY[0x277D2C900] futureWithError:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)_shouldUpdateNilNameWithRoomName
{
  v5 = [(HFAccessoryBuilder *)self name];

  if (!v5)
  {
    v7 = [(HFAccessoryBuilder *)self accessory];
    v8 = [v7 hf_isMediaAccessory];
    if (v8)
    {
      v2 = [(HFAccessoryBuilder *)self accessory];
      if ([v2 hf_isHomePod])
      {
        v9 = 0;
      }

      else
      {
        v3 = [(HFAccessoryBuilder *)self accessory];
        if (([v3 hf_isAppleTV] & 1) == 0)
        {

          v6 = 1;
          goto LABEL_15;
        }

        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = [(HFAccessoryBuilder *)self accessory];
    v6 = [v10 hf_isTelevision];

    if (v9)
    {

      if ((v8 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (!v8)
    {
      goto LABEL_16;
    }

LABEL_15:

LABEL_16:
    return v6;
  }

  return 0;
}

- (id)commitItem
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Starting commit (%@)", buf, 0xCu);
  }

  v4 = [(HFItemBuilder *)self home];
  v5 = [v4 hf_currentUserIsAdministrator];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [(HFAccessoryBuilder *)self _lazilyUpdateValueForContextType:3];
    [v6 na_safeAddObject:v7];

    v8 = [(HFAccessoryBuilder *)self accessory];
    v9 = [v8 hf_isCamera];

    if ((v9 & 1) == 0)
    {
      v10 = [(HFAccessoryBuilder *)self _lazilyUpdateValueForContextType:2];
      [v6 na_safeAddObject:v10];
    }

    v11 = [MEMORY[0x277D2C900] combineAllFutures:v6];
    v12 = @"HFOperationEditService";
    v13 = MEMORY[0x277D2C900];
    v14 = [(HFAccessoryBuilder *)self _performValidation];
    v26[0] = v14;
    v15 = [(HFAccessoryBuilder *)self _lazilyUpdateName];
    v26[1] = v15;
    v16 = [(HFAccessoryBuilder *)self _lazilyUpdateRoom];
    v26[2] = v16;
    v26[3] = v11;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    v18 = [v13 chainFutures:v17];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __32__HFAccessoryBuilder_commitItem__block_invoke;
    v23[3] = &unk_277DF2D30;
    v24 = v12;
    v25 = self;
    v19 = [v18 recover:v23];
  }

  else
  {
    v20 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Ignoring request to commit because the current user is not an administrator", buf, 2u);
    }

    v19 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

id __32__HFAccessoryBuilder_commitItem__block_invoke(uint64_t a1, void *a2)
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

- (id)_lazilyUpdateName
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(HFAccessoryBuilder *)self _shouldUpdateNilNameWithRoomName])
  {
    v3 = [(HFAccessoryBuilder *)self room];
    v4 = [v3 name];
    [(HFAccessoryBuilder *)self setName:v4];
  }

  else
  {
    v3 = [(HFAccessoryBuilder *)self namingComponent];
    v4 = [(HFAccessoryBuilder *)self name];
    v5 = [v3 commitableNameForString:v4];
    [(HFAccessoryBuilder *)self setName:v5];
  }

  v6 = [(HFAccessoryBuilder *)self name];
  v7 = [(HFAccessoryBuilder *)self originalName];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8)
    {

LABEL_13:
      v15 = [(HFAccessoryBuilder *)self accessory];
      v16 = [(HFAccessoryBuilder *)self name];
      v17 = MEMORY[0x277D2C900];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke;
      v22[3] = &unk_277DF28D8;
      v23 = v15;
      v24 = v16;
      v18 = v16;
      v19 = v15;
      v14 = [v17 lazyFutureWithBlock:v22];

      goto LABEL_14;
    }

    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v12 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(HFAccessoryBuilder *)self name];
    *buf = 138412290;
    v26 = v13;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Not updating name because it hasn't changed (%@)", buf, 0xCu);
  }

  v14 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_14:
  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) name];
    v6 = *(a1 + 40);
    *buf = 138412546;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Updating name from %@ to %@", buf, 0x16u);
  }

  v7 = MEMORY[0x277D2C900];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_25;
  v20[3] = &unk_277DF4150;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v8 = [v7 futureWithErrorOnlyHandlerAdapterBlock:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_2;
  v16[3] = &unk_277DF7010;
  v17 = *(a1 + 32);
  v9 = v3;
  v18 = v9;
  v19 = *(a1 + 40);
  v10 = [v8 addSuccessBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_43;
  v14[3] = &unk_277DF2D08;
  v15 = v9;
  v11 = v9;
  v12 = [v8 addFailureBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_3;
  v31[3] = &unk_277DF27B8;
  v32 = a1[4];
  [v4 dispatchAccessoryObserverMessage:v31 sender:0];

  if ([a1[4] hf_isSingleServiceLikeAccessory])
  {
    v5 = [a1[4] hf_visibleServices];
    v6 = [v5 anyObject];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [a1[4] hf_primaryService];

      if (!v7)
      {
        v14 = HFLogForCategory(0x2BuLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Attempted to name a single service accessory without a visible service", buf, 2u);
        }

        v15 = a1[5];
        v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
        [v15 finishWithError:v11];
        goto LABEL_7;
      }
    }

    v8 = MEMORY[0x277D2C900];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_31;
    v26[3] = &unk_277DF6F70;
    v9 = v7;
    v27 = v9;
    v28 = a1[6];
    v29 = a1[4];
    v10 = [v8 futureWithErrorOnlyHandlerAdapterBlock:v26];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_32;
    v20[3] = &unk_277DF6FC0;
    v21 = a1[4];
    v22 = v9;
    v23 = a1[6];
    v24 = a1[5];
    v25 = v3;
    v11 = v9;
    v12 = [v10 addSuccessBlock:v20];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_37;
    v16[3] = &unk_277DF6FE8;
    v17 = a1[6];
    v18 = a1[4];
    v19 = a1[5];
    v13 = [v10 addFailureBlock:v16];

LABEL_7:
    goto LABEL_8;
  }

  [a1[5] finishWithResult:v3];
LABEL_8:
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryDidUpdateName:*(a1 + 32)];
  }
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_31(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) updateName:*(a1 + 40) completionHandler:a2];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Apply accessory %@ service %@ name %@ (same as accessory name)", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_32(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_2_33;
  v9 = &unk_277DF6F98;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v2 dispatchAccessoryObserverMessage:&v6 sender:0];

  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Successfully applied primary service level name %@ to accessory", buf, 0xCu);
  }

  [*(a1 + 56) finishWithResult:{*(a1 + 64), v6, v7, v8, v9}];
  v5 = *MEMORY[0x277D85DE8];
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_2_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessory:*(a1 + 32) didUpdateNameForService:*(a1 + 40)];
  }
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_37(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Unable to apply primary service level name: %@ to accessory %@ | %@", &v9, 0x20u);
  }

  v5 = +[HFErrorHandler sharedHandler];
  [v5 logError:v3 operationDescription:@"HFAccessoryBuilder.updateName"];

  [*(a1 + 48) finishWithError:v3];
  v6 = *MEMORY[0x277D85DE8];
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_43(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Request to update name finished with error: %@", &v7, 0xCu);
  }

  v5 = +[HFErrorHandler sharedHandler];
  [v5 logError:v3 operationDescription:@"HFAccessoryBuilder.updateSingleServiceLikeAccessoryName"];

  [*(a1 + 32) finishWithError:v3];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)_lazilyUpdateRoom
{
  v3 = [(HFAccessoryBuilder *)self accessory];
  v4 = [v3 room];
  v5 = [v4 uniqueIdentifier];
  v6 = [(HFAccessoryBuilder *)self room];
  v7 = [v6 room];
  v8 = [v7 uniqueIdentifier];
  v9 = [v5 isEqual:v8];

  v10 = MEMORY[0x277D2C900];
  if (v9)
  {
    v11 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__HFAccessoryBuilder__lazilyUpdateRoom__block_invoke;
    v13[3] = &unk_277DF28D8;
    v13[4] = self;
    v14 = v3;
    v11 = [v10 lazyFutureWithBlock:v13];
  }

  return v11;
}

void __39__HFAccessoryBuilder__lazilyUpdateRoom__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) name];
  v5 = [*(a1 + 32) originalName];
  v6 = v4;
  v7 = v5;
  if (v6 == v7)
  {
    v8 = 1;
  }

  else if (v6)
  {
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 40) room];
    v11 = [v10 hf_prettyDescription];
    v12 = [*(a1 + 32) room];
    v13 = [v12 hf_prettyDescription];
    *buf = 138412546;
    v24 = v11;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Committing HFRoomBuilder to change room from %@ to %@", buf, 0x16u);
  }

  v14 = [*(a1 + 32) room];
  [v14 addAccessory:*(a1 + 40)];

  v15 = [*(a1 + 32) room];
  v16 = [v15 commitItem];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __39__HFAccessoryBuilder__lazilyUpdateRoom__block_invoke_48;
  v20[3] = &unk_277DF7038;
  v22 = v8;
  v20[4] = *(a1 + 32);
  v21 = v3;
  v17 = v3;
  v18 = [v16 addCompletionBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __39__HFAccessoryBuilder__lazilyUpdateRoom__block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Room builder commit finished with error: %@", &v10, 0xCu);
  }

  if (*(a1 + 48) == 1)
  {
    v8 = [*(a1 + 32) originalName];
    [*(a1 + 32) setName:v8];
  }

  [*(a1 + 40) finishWithResult:v5 error:v6];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_lazilyUpdateValueForContextType:(unint64_t)a3
{
  v5 = 0;
  v27 = *MEMORY[0x277D85DE8];
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_10;
      }

      v6 = [(HFAccessoryBuilder *)self showInHomeDashboard];
LABEL_9:
      v5 = v6;
LABEL_10:
      v7 = [(HFAccessoryBuilder *)self accessory];
      v8 = [v7 home];
      v9 = [v8 accessories];
      v10 = [(HFAccessoryBuilder *)self accessory];
      v11 = [v9 containsObject:v10];

      if ((v11 & 1) == 0)
      {
        v15 = HFLogForCategory(0x2BuLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v24 = a3;
          _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Not updating overall state for context type: %lu because accessory was removed from the home", buf, 0xCu);
        }

        goto LABEL_19;
      }

      v12 = [(HFAccessoryBuilder *)self accessory];
      if (v5 == [v12 hf_shouldBeOnForContextType:a3])
      {
        v13 = [(HFAccessoryBuilder *)self accessory];
        if (v5 == [v13 hf_isOnForContextType:a3])
        {
          v18 = [(HFAccessoryBuilder *)self accessory];
          v19 = [v18 hf_hasSetForContextType:a3];

          if (v19)
          {
            v20 = HFLogForCategory(0x2BuLL);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v24 = a3;
              v25 = 1024;
              v26 = v5;
              _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Not updating overall state for context type: %lu because it hasn't changed (state = %{BOOL}d)", buf, 0x12u);
            }

            goto LABEL_19;
          }

LABEL_15:
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke;
          v21[3] = &unk_277DF7088;
          v22 = v5;
          v21[4] = self;
          v21[5] = a3;
          v14 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v21];
          goto LABEL_20;
        }
      }

      goto LABEL_15;
    }

LABEL_8:
    v6 = [(HFAccessoryBuilder *)self isFavorite];
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  if (a3 != 1)
  {
    goto LABEL_10;
  }

  NSLog(&cfstr_IncludeInStatu.isa, a2);
LABEL_19:
  v14 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_20:
  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

void __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *buf = 134218240;
    v35 = v5;
    v36 = 1024;
    LODWORD(v37) = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Updating application data to set state for context type: %lu, currentState: %{BOOL}d", buf, 0x12u);
  }

  v7 = [*(a1 + 32) accessory];
  if (*(a1 + 48) == [v7 hf_isOnForContextType:*(a1 + 40)])
  {
    v8 = [*(a1 + 32) accessory];
    v9 = [v8 hf_shouldBeOnForContextType:*(a1 + 40)];
    v10 = *(a1 + 48);

    if (v10 == v9)
    {
      v11 = HFLogForCategory(0x2BuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        *buf = 134218240;
        v35 = v12;
        v36 = 1024;
        LODWORD(v37) = v13;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Skipping accessory state update for context type: %lu because it hasn't changed (state = %{BOOL}d)", buf, 0x12u);
      }

LABEL_17:

      v22 = [MEMORY[0x277D2C900] futureWithNoResult];
      goto LABEL_18;
    }
  }

  else
  {
  }

  v14 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    *buf = 134218240;
    v35 = v15;
    v36 = 1024;
    LODWORD(v37) = v16;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Updating accessory state for context type: %lu, currentState: %{BOOL}d", buf, 0x12u);
  }

  v17 = [*(a1 + 32) skipPropagateFavoriteToServices];
  v18 = [*(a1 + 32) accessory];
  v19 = v18;
  if (v17)
  {
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      v11 = HFLogForCategory(0x2BuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 40);
        v24 = [*(a1 + 32) accessory];
        *buf = 134218242;
        v35 = v23;
        v36 = 2112;
        v37 = v24;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Skipping accessory state update for context type: %lu because accessory does not implement hf_updateValueForCurrentObjectOnly, which shouldn't be possible for %@", buf, 0x16u);
      }

      goto LABEL_17;
    }

    v19 = [*(a1 + 32) accessory];
    v21 = [v19 hf_updateValueForCurrentObjectOnly:*(a1 + 48) forContextType:*(a1 + 40)];
  }

  else
  {
    v21 = [v18 hf_updateValue:*(a1 + 48) forContextType:*(a1 + 40)];
  }

  v22 = v21;

LABEL_18:
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_55;
  v32[3] = &unk_277DF7060;
  v32[4] = *(a1 + 32);
  v25 = v3;
  v33 = v25;
  v26 = [v22 addSuccessBlock:v32];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_3;
  v30[3] = &unk_277DF2D08;
  v31 = v25;
  v27 = v25;
  v28 = [v22 addFailureBlock:v30];

  v29 = *MEMORY[0x277D85DE8];
}

void __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_2;
  v5[3] = &unk_277DF27B8;
  v5[4] = *(a1 + 32);
  [v4 dispatchAccessoryObserverMessage:v5 sender:0];

  [*(a1 + 40) finishWithResult:v3];
}

void __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) accessory];
    [v4 accessoryDidUpdateApplicationData:v3];
  }
}

void __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Request to update application data for setting favorite finished with error: %@", &v7, 0xCu);
  }

  v5 = +[HFErrorHandler sharedHandler];
  [v5 logError:v3 operationDescription:@"HFAccessoryBuilder.updateFavorite"];

  [*(a1 + 32) finishWithError:v3];
  v6 = *MEMORY[0x277D85DE8];
}

@end