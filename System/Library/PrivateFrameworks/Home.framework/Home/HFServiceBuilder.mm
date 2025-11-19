@interface HFServiceBuilder
- (BOOL)_shouldUpdateNilNameWithRoomName;
- (HFServiceBuilder)initWithExistingObject:(id)a3 inHome:(id)a4;
- (NSArray)availableIconDescriptors;
- (NSString)description;
- (NSString)originalName;
- (id)_lazilyUpdateAssociatedServiceType;
- (id)_lazilyUpdateConfigurationState;
- (id)_lazilyUpdateIcon;
- (id)_lazilyUpdateName;
- (id)_lazilyUpdateRoom;
- (id)_lazilyUpdateValueForContextType:(unint64_t)a3;
- (id)_performValidation;
- (id)accessories;
- (id)commitItem;
- (id)removeItemFromHome;
- (void)setAssociatedServiceType:(id)a3;
@end

@implementation HFServiceBuilder

- (HFServiceBuilder)initWithExistingObject:(id)a3 inHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"HFServiceBuilder.m" lineNumber:40 description:{@"%@ can only be used with existing HMServices", objc_opt_class()}];
  }

  v31.receiver = self;
  v31.super_class = HFServiceBuilder;
  v9 = [(HFItemBuilder *)&v31 initWithExistingObject:v7 inHome:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(HFServiceBuilder *)v9 service];
    v12 = [HFNamingComponents namingComponentFromService:v11];
    [(HFServiceBuilder *)v10 setNamingComponent:v12];

    v13 = [(HFServiceBuilder *)v10 originalName];
    [(HFServiceBuilder *)v10 setName:v13];

    v14 = [(HFServiceBuilder *)v10 service];
    v15 = [v14 accessory];
    v16 = [v15 name];
    [(HFServiceBuilder *)v10 setAccessoryName:v16];

    v17 = [HFRoomBuilder alloc];
    v18 = [(HFServiceBuilder *)v10 service];
    v19 = [v18 accessory];
    v20 = [v19 room];
    v21 = [(HFRoomBuilder *)v17 initWithExistingObject:v20 inHome:v8];
    [(HFServiceBuilder *)v10 setRoom:v21];

    v22 = [(HFServiceBuilder *)v10 service];
    v23 = [v22 associatedServiceType];
    [(HFServiceBuilder *)v10 setAssociatedServiceType:v23];

    v24 = [(HFServiceBuilder *)v10 service];
    v25 = [v24 hf_iconDescriptor];
    [(HFServiceBuilder *)v10 setIconDescriptor:v25];

    v26 = [(HFServiceBuilder *)v10 service];
    -[HFServiceBuilder setShowInHomeDashboard:](v10, "setShowInHomeDashboard:", [v26 hf_effectiveShowInHomeDashboard]);

    v27 = [(HFServiceBuilder *)v10 service];
    -[HFServiceBuilder setIsFavorite:](v10, "setIsFavorite:", [v27 hf_effectiveIsFavorite]);

    v28 = [(HFServiceBuilder *)v10 service];
    -[HFServiceBuilder setConfigurationState:](v10, "setConfigurationState:", [v28 configurationState]);
  }

  return v10;
}

- (NSString)originalName
{
  v2 = [(HFServiceBuilder *)self namingComponent];
  v3 = [v2 name];

  return v3;
}

- (void)setAssociatedServiceType:(id)a3
{
  v3 = a3;
  v5 = a3;
  associatedServiceType = self->_associatedServiceType;
  if (associatedServiceType != v5)
  {
    v13 = v5;
    v7 = [(NSString *)associatedServiceType isEqualToString:v5];
    v5 = v13;
    if (!v7)
    {
      objc_storeStrong(&self->_associatedServiceType, v3);
      v8 = self->_associatedServiceType;
      v9 = v8;
      if (!v8)
      {
        v3 = [(HFServiceBuilder *)self service];
        v9 = [v3 serviceType];
      }

      v10 = [(HFServiceBuilder *)self service];
      v11 = [v10 serviceSubtype];
      v12 = [HFServiceIconFactory defaultIconDescriptorForServiceType:v9 serviceSubtype:v11];
      [(HFServiceBuilder *)self setIconDescriptor:v12];

      v5 = v13;
      if (!v8)
      {

        v5 = v13;
      }
    }
  }
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFServiceBuilder *)self service];
  v4 = [v3 accessory];
  v5 = [v2 na_setWithSafeObject:v4];

  return v5;
}

