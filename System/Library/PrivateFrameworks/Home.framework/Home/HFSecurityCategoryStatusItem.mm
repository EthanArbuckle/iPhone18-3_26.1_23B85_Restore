@interface HFSecurityCategoryStatusItem
+ (id)_aggregatablePositionStatusItemClasses;
+ (id)statusItemClasses;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFSecurityCategoryStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_209 != -1)
  {
    dispatch_once(&_MergedGlobals_209, &__block_literal_global_3_0);
  }

  v3 = qword_280E02A80;

  return v3;
}

void __49__HFSecurityCategoryStatusItem_statusItemClasses__block_invoke_2()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:6];
  v1 = qword_280E02A80;
  qword_280E02A80 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = HFSecurityCategoryStatusItem;
  v5 = [(HFAccessoryCategoryStatusItem *)&v12 _subclass_updateWithOptions:optionsCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HFSecurityCategoryStatusItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DF3068;
  v10 = optionsCopy;
  selfCopy = self;
  v6 = optionsCopy;
  v7 = [v5 flatMap:v9];

  return v7;
}

id __60__HFSecurityCategoryStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [v4 objectForKeyedSubscript:@"hidden"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    goto LABEL_8;
  }

  v7 = _HFLocalizedStringWithDefaultValue(@"HFAccessoryTypeGroupNameSecurity", @"HFAccessoryTypeGroupNameSecurity", 1);
  [v4 setObject:v7 forKeyedSubscript:@"title"];

  [v4 setObject:@"Home.Status.Category.Security" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  [v4 setObject:@"lock.fill" forKeyedSubscript:@"iconNames"];
  v8 = [HFImageIconDescriptor alloc];
  v9 = [v4 objectForKeyedSubscript:@"iconNames"];
  v10 = [(HFImageIconDescriptor *)v8 initWithSystemImageNamed:v9];
  [v4 setObject:v10 forKeyedSubscript:@"icon"];

  v11 = [*(a1 + 32) objectForKeyedSubscript:HFItemUpdateOptionFastInitialUpdate];
  if ([v11 BOOLValue])
  {

LABEL_8:
    v37 = [MEMORY[0x277D2C900] futureWithResult:v4];
    goto LABEL_9;
  }

  v12 = [v4 objectForKeyedSubscript:@"state"];
  v13 = [v12 integerValue];

  if (!v13)
  {
    goto LABEL_8;
  }

  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = __Block_byref_object_copy__0;
  v129 = __Block_byref_object_dispose__0;
  v130 = 0;
  v14 = [MEMORY[0x277CBEB58] set];
  v15 = [MEMORY[0x277CBEB58] set];
  v16 = [MEMORY[0x277CBEB58] set];
  v17 = [MEMORY[0x277CBEB58] set];
  v18 = [MEMORY[0x277CBEB58] set];
  v19 = [MEMORY[0x277CBEB58] set];
  v20 = *(a1 + 40);
  v21 = [objc_opt_class() statusItemClasses];
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = __60__HFSecurityCategoryStatusItem__subclass_updateWithOptions___block_invoke_21;
  v117[3] = &unk_277DF3040;
  v117[4] = *(a1 + 40);
  v124 = &v125;
  v22 = v14;
  v118 = v22;
  v23 = v15;
  v119 = v23;
  v24 = v16;
  v120 = v24;
  v115 = v17;
  v121 = v115;
  v114 = v18;
  v122 = v114;
  v25 = v19;
  v123 = v25;
  [v21 na_each:v117];

  v116 = [*(a1 + 40) _statusItemOfClass:objc_opt_class()];
  v26 = *(a1 + 40);
  v27 = [objc_opt_class() _aggregatablePositionStatusItemClasses];
  v28 = v126[5];
  LODWORD(v21) = [v27 containsObject:objc_opt_class()];

  if (!v21)
  {
    v39 = v126[5];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v53 = [v116 latestResults];
      v54 = [v53 objectForKeyedSubscript:@"state"];
      v55 = [v54 isEqual:&unk_282523328];

      if (v55)
      {
        v36 = _HFLocalizedStringWithDefaultValue(@"HFSecurityCategoryStatusDescription_NoAlerts", @"HFSecurityCategoryStatusDescription_NoAlerts", 1);
        [v4 setObject:v36 forKeyedSubscript:@"description"];
        goto LABEL_37;
      }

      v36 = [v116 latestResults];
      v42 = [v36 objectForKeyedSubscript:@"shortDescription"];
      [v4 setObject:v42 forKeyedSubscript:@"description"];
LABEL_36:

      goto LABEL_37;
    }

    v40 = [v126[5] latestResults];
    v36 = [v40 objectForKeyedSubscript:@"obstructedServices"];

    v41 = [v126[5] latestResults];
    v42 = [v41 objectForKeyedSubscript:@"openServices"];

    v43 = [v126[5] latestResults];
    v113 = [v43 objectForKeyedSubscript:@"openingServices"];

    v44 = [v126[5] latestResults];
    v112 = [v44 objectForKeyedSubscript:@"closingServices"];

    if ([v36 count])
    {
      v45 = [v36 count];
      v52 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Jammed", @"%lu", v46, v47, v48, v49, v50, v51, v45);
      [v4 setObject:v52 forKeyedSubscript:@"description"];
    }

    else if ([v42 count])
    {
      v63 = [v42 count];
      v52 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Unlocked", @"%lu", v64, v65, v66, v67, v68, v69, v63);
      [v4 setObject:v52 forKeyedSubscript:@"description"];
    }

    else if ([v113 count])
    {
      v77 = [v113 count];
      v52 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Unlocking", @"%lu", v78, v79, v80, v81, v82, v83, v77);
      [v4 setObject:v52 forKeyedSubscript:@"description"];
    }

    else if ([v112 count])
    {
      v91 = [v112 count];
      v52 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Locking", @"%lu", v92, v93, v94, v95, v96, v97, v91);
      [v4 setObject:v52 forKeyedSubscript:@"description"];
    }

    else
    {
      if (![v25 count])
      {
LABEL_35:

        goto LABEL_36;
      }

      v105 = [v25 count];
      v52 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Unknown", @"%lu", v106, v107, v108, v109, v110, v111, v105);
      [v4 setObject:v52 forKeyedSubscript:@"description"];
    }

    goto LABEL_35;
  }

  if ([v22 count])
  {
    v29 = [v22 count];
    v36 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Obstructed", @"%lu", v30, v31, v32, v33, v34, v35, v29);
    [v4 setObject:v36 forKeyedSubscript:@"description"];
LABEL_37:

    goto LABEL_38;
  }

  if ([v23 count])
  {
    v56 = [v23 count];
    v36 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Open", @"%lu", v57, v58, v59, v60, v61, v62, v56);
    [v4 setObject:v36 forKeyedSubscript:@"description"];
    goto LABEL_37;
  }

  if ([v24 count])
  {
    v70 = [v24 count];
    v36 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Opening", @"%lu", v71, v72, v73, v74, v75, v76, v70);
    [v4 setObject:v36 forKeyedSubscript:@"description"];
    goto LABEL_37;
  }

  if ([v115 count])
  {
    v84 = [v115 count];
    v36 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Closing", @"%lu", v85, v86, v87, v88, v89, v90, v84);
    [v4 setObject:v36 forKeyedSubscript:@"description"];
    goto LABEL_37;
  }

  if ([v25 count])
  {
    v98 = [v25 count];
    v36 = HFLocalizedStringWithFormat(@"HFSecurityCategoryStatusTitle_Unknown", @"%lu", v99, v100, v101, v102, v103, v104, v98);
    [v4 setObject:v36 forKeyedSubscript:@"description"];
    goto LABEL_37;
  }

