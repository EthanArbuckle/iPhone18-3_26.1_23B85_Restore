@interface HFTriggerActionsSetsUISummary
- (BOOL)hasUniqueServiceGroup;
- (HFTriggerActionsSetsUISummary)init;
- (HFTriggerActionsSetsUISummary)initWithSummaryText:(id)a3 summaryIconDescriptors:(id)a4;
- (HFTriggerActionsSetsUISummary)initWithSummaryText:(id)a3 summaryIconNames:(id)a4;
- (id)_descriptionForZeroAccessories;
- (id)_descriptionForZeroScenes;
- (id)summaryIconDescriptors;
- (id)summaryIcons;
- (id)summaryText:(BOOL)a3;
- (unint64_t)numberOfIcons;
- (void)_incrementIconCounter:(id)a3;
- (void)_sortIconDescriptors;
- (void)addIconDescriptor:(id)a3;
- (void)addMatterRepresentableNamed:(id)a3;
- (void)addMediaAccessoryNamed:(id)a3;
- (void)addSceneNamed:(id)a3;
- (void)addServiceNamed:(id)a3;
@end

@implementation HFTriggerActionsSetsUISummary

- (HFTriggerActionsSetsUISummary)initWithSummaryText:(id)a3 summaryIconDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HFTriggerActionsSetsUISummary *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    summaryDescription = v8->_summaryDescription;
    v8->_summaryDescription = v9;

    v11 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
    summaryDescriptors = v8->_summaryDescriptors;
    v8->_summaryDescriptors = v11;

    v8->_needsIconSort = 0;
  }

  return v8;
}

- (HFTriggerActionsSetsUISummary)initWithSummaryText:(id)a3 summaryIconNames:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HFTriggerActionsSetsUISummary *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    summaryDescription = v8->_summaryDescription;
    v8->_summaryDescription = v9;

    v11 = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          v18 = [HFImageIconDescriptor alloc];
          v19 = [(HFImageIconDescriptor *)v18 initWithImageIdentifier:v17, v24];
          [v11 addObject:v19];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v20 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
    summaryDescriptors = v8->_summaryDescriptors;
    v8->_summaryDescriptors = v20;

    v8->_needsIconSort = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HFTriggerActionsSetsUISummary)init
{
  v14.receiver = self;
  v14.super_class = HFTriggerActionsSetsUISummary;
  v2 = [(HFTriggerActionsSetsUISummary *)&v14 init];
  v3 = v2;
  if (v2)
  {
    firstSceneName = v2->_firstSceneName;
    v2->_firstSceneName = &stru_2824B1A78;

    firstServiceName = v3->_firstServiceName;
    v3->_firstServiceName = &stru_2824B1A78;

    mediaAccessoryName = v3->_mediaAccessoryName;
    v3->_mediaAccessoryName = &stru_2824B1A78;

    v7 = [MEMORY[0x277CBEB18] array];
    icons = v3->_icons;
    v3->_icons = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    iconDescriptors = v3->_iconDescriptors;
    v3->_iconDescriptors = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    iconCounter = v3->_iconCounter;
    v3->_iconCounter = v11;

    v3->_needsIconSort = 0;
  }

  return v3;
}

- (BOOL)hasUniqueServiceGroup
{
  v2 = [(HFTriggerActionsSetsUISummary *)self uniqueServiceGroupName];
  v3 = v2 != 0;

  return v3;
}

