@interface HFUnreachableStatusItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFUnreachableStatusItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = MEMORY[0x277D2C900];
    v33 = @"hidden";
    v34[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v9 = [HFItemUpdateOutcome outcomeWithResults:v8];
    v10 = [v7 futureWithResult:v9];
  }

  else
  {
    v11 = [(HFStatusItem *)self home];
    v12 = [v11 hf_shouldBlockCurrentRestrictedGuestFromHome];

    if (v12)
    {
      v13 = MEMORY[0x277D2C900];
      v31 = @"hidden";
      v32 = MEMORY[0x277CBEC38];
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v14 = [HFItemUpdateOutcome outcomeWithResults:v8];
      v10 = [v13 futureWithResult:v14];
    }

    else
    {
      v15 = [(HFStatusItem *)self filteredServices];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke;
      v30[3] = &unk_277DF4020;
      v30[4] = self;
      v16 = [v15 na_filter:v30];
      objc_initWeak(&location, self);
      v17 = MEMORY[0x277D2C900];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_3;
      v24[3] = &unk_277DFCA88;
      objc_copyWeak(&v28, &location);
      v25 = v4;
      v8 = v15;
      v26 = v8;
      v18 = v16;
      v27 = v18;
      v19 = [MEMORY[0x277D2C938] globalAsyncScheduler];
      v20 = [v17 futureWithBlock:v24 scheduler:v19];
      v21 = [MEMORY[0x277D2C938] mainThreadScheduler];
      v10 = [v20 reschedule:v21];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accessory];

  if (v4 && ([v3 hf_isLegacyService] & 1) == 0)
  {
    v7 = [v3 accessory];
    v8 = [v7 isReachable];

    if (v8)
    {
      v9 = [*(a1 + 32) home];
      v10 = [v9 hf_characteristicValueManager];
      v11 = [v3 accessory];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_2;
      v14[3] = &unk_277DFE488;
      v12 = v3;
      v13 = *(a1 + 32);
      v15 = v12;
      v16 = v13;
      v5 = [v10 hasCachedReadErrorForAccessory:v11 passingTest:v14];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 service];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    v9 = [MEMORY[0x277CBEB98] set];
    v10 = [*(a1 + 40) home];
    v11 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v5 readTraits:v9 contextProvider:v10];

    if (v11)
    {
      v12 = [HFSymptomResultContextProvider alloc];
      v13 = [*(a1 + 32) accessory];
      v14 = [(HFSymptomResultContextProvider *)v12 initWithAccessory:v13 mediaSystem:0];

      v15 = [HFErrorResultComponent componentForDisplayError:v11 symptomContextProvider:v14];
      v8 = [v15 category] == 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_3(id *a1, void *a2)
{
  v167[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (!WeakRetained)
  {
    v166 = @"hidden";
    v167[0] = MEMORY[0x277CBEC38];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:&v166 count:1];
    v8 = [HFItemUpdateOutcome outcomeWithResults:v7];
    [v3 finishWithResult:v8];
    goto LABEL_53;
  }

  v142 = [a1[4] objectForKeyedSubscript:HFItemUpdateOptionLogger];
  v5 = [WeakRetained room];
  v6 = MEMORY[0x277CBEB98];
  v138 = v3;
  if (v5)
  {
    [WeakRetained room];
  }

  else
  {
    [WeakRetained home];
  }
  v9 = ;
  v10 = [v9 accessories];
  v11 = [v6 setWithArray:v10];

  v156[0] = MEMORY[0x277D85DD0];
  v156[1] = 3221225472;
  v156[2] = __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_4;
  v156[3] = &unk_277DF3888;
  v157 = a1[5];
  v12 = [v11 na_filter:v156];
  v154[0] = MEMORY[0x277D85DD0];
  v154[1] = 3221225472;
  v154[2] = __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_5;
  v154[3] = &unk_277DF3888;
  v13 = v12;
  v155 = v13;
  v139 = v11;
  v14 = [v11 na_filter:v154];
  v15 = MEMORY[0x277CBEB98];
  v16 = [WeakRetained home];
  v17 = [v16 residentDevices];
  v18 = [v15 setWithArray:v17];
  v153[0] = MEMORY[0x277D85DD0];
  v153[1] = 3221225472;
  v153[2] = __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_6;
  v153[3] = &unk_277DF7F00;
  v153[4] = WeakRetained;
  v19 = [v18 na_filter:v153];

  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 3221225472;
  v151[2] = __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_7;
  v151[3] = &unk_277DF3888;
  v137 = a1;
  v152 = a1[6];
  v145 = v13;
  v20 = v13;
  v21 = v14;
  v22 = [v20 na_filter:v151];
  v23 = [v21 na_filter:&__block_literal_global_165];
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_9;
  v150[3] = &unk_277DF7F00;
  v143 = WeakRetained;
  v144 = v19;
  v150[4] = WeakRetained;
  v24 = [v19 na_filter:v150];
  if (v142)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v25 = [v142 loggerActivity];
    os_activity_scope_enter(v25, &state);

    v26 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v22 count];
      v28 = [v145 count];
      *buf = 138413058;
      v159 = WeakRetained;
      v160 = 2048;
      v161 = v27;
      v162 = 2048;
      v163 = v28;
      v164 = 2112;
      v165 = v22;
      _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "%@: %lu of %lu service based accessories unreachable: %@", buf, 0x2Au);
    }

    os_activity_scope_leave(&state);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v29 = [v142 loggerActivity];
    os_activity_scope_enter(v29, &state);

    v30 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v23 count];
      v32 = [v21 count];
      *buf = 138413058;
      v159 = WeakRetained;
      v160 = 2048;
      v161 = v31;
      v162 = 2048;
      v163 = v32;
      v164 = 2112;
      v165 = v23;
      _os_log_impl(&dword_20D9BF000, v30, OS_LOG_TYPE_DEFAULT, "%@: %lu of %lu non-service based accessories unreachable: %@", buf, 0x2Au);
    }

    os_activity_scope_leave(&state);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v33 = [v142 loggerActivity];
    os_activity_scope_enter(v33, &state);

    v34 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v24 count];
      v36 = [v19 count];
      *buf = 138413058;
      v159 = WeakRetained;
      v160 = 2048;
      v161 = v35;
      v162 = 2048;
      v163 = v36;
      v164 = 2112;
      v165 = v24;
      _os_log_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEFAULT, "%@: %lu of %lu resident devices unreachable: %@", buf, 0x2Au);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v117 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v118 = [v22 count];
      v119 = [v145 count];
      *buf = 138413058;
      v159 = WeakRetained;
      v160 = 2048;
      v161 = v118;
      v162 = 2048;
      v163 = v119;
      v164 = 2112;
      v165 = v22;
      _os_log_impl(&dword_20D9BF000, v117, OS_LOG_TYPE_DEFAULT, "%@: %lu of %lu service based accessories unreachable: %@", buf, 0x2Au);
    }

    v120 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      v121 = [v23 count];
      v122 = [v21 count];
      *buf = 138413058;
      v159 = WeakRetained;
      v160 = 2048;
      v161 = v121;
      v162 = 2048;
      v163 = v122;
      v164 = 2112;
      v165 = v23;
      _os_log_impl(&dword_20D9BF000, v120, OS_LOG_TYPE_DEFAULT, "%@: %lu of %lu non-service based accessories unreachable: %@", buf, 0x2Au);
    }

    v123 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      v124 = [v24 count];
      v125 = [v19 count];
      *buf = 138413058;
      v159 = WeakRetained;
      v160 = 2048;
      v161 = v124;
      v162 = 2048;
      v163 = v125;
      v164 = 2112;
      v165 = v24;
      _os_log_impl(&dword_20D9BF000, v123, OS_LOG_TYPE_DEFAULT, "%@: %lu of %lu resident devices unreachable: %@", buf, 0x2Au);
    }
  }

  v37 = [v22 setByAddingObjectsFromSet:v23];
  v38 = [MEMORY[0x277CBEB98] setWithSet:v37];
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_11;
  v146[3] = &unk_277DFE4B0;
  v39 = v142;
  v147 = v39;
  v148 = WeakRetained;
  v40 = v23;
  v41 = WeakRetained;
  v42 = [v24 na_map:v146];
  v43 = [v38 setByAddingObjectsFromSet:v42];

  v136 = v22;
  v44 = [v22 count];
  v45 = [v145 count];
  v46 = v40;
  v47 = [v40 count];
  v134 = v21;
  v48 = [v21 count];
  v49 = [v37 count];
  v52 = v44 != v45 || v47 != v48 || v49 == 0;
  v53 = [v24 count];
  v54 = [v144 count];
  v140 = v24;
  v141 = v43;
  v135 = v37;
  if (+[HFUtilities shouldShowReachabilityErrors])
  {
    if ([v43 count] == 1)
    {
      v55 = [v43 anyObject];
      v56 = v41;
      v57 = [v41 displayNameForHomeKitObject:v55];

      v64 = HFLocalizedStringWithFormat(@"HFStatusTitleUnreachable_One", @"%@", v58, v59, v60, v61, v62, v63, v57);
      if (v142)
      {
        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v65 = [v39 loggerActivity];
        os_activity_scope_enter(v65, &state);

        v66 = HFLogForCategory(0x2CuLL);
        v67 = v46;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v68 = [v43 anyObject];
          *buf = 138412802;
          v159 = v56;
          v160 = 2112;
          v161 = v68;
          v162 = 2112;
          v163 = v64;
          _os_log_impl(&dword_20D9BF000, v66, OS_LOG_TYPE_DEFAULT, "%@: Showing unreachable status for single HomeKit object: %@ with title: %@", buf, 0x20u);
        }

        os_activity_scope_leave(&state);
      }

      else
      {
        v126 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
        {
          v127 = [v43 anyObject];
          *buf = 138412802;
          v159 = v41;
          v160 = 2112;
          v161 = v127;
          v162 = 2112;
          v163 = v64;
          _os_log_impl(&dword_20D9BF000, v126, OS_LOG_TYPE_DEFAULT, "%@: Showing unreachable status for single HomeKit object: %@ with title: %@", buf, 0x20u);
        }

        v67 = v46;
      }

      v69 = v64;
      goto LABEL_49;
    }

    v70 = v53 != v54 || v52;
    v56 = v41;
    if (v70)
    {
      v67 = v46;
      if ([v24 count] < 2 || objc_msgSend(v37, "count"))
      {
        if ([v43 count] < 2)
        {
          v69 = 0;
          goto LABEL_49;
        }

        v71 = [v43 count];
        v78 = HFLocalizedStringWithFormat(@"HFStatusTitleUnreachable_MultipleAccessories", @"%lu", v72, v73, v74, v75, v76, v77, v71);
        if (v142)
        {
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v79 = [v39 loggerActivity];
          os_activity_scope_enter(v79, &state);

          v80 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
          {
            v81 = [v43 count];
            *buf = 138412802;
            v159 = v56;
            v160 = 2048;
            v161 = v81;
            v162 = 2112;
            v163 = v43;
            _os_log_impl(&dword_20D9BF000, v80, OS_LOG_TYPE_DEFAULT, "%@: Showing unreachable status for %lu HomeKit objects: %@", buf, 0x20u);
          }

          os_activity_scope_leave(&state);
          goto LABEL_42;
        }

        v128 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          v131 = [v43 count];
          *buf = 138412802;
          v159 = v143;
          v160 = 2048;
          v161 = v131;
          v162 = 2112;
          v163 = v43;
          v130 = "%@: Showing unreachable status for %lu HomeKit objects: %@";
          goto LABEL_78;
        }

        goto LABEL_79;
      }

      if (v53 == v54 && ([v56 room], v103 = objc_claimAutoreleasedReturnValue(), v103, !v103))
      {
        v114 = _HFLocalizedStringWithDefaultValue(@"HFStatusTitleUnreachable_AllResidentDevices", @"HFStatusTitleUnreachable_AllResidentDevices", 1);
        v69 = v114;
        if (!v142)
        {
          v78 = v114;
          v128 = HFLogForCategory(0x2CuLL);
          if (!os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_79;
          }

          v133 = [v141 count];
          *buf = 138412802;
          v159 = v143;
          v160 = 2048;
          v161 = v133;
          v162 = 2112;
          v163 = v141;
          v130 = "%@: Showing unreachable status for all resident devices (%lu): %@";
          goto LABEL_78;
        }

        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v115 = [v39 loggerActivity];
        os_activity_scope_enter(v115, &state);

        v84 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v116 = [v141 count];
          *buf = 138412802;
          v159 = v56;
          v160 = 2048;
          v161 = v116;
          v162 = 2112;
          v163 = v141;
          v86 = "%@: Showing unreachable status for all resident devices (%lu): %@";
          goto LABEL_46;
        }
      }

      else
      {
        v104 = [v24 count];
        v111 = HFLocalizedStringWithFormat(@"HFStatusTitleUnreachable_MultipleResidentDevices", @"%lu", v105, v106, v107, v108, v109, v110, v104);
        v69 = v111;
        if (!v142)
        {
          v78 = v111;
          v128 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            v132 = [v24 count];
            *buf = 138412802;
            v159 = v143;
            v160 = 2048;
            v161 = v132;
            v162 = 2112;
            v163 = v24;
            v130 = "%@: Showing unreachable status for %lu resident devices: %@";
            goto LABEL_78;
          }

          goto LABEL_79;
        }

        state.opaque[0] = 0;
        state.opaque[1] = 0;
        v112 = [v39 loggerActivity];
        os_activity_scope_enter(v112, &state);

        v84 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v113 = [v24 count];
          *buf = 138412802;
          v159 = v56;
          v160 = 2048;
          v161 = v113;
          v162 = 2112;
          v163 = v24;
          v86 = "%@: Showing unreachable status for %lu resident devices: %@";
          goto LABEL_46;
        }
      }
    }

    else
    {
      v82 = _HFLocalizedStringWithDefaultValue(@"HFStatusTitleUnreachable_AllAccessories", @"HFStatusTitleUnreachable_AllAccessories", 1);
      v69 = v82;
      v67 = v46;
      if (!v142)
      {
        v78 = v82;
        v128 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
        {
          v129 = [v141 count];
          *buf = 138412802;
          v159 = v143;
          v160 = 2048;
          v161 = v129;
          v162 = 2112;
          v163 = v141;
          v130 = "%@: Showing unreachable status for all HomeKit objects (%lu): %@";
LABEL_78:
          _os_log_impl(&dword_20D9BF000, v128, OS_LOG_TYPE_DEFAULT, v130, buf, 0x20u);
        }

LABEL_79:

        v56 = v143;
LABEL_42:
        v69 = v78;
        goto LABEL_49;
      }

      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v83 = [v39 loggerActivity];
      os_activity_scope_enter(v83, &state);

      v84 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = [v141 count];
        *buf = 138412802;
        v159 = v56;
        v160 = 2048;
        v161 = v85;
        v162 = 2112;
        v163 = v141;
        v86 = "%@: Showing unreachable status for all HomeKit objects (%lu): %@";
LABEL_46:
        _os_log_impl(&dword_20D9BF000, v84, OS_LOG_TYPE_DEFAULT, v86, buf, 0x20u);
      }
    }

    os_activity_scope_leave(&state);
    goto LABEL_49;
  }

  v69 = 0;
  v56 = v41;
  v67 = v46;
