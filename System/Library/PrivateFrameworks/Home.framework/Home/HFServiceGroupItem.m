@interface HFServiceGroupItem
+ (BOOL)_isControlItem:(id)a3 identicalToControlItem:(id)a4;
+ (BOOL)_isControlItem:(id)a3 similarToControlItem:(id)a4;
+ (id)_combinedWriteErrorForError:(id)a3 serviceGroupTitle:(id)a4;
+ (id)itemWithAccessoryRepresentableObject:(id)a3 valueSource:(id)a4;
- (BOOL)actionsMayRequireDeviceUnlock;
- (BOOL)containsActions;
- (HFServiceGroupItem)init;
- (HFServiceGroupItem)initWithValueSource:(id)a3 serviceGroup:(id)a4;
- (HMHome)home;
- (NSSet)services;
- (NSString)description;
- (double)_averageNumericalValueForResultsKey:(id)a3 inServiceItems:(id)a4;
- (id)_aggregatedValueSource;
- (id)_buildControlItemsForServiceItems:(id)a3;
- (id)_buildServiceItems;
- (id)_mergedIconDescriptorForServiceItems:(id)a3;
- (id)_mostCommonValueForResultsKey:(id)a3 inServiceItems:(id)a4;
- (id)_mostCommonValueInServiceItems:(id)a3 valueProvider:(id)a4;
- (id)_sortDescriptorsForServiceItems;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)_unanimousValueForResultsKey:(id)a3 inServiceItems:(id)a4;
- (id)accessories;
- (id)allControlItems;
- (id)controlPanelItems;
- (id)copyWithValueSource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentStateActionBuildersForHome:(id)a3;
- (id)incrementalStateControlItem;
- (id)namingComponentForHomeKitObject;
- (id)primaryStateControlItem;
- (id)serviceLikeBuilderInHome:(id)a3;
- (int64_t)_highestIntegerValueForResultsKey:(id)a3 inServiceItems:(id)a4;
- (unint64_t)numberOfItemsContainedWithinGroup;
@end

@implementation HFServiceGroupItem

+ (id)itemWithAccessoryRepresentableObject:(id)a3 valueSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [v7 hf_homeKitObject];

  v10 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v10;
    if (v11)
    {
      goto LABEL_8;
    }

    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v13 handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v12 = 0;
LABEL_8:

  v15 = [[a1 alloc] initWithValueSource:v6 serviceGroup:v12];

  return v15;
}

- (HFServiceGroupItem)initWithValueSource:(id)a3 serviceGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFServiceGroupItem;
  v9 = [(HFServiceGroupItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_valueSource, a3);
    objc_storeStrong(&v10->_serviceGroup, a4);
  }

  return v10;
}

- (HFServiceGroupItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFServiceGroupItem.m" lineNumber:40 description:@"Use -initWithValueSource:serviceGroup:"];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(HFServiceGroupItem *)self valueSource];
  v5 = [(HFServiceGroupItem *)self copyWithValueSource:v4];

  return v5;
}

- (id)copyWithValueSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFServiceGroupItem *)self serviceGroup];
  v7 = [v5 initWithValueSource:v4 serviceGroup:v6];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFServiceGroupItem *)self serviceGroup];
  v7 = [v6 hf_prettyDescription];
  v8 = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, v7, v8];

  return v9;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  v6 = [(HFServiceGroupItem *)self _buildServiceItems];
  v7 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      v12 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v29 + 1) + 8 * v12) updateWithOptions:v4];
        [v7 na_safeAddObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x277D2C900];
  v15 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v16 = [v14 combineAllFutures:v7 ignoringErrors:1 scheduler:v15];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __50__HFServiceGroupItem__subclass_updateWithOptions___block_invoke;
  v25[3] = &unk_277DF5010;
  v25[4] = self;
  v26 = v8;
  v27 = v4;
  v17 = v5;
  v28 = v17;
  v18 = v4;
  v19 = v8;
  v20 = [v16 addCompletionBlock:v25];
  v21 = v28;
  v22 = v17;

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

