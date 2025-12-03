@interface HFMediaAccessControlEditorItemModule
+ (id)_descriptionFooterTextForAccessControlDescriptor:(id)descriptor hasNonPeerToPeerMediaAccessories:(BOOL)accessories;
- (BOOL)_hasNonPeerToPeerMediaAccessories;
- (BOOL)containsItem:(id)item;
- (HFMediaAccessControlEditorItemModule)initWithItemUpdater:(id)updater;
- (HFMediaAccessControlEditorItemModule)initWithItemUpdater:(id)updater home:(id)home;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (id)updateAccessControlDescriptor:(id)descriptor;
- (void)home:(id)home didUpdateMediaPassword:(id)password;
- (void)home:(id)home didUpdateMinimumMediaUserPrivilege:(int64_t)privilege;
@end

@implementation HFMediaAccessControlEditorItemModule

- (HFMediaAccessControlEditorItemModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaAccessControlEditorItemModule.m" lineNumber:28 description:{@"%s is unavailable; use %@ instead", "-[HFMediaAccessControlEditorItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HFMediaAccessControlEditorItemModule)initWithItemUpdater:(id)updater home:(id)home
{
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HFMediaAccessControlEditorItemModule;
  v8 = [(HFItemModule *)&v14 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, home);
    v10 = [[HFMediaAccessControlEditorItemProvider alloc] initWithHome:homeCopy];
    accessControlEditorItemProvider = v9->_accessControlEditorItemProvider;
    v9->_accessControlEditorItemProvider = v10;

    v12 = +[HFHomeKitDispatcher sharedDispatcher];
    [v12 addHomeObserver:v9];
  }

  return v9;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (itemProviders)
  {
    v3 = itemProviders;
  }

  else
  {
    v5 = objc_opt_new();
    accessControlEditorItemProvider = [(HFMediaAccessControlEditorItemModule *)self accessControlEditorItemProvider];
    [(NSSet *)v5 na_safeAddObject:accessControlEditorItemProvider];

    v7 = self->_itemProviders;
    self->_itemProviders = v5;
    v8 = v5;

    v3 = self->_itemProviders;
  }

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v44[2] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = MEMORY[0x277CBEB98];
  accessControlEditorItemProvider = [(HFMediaAccessControlEditorItemModule *)self accessControlEditorItemProvider];
  accessControlItems = [accessControlEditorItemProvider accessControlItems];
  v9 = [v6 setWithArray:accessControlItems];

  v10 = MEMORY[0x277CBEB98];
  accessControlEditorItemProvider2 = [(HFMediaAccessControlEditorItemModule *)self accessControlEditorItemProvider];
  passwordEnableItem = [accessControlEditorItemProvider2 passwordEnableItem];
  accessControlEditorItemProvider3 = [(HFMediaAccessControlEditorItemModule *)self accessControlEditorItemProvider];
  passwordItem = [accessControlEditorItemProvider3 passwordItem];
  v15 = [v10 setWithObjects:{passwordEnableItem, passwordItem, 0}];

  v16 = [v15 intersectsSet:itemsCopy];
  v39 = v9;
  v17 = 0;
  if ([v9 intersectsSet:itemsCopy])
  {
    v17 = [(HFItemSection *)[HFMutableItemSection alloc] initWithIdentifier:@"ACCESS_CONTROL_SECTION"];
    accessControlEditorItemProvider4 = [(HFMediaAccessControlEditorItemModule *)self accessControlEditorItemProvider];
    accessControlItems2 = [accessControlEditorItemProvider4 accessControlItems];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __72__HFMediaAccessControlEditorItemModule_buildSectionsWithDisplayedItems___block_invoke;
    v42[3] = &unk_277DF4B70;
    v43 = itemsCopy;
    [accessControlItems2 na_filter:v42];
    v27 = v26 = v5;
    [(HFItemSection *)v17 setItems:v27];

    v5 = v26;
    v28 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessControlItemDisplayTitle", @"HFMediaAccessControlItemDisplayTitle", 1);
    [(HFItemSection *)v17 setHeaderTitle:v28];

    [v26 addObject:v17];
    if (!v16)
    {
LABEL_3:
      if (!v17)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  v38 = [(HFItemSection *)[HFMutableItemSection alloc] initWithIdentifier:@"ACCESS_CONTROL_PASSWORD_SECTION"];
  accessControlEditorItemProvider5 = [(HFMediaAccessControlEditorItemModule *)self accessControlEditorItemProvider];
  [accessControlEditorItemProvider5 passwordEnableItem];
  v30 = itemsCopy;
  v31 = v15;
  v33 = v32 = v5;
  v44[0] = v33;
  accessControlEditorItemProvider6 = [(HFMediaAccessControlEditorItemModule *)self accessControlEditorItemProvider];
  passwordItem2 = [accessControlEditorItemProvider6 passwordItem];
  v44[1] = passwordItem2;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];

  v5 = v32;
  v15 = v31;
  itemsCopy = v30;

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __72__HFMediaAccessControlEditorItemModule_buildSectionsWithDisplayedItems___block_invoke_2;
  v40[3] = &unk_277DF4B70;
  v41 = v30;
  v37 = [v36 na_filter:v40];
  [(HFItemSection *)v38 setItems:v37];

  [v5 addObject:v38];
  v17 = v38;
  if (v38)
  {
LABEL_4:
    v18 = objc_opt_class();
    home = [(HFMediaAccessControlEditorItemModule *)self home];
    hf_accessControlDescriptor = [home hf_accessControlDescriptor];
    v21 = [v18 _descriptionFooterTextForAccessControlDescriptor:hf_accessControlDescriptor hasNonPeerToPeerMediaAccessories:{-[HFMediaAccessControlEditorItemModule _hasNonPeerToPeerMediaAccessories](self, "_hasNonPeerToPeerMediaAccessories")}];
    [(HFItemSection *)v17 setFooterTitle:v21];
  }

LABEL_5:

  v22 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)containsItem:(id)item
{
  itemCopy = item;
  itemProviders = [(HFMediaAccessControlEditorItemModule *)self itemProviders];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HFMediaAccessControlEditorItemModule_containsItem___block_invoke;
  v9[3] = &unk_277DF6898;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [itemProviders na_any:v9];

  return v7;
}

uint64_t __53__HFMediaAccessControlEditorItemModule_containsItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (id)updateAccessControlDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  itemProviders = [(HFMediaAccessControlEditorItemModule *)self itemProviders];
  v7 = [HFItemUpdateRequest requestToReloadItemProviders:itemProviders senderSelector:a2];

  objc_initWeak(&location, self);
  home = [(HFMediaAccessControlEditorItemModule *)self home];
  v9 = [home hf_updateAccessControlDescriptor:descriptorCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HFMediaAccessControlEditorItemModule_updateAccessControlDescriptor___block_invoke;
  v13[3] = &unk_277DF68C0;
  objc_copyWeak(&v15, &location);
  v10 = v7;
  v14 = v10;
  v11 = [v9 addCompletionBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

void __70__HFMediaAccessControlEditorItemModule_updateAccessControlDescriptor___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    v5 = +[HFErrorHandler sharedHandler];
    [v5 handleError:v4];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained itemUpdater];
  v7 = [v6 performItemUpdateRequest:*(a1 + 32)];
}

- (BOOL)_hasNonPeerToPeerMediaAccessories
{
  home = [(HFMediaAccessControlEditorItemModule *)self home];
  accessories = [home accessories];
  v4 = [accessories na_any:&__block_literal_global_51];

  return v4;
}

+ (id)_descriptionFooterTextForAccessControlDescriptor:(id)descriptor hasNonPeerToPeerMediaAccessories:(BOOL)accessories
{
  accessoriesCopy = accessories;
  descriptorCopy = descriptor;
  v8 = objc_opt_new();
  [v8 addObject:@"HFMediaAccessControlFooter"];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __122__HFMediaAccessControlEditorItemModule__descriptionFooterTextForAccessControlDescriptor_hasNonPeerToPeerMediaAccessories___block_invoke;
  v18[3] = &unk_277DF68E8;
  v9 = descriptorCopy;
  v19 = v9;
  v20 = a2;
  selfCopy = self;
  v10 = __122__HFMediaAccessControlEditorItemModule__descriptionFooterTextForAccessControlDescriptor_hasNonPeerToPeerMediaAccessories___block_invoke(v18);
  [v8 addObject:v10];

  if ([v9 accessSupportsPassword])
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = v9;
    if ([v17 accessRequiresPassword])
    {
      v11 = @"WithPassword";
    }

    else
    {
      v11 = @"NoPassword";
    }

    [v8 addObject:v11];
  }

  if (![v9 access] && accessoriesCopy)
  {
    [v8 addObject:@"WithNonP2PAccessories"];
  }

  v12 = [v8 componentsJoinedByString:@"."];
  v13 = HFLocalizedWiFiStringKeyForKey(v12);
  v14 = _HFLocalizedStringWithDefaultValue(v13, 0, 0);

  if (!v14)
  {
    v14 = _HFLocalizedStringWithDefaultValue(v12, 0, 0);
  }

  return v14;
}