- (NSArray)availableIconDescriptors
{
  v3 = [(HFServiceBuilder *)self associatedServiceType];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(HFServiceBuilder *)self service];
    v5 = [v6 hf_effectiveServiceType];
  }

  v7 = [(HFServiceBuilder *)self service];
  v8 = [v7 serviceSubtype];
  v9 = [HFServiceIconFactory allIconDescriptorsForServiceType:v5 serviceSubtype:v8];
  v10 = [v9 allObjects];

  return v10;
}

- (id)removeItemFromHome
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [(HFServiceBuilder *)self accessories];
  v5 = [v4 anyObject];

  v6 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 hf_prettyDescription];
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Removing accessory from home: %@", buf, 0xCu);
  }

  v8 = [(HFItemBuilder *)self home];
  v9 = [v3 errorOnlyCompletionHandlerAdapter];
  [v8 removeAccessory:v5 completionHandler:v9];

  objc_initWeak(buf, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __38__HFServiceBuilder_removeItemFromHome__block_invoke;
  v18[3] = &unk_277DF6F48;
  objc_copyWeak(&v20, buf);
  v10 = v5;
  v19 = v10;
  v11 = [v3 flatMap:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__HFServiceBuilder_removeItemFromHome__block_invoke_2;
  v16[3] = &unk_277DF5038;
  v12 = v10;
  v17 = v12;
  v13 = [v11 recover:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __38__HFServiceBuilder_removeItemFromHome__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) hf_prettyDescription];
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to remove accessory from home completed successfully: %@", buf, 0xCu);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __38__HFServiceBuilder_removeItemFromHome__block_invoke_11;
  v12 = &unk_277DF3810;
  v13 = WeakRetained;
  v14 = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:&v9 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __38__HFServiceBuilder_removeItemFromHome__block_invoke_11(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) home];
    [v4 home:v3 didRemoveAccessory:*(a1 + 40)];
  }
}

id __38__HFServiceBuilder_removeItemFromHome__block_invoke_2(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to remove accessory from home failed with error: %@, %@", buf, 0x16u);
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

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFServiceBuilder *)self service];

  if (v4)
  {
    v5 = [(HFServiceBuilder *)self service];
    v6 = [v5 hf_prettyDescription];
    v7 = [v3 appendObject:v6 withName:@"service"];
  }

  else
  {
    v5 = [(HFServiceBuilder *)self name];
    v8 = [v3 appendObject:v5 withName:@"name"];
  }

  v9 = [v3 build];

  return v9;
}

- (BOOL)_shouldUpdateNilNameWithRoomName
{
  v3 = [(HFServiceBuilder *)self name];

  if (v3)
  {
    return 0;
  }

  v5 = [(HFServiceBuilder *)self service];
  v6 = [v5 accessory];

  if (![v6 hf_isMediaAccessory] || (objc_msgSend(v6, "hf_isHomePod") & 1) != 0 || objc_msgSend(v6, "hf_isAppleTV"))
  {
    v4 = [v6 hf_isTelevision];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_performValidation
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v3 = [(HFItemBuilder *)self lazy_verifyPropertyIsSet:@"room"];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 chainFutures:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)commitItem
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Starting commit (%@)", buf, 0xCu);
  }

  v4 = [(HFItemBuilder *)self home];
  v5 = [v4 hf_currentUserIsAdministrator];

  if (v5)
  {
    v6 = [(HFServiceBuilder *)self _lazilyUpdateValueForContextType:2];
    v30[0] = v6;
    v7 = [(HFServiceBuilder *)self _lazilyUpdateValueForContextType:3];
    v30[1] = v7;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

    v23 = [MEMORY[0x277D2C900] combineAllFutures:v24];
    v8 = @"HFOperationEditService";
    v9 = MEMORY[0x277D2C900];
    v10 = [(HFServiceBuilder *)self _performValidation];
    v29[0] = v10;
    v11 = [(HFServiceBuilder *)self _lazilyUpdateName];
    v29[1] = v11;
    v12 = [(HFServiceBuilder *)self _lazilyUpdateRoom];
    v29[2] = v12;
    v29[3] = v23;
    v13 = [(HFServiceBuilder *)self _lazilyUpdateAssociatedServiceType];
    v29[4] = v13;
    v14 = [(HFServiceBuilder *)self _lazilyUpdateIcon];
    v29[5] = v14;
    v15 = [(HFServiceBuilder *)self _lazilyUpdateConfigurationState];
    v29[6] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:7];
    v17 = [v9 chainFutures:v16];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __30__HFServiceBuilder_commitItem__block_invoke;
    v26[3] = &unk_277DF2D30;
    v27 = v8;
    v28 = self;
    v18 = [v17 recover:v26];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __30__HFServiceBuilder_commitItem__block_invoke_2;
    v25[3] = &unk_277DF70B0;
    v25[4] = self;
    v19 = [v18 addCompletionBlock:v25];
  }

  else
  {
    v20 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Ignoring request to commit because the current user is not an administrator", buf, 2u);
    }

    v18 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

