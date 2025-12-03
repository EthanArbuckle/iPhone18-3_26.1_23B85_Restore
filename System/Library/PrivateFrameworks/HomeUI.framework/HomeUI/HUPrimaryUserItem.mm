@interface HUPrimaryUserItem
- (HUPrimaryUserItem)initWithHome:(id)home mediaProfileContainer:(id)container user:(id)user;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUPrimaryUserItem

- (HUPrimaryUserItem)initWithHome:(id)home mediaProfileContainer:(id)container user:(id)user
{
  homeCopy = home;
  containerCopy = container;
  userCopy = user;
  if (homeCopy)
  {
    if (containerCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUPrimaryUserItem.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];

    if (userCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUPrimaryUserItem.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"home"}];

  if (!containerCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (userCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"HUPrimaryUserItem.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"user"}];

LABEL_4:
  v12 = objc_alloc(MEMORY[0x277CBEBD0]);
  v13 = [v12 initWithSuiteName:*MEMORY[0x277D139F8]];
  v19.receiver = self;
  v19.super_class = HUPrimaryUserItem;
  v14 = [(HFUserItem *)&v19 initWithHome:homeCopy user:userCopy nameStyle:2 userDefaults:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_mediaProfileContainer, container);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  home = [(HFUserItem *)self home];
  mediaProfileContainer = [(HUPrimaryUserItem *)self mediaProfileContainer];
  user = [(HFUserItem *)self user];
  v8 = [v4 initWithHome:home mediaProfileContainer:mediaProfileContainer user:user];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HUPrimaryUserItem;
  v5 = [(HFUserItem *)&v10 _subclass_updateWithOptions:optionsCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HUPrimaryUserItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DB77C8;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __49__HUPrimaryUserItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = [WeakRetained mediaProfileContainer];
  v7 = [v6 hf_preferredMediaUser];

  v8 = [WeakRetained user];
  v9 = [v8 uniqueIdentifier];
  v10 = [v7 uniqueIdentifier];
  v11 = [v9 hmf_isEqualToUUID:v10];

  v12 = [WeakRetained mediaProfileContainer];
  v13 = [v12 hf_preferredUserSelectionType];

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v26[0] = 67109376;
    v26[1] = v11;
    v27 = 1024;
    v28 = v13 == 1;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Is this the primary user?: %{BOOL}d isSelectionTypeHomeUser?: %{BOOL}d", v26, 0xEu);
  }

  if (v13 == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  [v5 setObject:v16 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  v17 = *MEMORY[0x277D13DA8];
  v18 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13DA8]];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 mutableCopy];
  }

  else
  {
    v21 = [MEMORY[0x277CBEB98] set];
    v20 = [v21 mutableCopy];
  }

  v22 = [WeakRetained mediaProfileContainer];
  v23 = [v22 hf_dependentHomeKitObjectsForDownstreamItems];
  [v20 unionSet:v23];

  [v5 setObject:v20 forKeyedSubscript:v17];
  v24 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v24;
}

@end