@interface HFMediaControlItem
- (HFMediaControlItem)initWithMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5;
- (HFMediaControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (HFMediaControlItem)initWithValueSource:(id)a3 mediaProfileContainer:(id)a4 mediaAccessoryItemType:(int64_t)a5 displayResults:(id)a6;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)readValueAndPopulateStandardResults;
- (id)toggleValue;
- (id)writePrimaryState:(int64_t)a3;
- (id)writeValue:(id)a3;
- (int64_t)mapToHMMediaPlaybackState:(int64_t)a3;
- (int64_t)toggledSceneStateFromPrimaryState:(int64_t)a3;
@end

@implementation HFMediaControlItem

- (HFMediaControlItem)initWithValueSource:(id)a3 mediaProfileContainer:(id)a4 mediaAccessoryItemType:(int64_t)a5 displayResults:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"HFMediaControlItem.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"valueSource"}];
  }

  v14 = [v12 hf_home];
  if (!v14)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"HFMediaControlItem.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v15 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v16 = [v14 hf_characteristicValueManager];
  v17 = [MEMORY[0x277CBEB98] set];
  v18 = [(HFSimpleAggregatedCharacteristicValueSource *)v15 initWithValueSource:v16 characteristics:v17 primaryServiceDescriptor:0];

  v19 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v25.receiver = self;
  v25.super_class = HFMediaControlItem;
  v20 = [(HFControlItem *)&v25 initWithValueSource:v18 characteristicOptions:v19 displayResults:v13];

  if (v20)
  {
    objc_storeStrong(&v20->_mediaValueSource, a3);
    objc_storeStrong(&v20->_mediaProfileContainer, a4);
    v20->_mediaAccessoryItemType = a5;
  }

  return v20;
}

- (HFMediaControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithValueSource_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFMediaControlItem.m" lineNumber:109 description:{@"%s is unavailable; use %@ instead", "-[HFMediaControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (HFMediaControlItem)initWithMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v11 = +[HFHomeKitDispatcher sharedDispatcher];
  v12 = [v11 home];
  v13 = [v12 hf_characteristicValueManager];
  v14 = [MEMORY[0x277CBEB98] set];
  v15 = [(HFSimpleAggregatedCharacteristicValueSource *)v10 initWithValueSource:v13 characteristics:v14 primaryServiceDescriptor:0];

  v16 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v20.receiver = self;
  v20.super_class = HFMediaControlItem;
  v17 = [(HFControlItem *)&v20 initWithValueSource:v15 characteristicOptions:v16 displayResults:0];

  if (v17)
  {
    objc_storeStrong(&v17->_mediaRoutingIdentifier, a3);
    objc_storeStrong(&v17->_deviceName, a4);
    v17->_mediaAccessoryItemType = a5;
  }

  return v17;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v5 = [(HFMediaControlItem *)self mediaValueSource:a3];
  if (v5 && (v6 = v5, [(HFMediaControlItem *)self mediaProfileContainer], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = objc_alloc(objc_opt_class());
    v9 = [(HFMediaControlItem *)self mediaValueSource];
    v10 = [(HFMediaControlItem *)self mediaProfileContainer];
    v11 = [(HFMediaControlItem *)self mediaAccessoryItemType];
    v12 = [(HFControlItem *)self displayResults];
    v13 = [v8 initWithValueSource:v9 mediaProfileContainer:v10 mediaAccessoryItemType:v11 displayResults:v12];
  }

  else
  {
    v14 = [(HFMediaControlItem *)self mediaRoutingIdentifier];

    if (!v14)
    {
      v13 = 0;
      goto LABEL_8;
    }

    v15 = objc_alloc(objc_opt_class());
    v9 = [(HFMediaControlItem *)self mediaRoutingIdentifier];
    v10 = [(HFMediaControlItem *)self deviceName];
    v13 = [v15 initWithMediaRoutingIdentifier:v9 deviceName:v10 mediaAccessoryItemType:{-[HFMediaControlItem mediaAccessoryItemType](self, "mediaAccessoryItemType")}];
  }

LABEL_8:
  v16 = [(HFMediaControlItem *)self mediaActionSetting];
  [v13 setMediaActionSetting:v16];

  [v13 copyLatestResultsFromItem:self];
  return v13;
}

- (id)readValueAndPopulateStandardResults
{
  v31.receiver = self;
  v31.super_class = HFMediaControlItem;
  v3 = [(HFControlItem *)&v31 readValueAndPopulateStandardResults];
  v4 = [(HFMediaControlItem *)self mediaValueSource];
  v5 = [(HFMediaControlItem *)self mediaProfileContainer];
  v6 = [v5 hf_mediaRouteIdentifier];
  v7 = [v4 lastPlaybackStateForProfileForRouteID:v6];

  v8 = [(HFMediaControlItem *)self mediaActionSetting];
  [v8 updatePlaybackState:v7];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = v9;
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
    [v9 setObject:v15 forKeyedSubscript:@"value"];
    goto LABEL_11;
  }

  v11 = MEMORY[0x277CCABB0];
  v12 = [(HFMediaControlItem *)self mediaActionSetting];
  if (v12)
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
  v16 = [(HFMediaControlItem *)self mediaProfileContainer];
  v17 = [v16 hf_mediaRouteIdentifier];
  [v10 setObject:v17 forKeyedSubscript:@"HFMediaControlItemRouteIdentifierKey"];

  v18 = [(HFMediaControlItem *)self mediaProfileContainer];
  v19 = [v18 hf_dependentHomeKitObjectsForDownstreamItems];
  v20 = [v19 copy];
  [v10 setObject:v20 forKeyedSubscript:@"dependentHomeKitObjects"];

  v21 = [(HFMediaControlItem *)self mediaProfileContainer];
  v22 = [v21 hf_serviceNameComponents];

  if (v22)
  {
    [v10 setObject:v22 forKeyedSubscript:@"serviceNameComponents"];
    v23 = [v22 composedString];
    if (v23)
    {
      [v10 setObject:v23 forKeyedSubscript:@"title"];
    }
  }

  v24 = [(HFMediaControlItem *)self mediaProfileContainer];
  v25 = [v24 hf_categoryCapitalizedLocalizedDescription];
  [v10 setObject:v25 forKeyedSubscript:@"HFMediaControlItemCategoryLocalizedDescriptionKey"];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __57__HFMediaControlItem_readValueAndPopulateStandardResults__block_invoke;
  v29[3] = &unk_277DF3FD0;
  v30 = v10;
  v26 = v10;
  v27 = [v3 flatMap:v29];

  return v27;
}

id __57__HFMediaControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a2];
  [v3 addEntriesFromDictionary:*(a1 + 32)];
  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