void __50__HFServiceGroupItem__subclass_updateWithOptions___block_invoke(id *a1, void *a2, void *a3)
{
  v102 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [a1[4] serviceGroup];
  v9 = [v8 hf_serviceNameComponents];

  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"serviceNameComponents"];
    v10 = [v9 composedString];
    if (v10)
    {
      [v7 setObject:v10 forKeyedSubscript:@"title"];
    }
  }

  v75 = v9;
  v11 = [a1[4] _buildControlItemsForServiceItems:a1[5]];
  v12 = [a1[6] objectForKeyedSubscript:HFItemUpdateOptionPreviousResults];
  v13 = [v12 objectForKeyedSubscript:@"childItems"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277CBEB98] set];
  }

  v16 = v15;

  v73 = v16;
  v74 = v11;
  v17 = [v16 na_setByDiffingWithSet:v11];
  [v7 setObject:v17 forKeyedSubscript:@"childItems"];

  v81 = [MEMORY[0x277CBEB58] set];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v76 = a1;
  v18 = a1[5];
  v19 = [v18 countByEnumeratingWithState:&v94 objects:v101 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v95;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v95 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v94 + 1) + 8 * i) latestResults];
        v24 = [v23 objectForKeyedSubscript:@"dependentHomeKitObjects"];

        if (v24)
        {
          [v81 unionSet:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v94 objects:v101 count:16];
    }

    while (v20);
  }

  [v7 setObject:v81 forKeyedSubscript:@"dependentHomeKitObjects"];
  v72 = [v76[4] _unanimousValueForResultsKey:@"hidden" inServiceItems:v76[5]];
  v25 = [v72 BOOLValue];
  v26 = [v76[5] count] == 0;
  v27 = [v76[4] serviceGroup];
  v28 = [v27 hf_isSupported];

  v29 = v26 | ~v28;
  v30 = v76;
  LOBYTE(v27) = v29 | v25;
  v31 = [MEMORY[0x277CCABB0] numberWithBool:(v29 | v25) & 1];
  [v7 setObject:v31 forKeyedSubscript:@"hidden"];

  if ((v27 & 1) == 0)
  {
    v70 = v6;
    v71 = v5;
    v32 = [v76[4] _mergedIconDescriptorForServiceItems:v76[5]];
    [v7 setObject:v32 forKeyedSubscript:@"icon"];

    v33 = [v76[4] _unanimousValueForResultsKey:@"state" inServiceItems:v76[5]];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = &unk_282524D38;
    }

    [v7 setObject:v35 forKeyedSubscript:@"state"];

    v36 = [v76[4] _mostCommonValueForResultsKey:@"roomIdentifier" inServiceItems:v76[5]];
    [v7 setObject:v36 forKeyedSubscript:@"roomIdentifier"];

    v80 = [MEMORY[0x277CBEAA8] distantFuture];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v37 = v76[5];
    v38 = [v37 countByEnumeratingWithState:&v90 objects:v100 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v91;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v91 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = [*(*(&v90 + 1) + 8 * j) latestResults];
          v43 = [v42 objectForKeyedSubscript:@"dateAdded"];

          if (v43)
          {
            v44 = [v80 earlierDate:v43];

            v80 = v44;
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v90 objects:v100 count:16];
      }

      while (v39);
    }

    v45 = [MEMORY[0x277CBEAA8] distantFuture];
    v46 = [v80 isEqualToDate:v45];

    if ((v46 & 1) == 0)
    {
      [v7 setObject:v80 forKeyedSubscript:@"dateAdded"];
    }

    v69 = [v76[4] _mostCommonValueInServiceItems:v76[5] valueProvider:&__block_literal_global_183];
    [v7 na_safeSetObject:? forKey:?];
    v47 = v76[5];
    v48 = [v76[4] _sortDescriptorsForServiceItems];
    v49 = [v47 sortedArrayUsingDescriptors:v48];

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    obj = v49;
    v79 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
    if (v79)
    {
      v78 = *v87;
      do
      {
        for (k = 0; k != v79; ++k)
        {
          if (*v87 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v51 = *(*(&v86 + 1) + 8 * k);
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v52 = [v51 latestResults];
          v53 = [v52 countByEnumeratingWithState:&v82 objects:v98 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v83;
            do
            {
              for (m = 0; m != v54; ++m)
              {
                if (*v83 != v55)
                {
                  objc_enumerationMutation(v52);
                }

                v57 = *(*(&v82 + 1) + 8 * m);
                v58 = [v7 objectForKeyedSubscript:v57];

                if (!v58)
                {
                  v59 = [v51 latestResults];
                  v60 = [v59 objectForKeyedSubscript:v57];
                  [v7 setObject:v60 forKeyedSubscript:v57];
                }
              }

              v54 = [v52 countByEnumeratingWithState:&v82 objects:v98 count:16];
            }

            while (v54);
          }
        }

        v79 = [obj countByEnumeratingWithState:&v86 objects:v99 count:16];
      }

      while (v79);
    }

    v30 = v76;
    v61 = [v76[4] serviceGroup];
    v62 = [v61 hf_hasSetFavorite];

    if (v62)
    {
      v63 = MEMORY[0x277CCABB0];
      v64 = [v76[4] serviceGroup];
      v65 = [v63 numberWithBool:{objc_msgSend(v64, "hf_isFavorite")}];
      [v7 setObject:v65 forKeyedSubscript:@"isFavorite"];
    }

    else
    {
      [v7 setObject:0 forKeyedSubscript:@"isFavorite"];
    }

    v6 = v70;
    v5 = v71;
  }

  v66 = v30[7];
  v67 = [HFItemUpdateOutcome outcomeWithResults:v7];
  [v66 finishWithResult:v67];

  v68 = *MEMORY[0x277D85DE8];
}

