@interface HUMediaDestinationItem
- (HUMediaDestinationItem)init;
- (HUMediaDestinationItem)initWithDestination:(id)destination withModule:(id)module;
- (id)_subclass_updateWithOptions:(id)options;
- (id)iconForAudioDestination:(id)destination;
@end

@implementation HUMediaDestinationItem

- (HUMediaDestinationItem)initWithDestination:(id)destination withModule:(id)module
{
  destinationCopy = destination;
  moduleCopy = module;
  v12.receiver = self;
  v12.super_class = HUMediaDestinationItem;
  v9 = [(HUMediaDestinationItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeTheaterAudioItemModule, module);
    objc_storeStrong(&v10->_thisDestination, destination);
  }

  return v10;
}

- (HUMediaDestinationItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithDestination_withModule_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUMediaDestinationItem.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUMediaDestinationItem init]", v5}];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D2C900];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HUMediaDestinationItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DBF160;
  objc_copyWeak(v10, &location);
  v10[1] = a2;
  v7 = [v6 futureWithBlock:v9];
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);

  return v7;
}

void __54__HUMediaDestinationItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_alloc_init(MEMORY[0x277D14858]);
  v6 = [WeakRetained homeTheaterAudioItemModule];
  v7 = [v6 mediaProfileContainer];
  v8 = [v7 hf_backingAccessory];
  v9 = [v8 audioDestinationController];
  v10 = [v9 destination];

  v11 = [WeakRetained thisDestination];

  if (v11)
  {
    v12 = [WeakRetained homeTheaterAudioItemModule];
    v13 = [v12 selectedUncommittedItem];

    if (v13)
    {
      v14 = [WeakRetained homeTheaterAudioItemModule];
      v15 = [v14 selectedUncommittedItem];
      v16 = [v15 isEqual:WeakRetained];
    }

    else
    {
      v14 = [v10 audioDestinationIdentifier];
      v15 = [WeakRetained thisDestination];
      v17 = [v15 audioDestinationIdentifier];
      v16 = [v14 isEqualToString:v17];
    }
  }

  else
  {
    v16 = v10 == 0;
  }

  v18 = [WeakRetained homeTheaterAudioItemModule];
  v19 = [v18 tappedDestinationIdentifier];

  if (v19)
  {
    v20 = [WeakRetained thisDestination];

    v21 = [WeakRetained homeTheaterAudioItemModule];
    v22 = [v21 tappedDestinationIdentifier];
    v23 = v22;
    if (v20)
    {
      [WeakRetained thisDestination];
      v51 = v3;
      v25 = v24 = v10;
      [v25 audioDestinationIdentifier];
      v26 = v5;
      v27 = v16;
      v28 = v16 = a1;
      v29 = [v23 isEqualToString:v28];

      a1 = v16;
      LODWORD(v16) = v27;
      v5 = v26;

      v10 = v24;
      v3 = v51;
    }

    else
    {
      v29 = [v22 isEqualToString:@"kIdentifierStringForBuiltIn"];
    }

    v16 = (v29 ^ 1) & v16;
  }

  else
  {
    v29 = 0;
  }

  v30 = HFLogForCategory();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v45 = NSStringFromSelector(*(a1 + 40));
    v50 = [WeakRetained thisDestination];
    [v50 audioDestinationIdentifier];
    v46 = v52 = v10;
    v49 = [WeakRetained homeTheaterAudioItemModule];
    v47 = [v49 tappedDestinationIdentifier];
    v48 = [v52 audioDestinationIdentifier];
    *buf = 138413826;
    v54 = WeakRetained;
    v55 = 2112;
    v56 = v45;
    v57 = 2112;
    v58 = v46;
    v59 = 2112;
    v60 = v47;
    v61 = 2112;
    v62 = v48;
    v63 = 1024;
    v64 = v16;
    v65 = 1024;
    v66 = v29;
    _os_log_debug_impl(&dword_20CEB6000, v30, OS_LOG_TYPE_DEBUG, "%@:%@: self.thisDestination: %@ tappedDestinationIdentifier: %@ selectedDestination: %@... isSelected = %{BOOL}d, showSpinner = %{BOOL}d", buf, 0x40u);

    v10 = v52;
  }

  v31 = [WeakRetained thisDestination];

  if (v31)
  {
    v32 = [WeakRetained thisDestination];
    v33 = [v32 audioDestinationName];
    [v5 setObject:v33 forKeyedSubscript:*MEMORY[0x277D13F60]];

    v34 = [WeakRetained thisDestination];
    v35 = [v34 audioDestinationIdentifier];
    [v5 setObject:v35 forKeyedSubscript:*MEMORY[0x277D13FF8]];
  }

  else
  {
    v36 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSettings_DefaultOutput", @"HUHomeTheaterSettings_DefaultOutput", 1);
    [v5 setObject:v36 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v5 setObject:@"kIdentifierStringForBuiltIn" forKeyedSubscript:*MEMORY[0x277D13FF8]];
  }

  v37 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  [v5 setObject:v37 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  v38 = [MEMORY[0x277CCABB0] numberWithBool:v29];
  [v5 setObject:v38 forKeyedSubscript:*MEMORY[0x277D140F0]];

  v39 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v5 setObject:v39 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v40 = [WeakRetained thisDestination];

  if (v40)
  {
    v41 = [WeakRetained thisDestination];
    v42 = [WeakRetained iconForAudioDestination:v41];

    if (v42)
    {
      [v5 setObject:v42 forKeyedSubscript:*MEMORY[0x277D13E88]];
    }
  }

  else
  {
    v43 = objc_alloc(MEMORY[0x277D14728]);
    v42 = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
    v44 = [v43 initWithSystemImageNamed:@"tv.and.hifispeaker.fill" configuration:v42];
    [v5 setObject:v44 forKeyedSubscript:*MEMORY[0x277D13E88]];
  }

  [v3 finishWithResult:v5];
}

- (id)iconForAudioDestination:(id)destination
{
  destinationCopy = destination;
  objc_opt_class();
  v4 = destinationCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  v7 = v4;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    components = [v9 components];
    firstObject = [components firstObject];
    mediaProfile = [firstObject mediaProfile];
    accessory = [mediaProfile accessory];

    v6 = accessory;
  }

  if ([v7 audioDestinationType] == 1)
  {
    if ([v6 homePodVariant] == 2)
    {
      v14 = @"homepodmini.fill";
LABEL_21:
      v15 = objc_alloc(MEMORY[0x277D14728]);
      hu_standardSymbolConfiguration = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
      v17 = [v15 initWithSystemImageNamed:v14 configuration:hu_standardSymbolConfiguration];

      goto LABEL_23;
    }

    if ([v6 homePodVariant] == 1 || objc_msgSend(v6, "homePodVariant") == 3)
    {
      v14 = @"homepod.fill";
      goto LABEL_21;
    }
  }

  else if ([v7 audioDestinationType] == 2)
  {
    if ([v6 homePodVariant] == 2)
    {
      v14 = @"homepodmini.2.fill";
      goto LABEL_21;
    }

    if ([v6 homePodVariant] == 1 || objc_msgSend(v6, "homePodVariant") == 3)
    {
      v14 = @"homepod.2.fill";
      goto LABEL_21;
    }
  }

  v17 = 0;
LABEL_23:

  return v17;
}

@end