__CFString *__122__HFMediaAccessControlEditorItemModule__descriptionFooterTextForAccessControlDescriptor_hasNonPeerToPeerMediaAccessories___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) access];
  if (v2 == 3)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 48) file:@"HFMediaAccessControlEditorItemModule.m" lineNumber:147 description:@"This enum should never be hit."];

    return &stru_2824B1A78;
  }

  else
  {
    v3 = @"Everyone";
    if (v2 == 1)
    {
      v3 = @"SameNetwork";
    }

    if (v2 == 2)
    {
      return @"HomeUsersOnly";
    }

    else
    {
      return v3;
    }
  }
}

__CFString *__122__HFMediaAccessControlEditorItemModule__descriptionFooterTextForAccessControlDescriptor_hasNonPeerToPeerMediaAccessories___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) accessRequiresPassword])
  {
    return @"WithPassword";
  }

  else
  {
    return @"NoPassword";
  }
}

- (void)home:(id)home didUpdateMinimumMediaUserPrivilege:(int64_t)privilege
{
  v6 = [(HFMediaAccessControlEditorItemModule *)self itemProviders:home];
  v9 = [HFItemUpdateRequest requestToReloadItemProviders:v6 senderSelector:a2];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v8 = [itemUpdater performItemUpdateRequest:v9];
}

- (void)home:(id)home didUpdateMediaPassword:(id)password
{
  v6 = MEMORY[0x277CBEB98];
  v7 = [(HFMediaAccessControlEditorItemModule *)self accessControlEditorItemProvider:home];
  passwordItem = [v7 passwordItem];
  accessControlEditorItemProvider = [(HFMediaAccessControlEditorItemModule *)self accessControlEditorItemProvider];
  passwordEnableItem = [accessControlEditorItemProvider passwordEnableItem];
  v11 = [v6 setWithObjects:{passwordItem, passwordEnableItem, 0}];
  v14 = [HFItemUpdateRequest requestToUpdateItems:v11 senderSelector:a2];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v13 = [itemUpdater performItemUpdateRequest:v14];
}

@end