void *__50__HFServiceGroupItem__subclass_updateWithOptions___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"badge"];

  if ([v3 isEqual:&unk_282524D50])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (unint64_t)numberOfItemsContainedWithinGroup
{
  v2 = [(HFServiceGroupItem *)self serviceGroup];
  v3 = [v2 services];
  v4 = [v3 count];

  return v4;
}

- (id)_buildServiceItems
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HFServiceGroupItem *)self serviceGroup];
  v5 = [v4 services];
  v6 = [v3 setWithArray:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__HFServiceGroupItem__buildServiceItems__block_invoke;
  v9[3] = &unk_277DF4A10;
  v9[4] = self;
  v7 = [v6 na_map:v9];

  return v7;
}

id __40__HFServiceGroupItem__buildServiceItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [HFServiceItem serviceItemForService:v3 valueSource:v4];

  return v5;
}

- (id)_buildControlItemsForServiceItems:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v35 = [v4 anyObject];
    v5 = [v35 latestResults];
    v6 = [v5 objectForKeyedSubscript:?];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __56__HFServiceGroupItem__buildControlItemsForServiceItems___block_invoke;
    v51[3] = &unk_277DF4A58;
    v51[4] = self;
    v7 = [v6 na_map:v51];
    v8 = [v7 mutableCopy];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = v4;
    obj = v4;
    v36 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v36)
    {
      v34 = *v48;
      v9 = v42;
      v10 = &unk_277DF4A80;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v48 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v47 + 1) + 8 * i);
          if (v12 != v35)
          {
            v37 = i;
            v39 = [MEMORY[0x277CBEB58] set];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v13 = [v12 latestResults];
            v14 = [v13 objectForKeyedSubscript:@"childItems"];

            v40 = v14;
            v15 = [v14 countByEnumeratingWithState:&v43 objects:v52 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v44;
              do
              {
                v18 = 0;
                v38 = v16;
                do
                {
                  if (*v44 != v17)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v19 = *(*(&v43 + 1) + 8 * v18);
                  v41[0] = MEMORY[0x277D85DD0];
                  v41[1] = 3221225472;
                  v42[0] = __56__HFServiceGroupItem__buildControlItemsForServiceItems___block_invoke_2;
                  v42[1] = v10;
                  v42[2] = self;
                  v42[3] = v19;
                  v20 = [v8 na_firstObjectPassingTest:{v41, v32}];
                  if (v20)
                  {
                    if ([objc_opt_class() _isControlItem:v20 identicalToControlItem:v19])
                    {
                      [v39 addObject:v20];
                    }

                    else
                    {
                      v21 = v17;
                      v22 = v9;
                      v23 = v8;
                      v24 = v10;
                      v25 = [v19 characteristicOptions];
                      v26 = [v20 characteristicOptions];
                      v27 = [v25 optionsByIntersectingWithOptions:v26];

                      if ([v20 canCopyWithCharacteristicOptions:v27])
                      {
                        v28 = [(HFServiceGroupItem *)self _aggregatedValueSource];
                        v29 = [v20 copyWithCharacteristicOptions:v27 valueSource:v28];

                        [v39 addObject:v29];
                      }

                      v10 = v24;
                      v8 = v23;
                      v9 = v22;
                      v17 = v21;
                      v16 = v38;
                    }
                  }

                  ++v18;
                }

                while (v16 != v18);
                v16 = [v40 countByEnumeratingWithState:&v43 objects:v52 count:16];
              }

              while (v16);
            }

            v8 = v39;
            i = v37;
          }
        }

        v36 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v36);
    }

    v4 = v32;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v8;
}

