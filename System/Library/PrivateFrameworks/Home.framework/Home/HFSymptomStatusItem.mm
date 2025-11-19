@interface HFSymptomStatusItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFSymptomStatusItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v5 = [(HFStatusItem *)self home];
  v6 = [v5 mediaSystems];
  v7 = [v4 setWithArray:v6];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke;
  v59[3] = &unk_277DF7250;
  v59[4] = self;
  v8 = [v7 na_filter:v59];

  v9 = MEMORY[0x277CBEB98];
  v10 = [(HFStatusItem *)self home];
  v11 = [v10 accessories];
  v12 = [v9 setWithArray:v11];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_1;
  v58[3] = &unk_277DF3888;
  v58[4] = self;
  v13 = [v12 na_filter:v58];

  v14 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_2;
  v56[3] = &unk_277DF5200;
  v15 = v14;
  v57 = v15;
  v47 = v13;
  [v13 na_each:v56];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_3;
  v54[3] = &unk_277DFC728;
  v16 = v15;
  v55 = v16;
  v48 = v8;
  [v8 na_each:v54];
  v17 = [MEMORY[0x277CD1E88] hf_symptomArraySortComparator];
  v18 = [v16 keyEnumerator];
  v19 = [v18 allObjects];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_4;
  v52[3] = &unk_277DFC750;
  v46 = v17;
  v53 = v46;
  v20 = [v19 sortedArrayUsingComparator:v52];

  v45 = v20;
  v21 = [v20 firstObject];
  v22 = [v21 hf_symptomsSortedByPriority];
  v23 = [v22 firstObject];
  v24 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v25 = MEMORY[0x277CBEB98];
  v26 = objc_opt_class();
  v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
  [(HFMutableItemUpdateOutcome *)v24 setObject:v27 forKeyedSubscript:@"dependentHomeKitClasses"];

  if ([v23 type] == 114 && objc_msgSend(v22, "count") >= 2)
  {
    [(HFMutableItemUpdateOutcome *)v24 setObject:v23 forKeyedSubscript:@"bannerSymptom"];
    v28 = [MEMORY[0x277CD1E88] hf_nextSymptomAfterInternetOutageInSortedList:v22];

    v29 = HFLogForCategory(0x47uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v22;
      _os_log_impl(&dword_20D9BF000, v29, OS_LOG_TYPE_DEFAULT, "Handler has symptom other than internet outage: %@", buf, 0xCu);
    }

    v23 = v28;
  }

  v30 = [v23 type];
  if (v30 > 113)
  {
    if (v30 == 1000)
    {
LABEL_17:
      [(HFMutableItemUpdateOutcome *)v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
      goto LABEL_18;
    }

    if (v30 == 114)
    {
      [(HFMutableItemUpdateOutcome *)v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }
  }

  else if (v30 == 12 || v30 == 15)
  {
    goto LABEL_17;
  }

  v31 = [v23 hf_shortDescription];
  if (!v31)
  {
    goto LABEL_17;
  }

  v32 = v31;
  v33 = [MEMORY[0x277CBEB58] set];
  [v33 unionSet:v47];
  [v33 unionSet:v8];
  v34 = [MEMORY[0x277CBEB98] set];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_13;
  v51[3] = &unk_277DF7C90;
  v51[4] = self;
  v35 = [v33 na_filter:v51];

  [(HFMutableItemUpdateOutcome *)v24 setObject:v35 forKeyedSubscript:@"representedHomeKitObjects"];
  v44 = v35;
  if ([v35 count])
  {
    [(HFMutableItemUpdateOutcome *)v24 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"hidden"];
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_4_20;
  v49[3] = &unk_277DF7C90;
  v36 = v23;
  v50 = v36;
  v37 = [v33 na_filter:v49];
  [(HFMutableItemUpdateOutcome *)v24 setObject:v37 forKeyedSubscript:@"statusRepresentedHomeKitObjects"];

  v38 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
  v39 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"exclamationmark.circle.fill" configuration:v38];
  [(HFMutableItemUpdateOutcome *)v24 setObject:v39 forKeyedSubscript:@"icon"];

  [(HFMutableItemUpdateOutcome *)v24 setObject:v32 forKeyedSubscript:@"title"];
  [(HFMutableItemUpdateOutcome *)v24 setObject:&unk_2825241B0 forKeyedSubscript:@"statusItemCategory"];
  v40 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeySymptoms", @"HFStatusSortKeySymptoms", 1);
  [(HFMutableItemUpdateOutcome *)v24 setObject:v40 forKeyedSubscript:@"sortKey"];

  [(HFMutableItemUpdateOutcome *)v24 setObject:&unk_2825241C8 forKeyedSubscript:@"priority"];
  [(HFMutableItemUpdateOutcome *)v24 setObject:v36 forKeyedSubscript:@"symptom"];

LABEL_18:
  v41 = [MEMORY[0x277D2C900] futureWithResult:v24];

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

uint64_t __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke(id *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a1[4] room];
  if (v5)
  {
    v2 = [v4 hf_parentRoom];
    a1 = [a1[4] room];
    if (([v2 isEqual:a1] & 1) == 0)
    {

LABEL_12:
      v14 = 0;
      goto LABEL_13;
    }
  }

  v6 = [v4 symptomsHandler];
  v7 = [v6 symptoms];
  v8 = [v7 count];

  if (v5)
  {
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [v4 symptomsHandler];
  v10 = [v9 symptoms];
  v11 = [v10 count];

  if (v11)
  {
    v12 = HFLogForCategory(0x47uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 symptoms];
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Media system has symptoms: %@", &v17, 0xCu);
    }
  }

  v14 = 1;
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_1(id *a1, void *a2)
{
  v4 = a2;
  v5 = [v4 mediaProfile];

  if (v5)
  {
    v2 = [v4 mediaProfile];
    v6 = [HFMediaHelper isContainedWithinMediaSystem:v2];
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1[4] room];
  if (v7)
  {
    v2 = [v4 room];
    a1 = [a1[4] room];
    if (![v2 isEqual:a1])
    {
      v8 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v9 = [v4 symptomsHandler];
  v10 = [v9 symptoms];
  v8 = [v10 count] == 0 || v6;

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_9:

  return (v8 & 1) == 0;
}

void __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 mediaProfile];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v8 mediaProfile];
    v6 = [v8 mediaProfile];
    v7 = [v6 symptomsHandler];
    [v4 setObject:v5 forKey:v7];
  }
}

