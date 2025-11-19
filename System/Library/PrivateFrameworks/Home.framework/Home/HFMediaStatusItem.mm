@interface HFMediaStatusItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFMediaStatusItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v45[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = [(HFStatusItem *)self home];
  v6 = [v5 hf_allUniqueMediaProfileContainers];
  v7 = [v4 setWithArray:v6];

  v8 = [(HFStatusItem *)self room];

  if (v8)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __49__HFMediaStatusItem__subclass_updateWithOptions___block_invoke;
    v43[3] = &unk_277DF60E8;
    v43[4] = self;
    v9 = v43;
  }

  else
  {
    v9 = &__block_literal_global_45;
  }

  v10 = [v7 na_filter:v9];

  if ([v10 count])
  {
    v11 = [v10 na_filter:&__block_literal_global_6_0];
    v12 = [v11 na_filter:&__block_literal_global_8_1];
    v13 = [MEMORY[0x277CBEB98] set];
    v14 = [v12 count];
    if (v14)
    {
      v15 = v12;

      v16 = &unk_282523778;
      v17 = 2;
      v13 = v15;
    }

    else
    {
      v17 = [v11 count] != 0;
      v16 = &unk_282523790;
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
    [v20 setObject:v21 forKeyedSubscript:@"state"];

    [v20 setObject:v16 forKeyedSubscript:@"priority"];
    if ([v13 count] > 1)
    {
      v22 = [v13 count];
      HFLocalizedStringWithFormat(@"HFStatusTitleSpeaker_Multiple", @"%lu", v23, v24, v25, v26, v27, v28, v22);
    }

    else
    {
      _HFLocalizedStringWithDefaultValue(@"HFStatusTitleSpeaker_One", @"HFStatusTitleSpeaker_One", 1);
    }
    v29 = ;
    [v20 setObject:v29 forKeyedSubscript:@"title"];

    if (v14)
    {
      v30 = @"HFStatusDescriptionSpeaker_Playing";
    }

    else
    {
      v30 = @"HFStatusDescriptionSpeaker_NotPlaying";
    }

    if (v14)
    {
      v31 = @"hifispeaker.fill";
    }

    else
    {
      v31 = @"hifispeaker";
    }

    v32 = _HFLocalizedStringWithDefaultValue(v30, v30, 1);
    [v20 setObject:v32 forKeyedSubscript:@"description"];

    v33 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
    v34 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v31 configuration:v33];
    [v20 setObject:v34 forKeyedSubscript:@"icon"];

    [v20 setObject:v13 forKeyedSubscript:@"representedHomeKitObjects"];
    if (!v14)
    {
      [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    v35 = [MEMORY[0x277CBEB58] set];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __49__HFMediaStatusItem__subclass_updateWithOptions___block_invoke_36;
    v41[3] = &unk_277DF6130;
    v42 = v35;
    v36 = v35;
    [v10 na_each:v41];
    [v20 setObject:v36 forKeyedSubscript:@"dependentHomeKitObjects"];
    v37 = MEMORY[0x277D2C900];
    v38 = [HFItemUpdateOutcome outcomeWithResults:v20];
    v19 = [v37 futureWithResult:v38];
  }

  else
  {
    v18 = MEMORY[0x277D2C900];
    v44 = @"hidden";
    v45[0] = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v12 = [HFItemUpdateOutcome outcomeWithResults:v11];
    v19 = [v18 futureWithResult:v12];
  }

  v39 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __49__HFMediaStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HFMediaStatusItem__subclass_updateWithOptions___block_invoke_2;
  v6[3] = &unk_277DF3888;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

BOOL __49__HFMediaStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 room];
  v4 = [*(a1 + 32) room];
  v5 = v3 == v4;

  return v5;
}

BOOL __49__HFMediaStatusItem__subclass_updateWithOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 mediaSession];
  v3 = [v2 playbackState] == 1;

  return v3;
}

void __49__HFMediaStatusItem__subclass_updateWithOptions___block_invoke_36(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 accessories];
  [v3 unionSet:v5];

  v6 = *(a1 + 32);
  v7 = [v4 mediaProfiles];
  [v6 unionSet:v7];

  v8 = *(a1 + 32);
  v9 = [v4 mediaSession];

  [v8 na_safeAddObject:v9];
}

@end