- (id)writeValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 integerValue];
  v9 = [(HFMediaControlItem *)self mediaActionSetting];
  if (v9)
  {
    v10 = [(HFMediaControlItem *)self toggledSceneStateFromPrimaryState:v8];
  }

  else
  {
    v10 = [(HFMediaControlItem *)self mapToHMMediaPlaybackState:v8];
  }

  v11 = v10;

  v12 = [(HFMediaControlItem *)self mediaValueSource];
  v13 = [(HFMediaControlItem *)self mediaActionSetting];
  v14 = [v13 playbackArchive];
  v15 = [(HFMediaControlItem *)self mediaProfileContainer];
  v16 = [v15 hf_mediaRouteIdentifier];
  v17 = [v12 writePlaybackState:v11 playbackArchive:v14 forRouteID:v16];
  v18 = [v17 flatMap:&__block_literal_global_85];

  return v18;
}

- (int64_t)toggledSceneStateFromPrimaryState:(int64_t)a3
{
  if (a3 < 2)
  {
    return 2;
  }

  if (a3 != 2)
  {
    return 0;
  }

  v4 = [(HFMediaControlItem *)self mediaActionSetting];
  v5 = [v4 originalHMNonPausePlaybackState];

  return v5;
}

- (int64_t)mapToHMMediaPlaybackState:(int64_t)a3
{
  if (a3 >= 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)writePrimaryState:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(HFMediaControlItem *)self writeValue:v4];

  return v5;
}

- (id)toggleValue
{
  objc_initWeak(&location, self);
  v3 = [(HFMediaControlItem *)self readValueAndPopulateStandardResults];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__HFMediaControlItem_toggleValue__block_invoke;
  v6[3] = &unk_277DF9FE8;
  objc_copyWeak(&v7, &location);
  v4 = [v3 flatMap:v6];
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