id __56__HFServiceGroupItem__buildControlItemsForServiceItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _aggregatedValueSource];
  v5 = [v3 copyWithValueSource:v4];

  return v5;
}

uint64_t __56__HFServiceGroupItem__buildControlItemsForServiceItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() _isControlItem:v4 similarToControlItem:*(a1 + 40)];

  return v5;
}

+ (BOOL)_isControlItem:(id)a3 similarToControlItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v7 = [v5 characteristicOptions];
    v8 = [v7 objectForKeyedSubscript:&unk_282524D50];
    v9 = [v6 characteristicOptions];
    v10 = [v9 objectForKeyedSubscript:&unk_282524D50];
    v11 = [v8 intersectsSet:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_isControlItem:(id)a3 identicalToControlItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v7 = [v5 characteristicOptions];
    v8 = [v6 characteristicOptions];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_aggregatedValueSource
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [(HFServiceGroupItem *)self serviceGroup];
  v5 = [v4 services];
  v6 = [v3 setWithArray:v5];

  v7 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v8 = [(HFServiceGroupItem *)self valueSource];
  v9 = [(HFServiceGroupItem *)self serviceGroup];
  v10 = [v9 hf_serviceDescriptor];
  v11 = [(HFSimpleAggregatedCharacteristicValueSource *)v7 initWithValueSource:v8 services:v6 primaryServiceDescriptor:v10];

  return v11;
}

- (id)primaryStateControlItem
{
  v2 = NSStringFromSelector(a2);
  NSLog(&cfstr_IsDeprecatedAn.isa, v2);

  return 0;
}

- (id)incrementalStateControlItem
{
  v2 = NSStringFromSelector(a2);
  NSLog(&cfstr_IsDeprecatedAn.isa, v2);

  return 0;
}

- (id)allControlItems
{
  v2 = NSStringFromSelector(a2);
  NSLog(&cfstr_IsDeprecatedAn.isa, v2);

  v3 = MEMORY[0x277CBEB98];

  return [v3 set];
}