id __30__HFServiceBuilder_commitItem__block_invoke(uint64_t a1, void *a2)
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

void __30__HFServiceBuilder_commitItem__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Commit for %@ finished with error: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_lazilyUpdateName
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(HFServiceBuilder *)self _shouldUpdateNilNameWithRoomName])
  {
    v3 = [(HFServiceBuilder *)self room];
    v4 = [v3 name];
    [(HFServiceBuilder *)self setName:v4];
  }

  else
  {
    v3 = [(HFServiceBuilder *)self namingComponent];
    v4 = [(HFServiceBuilder *)self name];
    v5 = [v3 commitableNameForString:v4];
    [(HFServiceBuilder *)self setName:v5];
  }

  v6 = [(HFServiceBuilder *)self name];
  v7 = [(HFServiceBuilder *)self originalName];
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
      objc_initWeak(buf, self);
      v15 = MEMORY[0x277D2C900];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke;
      v18[3] = &unk_277DF4F68;
      objc_copyWeak(&v19, buf);
      v14 = [v15 lazyFutureWithBlock:v18];
      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
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
    v13 = [(HFServiceBuilder *)self name];
    *buf = 138412290;
    v21 = v13;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating name because it hasn't changed (%@)", buf, 0xCu);
  }

  v14 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_14:
  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained service];
    v7 = [v6 name];
    v8 = [WeakRetained name];
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Updating name from %@ to %@", buf, 0x16u);
  }

  v9 = MEMORY[0x277D2C900];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke_33;
  v17[3] = &unk_277DF4F68;
  objc_copyWeak(&v18, (a1 + 32));
  v10 = [v9 futureWithBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke_4;
  v15[3] = &unk_277DF50B0;
  v15[4] = WeakRetained;
  v11 = v3;
  v16 = v11;
  v12 = [v10 addCompletionBlock:v15];
  v13 = [v10 addFailureBlock:&__block_literal_global_194];

  objc_destroyWeak(&v18);
  v14 = *MEMORY[0x277D85DE8];
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained service];
  v6 = [v5 accessory];

  v7 = [WeakRetained service];
  v8 = [WeakRetained name];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke_2;
  v11[3] = &unk_277DFD130;
  objc_copyWeak(&v14, (a1 + 32));
  v9 = v3;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v7 updateName:v8 completionHandler:v11];

  objc_destroyWeak(&v14);
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v3)
  {
    [a1[4] finishWithError:v3];
  }

  else if ([a1[5] hf_isSingleServiceLikeAccessory] && (objc_msgSend(WeakRetained, "service"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hf_isChildService"), v5, (v6 & 1) == 0))
  {
    v7 = a1[5];
    v8 = [WeakRetained name];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke_3;
    v9[3] = &unk_277DF2D08;
    v10 = a1[4];
    [v7 updateName:v8 completionHandler:v9];
  }

  else
  {
    [a1[4] finishWithNoResult];
  }
}

uint64_t __37__HFServiceBuilder__lazilyUpdateName__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to update name finished with error: %@", buf, 0xCu);
  }

  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke_36;
  v17[3] = &unk_277DF27B8;
  v17[4] = *(a1 + 32);
  [v8 dispatchAccessoryObserverMessage:v17 sender:0];

  v9 = [*(a1 + 32) name];
  v10 = [*(a1 + 32) service];
  v11 = [v10 name];
  v12 = v9;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v12)
    {

      goto LABEL_10;
    }

    v15 = [v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v10 = [*(a1 + 32) originalName];
  [*(a1 + 32) setName:v10];
LABEL_10:

LABEL_11:
  [*(a1 + 40) finishWithResult:v5 error:v6];

  v16 = *MEMORY[0x277D85DE8];
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke_36(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) service];
    v4 = [v3 accessory];
    v5 = [*(a1 + 32) service];
    [v6 accessory:v4 didUpdateNameForService:v5];
  }
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke_2_40(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceBuilder.updateName"];
}

