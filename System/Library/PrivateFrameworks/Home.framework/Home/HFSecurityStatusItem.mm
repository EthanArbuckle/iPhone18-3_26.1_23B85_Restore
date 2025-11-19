@interface HFSecurityStatusItem
+ (BOOL)_currentState:(int64_t)a3 matchesTargetState:(int64_t)a4;
+ (id)_shortDescriptionForSecuritySystemState:(int64_t)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3;
@end

@implementation HFSecurityStatusItem

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)a3
{
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:{a3, 24.0}];
  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"light.beacon.min.fill" configuration:v3];

  return v4;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CD0ED8];
  v6 = [objc_opt_class() characteristicTypesForServiceType:v5 includingAssociatedTypes:1];
  v18[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v8 = [v6 allObjects];
  v9 = [(HFStatusItem *)self filteredServicesOfTypes:v7 containingCharacteristicTypes:v8];

  objc_initWeak(&location, self);
  v10 = [(HFStatusItem *)self valueSource];
  v11 = [v10 readValuesForCharacteristicTypes:v6 inServices:v9];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HFSecurityStatusItem__subclass_updateWithOptions___block_invoke;
  v15[3] = &unk_277DF78B0;
  objc_copyWeak(&v16, &location);
  v12 = [v11 flatMap:v15];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __52__HFSecurityStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v9 = MEMORY[0x277D2C900];
    v59 = @"hidden";
    v60[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    goto LABEL_5;
  }

  v5 = [objc_opt_class() serviceTypes];
  v6 = [WeakRetained standardResultsForBatchReadResponse:v3 serviceTypes:v5];
  v7 = [v6 mutableCopy];

  v8 = [v7 objectForKeyedSubscript:@"hidden"];
  LODWORD(v6) = [v8 BOOLValue];

  if (v6)
  {
    v9 = MEMORY[0x277D2C900];
LABEL_5:
    v10 = [HFItemUpdateOutcome outcomeWithResults:v7];
    v11 = [v9 futureWithResult:v10];

    goto LABEL_30;
  }

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = [MEMORY[0x277CBEB58] set];
  v17 = [MEMORY[0x277CBEB58] set];
  v18 = [v7 objectForKeyedSubscript:?];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __52__HFSecurityStatusItem__subclass_updateWithOptions___block_invoke_2;
  v50[3] = &unk_277DF9208;
  v46 = v3;
  v19 = v3;
  v51 = v19;
  v52 = WeakRetained;
  v20 = v13;
  v53 = v20;
  v21 = v15;
  v54 = v21;
  v49 = v17;
  v55 = v49;
  v22 = v16;
  v56 = v22;
  v48 = v14;
  v57 = v48;
  v23 = v12;
  v58 = v23;
  [v18 na_each:v50];

  v47 = v22;
  if ([v20 count])
  {
    v24 = v21;
    [v7 setObject:&unk_282523CB8 forKeyedSubscript:@"badge"];
    [v7 setObject:&unk_282523CD0 forKeyedSubscript:@"statusItemCategory"];
    v25 = _HFLocalizedStringWithDefaultValue(@"HFStatusTitleSecuritySystem", @"HFStatusTitleSecuritySystem", 1);
    [v7 setObject:v25 forKeyedSubscript:@"title"];

    [v7 setObject:v20 forKeyedSubscript:@"statusRepresentedHomeKitObjects"];
    objc_opt_class();
    v26 = [v7 objectForKeyedSubscript:@"icon"];
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    if (v28)
    {
      v29 = [HFCAPackageIconDescriptor alloc];
      v30 = [v28 packageIdentifier];
      v31 = [(HFCAPackageIconDescriptor *)v29 initWithPackageIdentifier:v30 state:HFCAPackageStateActivated];
      [v7 setObject:v31 forKeyedSubscript:@"icon"];
    }

    [v7 setObject:&unk_282523CE8 forKeyedSubscript:@"state"];
    v32 = _HFLocalizedStringWithDefaultValue(@"HFStatusDescriptionSecuritySystem_Triggered", @"HFStatusDescriptionSecuritySystem_Triggered", 1);
    [v7 setObject:v32 forKeyedSubscript:@"description"];

    v33 = [objc_opt_class() _shortDescriptionForSecuritySystemState:4];
    [v7 setObject:v33 forKeyedSubscript:@"shortDescription"];

    goto LABEL_13;
  }

  if ([v23 count])
  {
    [v7 setObject:&unk_282523D00 forKeyedSubscript:@"statusItemCategory"];
    if ([v21 count])
    {
      v34 = @"HFStatusTitleSecuritySystem_Arming";
      v35 = v19;
    }

    else
    {
      v35 = v19;
      if (![v22 count])
      {
        v36 = 0;
        v3 = v46;
        goto LABEL_21;
      }

      v34 = @"HFStatusTitleSecuritySystem_Disarming";
    }

    v3 = v46;
    v36 = _HFLocalizedStringWithDefaultValue(v34, v34, 1);
LABEL_21:
    v24 = v21;
    [v7 setObject:&unk_282523D18 forKeyedSubscript:@"state"];
    v37 = _HFLocalizedStringWithDefaultValue(@"HFStatusTitleSecuritySystem", @"HFStatusTitleSecuritySystem", 1);
    [v7 setObject:v37 forKeyedSubscript:@"title"];

    if (v36)
    {
      [v7 setObject:v36 forKeyedSubscript:@"description"];
    }

    v38 = [v35 responseForCharacteristicType:*MEMORY[0x277CCF858] aggregationPolicy:0];
    if (v38)
    {
      v39 = [v38 valueWithExpectedClass:objc_opt_class()];
      v40 = [v39 integerValue];

      v41 = [objc_opt_class() _shortDescriptionForSecuritySystemState:v40];
      [v7 setObject:v41 forKeyedSubscript:@"shortDescription"];
      [v7 setObject:v41 forKeyedSubscript:@"description"];
      if (v40 <= 2)
      {
        [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
      }
    }

    else
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    goto LABEL_29;
  }

  v24 = v21;
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
LABEL_13:
  v3 = v46;
LABEL_29:
  [v7 setObject:v23 forKeyedSubscript:@"representedHomeKitObjects"];
  v42 = MEMORY[0x277D2C900];
  v43 = [HFItemUpdateOutcome outcomeWithResults:v7];
  v11 = [v42 futureWithResult:v43];

LABEL_30:
  v44 = *MEMORY[0x277D85DE8];

  return v11;
}

void __52__HFSecurityStatusItem__subclass_updateWithOptions___block_invoke_2(id *a1, void *a2)
{
  v16 = a2;
  v3 = [a1[4] batchResponseForService:?];
  v4 = [v3 responseForCharacteristicType:*MEMORY[0x277CCF858]];
  v5 = [v4 valueWithExpectedClass:objc_opt_class()];

  v6 = [v3 responseForCharacteristicType:*MEMORY[0x277CCFB60]];
  v7 = [v6 valueWithExpectedClass:objc_opt_class()];

  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = [v5 integerValue];
    v10 = [v7 integerValue];
    v11 = a1[5];
    v12 = [objc_opt_class() _currentState:v9 matchesTargetState:v10];
    if (v9 == 4)
    {
      v13 = 6;
LABEL_18:
      [a1[v13] addObject:v16];
      [a1[11] addObject:v16];
      goto LABEL_19;
    }

    v14 = v12;
    if (![v16 hf_hasSetVisibleInHomeStatus] || (objc_msgSend(v16, "hf_isVisibleInHomeStatus") & 1) != 0 || (objc_msgSend(a1[5], "room"), v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      if (v9 == 3)
      {
        v13 = 7;
        if (v14)
        {
          v13 = 8;
        }
      }

      else
      {
        v13 = 7;
        if (v14)
        {
          v13 = 10;
        }

        if (v10 == 3)
        {
          v13 = 9;
        }
      }

      goto LABEL_18;
    }
  }

LABEL_19:
}

+ (id)_shortDescriptionForSecuritySystemState:(int64_t)a3
{
  if (a3 <= 4)
  {
    a1 = _HFLocalizedStringWithDefaultValue(off_277DF9228[a3], off_277DF9228[a3], 1);
  }

  return a1;
}

+ (BOOL)_currentState:(int64_t)a3 matchesTargetState:(int64_t)a4
{
  v4 = a3 == 2;
  v5 = a3 == 3;
  if (a4 != 3)
  {
    v5 = 0;
  }

  if (a4 != 2)
  {
    v4 = v5;
  }

  v6 = a3 == 0;
  v7 = a3 == 1;
  if (a4 != 1)
  {
    v7 = 0;
  }

  if (a4)
  {
    v6 = v7;
  }

  if (a4 <= 1)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

@end