- (id)controlPanelItems
{
  v2 = NSStringFromSelector(a2);
  NSLog(&cfstr_IsDeprecatedAn.isa, v2);

  return MEMORY[0x277CBEBF8];
}

- (BOOL)containsActions
{
  v2 = [(HFServiceGroupItem *)self _buildServiceItems];
  v3 = [v2 na_any:&__block_literal_global_34_7];

  return v3;
}

- (BOOL)actionsMayRequireDeviceUnlock
{
  v2 = [(HFServiceGroupItem *)self _buildServiceItems];
  v3 = [v2 na_any:&__block_literal_global_36_3];

  return v3;
}

- (id)currentStateActionBuildersForHome:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v26 = objc_alloc_init(MEMORY[0x277D2C900]);
  v4 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [(HFServiceGroupItem *)self serviceGroup];
  v6 = [v5 services];

  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        v12 = [(HFServiceGroupItem *)self valueSource];
        v13 = [HFServiceItem serviceItemForService:v11 valueSource:v12];

        if (v13)
        {
          v14 = [v13 currentStateActionBuildersForHome:v27];
          if (v14)
          {
            [v4 addObject:v14];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v15 = MEMORY[0x277D2C900];
  v16 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v17 = [v15 combineAllFutures:v4 ignoringErrors:0 scheduler:v16];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __56__HFServiceGroupItem_currentStateActionBuildersForHome___block_invoke;
  v30[3] = &unk_277DF9508;
  v18 = v26;
  v31 = v18;
  v19 = [v17 addSuccessBlock:v30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __56__HFServiceGroupItem_currentStateActionBuildersForHome___block_invoke_2;
  v28[3] = &unk_277DF2D08;
  v20 = v18;
  v29 = v20;
  v21 = [v17 addFailureBlock:v28];
  v22 = v29;
  v23 = v20;

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

void __56__HFServiceGroupItem_currentStateActionBuildersForHome___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 unionSet:{*(*(&v11 + 1) + 8 * v9++), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) finishWithResult:v4];
  v10 = *MEMORY[0x277D85DE8];
}

- (HMHome)home
{
  v2 = [(HFServiceGroupItem *)self serviceGroup];
  v3 = [v2 services];
  v4 = [v3 firstObject];
  v5 = [v4 home];

  return v5;
}

- (NSSet)services
{
  v3 = [(HFServiceGroupItem *)self serviceGroup];
  v4 = [v3 services];
  v5 = MEMORY[0x277CBEB98];
  if (v4)
  {
    v6 = [(HFServiceGroupItem *)self serviceGroup];
    v7 = [v6 services];
    v8 = [v5 setWithArray:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  return v8;
}

- (id)accessories
{
  v2 = [(HFServiceGroupItem *)self services];
  v3 = [v2 na_map:&__block_literal_global_41_1];

  return v3;
}

- (id)serviceLikeBuilderInHome:(id)a3
{
  v4 = a3;
  v5 = [HFServiceGroupBuilder alloc];
  v6 = [(HFServiceGroupItem *)self homeKitObject];
  v7 = [(HFServiceGroupBuilder *)v5 initWithExistingObject:v6 inHome:v4];

  return v7;
}

+ (id)_combinedWriteErrorForError:(id)a3 serviceGroupTitle:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:@"HFOperationChangeValuesForMultipleServices" forKeyedSubscript:@"HFErrorUserInfoOperationKey"];
  if (v6)
  {
    v12 = @"HFErrorHandlerOptionFailedItemName";
    v13[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v7 setObject:v8 forKeyedSubscript:@"HFErrorUserInfoOptionsKey"];
  }

  v9 = [v5 hf_errorWithAddedUserInfo:v7];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_unanimousValueForResultsKey:(id)a3 inServiceItems:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v17 + 1) + 8 * i) latestResults];
        v13 = [v12 objectForKeyedSubscript:v5];

        if (v13)
        {
          if (v9)
          {
            if (![v9 isEqual:v13])
            {

              v14 = 0;
              goto LABEL_16;
            }
          }

          else
          {
            v9 = v13;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v9 = v9;
  v14 = v9;
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (double)_averageNumericalValueForResultsKey:(id)a3 inServiceItems:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v20;
  v11 = 0.0;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v13 = [*(*(&v19 + 1) + 8 * i) latestResults];
      v14 = [v13 objectForKeyedSubscript:v5];

      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ++v9;
          [v14 doubleValue];
          v11 = v11 + v15;
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);
  if (v9 >= 1)
  {
    v16 = v11 / v9;
  }

  else
  {
LABEL_13:
    v16 = 1.79769313e308;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_mostCommonValueForResultsKey:(id)a3 inServiceItems:(id)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__HFServiceGroupItem__mostCommonValueForResultsKey_inServiceItems___block_invoke;
  v10[3] = &unk_277DF9578;
  v11 = v6;
  v7 = v6;
  v8 = [(HFServiceGroupItem *)self _mostCommonValueInServiceItems:a4 valueProvider:v10];

  return v8;
}

id __67__HFServiceGroupItem__mostCommonValueForResultsKey_inServiceItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  return v4;
}