- (id)_lazilyUpdateValueForContextType:(unint64_t)a3
{
  v5 = 0;
  v28 = *MEMORY[0x277D85DE8];
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_10;
      }

      v6 = [(HFServiceBuilder *)self showInHomeDashboard];
      goto LABEL_9;
    }

LABEL_8:
    v6 = [(HFServiceBuilder *)self isFavorite];
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
    NSLog(&cfstr_IncludeInStatu_3.isa, a2);
LABEL_16:
    v16 = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_22;
  }

LABEL_10:
  v7 = [(HFServiceBuilder *)self service];
  v8 = [v7 accessory];
  v9 = [v8 home];
  v10 = [v9 accessories];
  v11 = [(HFServiceBuilder *)self service];
  v12 = [v11 accessory];
  v13 = [v10 containsObject:v12];

  if ((v13 & 1) == 0)
  {
    v15 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = a3;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating state for context type %lu because accessory was removed from the home", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v14 = [(HFServiceBuilder *)self service];
  if (v5 == [v14 hf_isOnForContextType:a3])
  {
    v17 = [(HFServiceBuilder *)self service];
    v18 = [v17 hf_hasSetForContextType:a3];

    if (v18)
    {
      v19 = HFLogForCategory(0x2BuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v25 = a3;
        v26 = 1024;
        v27 = v5;
        _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating state for context type %lu because it hasn't changed (currentState = %{BOOL}d)", buf, 0x12u);
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke;
  v22[3] = &unk_277DF7088;
  v22[4] = self;
  v22[5] = a3;
  v23 = v5;
  v16 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v22];
LABEL_22:
  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

void __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) service];
    v6 = [*(a1 + 32) service];
    v7 = [v6 accessory];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138413058;
    v38 = v5;
    v39 = 2112;
    v40 = v7;
    v41 = 2048;
    v42 = v8;
    v43 = 1024;
    v44 = v9;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Updating application data to set state for service %@, accessory: %@, context type %lu, currentState: %{BOOL}d)", buf, 0x26u);
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [*(a1 + 32) service];
  v12 = [v11 accessory];
  v13 = [v12 hf_isHomePod];

  if (!v13 || ([*(a1 + 32) service], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "accessory"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hf_hasSetForContextType:", *(a1 + 40)), v15, v14, v16))
  {
    v17 = [*(a1 + 32) service];
    v18 = [v17 hf_updateValue:*(a1 + 48) forContextType:*(a1 + 40)];

    [v10 addObject:v18];
  }

  v19 = [*(a1 + 32) service];
  v20 = [v19 accessory];
  if ([v20 hf_showAsIndividualServices])
  {
    goto LABEL_11;
  }

  v21 = [*(a1 + 32) service];
  if (([v21 hf_shouldBeOnForContextType:*(a1 + 40)] & 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  v22 = [*(a1 + 32) service];
  v23 = [v22 accessory];

  if (v23)
  {
    v24 = [*(a1 + 32) service];
    v25 = [v24 accessory];
    v19 = [v25 hf_updateValue:*(a1 + 48) forContextType:*(a1 + 40)];

    [v10 addObject:v19];
LABEL_12:
  }

  v26 = [MEMORY[0x277D2C900] chainFutures:v10];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke_49;
  v34 = &unk_277DF50B0;
  v35 = *(a1 + 32);
  v36 = v3;
  v27 = v3;
  v28 = [v26 addCompletionBlock:&v31];
  v29 = [v26 addFailureBlock:{&__block_literal_global_54_5, v31, v32, v33, v34, v35}];

  v30 = *MEMORY[0x277D85DE8];
}

void __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to update application data for setting favorite finished with error: %@", buf, 0xCu);
  }

  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke_50;
  v10[3] = &unk_277DF27B8;
  v10[4] = *(a1 + 32);
  [v8 dispatchAccessoryObserverMessage:v10 sender:0];

  [*(a1 + 40) finishWithResult:v6 error:v5];
  v9 = *MEMORY[0x277D85DE8];
}

void __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke_50(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) service];
    v4 = [v3 accessory];
    v5 = [*(a1 + 32) service];
    [v6 accessory:v4 didUpdateApplicationDataForService:v5];
  }
}

void __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceBuilder.updateFavorite"];
}

