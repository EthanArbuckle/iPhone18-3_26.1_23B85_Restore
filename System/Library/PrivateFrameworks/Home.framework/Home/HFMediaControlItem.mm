@interface HFMediaControlItem
- (HFMediaControlItem)initWithMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type;
- (HFMediaControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (HFMediaControlItem)initWithValueSource:(id)source mediaProfileContainer:(id)container mediaAccessoryItemType:(int64_t)type displayResults:(id)results;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)readValueAndPopulateStandardResults;
- (id)toggleValue;
- (id)writePrimaryState:(int64_t)state;
- (id)writeValue:(id)value;
- (int64_t)mapToHMMediaPlaybackState:(int64_t)state;
- (int64_t)toggledSceneStateFromPrimaryState:(int64_t)state;
@end

@implementation HFMediaControlItem

- (HFMediaControlItem)initWithValueSource:(id)source mediaProfileContainer:(id)container mediaAccessoryItemType:(int64_t)type displayResults:(id)results
{
  sourceCopy = source;
  containerCopy = container;
  resultsCopy = results;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaControlItem.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"valueSource"}];
  }

  hf_home = [containerCopy hf_home];
  if (!hf_home)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFMediaControlItem.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v15 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  hf_characteristicValueManager = [hf_home hf_characteristicValueManager];
  v17 = [MEMORY[0x277CBEB98] set];
  v18 = [(HFSimpleAggregatedCharacteristicValueSource *)v15 initWithValueSource:hf_characteristicValueManager characteristics:v17 primaryServiceDescriptor:0];

  v19 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v25.receiver = self;
  v25.super_class = HFMediaControlItem;
  v20 = [(HFControlItem *)&v25 initWithValueSource:v18 characteristicOptions:v19 displayResults:resultsCopy];

  if (v20)
  {
    objc_storeStrong(&v20->_mediaValueSource, source);
    objc_storeStrong(&v20->_mediaProfileContainer, container);
    v20->_mediaAccessoryItemType = type;
  }

  return v20;
}

- (HFMediaControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaControlItem.m" lineNumber:109 description:{@"%s is unavailable; use %@ instead", "-[HFMediaControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (HFMediaControlItem)initWithMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type
{
  identifierCopy = identifier;
  nameCopy = name;
  v10 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v11 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v11 home];
  hf_characteristicValueManager = [home hf_characteristicValueManager];
  v14 = [MEMORY[0x277CBEB98] set];
  v15 = [(HFSimpleAggregatedCharacteristicValueSource *)v10 initWithValueSource:hf_characteristicValueManager characteristics:v14 primaryServiceDescriptor:0];

  v16 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v20.receiver = self;
  v20.super_class = HFMediaControlItem;
  v17 = [(HFControlItem *)&v20 initWithValueSource:v15 characteristicOptions:v16 displayResults:0];

  if (v17)
  {
    objc_storeStrong(&v17->_mediaRoutingIdentifier, identifier);
    objc_storeStrong(&v17->_deviceName, name);
    v17->_mediaAccessoryItemType = type;
  }

  return v17;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  v5 = [(HFMediaControlItem *)self mediaValueSource:options];
  if (v5 && (v6 = v5, [(HFMediaControlItem *)self mediaProfileContainer], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = objc_alloc(objc_opt_class());
    mediaValueSource = [(HFMediaControlItem *)self mediaValueSource];
    mediaProfileContainer = [(HFMediaControlItem *)self mediaProfileContainer];
    mediaAccessoryItemType = [(HFMediaControlItem *)self mediaAccessoryItemType];
    displayResults = [(HFControlItem *)self displayResults];
    v13 = [v8 initWithValueSource:mediaValueSource mediaProfileContainer:mediaProfileContainer mediaAccessoryItemType:mediaAccessoryItemType displayResults:displayResults];
  }

  else
  {
    mediaRoutingIdentifier = [(HFMediaControlItem *)self mediaRoutingIdentifier];

    if (!mediaRoutingIdentifier)
    {
      v13 = 0;
      goto LABEL_8;
    }

    v15 = objc_alloc(objc_opt_class());
    mediaValueSource = [(HFMediaControlItem *)self mediaRoutingIdentifier];
    mediaProfileContainer = [(HFMediaControlItem *)self deviceName];
    v13 = [v15 initWithMediaRoutingIdentifier:mediaValueSource deviceName:mediaProfileContainer mediaAccessoryItemType:{-[HFMediaControlItem mediaAccessoryItemType](self, "mediaAccessoryItemType")}];
  }

LABEL_8:
  mediaActionSetting = [(HFMediaControlItem *)self mediaActionSetting];
  [v13 setMediaActionSetting:mediaActionSetting];

  [v13 copyLatestResultsFromItem:self];
  return v13;
}

- (id)readValueAndPopulateStandardResults
{
  v31.receiver = self;
  v31.super_class = HFMediaControlItem;
  readValueAndPopulateStandardResults = [(HFControlItem *)&v31 readValueAndPopulateStandardResults];
  mediaValueSource = [(HFMediaControlItem *)self mediaValueSource];
  mediaProfileContainer = [(HFMediaControlItem *)self mediaProfileContainer];
  hf_mediaRouteIdentifier = [mediaProfileContainer hf_mediaRouteIdentifier];
  v7 = [mediaValueSource lastPlaybackStateForProfileForRouteID:hf_mediaRouteIdentifier];

  mediaActionSetting = [(HFMediaControlItem *)self mediaActionSetting];
  [mediaActionSetting updatePlaybackState:v7];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = dictionary;
  if (v7 == 2)
  {
    goto LABEL_8;
  }

  if (v7 == 1)
  {
    v15 = &unk_282523F10;
    goto LABEL_10;
  }

  if (v7)
  {
LABEL_8:
    v15 = &unk_282523EF8;
LABEL_10:
    [dictionary setObject:v15 forKeyedSubscript:@"value"];
    goto LABEL_11;
  }

  v11 = MEMORY[0x277CCABB0];
  mediaActionSetting2 = [(HFMediaControlItem *)self mediaActionSetting];
  if (mediaActionSetting2)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v11 numberWithInteger:v13];
  [v10 setObject:v14 forKeyedSubscript:@"value"];

LABEL_11:
  [v10 setObject:&unk_282523F28 forKeyedSubscript:@"controlItemPurpose"];
  mediaProfileContainer2 = [(HFMediaControlItem *)self mediaProfileContainer];
  hf_mediaRouteIdentifier2 = [mediaProfileContainer2 hf_mediaRouteIdentifier];
  [v10 setObject:hf_mediaRouteIdentifier2 forKeyedSubscript:@"HFMediaControlItemRouteIdentifierKey"];

  mediaProfileContainer3 = [(HFMediaControlItem *)self mediaProfileContainer];
  hf_dependentHomeKitObjectsForDownstreamItems = [mediaProfileContainer3 hf_dependentHomeKitObjectsForDownstreamItems];
  v20 = [hf_dependentHomeKitObjectsForDownstreamItems copy];
  [v10 setObject:v20 forKeyedSubscript:@"dependentHomeKitObjects"];

  mediaProfileContainer4 = [(HFMediaControlItem *)self mediaProfileContainer];
  hf_serviceNameComponents = [mediaProfileContainer4 hf_serviceNameComponents];

  if (hf_serviceNameComponents)
  {
    [v10 setObject:hf_serviceNameComponents forKeyedSubscript:@"serviceNameComponents"];
    composedString = [hf_serviceNameComponents composedString];
    if (composedString)
    {
      [v10 setObject:composedString forKeyedSubscript:@"title"];
    }
  }

  mediaProfileContainer5 = [(HFMediaControlItem *)self mediaProfileContainer];
  hf_categoryCapitalizedLocalizedDescription = [mediaProfileContainer5 hf_categoryCapitalizedLocalizedDescription];
  [v10 setObject:hf_categoryCapitalizedLocalizedDescription forKeyedSubscript:@"HFMediaControlItemCategoryLocalizedDescriptionKey"];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __57__HFMediaControlItem_readValueAndPopulateStandardResults__block_invoke;
  v29[3] = &unk_277DF3FD0;
  v30 = v10;
  v26 = v10;
  v27 = [readValueAndPopulateStandardResults flatMap:v29];

  return v27;
}

id __57__HFMediaControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a2];
  [v3 addEntriesFromDictionary:*(a1 + 32)];
  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