- (int64_t)_highestIntegerValueForResultsKey:(id)a3 inServiceItems:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 0xFFFFFFFF80000000;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) latestResults];
        v13 = [v12 objectForKeyedSubscript:v5];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 integerValue] > v10)
        {
          v10 = [v13 integerValue];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0xFFFFFFFF80000000;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_mergedIconDescriptorForServiceItems:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:@"HFImageIconIdentifierGeneric"];
  v6 = [v4 na_map:&__block_literal_global_46_3];
  if ([v6 count] == 1)
  {
    v7 = [v6 anyObject];
  }

  else
  {
    v8 = [v4 na_map:&__block_literal_global_48_5];
    v9 = [v4 na_map:&__block_literal_global_50_2];
    if ([v8 count] >= 2 && objc_msgSend(v9, "count") == 1)
    {
      v10 = [v9 anyObject];
      v11 = [v10 serviceType];
      v12 = [v9 anyObject];
      [v12 serviceSubtype];
      v14 = v13 = v9;
      v7 = [HFServiceIconFactory defaultIconDescriptorForServiceType:v11 serviceSubtype:v14];

      v9 = v13;
    }

    else
    {
      v15 = [(HFServiceGroupItem *)self _mostCommonValueInServiceItems:v4 valueProvider:&__block_literal_global_53_3];
      v16 = v15;
      if (v15)
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __59__HFServiceGroupItem__mergedIconDescriptorForServiceItems___block_invoke_5;
        v42[3] = &unk_277DF9578;
        v43 = v15;
        v17 = [v4 na_map:v42];
        if ([v17 count])
        {
          v36 = v8;
          v18 = [v17 anyObject];
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v19 = [MEMORY[0x277CBEB98] setWithObject:v18];
          v35 = v17;
          v20 = [v17 na_setByRemovingObjectsFromSet:v19];

          v21 = [v20 countByEnumeratingWithState:&v38 objects:v44 count:16];
          v37 = v18;
          v22 = v18;
          if (v21)
          {
            v23 = v21;
            v24 = *v39;
            v25 = &selRef_hf_learnAboutUnshareableNetworksURL;
            v22 = v37;
            v33 = v16;
            v34 = v9;
            while (2)
            {
              v26 = 0;
              v27 = v25[428];
              v28 = v22;
              do
              {
                if (*v39 != v24)
                {
                  objc_enumerationMutation(v20);
                }

                if (!v28 || (v29 = *(*(&v38 + 1) + 8 * v26), (objc_opt_respondsToSelector() & 1) == 0))
                {

                  v22 = 0;
                  v16 = v33;
                  v9 = v34;
                  goto LABEL_20;
                }

                v22 = [(HFImageIconDescriptor *)v28 iconDescriptorByMergingWithIconDescriptor:v29];

                ++v26;
                v28 = v22;
              }

              while (v23 != v26);
              v23 = [v20 countByEnumeratingWithState:&v38 objects:v44 count:16];
              v16 = v33;
              v9 = v34;
              v25 = &selRef_hf_learnAboutUnshareableNetworksURL;
              if (v23)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:

          if (v22)
          {
            v30 = v22;
          }

          else
          {
            v30 = v5;
          }

          v7 = v30;

          v17 = v35;
          v8 = v36;
        }

        else
        {
          if (![v17 count])
          {
            NSLog(&cfstr_WeHaveAMostCom.isa);
          }

          v7 = v5;
        }
      }

      else
      {
        v7 = v5;
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return v7;
}

id __59__HFServiceGroupItem__mergedIconDescriptorForServiceItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"icon"];

  return v3;
}

id __59__HFServiceGroupItem__mergedIconDescriptorForServiceItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 hf_accessoryType];

  return v3;
}