- (id)_lazilyUpdateRoom
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HFServiceBuilder *)self service];
  v4 = [v3 accessory];

  v5 = [v4 room];
  v6 = [v5 uniqueIdentifier];
  v7 = [(HFServiceBuilder *)self room];
  v8 = [v7 room];
  v9 = [v8 uniqueIdentifier];
  v10 = [v6 isEqual:v9];

  if (v10)
  {
    v11 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HFServiceBuilder *)self room];
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating room because it hasn't changed (%@)", buf, 0xCu);
    }

    v13 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __37__HFServiceBuilder__lazilyUpdateRoom__block_invoke;
    v21 = &unk_277DF28D8;
    v22 = self;
    v23 = v4;
    v13 = [v14 lazyFutureWithBlock:&v18];
    v15 = [v13 addCompletionBlock:{&__block_literal_global_61_5, v18, v19, v20, v21, v22}];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

void __37__HFServiceBuilder__lazilyUpdateRoom__block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Committing HFRoomBuilder to change room from %@ to %@", buf, 0x16u);
  }

  v14 = [*(a1 + 32) room];
  [v14 addAccessory:*(a1 + 40)];

  v15 = [*(a1 + 32) room];
  v16 = [v15 commitItem];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __37__HFServiceBuilder__lazilyUpdateRoom__block_invoke_58;
  v20[3] = &unk_277DF7038;
  v22 = v8;
  v20[4] = *(a1 + 32);
  v21 = v3;
  v17 = v3;
  v18 = [v16 addCompletionBlock:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __37__HFServiceBuilder__lazilyUpdateRoom__block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 48) == 1)
  {
    v6 = [*(a1 + 32) originalName];
    [*(a1 + 32) setName:v6];
  }

  [*(a1 + 40) finishWithResult:v7 error:v5];
}

void __37__HFServiceBuilder__lazilyUpdateRoom__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Room builder commit finished with error: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_lazilyUpdateIcon
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HFServiceBuilder *)self service];
  v4 = [v3 hf_iconDescriptor];
  v5 = [v4 identifier];

  v6 = [(HFServiceBuilder *)self iconDescriptor];
  v7 = [v6 identifier];
  v8 = [v5 isEqualToString:v7];

  if (v8)
  {
    v9 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(HFServiceBuilder *)self iconDescriptor];
      v11 = [v10 identifier];
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating icon because it hasn't changed (%@)", buf, 0xCu);
    }

    v12 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke;
    v16[3] = &unk_277DF29A0;
    v16[4] = self;
    v12 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v16];
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) iconDescriptor];
    v6 = [v5 identifier];
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Updating application data to set icon (%@)", buf, 0xCu);
  }

  v7 = [*(a1 + 32) service];
  v8 = [*(a1 + 32) iconDescriptor];
  v9 = [v7 hf_updateIconDescriptor:v8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_62;
  v16[3] = &unk_277DF5038;
  v16[4] = *(a1 + 32);
  v10 = [v9 recover:v16];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_2;
  v14[3] = &unk_277DF50B0;
  v14[4] = *(a1 + 32);
  v15 = v3;
  v11 = v3;
  v12 = [v10 addCompletionBlock:v14];

  v13 = *MEMORY[0x277D85DE8];
}

id __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_62(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 hf_isHMErrorWithCode:3] & 1) != 0 || objc_msgSend(v3, "hf_isHFErrorWithCode:", 33))
  {
    v4 = [*(a1 + 32) service];
    v5 = [HFServiceIconFactory defaultIconDescriptorForService:v4];

    v6 = [*(a1 + 32) service];
    v7 = [v6 hf_updateIconDescriptor:v5];
  }

  else
  {
    v8 = +[HFErrorHandler sharedHandler];
    [v8 logError:v3 operationDescription:@"HFServiceBuilder.updateIcon"];

    v7 = [MEMORY[0x277D2C900] futureWithError:v3];
  }

  return v7;
}

void __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) iconDescriptor];
    v9 = [v8 identifier];
    *buf = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to update application data for setting icon (%@) finished with error: %@", buf, 0x16u);
  }

  v10 = +[HFHomeKitDispatcher sharedDispatcher];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_66;
  v12[3] = &unk_277DF27B8;
  v12[4] = *(a1 + 32);
  [v10 dispatchAccessoryObserverMessage:v12 sender:0];

  [*(a1 + 40) finishWithResult:v6 error:v5];
  v11 = *MEMORY[0x277D85DE8];
}