LABEL_49:
  v87 = [MEMORY[0x277CBEB38] dictionary];
  v88 = v87;
  v89 = v67;
  if (v69)
  {
    v90 = [MEMORY[0x277D755D0] configurationWithPointSize:24.0];
    v91 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"exclamationmark.circle.fill" configuration:v90];
    [v88 setObject:v91 forKeyedSubscript:@"icon"];

    v92 = _HFLocalizedStringWithDefaultValue(@"HFStatusTitleUnreachable_One", @"HFStatusTitleUnreachable_One", 1);
    v93 = [v56 shortTitleForFormat:v92];
    [v88 setObject:v93 forKeyedSubscript:@"shortTitle"];

    [v88 setObject:&unk_2825248B8 forKeyedSubscript:@"statusItemCategory"];
    v94 = v141;
    [v88 setObject:v141 forKeyedSubscript:@"representedHomeKitObjects"];
    [v88 setObject:v69 forKeyedSubscript:@"title"];
    v95 = _HFLocalizedStringWithDefaultValue(@"HFStatusSortKeyAccessoryUnreachable", @"HFStatusSortKeyAccessoryUnreachable", 1);
    [v88 setObject:v95 forKeyedSubscript:@"sortKey"];

    [v88 setObject:&unk_2825248D0 forKeyedSubscript:@"priority"];
  }

  else
  {
    [v87 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    v94 = v141;
  }

  v96 = [v137[5] na_map:&__block_literal_global_51_0];
  v97 = [v96 na_setByFlattening];

  v98 = [v97 setByAddingObjectsFromSet:v137[5]];
  v99 = [v98 setByAddingObjectsFromSet:v134];
  [v88 setObject:v99 forKeyedSubscript:@"dependentHomeKitObjects"];

  v100 = [MEMORY[0x277CD1D90] hf_standardServiceTypes];
  [v88 setObject:v100 forKeyedSubscript:@"dependentServiceTypes"];

  v101 = [HFItemUpdateOutcome outcomeWithResults:v88];
  [v138 finishWithResult:v101];

  v3 = v157;
  v8 = v139;
  WeakRetained = v143;
  v7 = v39;
LABEL_53:

  v102 = *MEMORY[0x277D85DE8];
}