id __59__HFServiceGroupItem__mergedIconDescriptorForServiceItems___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 hf_serviceDescriptor];

  return v3;
}

id __59__HFServiceGroupItem__mergedIconDescriptorForServiceItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"icon"];

  v4 = [v3 identifier];

  return v4;
}

void *__59__HFServiceGroupItem__mergedIconDescriptorForServiceItems___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:@"icon"];

  v5 = [v4 identifier];
  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)_mostCommonValueInServiceItems:(id)a3 valueProvider:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [a3 allObjects];
    v7 = [v6 sortedArrayUsingComparator:&__block_literal_global_61_3];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__HFServiceGroupItem__mostCommonValueInServiceItems_valueProvider___block_invoke_2;
    v11[3] = &unk_277DFF468;
    v12 = v5;
    v8 = [v7 na_map:v11];
    v9 = [v8 hf_firstMostCommonObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __67__HFServiceGroupItem__mostCommonValueInServiceItems_valueProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 service];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 service];

  v8 = [v7 uniqueIdentifier];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)_sortDescriptorsForServiceItems
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_64_1];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_69_0];
  v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_71_5];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __53__HFServiceGroupItem__sortDescriptorsForServiceItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"priority"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_282524D68;
  }

  v9 = v8;

  v10 = [v4 latestResults];

  v11 = [v10 objectForKeyedSubscript:@"priority"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &unk_282524D68;
  }

  v14 = v13;

  v15 = [v9 compare:v14];
  return v15;
}

uint64_t __53__HFServiceGroupItem__sortDescriptorsForServiceItems__block_invoke_67(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 latestResults];
  v7 = [v6 objectForKeyedSubscript:@"errorDescription"];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 latestResults];
    v10 = [v9 objectForKeyedSubscript:@"errorDescription"];

    if (!v10)
    {
      v11 = -1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = [v4 latestResults];
  v13 = [v12 objectForKeyedSubscript:@"errorDescription"];
  if (v13)
  {

    v11 = 0;
  }

  else
  {
    v14 = [v5 latestResults];
    v15 = [v14 objectForKeyedSubscript:@"errorDescription"];
    v11 = v15 != 0;
  }

LABEL_8:

  return v11;
}

uint64_t __53__HFServiceGroupItem__sortDescriptorsForServiceItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"subPriority"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &unk_282524D80;
  }

  v9 = v8;

  v10 = [v4 latestResults];

  v11 = [v10 objectForKeyedSubscript:@"subPriority"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &unk_282524D80;
  }

  v14 = v13;

  v15 = [v9 compare:v14];
  return v15;
}

- (id)namingComponentForHomeKitObject
{
  v2 = [(HFServiceGroupItem *)self serviceGroup];
  v3 = [HFNamingComponents namingComponentFromServiceGroup:v2];

  return v3;
}

@end