void __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_66(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) service];
    v4 = [v3 accessory];
    v5 = [*(a1 + 32) service];
    [v6 accessory:v4 didUpdateApplicationDataForService:v5];
  }
}

- (id)_lazilyUpdateAssociatedServiceType
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HFServiceBuilder *)self associatedServiceType];
  v4 = [(HFServiceBuilder *)self service];
  v5 = [v4 serviceType];
  v6 = [(__CFString *)v3 isEqualToString:v5];

  if (v6)
  {

    v3 = 0;
  }

  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = &stru_2824B1A78;
  }

  v8 = [(HFServiceBuilder *)self service];
  v9 = [v8 associatedServiceType];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_2824B1A78;
  }

  v12 = [(__CFString *)v7 isEqualToString:v11];

  if (v12)
  {
    v13 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating associated service type because it hasn't changed (%@)", buf, 0xCu);
    }

    v14 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v15 = MEMORY[0x277D2C900];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke;
    v18[3] = &unk_277DF28D8;
    v19 = v3;
    v20 = self;
    v14 = [v15 lazyFutureWithBlock:v18];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

void __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke(int8x16_t *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[2].i64[0];
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Updating associated service type (%@)", buf, 0xCu);
  }

  v6 = MEMORY[0x277D2C900];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_67;
  v20[3] = &unk_277DF4150;
  v15 = a1[2];
  v7 = v15.i64[0];
  v21 = vextq_s8(v15, v15, 8uLL);
  v8 = [v6 futureWithErrorOnlyHandlerAdapterBlock:v20];
  v9 = [v8 addFailureBlock:&__block_literal_global_70_6];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_3;
  v16[3] = &unk_277DF3180;
  v10 = a1[2].i64[0];
  v11 = a1[2].i64[1];
  v17 = v10;
  v18 = v11;
  v19 = v3;
  v12 = v3;
  v13 = [v8 addCompletionBlock:v16];

  v14 = *MEMORY[0x277D85DE8];
}

void __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_67(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 service];
  [v5 updateAssociatedServiceType:*(a1 + 40) completionHandler:v4];
}

void __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceBuilder.updateAssociatedServiceType"];
}

void __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to update associated service type (%@) finished with error: %@", buf, 0x16u);
  }

  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_74;
  v11[3] = &unk_277DF27B8;
  v11[4] = *(a1 + 40);
  [v9 dispatchAccessoryObserverMessage:v11 sender:0];

  [*(a1 + 48) finishWithResult:v6 error:v5];
  v10 = *MEMORY[0x277D85DE8];
}

void __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_74(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) service];
    v4 = [v3 accessory];
    v5 = [*(a1 + 32) service];
    [v6 accessory:v4 didUpdateAssociatedServiceTypeForService:v5];
  }
}

- (id)_lazilyUpdateConfigurationState
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HFServiceBuilder *)self configurationState];
  v4 = [(HFServiceBuilder *)self service];
  v5 = [v4 configurationState];

  if (v3 == v5)
  {
    v6 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromConfigurationState(v3);
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating configuration state because it hasn't changed (%@)", buf, 0xCu);
    }

    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke;
    v11[3] = &unk_277DF2770;
    v11[4] = self;
    v11[5] = v3;
    v8 = [MEMORY[0x277D2C900] lazyFutureWithBlock:v11];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_2;
  v14[3] = &unk_277DF46B0;
  v4 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v14[5] = v4;
  v5 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v14];
  v6 = [v5 addFailureBlock:&__block_literal_global_78_3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_4;
  v11[3] = &unk_277DF7378;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v3;
  v13 = v7;
  v11[4] = v8;
  v9 = v3;
  v10 = [v5 addCompletionBlock:v11];
}

void __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 service];
  [v5 updateConfigurationState:*(a1 + 40) completionHandler:v4];
}

void __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceBuilder.updateConfigurationState"];
}

void __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromConfigurationState(*(a1 + 48));
    *buf = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to update configuration state (%@) finished with error: %@", buf, 0x16u);
  }

  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_82;
  v11[3] = &unk_277DF27B8;
  v11[4] = *(a1 + 32);
  [v9 dispatchAccessoryObserverMessage:v11 sender:0];

  [*(a1 + 40) finishWithResult:v6 error:v5];
  v10 = *MEMORY[0x277D85DE8];
}

void __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_82(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) service];
    v4 = [v3 accessory];
    v5 = [*(a1 + 32) service];
    [v6 accessory:v4 didUpdateConfigurationStateForService:v5];
  }
}

@end