- (id)summaryText:(BOOL)a3
{
  if (a3)
  {
    v4 = [(HFTriggerActionsSetsUISummary *)self summaryDescription];

    if (v4)
    {
      v5 = [(HFTriggerActionsSetsUISummary *)self summaryDescription];
      v6 = [v5 copy];

      goto LABEL_7;
    }

    if ([(HFTriggerActionsSetsUISummary *)self numberOfScenes]|| [(HFTriggerActionsSetsUISummary *)self totalStandaloneAndMediaAccessoriesCount])
    {
      if ([(HFTriggerActionsSetsUISummary *)self totalStandaloneAndMediaAccessoriesCount])
      {
        if ([(HFTriggerActionsSetsUISummary *)self numberOfScenes])
        {
          v10 = [(HFTriggerActionsSetsUISummary *)self totalStandaloneAndMediaAccessoriesCount];
          [(HFTriggerActionsSetsUISummary *)self numberOfScenes];
          HFLocalizedStringWithFormat(@"HFTriggerDescriptionManyScenesManyServices", @"%lu%lu", v11, v12, v13, v14, v15, v16, v10);
        }

        else
        {
          [(HFTriggerActionsSetsUISummary *)self _descriptionForZeroScenes];
        }
        v8 = ;
      }

      else
      {
        v8 = [(HFTriggerActionsSetsUISummary *)self _descriptionForZeroAccessories];
      }

      goto LABEL_6;
    }

    v7 = @"HFTriggerDescriptionNoActions";
  }

  else
  {
    v7 = @"HFTriggerDescriptionDisabled";
  }

  v8 = _HFLocalizedStringWithDefaultValue(v7, v7, 1);
LABEL_6:
  v6 = v8;
LABEL_7:

  return v6;
}

- (id)_descriptionForZeroAccessories
{
  if ([(HFTriggerActionsSetsUISummary *)self numberOfScenes]== 1)
  {
    [(HFTriggerActionsSetsUISummary *)self firstSceneName];
  }

  else
  {
    v4 = [(HFTriggerActionsSetsUISummary *)self numberOfScenes];
    HFLocalizedStringWithFormat(@"HFTriggerDescriptionManyScenesZeroServices", @"%lu", v5, v6, v7, v8, v9, v10, v4);
  }
  v3 = ;

  return v3;
}

- (id)_descriptionForZeroScenes
{
  if ([(HFTriggerActionsSetsUISummary *)self numberOfStandaloneServices]== 1 && ![(HFTriggerActionsSetsUISummary *)self numberOfMediaAccessories])
  {
    v3 = [(HFTriggerActionsSetsUISummary *)self firstServiceName];
  }

  else if ([(HFTriggerActionsSetsUISummary *)self numberOfStandaloneServices]|| [(HFTriggerActionsSetsUISummary *)self numberOfMediaAccessories]!= 1)
  {
    if ([(HFTriggerActionsSetsUISummary *)self hasUniqueServiceGroup]&& ![(HFTriggerActionsSetsUISummary *)self numberOfMediaAccessories])
    {
      v3 = [(HFTriggerActionsSetsUISummary *)self uniqueServiceGroupName];
    }

    else
    {
      v4 = [(HFTriggerActionsSetsUISummary *)self totalStandaloneAndMediaAccessoriesCount];
      v3 = HFLocalizedStringWithFormat(@"HFTriggerDescriptionZeroScenesManyServices", @"%lu", v5, v6, v7, v8, v9, v10, v4);
    }
  }

  else
  {
    v3 = [(HFTriggerActionsSetsUISummary *)self mediaAccessoryName];
  }

  return v3;
}

- (id)summaryIcons
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(HFTriggerActionsSetsUISummary *)self summaryIconDescriptors];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) identifier];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)summaryIconDescriptors
{
  v3 = [(HFTriggerActionsSetsUISummary *)self summaryDescriptors];

  if (v3)
  {
    v4 = [(HFTriggerActionsSetsUISummary *)self summaryDescriptors];
  }

  else
  {
    if ([(HFTriggerActionsSetsUISummary *)self needsIconSort])
    {
      [(HFTriggerActionsSetsUISummary *)self _sortIconDescriptors];
    }

    v4 = [(HFTriggerActionsSetsUISummary *)self iconDescriptors];
  }

  v5 = v4;
  v6 = [v4 copy];

  return v6;
}

- (unint64_t)numberOfIcons
{
  v2 = [(HFTriggerActionsSetsUISummary *)self iconDescriptors];
  v3 = [v2 count];

  return v3;
}