uint64_t __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEB98];
  v4 = [a2 services];
  v5 = [v3 setWithArray:v4];
  v6 = [v2 intersectsSet:v5];

  return v6;
}

BOOL __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3] & 1) != 0 || (objc_msgSend(v3, "hf_standardServices"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5) || (objc_msgSend(v3, "hf_isBridge"))
  {
    v6 = 0;
  }

  else
  {
    v8 = [v3 hf_linkedResidentDevice];
    v6 = v8 == 0;
  }

  return v6;
}

uint64_t __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled])
  {
    v4 = [v3 hf_linkedAccessory];
    if (v4)
    {
      v5 = [*(a1 + 32) room];
      if (v5)
      {
        v6 = [*(a1 + 32) room];
        v7 = [v3 hf_linkedAccessory];
        v8 = [v7 room];
        v9 = [v6 isEqual:v8];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hf_linkedResidentDevice];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CBEB98];
    v8 = [v3 services];
    v9 = [v7 setWithArray:v8];
    v5 = [v6 intersectsSet:v9];
  }

  return v5;
}

uint64_t __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = [v4 homeManager];
  v6 = [v5 hasOptedToHH2];

  if (v6)
  {
    v7 = [v3 hf_linkedAccessory];

    v8 = [v7 isReachable];
    if (v8)
    {
      return 0;
    }
  }

  else
  {
    v10 = [v3 hf_isReachable];

    if (v10)
    {
      return 0;
    }
  }

  v11 = [*(a1 + 32) home];
  v12 = [v11 hf_shouldHideResidentDeviceReachabilityIssues];

  return v12 ^ 1u;
}

void *__55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_11(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hf_linkedAccessory];
  v5 = v4;
  if (!v4)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 loggerActivity];
      os_activity_scope_enter(v7, &v16);

      v8 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 40);
        *buf = 138412546;
        v18 = v9;
        v19 = 2112;
        v20 = v3;
        _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "%@: Missing linked accessory for unreachable resident device %@", buf, 0x16u);
      }

      os_activity_scope_leave(&v16);
    }

    else
    {
      v14 = HFLogForCategory(0x2CuLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 40);
        *buf = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v3;
        _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "%@: Missing linked accessory for unreachable resident device %@", buf, 0x16u);
      }
    }

    v5 = v3;
  }

  if (_os_feature_enabled_impl())
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

id __55__HFUnreachableStatusItem__subclass_updateWithOptions___block_invoke_48(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [a2 characteristics];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end