void __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 symptomsHandler];
  [v2 setObject:v3 forKey:v4];
}

uint64_t __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 hf_symptomsSortedByPriority];
  v7 = [v5 hf_symptomsSortedByPriority];

  v8 = *(a1 + 32);
  v9 = [v6 firstObject];
  v10 = [v7 firstObject];
  v11 = (*(v8 + 16))(v8, v9, v10);

  return v11;
}

id __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    objc_opt_class();
    v8 = v4;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v7 = v9;

    if (!v7)
    {
      v8 = 0;
      goto LABEL_15;
    }

    v10 = [v7 symptoms];
    v11 = v10;
    v12 = &__block_literal_global_18_8;
LABEL_13:
    v7 = [v10 na_any:v12];

LABEL_15:
    goto LABEL_16;
  }

  if (([*(a1 + 32) _shouldHideNetworkDiagnosticsSymptomForAccessory:v6] & 1) == 0)
  {
    v8 = [v6 symptomsHandler];
    v10 = [v8 symptoms];
    v11 = v10;
    v12 = &__block_literal_global_124;
    goto LABEL_13;
  }

  v7 = 0;
LABEL_16:

  return v7;
}

uint64_t __51__HFSymptomStatusItem__subclass_updateWithOptions___block_invoke_4_20(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 symptomsHandler];
    v8 = v7;
  }

  else
  {
    objc_opt_class();
    v8 = v4;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (!v10)
    {
      v8 = 0;
      v12 = 0;
      goto LABEL_12;
    }

    v7 = v10;
  }

  v11 = [v7 symptoms];
  v12 = [v11 containsObject:*(a1 + 32)];

LABEL_12:
  return v12;
}

@end