- (id)writeValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v5 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  integerValue = [v7 integerValue];
  mediaActionSetting = [(HFMediaControlItem *)self mediaActionSetting];
  if (mediaActionSetting)
  {
    v10 = [(HFMediaControlItem *)self toggledSceneStateFromPrimaryState:integerValue];
  }

  else
  {
    v10 = [(HFMediaControlItem *)self mapToHMMediaPlaybackState:integerValue];
  }

  v11 = v10;

  mediaValueSource = [(HFMediaControlItem *)self mediaValueSource];
  mediaActionSetting2 = [(HFMediaControlItem *)self mediaActionSetting];
  playbackArchive = [mediaActionSetting2 playbackArchive];
  mediaProfileContainer = [(HFMediaControlItem *)self mediaProfileContainer];
  hf_mediaRouteIdentifier = [mediaProfileContainer hf_mediaRouteIdentifier];
  v17 = [mediaValueSource writePlaybackState:v11 playbackArchive:playbackArchive forRouteID:hf_mediaRouteIdentifier];
  v18 = [v17 flatMap:&__block_literal_global_85];

  return v18;
}

- (int64_t)toggledSceneStateFromPrimaryState:(int64_t)state
{
  if (state < 2)
  {
    return 2;
  }

  if (state != 2)
  {
    return 0;
  }

  mediaActionSetting = [(HFMediaControlItem *)self mediaActionSetting];
  originalHMNonPausePlaybackState = [mediaActionSetting originalHMNonPausePlaybackState];

  return originalHMNonPausePlaybackState;
}

- (int64_t)mapToHMMediaPlaybackState:(int64_t)state
{
  if (state >= 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)writePrimaryState:(int64_t)state
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v5 = [(HFMediaControlItem *)self writeValue:v4];

  return v5;
}

- (id)toggleValue
{
  objc_initWeak(&location, self);
  readValueAndPopulateStandardResults = [(HFMediaControlItem *)self readValueAndPopulateStandardResults];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__HFMediaControlItem_toggleValue__block_invoke;
  v6[3] = &unk_277DF9FE8;
  objc_copyWeak(&v7, &location);
  v4 = [readValueAndPopulateStandardResults flatMap:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

id __33__HFMediaControlItem_toggleValue__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [v3 objectForKeyedSubscript:@"value"];

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 integerValue];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (v7 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v7 == 1);
  }

  v11 = [WeakRetained writePrimaryState:v10];

  return v11;
}

@end