@interface HFHomePodAlarmItemModule
- (HFHomePodAlarmItemModule)initWithItemUpdater:(id)updater mediaProfileContainer:(id)container;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)mobileTimerAdapterForAlarmItem:(id)item;
- (id)mobileTimerAdapterForMediaProfile:(id)profile;
- (void)mobileTimerAdapter:(id)adapter didUpdateAlarms:(id)alarms;
- (void)registerForExternalUpdates;
- (void)unregisterForExternalUpdates;
@end

@implementation HFHomePodAlarmItemModule

- (HFHomePodAlarmItemModule)initWithItemUpdater:(id)updater mediaProfileContainer:(id)container
{
  updaterCopy = updater;
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomePodAlarmItemModule.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v17.receiver = self;
  v17.super_class = HFHomePodAlarmItemModule;
  v9 = [(HFItemModule *)&v17 initWithItemUpdater:updaterCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProfileContainer, container);
    v11 = [MEMORY[0x277CBEB58] set];
    v12 = [[HFHomePodAlarmItemProvider alloc] initWithMediaProfileContainer:containerCopy];
    v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
    itemProviders = v10->_itemProviders;
    v10->_itemProviders = v13;
  }

  return v10;
}

- (id)mobileTimerAdapterForAlarmItem:(id)item
{
  v19 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  itemProviders = [(HFHomePodAlarmItemModule *)self itemProviders];
  mobileTimerAdapter = [itemProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (mobileTimerAdapter)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != mobileTimerAdapter; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(itemProviders);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        items = [v9 items];
        v11 = [items containsObject:itemCopy];

        if (v11)
        {
          mobileTimerAdapter = [v9 mobileTimerAdapter];
          goto LABEL_11;
        }
      }

      mobileTimerAdapter = [itemProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (mobileTimerAdapter)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return mobileTimerAdapter;
}

- (id)mobileTimerAdapterForMediaProfile:(id)profile
{
  v20 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  itemProviders = [(HFHomePodAlarmItemModule *)self itemProviders];
  mobileTimerAdapter = [itemProviders countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (mobileTimerAdapter)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != mobileTimerAdapter; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(itemProviders);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        mediaProfileContainer = [v9 mediaProfileContainer];
        mediaProfiles = [mediaProfileContainer mediaProfiles];
        v12 = [mediaProfiles containsObject:profileCopy];

        if (v12)
        {
          mobileTimerAdapter = [v9 mobileTimerAdapter];
          goto LABEL_11;
        }
      }

      mobileTimerAdapter = [itemProviders countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (mobileTimerAdapter)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return mobileTimerAdapter;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v59 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  mediaProfileContainer = [(HFHomePodAlarmItemModule *)self mediaProfileContainer];
  settings = [mediaProfileContainer settings];
  isControllable = [settings isControllable];

  if (isControllable)
  {
    v6 = 0;
  }

  else
  {
    hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
    hf_siriEndpointProfile = [hf_backingAccessory hf_siriEndpointProfile];
    v6 = hf_siriEndpointProfile == 0;
  }

  v9 = [itemsCopy count];
  v10 = MEMORY[0x277CBEBF8];
  if (v9 && !v6)
  {
    v40 = mediaProfileContainer;
    v10 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [(HFHomePodAlarmItemModule *)self itemProviders];
    v45 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (!v45)
    {
      goto LABEL_29;
    }

    v42 = *v53;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v53 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v11;
        v12 = *(*(&v52 + 1) + 8 * v11);
        itemProviders = [(HFHomePodAlarmItemModule *)self itemProviders];
        v14 = [itemProviders count];

        v47 = v12;
        items = [v12 items];
        v16 = [items na_setByIntersectingWithSet:itemsCopy];
        allObjects = [v16 allObjects];
        v18 = [allObjects sortedArrayUsingSelector:sel_compare_];

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = v14 > 1;
          v23 = *v49;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v49 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v48 + 1) + 8 * i);
              v26 = objc_opt_class();
              v27 = v25;
              if (!v27)
              {
                goto LABEL_22;
              }

              if (objc_opt_isKindOfClass())
              {
                v28 = v27;
              }

              else
              {
                v28 = 0;
              }

              v29 = v27;
              if (!v28)
              {
                currentHandler = [MEMORY[0x277CCA890] currentHandler];
                v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
                [currentHandler handleFailureInFunction:v31 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v26, objc_opt_class()}];

LABEL_22:
                v29 = 0;
              }

              v32 = [HFMutableItemSection alloc];
              v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%lu", objc_msgSend(v29, "hash")];
              v34 = [(HFItemSection *)v32 initWithIdentifier:v33];

              if (v22)
              {
                mediaProfileContainer2 = [v47 mediaProfileContainer];
                hf_displayName = [mediaProfileContainer2 hf_displayName];
                [(HFItemSection *)v34 setHeaderTitle:hf_displayName];
              }

              v56 = v27;
              v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
              [(HFItemSection *)v34 setItems:v37];

              [v10 addObject:v34];
              v22 = 0;
            }

            v21 = [v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
            v22 = 0;
          }

          while (v21);
        }

        v11 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      if (!v45)
      {
LABEL_29:

        mediaProfileContainer = v40;
        break;
      }
    }
  }

  v38 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)mobileTimerAdapter:(id)adapter didUpdateAlarms:(id)alarms
{
  v9 = [(HFItemModule *)self itemUpdater:adapter];
  itemProviders = [(HFHomePodAlarmItemModule *)self itemProviders];
  v7 = [HFItemUpdateRequest requestToReloadItemProviders:itemProviders senderSelector:a2];
  v8 = [v9 performItemUpdateRequest:v7];
}

- (void)registerForExternalUpdates
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemProviders = [(HFHomePodAlarmItemModule *)self itemProviders];
  v4 = [itemProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(itemProviders);
        }

        mobileTimerAdapter = [*(*(&v10 + 1) + 8 * v7) mobileTimerAdapter];
        [mobileTimerAdapter addObserver:self];

        ++v7;
      }

      while (v5 != v7);
      v5 = [itemProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForExternalUpdates
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  itemProviders = [(HFHomePodAlarmItemModule *)self itemProviders];
  v4 = [itemProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(itemProviders);
        }

        mobileTimerAdapter = [*(*(&v10 + 1) + 8 * v7) mobileTimerAdapter];
        [mobileTimerAdapter removeObserver:self];

        ++v7;
      }

      while (v5 != v7);
      v5 = [itemProviders countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end