- (void)addSceneNamed:(id)a3
{
  v5 = a3;
  if (![(HFTriggerActionsSetsUISummary *)self numberOfScenes])
  {
    v4 = [v5 copy];
    [(HFTriggerActionsSetsUISummary *)self setFirstSceneName:v4];
  }

  [(HFTriggerActionsSetsUISummary *)self setNumberOfScenes:[(HFTriggerActionsSetsUISummary *)self numberOfScenes]+ 1];
}

- (void)addServiceNamed:(id)a3
{
  v5 = a3;
  if (![(HFTriggerActionsSetsUISummary *)self numberOfStandaloneServices])
  {
    v4 = [v5 copy];
    [(HFTriggerActionsSetsUISummary *)self setFirstServiceName:v4];
  }

  [(HFTriggerActionsSetsUISummary *)self setNumberOfStandaloneServices:[(HFTriggerActionsSetsUISummary *)self numberOfStandaloneServices]+ 1];
}

- (void)addMatterRepresentableNamed:(id)a3
{
  v5 = a3;
  if (![(HFTriggerActionsSetsUISummary *)self numberOfStandaloneServices])
  {
    v4 = [v5 copy];
    [(HFTriggerActionsSetsUISummary *)self setFirstServiceName:v4];
  }

  [(HFTriggerActionsSetsUISummary *)self setNumberOfStandaloneServices:[(HFTriggerActionsSetsUISummary *)self numberOfStandaloneServices]+ 1];
}

- (void)addIconDescriptor:(id)a3
{
  v7 = a3;
  v4 = [(HFTriggerActionsSetsUISummary *)self iconDescriptors];
  v5 = [v4 containsObject:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(HFTriggerActionsSetsUISummary *)self iconDescriptors];
    [v6 addObject:v7];
  }

  [(HFTriggerActionsSetsUISummary *)self _incrementIconCounter:v7];
  [(HFTriggerActionsSetsUISummary *)self setNeedsIconSort:1];
}

- (void)_incrementIconCounter:(id)a3
{
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a3, "hash")}];
  v4 = [(HFTriggerActionsSetsUISummary *)self iconCounter];
  v5 = [v4 objectForKeyedSubscript:v9];

  if (v5)
  {
    v6 = [v5 integerValue] + 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v8 = [(HFTriggerActionsSetsUISummary *)self iconCounter];
  [v8 setObject:v7 forKeyedSubscript:v9];
}

- (void)_sortIconDescriptors
{
  if ([(HFTriggerActionsSetsUISummary *)self needsIconSort])
  {
    v3 = [(HFTriggerActionsSetsUISummary *)self iconDescriptors];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __53__HFTriggerActionsSetsUISummary__sortIconDescriptors__block_invoke;
    v4[3] = &unk_277E001E0;
    v4[4] = self;
    [v3 sortUsingComparator:v4];

    [(HFTriggerActionsSetsUISummary *)self setNeedsIconSort:0];
  }
}

uint64_t __53__HFTriggerActionsSetsUISummary__sortIconDescriptors__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithInteger:{objc_msgSend(a2, "hash")}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v6 hash];

  v10 = [v8 numberWithInteger:v9];
  v11 = [*(a1 + 32) iconCounter];
  v12 = [v11 objectForKeyedSubscript:v7];

  v13 = [*(a1 + 32) iconCounter];
  v14 = [v13 objectForKeyedSubscript:v10];

  if (!v12 || !v14 || ((v15 = [v12 integerValue], v16 = objc_msgSend(v14, "integerValue"), v15 > v16) ? (v17 = -1) : (v17 = 1), v16 == v15))
  {
    v17 = [v7 compare:v10];
  }

  return v17;
}

- (void)addMediaAccessoryNamed:(id)a3
{
  v5 = a3;
  if (![(HFTriggerActionsSetsUISummary *)self numberOfMediaAccessories])
  {
    v4 = [v5 copy];
    [(HFTriggerActionsSetsUISummary *)self setMediaAccessoryName:v4];
  }

  [(HFTriggerActionsSetsUISummary *)self setNumberOfMediaAccessories:[(HFTriggerActionsSetsUISummary *)self numberOfMediaAccessories]+ 1];
}

@end