LABEL_38:
  [*(a1 + 40) applyInflectionToDescriptions:v4];
  v37 = [MEMORY[0x277D2C900] futureWithResult:v4];

  _Block_object_dispose(&v125, 8);
LABEL_9:

  return v37;
}

void __60__HFSecurityCategoryStatusItem__subclass_updateWithOptions___block_invoke_21(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _statusItemOfClass:a2];
  obj = v4;
  if (!*(*(*(a1 + 88) + 8) + 40))
  {
    v5 = [v4 latestResults];
    v6 = [v5 objectForKeyedSubscript:@"state"];
    v7 = [v6 isEqual:&unk_282523310];

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), obj);
    }
  }

  v8 = *(a1 + 32);
  v9 = [objc_opt_class() _aggregatablePositionStatusItemClasses];
  v10 = [v9 containsObject:a2];

  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = [obj latestResults];
    v13 = [v12 objectForKeyedSubscript:@"obstructedServices"];
    [v11 unionSet:v13];

    v14 = *(a1 + 48);
    v15 = [obj latestResults];
    v16 = [v15 objectForKeyedSubscript:@"openServices"];
    [v14 unionSet:v16];

    v17 = *(a1 + 56);
    v18 = [obj latestResults];
    v19 = [v18 objectForKeyedSubscript:@"openingServices"];
    [v17 unionSet:v19];

    v20 = *(a1 + 64);
    v21 = [obj latestResults];
    v22 = [v21 objectForKeyedSubscript:@"closingServices"];
    [v20 unionSet:v22];

    v23 = *(a1 + 72);
    v24 = [obj latestResults];
    v25 = [v24 objectForKeyedSubscript:@"closedServices"];
    [v23 unionSet:v25];
  }

  v26 = *(a1 + 80);
  v27 = [obj latestResults];
  v28 = [v27 objectForKeyedSubscript:@"unknownServices"];
  [v26 unionSet:v28];
}

+ (id)_aggregatablePositionStatusItemClasses
{
  if (qword_280E02A88 != -1)
  {
    dispatch_once(&qword_280E02A88, &__block_literal_global_63);
  }

  v3 = qword_280E02A90;

  return v3;
}

void __70__HFSecurityCategoryStatusItem__aggregatablePositionStatusItemClasses__block_invoke_2()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E02A90;
  qword_280E02A90 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end