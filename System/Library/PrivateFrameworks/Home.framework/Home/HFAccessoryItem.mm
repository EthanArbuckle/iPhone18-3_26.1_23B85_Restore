@interface HFAccessoryItem
+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source;
- (BOOL)_shouldComputeMultiServiceDescription;
- (BOOL)actionsMayRequireDeviceUnlock;
- (BOOL)containsActions;
- (BOOL)isAnnounceEnabled;
- (BOOL)isAudioAnalysisEnabled;
- (BOOL)isDoorbellChimeEnabled;
- (BOOL)isMultiLightDevice;
- (BOOL)isMultiSensorDevice;
- (BOOL)isSiriDisabled;
- (BOOL)isSiriEndpointAccessory;
- (BOOL)shouldReduceOptionItemsForNotifyingCharacteristics;
- (BOOL)shouldShowMutedMicIcon;
- (HFAccessoryItem)init;
- (HFAccessoryItem)initWithAccessory:(id)accessory valueSource:(id)source;
- (HFHomeKitObject)primaryHomeKitObject;
- (HFMediaAccessoryCommonSettingsManager)commonSettingsManager;
- (HMHome)home;
- (NSArray)allHomeKitObjects;
- (NSSet)services;
- (NSString)description;
- (id)_buildControlDescription;
- (id)_buildControlItems;
- (id)_buildServiceItems;
- (id)_buildTileDescription:(BOOL)description title:(id)title;
- (id)_collectAllChildItems;
- (id)_mostCommonValueForResultsKey:(id)key inServiceItems:(id)items;
- (id)_mostCommonValueInServiceItems:(id)items valueProvider:(id)provider;
- (id)_repeatingDescriptionsToCoalesce;
- (id)_sortDescriptorsForServiceItems;
- (id)_subclass_updateWithOptions:(id)options;
- (id)_unanimousValueForResultsKey:(id)key inServiceItems:(id)items;
- (id)accessories;
- (id)controlItemsForService:(id)service;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentStateActionBuildersForHome:(id)home;
- (id)iconDescriptorFor:(id)for;
- (id)namingComponentForHomeKitObject;
- (id)serviceItemForService:(id)service;
- (id)serviceLikeBuilderInHome:(id)home;
- (id)setSiriDisabled:(BOOL)disabled;
- (unint64_t)numberOfCompoundItems;
@end

@implementation HFAccessoryItem

- (id)iconDescriptorFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = _sSo15HFAccessoryItemC4HomeE14iconDescriptor3forSo011HFImageIconE0CSo11HMAccessoryC_tF_0(forCopy);

  return v6;
}

- (HFAccessoryItem)initWithAccessory:(id)accessory valueSource:(id)source
{
  v24 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = HFAccessoryItem;
  v9 = [(HFAccessoryItem *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, accessory);
    objc_storeStrong(&v10->_valueSource, source);
    v11 = HFLogForCategory(0x41uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      isSiriEndpointAccessory = [(HFAccessoryItem *)v10 isSiriEndpointAccessory];
      accessories = [(HFAccessoryItem *)v10 accessories];
      anyObject = [accessories anyObject];
      mediaProfile = [anyObject mediaProfile];
      hf_siriLanguageOptionsManager = [mediaProfile hf_siriLanguageOptionsManager];
      *buf = 67109378;
      v21 = isSiriEndpointAccessory;
      v22 = 2112;
      v23 = hf_siriLanguageOptionsManager;
      _os_log_debug_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEBUG, "isSiriEndPoint %{BOOL}d siriLanguageOptionsManager = %@", buf, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HFAccessoryItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryItem.m" lineNumber:60 description:@"Use -initWithAccessory:valueSource:"];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFAccessoryItem *)self valueSource];
  v5 = [(HFAccessoryItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  accessory = [(HFAccessoryItem *)self accessory];
  v7 = [v5 initWithAccessory:accessory valueSource:sourceCopy];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  accessory = [(HFAccessoryItem *)self accessory];
  hf_prettyDescription = [accessory hf_prettyDescription];
  latestResults = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, hf_prettyDescription, latestResults];

  return v9;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v42 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  _buildServiceItems = [(HFAccessoryItem *)self _buildServiceItems];
  [(HFAccessoryItem *)self setServiceItems:_buildServiceItems];
  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = _buildServiceItems;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v31 + 1) + 8 * i) updateWithOptions:optionsCopy];
        [array na_safeAddObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v10);
  }

  v14 = [HFServiceLikeItemUpdateRequest alloc];
  accessory = [(HFAccessoryItem *)self accessory];
  valueSource = [(HFAccessoryItem *)self valueSource];
  v17 = [MEMORY[0x277CBEB98] set];
  v18 = [(HFServiceLikeItemUpdateRequest *)v14 initWithAccessory:accessory valueSource:valueSource characteristics:v17];

  if (v18)
  {
    v19 = [(HFServiceLikeItemUpdateRequest *)v18 updateWithOptions:optionsCopy];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __47__HFAccessoryItem__subclass_updateWithOptions___block_invoke;
    v27[3] = &unk_277DF9428;
    v28 = array;
    selfCopy = self;
    v30 = v8;
    v20 = [v19 flatMap:v27];
  }

  else
  {
    v21 = HFLogForCategory(0x2CuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      accessory2 = [(HFAccessoryItem *)self accessory];
      *buf = 138412802;
      selfCopy2 = self;
      v37 = 2112;
      v38 = v25;
      v39 = 2112;
      v40 = accessory2;
      _os_log_error_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_ERROR, "%@:%@ Failed to create HFServiceLikeItemUpdateRequest. Accessory: %@ ", buf, 0x20u);
    }

    v22 = MEMORY[0x277D2C900];
    v19 = [HFItemUpdateOutcome outcomeWithResults:MEMORY[0x277CBEC10]];
    v20 = [v22 futureWithResult:v19];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

id __47__HFAccessoryItem__subclass_updateWithOptions___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v5 = a1[4];
  v6 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v7 = [v4 combineAllFutures:v5 ignoringErrors:1 scheduler:v6];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__HFAccessoryItem__subclass_updateWithOptions___block_invoke_2;
  v13[3] = &unk_277DF9400;
  v8 = a1[5];
  v9 = a1[6];
  v14 = v3;
  v15 = v8;
  v16 = v9;
  v10 = v3;
  v11 = [v7 flatMap:v13];

  return v11;
}

id __47__HFAccessoryItem__subclass_updateWithOptions___block_invoke_2(id *a1, void *a2)
{
  v172 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] standardResults];
  v5 = [v4 mutableCopy];

  v6 = [a1[5] accessory];
  v7 = [v6 hf_serviceNameComponents];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"serviceNameComponents"];
    v8 = [v7 composedString];
    if (v8)
    {
      [v5 setObject:v8 forKeyedSubscript:@"title"];
    }
  }

  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [v5 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v150 = v9;
  [v9 unionSet:v10];

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v144 = a1;
  v11 = a1[6];
  v12 = [v11 countByEnumeratingWithState:&v164 objects:v171 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v165;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v165 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v164 + 1) + 8 * i) latestResults];
        v17 = [v16 objectForKeyedSubscript:@"dependentHomeKitObjects"];

        if (v17)
        {
          [v150 unionSet:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v164 objects:v171 count:16];
    }

    while (v13);
  }

  if ([v144[5] isSiriEndpointAccessory])
  {
    v18 = [v144[5] accessories];
    v19 = [v18 anyObject];
    v20 = [v19 hf_siriEndpointProfile];
    [v150 na_safeAddObject:v20];
  }

  [v5 setObject:v150 forKeyedSubscript:@"dependentHomeKitObjects"];
  v143 = [v144[5] _unanimousValueForResultsKey:@"hidden" inServiceItems:v144[6]];
  v21 = [v143 BOOLValue];
  v22 = [v144[5] accessory];
  v23 = [v22 hf_isMatterOnlyAccessory];

  v24 = ([v144[6] count] == 0) & (v23 ^ 1) | v21;
  v25 = [MEMORY[0x277CCABB0] numberWithBool:v24 & 1];
  [v5 setObject:v25 forKeyedSubscript:@"hidden"];

  v26 = [v144[5] accessory];
  v27 = [v26 uniqueIdentifier];
  v28 = [HFURLComponents homeKitObjectURLForDestination:4 secondaryDestination:1 UUID:v27];
  [v5 setObject:v28 forKeyedSubscript:@"itemDetailsURL"];

  if ((v23 ^ 1))
  {
    v39 = v144;
    if (v24)
    {
      goto LABEL_78;
    }

    v40 = v144[5];
    v41 = [v40 accessory];
    v42 = [v41 hf_primaryService];
    v43 = [v40 serviceItemForService:v42];

    v44 = [v43 latestResults];
    v45 = [v44 objectForKeyedSubscript:@"state"];
    v46 = [v45 integerValue];

    v142 = v3;
    if ([v144[5] isMultiSensorDevice])
    {
      v46 = 1;
    }

    else if ([v144[5] isMultiLightDevice])
    {
      v47 = [v144[5] serviceItems];
      v48 = [v47 na_any:&__block_literal_global_74];

      if (v48)
      {
        v46 = 2;
      }

      else
      {
        v46 = 1;
      }
    }

    v49 = [MEMORY[0x277CCABB0] numberWithInteger:v46];
    [v5 setObject:v49 forKeyedSubscript:@"state"];

    v50 = MEMORY[0x277CCABB0];
    v51 = [v144[5] accessory];
    v52 = [v50 numberWithUnsignedInteger:{objc_msgSend(v51, "suspendedState")}];
    [v5 setObject:v52 forKeyedSubscript:@"suspendedState"];

    v53 = [v43 latestResults];
    v54 = [v53 objectForKeyedSubscript:@"icon"];

    v55 = [v144[5] accessory];
    v56 = [v55 hf_isMultiServiceAccessory];

    if (v56)
    {
      if ([v144[5] isMultiLightDevice])
      {
        v57 = [v43 latestResults];
        v58 = [v57 objectForKeyedSubscript:@"state"];
        v59 = [v58 integerValue];

        if (v59 != v46)
        {
          v60 = [v144[5] serviceItems];
          v163[0] = MEMORY[0x277D85DD0];
          v163[1] = 3221225472;
          v163[2] = __47__HFAccessoryItem__subclass_updateWithOptions___block_invoke_4;
          v163[3] = &__block_descriptor_40_e23_B16__0__HFServiceItem_8l;
          v163[4] = v46;
          v61 = [v60 na_firstObjectPassingTest:v163];

          if (v61)
          {
            v62 = [v61 latestResults];
            v63 = [v62 objectForKeyedSubscript:@"icon"];

            v54 = v63;
          }
        }
      }

      v64 = [v144[5] accessory];
      v65 = [HFServiceIconFactory overrideIconDescriptorForMultiServiceAccessory:v64 iconDescriptor:v54];

      v66 = v65;
    }

    else
    {
      v66 = v54;
    }

    v140 = v66;
    [v5 setObject:? forKeyedSubscript:?];
    v67 = [v144[5] _buildControlDescription];
    [v5 setObject:v67 forKeyedSubscript:@"controlDescription"];

    v68 = [v43 latestResults];
    v69 = [v68 objectForKeyedSubscript:@"persistentWarningDescription"];
    [v5 setObject:v69 forKeyedSubscript:@"persistentWarningDescription"];

    v141 = v43;
    v70 = [v43 latestResults];
    v71 = [v70 objectForKeyedSubscript:@"roomIdentifier"];
    v72 = v5;
    [v5 setObject:v71 forKeyedSubscript:@"roomIdentifier"];

    v148 = [MEMORY[0x277CBEAA8] distantFuture];
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v73 = v144[6];
    v74 = [v73 countByEnumeratingWithState:&v159 objects:v170 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v160;
      do
      {
        for (j = 0; j != v75; ++j)
        {
          if (*v160 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = [*(*(&v159 + 1) + 8 * j) latestResults];
          v79 = [v78 objectForKeyedSubscript:@"dateAdded"];

          if (v79)
          {
            v80 = [v148 earlierDate:v79];

            v148 = v80;
          }
        }

        v75 = [v73 countByEnumeratingWithState:&v159 objects:v170 count:16];
      }

      while (v75);
    }

    v81 = [MEMORY[0x277CBEAA8] distantFuture];
    v82 = [v148 isEqualToDate:v81];

    v5 = v72;
    if ((v82 & 1) == 0)
    {
      [v72 setObject:v148 forKeyedSubscript:@"dateAdded"];
    }

    v83 = [v144[5] _buildControlItems];
    [v72 setObject:v83 forKeyedSubscript:@"childItems"];

    v84 = [v144[5] _collectAllChildItems];
    [v72 setObject:v84 forKeyedSubscript:@"collatedChildItems"];

    v139 = [v144[5] _mostCommonValueInServiceItems:v144[6] valueProvider:&__block_literal_global_22_1];
    [v72 na_safeSetObject:? forKey:?];
    if ([v144[5] isSiriEndpointAccessory])
    {
      if ([v144[5] shouldShowMutedMicIcon])
      {
        v85 = [v72 objectForKeyedSubscript:@"descriptionBadge"];

        if (!v85)
        {
          [v72 setObject:&unk_282523D78 forKeyedSubscript:@"descriptionBadge"];
        }
      }
    }

    v86 = v144[6];
    v87 = [v144[5] _sortDescriptorsForServiceItems];
    v88 = [v86 sortedArrayUsingDescriptors:v87];

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    obj = v88;
    v147 = [obj countByEnumeratingWithState:&v155 objects:v169 count:16];
    if (v147)
    {
      v146 = *v156;
      do
      {
        v89 = 0;
        do
        {
          if (*v156 != v146)
          {
            objc_enumerationMutation(obj);
          }

          v149 = v89;
          v90 = *(*(&v155 + 1) + 8 * v89);
          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          v154 = 0u;
          v91 = [v90 latestResults];
          v92 = [v91 countByEnumeratingWithState:&v151 objects:v168 count:16];
          if (v92)
          {
            v93 = v92;
            v94 = *v152;
            do
            {
              for (k = 0; k != v93; ++k)
              {
                if (*v152 != v94)
                {
                  objc_enumerationMutation(v91);
                }

                v96 = *(*(&v151 + 1) + 8 * k);
                v97 = [v5 objectForKeyedSubscript:v96];

                if (!v97)
                {
                  if (([v96 isEqualToString:@"priority"] & 1) == 0 && !objc_msgSend(v96, "isEqualToString:", @"descriptionStyle") || (objc_msgSend(v90, "service"), v98 = objc_claimAutoreleasedReturnValue(), v99 = objc_msgSend(v98, "isPrimaryService"), v98, v99))
                  {
                    v100 = [v90 latestResults];
                    v101 = [v100 objectForKeyedSubscript:v96];
                    [v72 setObject:v101 forKeyedSubscript:v96];
                  }
                }

                v5 = v72;
              }

              v93 = [v91 countByEnumeratingWithState:&v151 objects:v168 count:16];
            }

            while (v93);
          }

          v89 = v149 + 1;
        }

        while (v149 + 1 != v147);
        v147 = [obj countByEnumeratingWithState:&v155 objects:v169 count:16];
      }

      while (v147);
    }

    objc_opt_class();
    v102 = [v5 objectForKeyedSubscript:@"underlyingError"];
    if (objc_opt_isKindOfClass())
    {
      v103 = v102;
    }

    else
    {
      v103 = 0;
    }

    v104 = v103;

    if (v104)
    {
      v105 = [v104 category] != 1;
    }

    else
    {
      v105 = 1;
    }

    v3 = v142;
    v106 = v144[5];
    v107 = [v5 objectForKeyedSubscript:@"title"];
    v108 = [v106 _buildTileDescription:v105 title:v107];
    [v5 setObject:v108 forKeyedSubscript:@"description"];

    v109 = [v144[5] accessory];
    LODWORD(v106) = [v109 hf_hasSetFavorite];

    if (v106)
    {
      v110 = MEMORY[0x277CCABB0];
      v111 = [v144[5] accessory];
      v112 = [v110 numberWithBool:{objc_msgSend(v111, "hf_isFavorite")}];
      [v5 setObject:v112 forKeyedSubscript:@"isFavorite"];
    }

    else
    {
      [v5 setObject:0 forKeyedSubscript:@"isFavorite"];
    }

    v38 = v140;
    v37 = v141;

    v39 = v144;
  }

  else
  {
    v29 = [v144[5] latestResults];
    v30 = [v29 objectForKeyedSubscript:@"state"];
    v31 = [v30 integerValue];

    v32 = [MEMORY[0x277CCABB0] numberWithInteger:v31];
    [v5 setObject:v32 forKeyedSubscript:@"state"];

    v33 = MEMORY[0x277CCABB0];
    v34 = [v144[5] accessory];
    v35 = [v33 numberWithUnsignedInteger:{objc_msgSend(v34, "suspendedState")}];
    [v5 setObject:v35 forKeyedSubscript:@"suspendedState"];

    v36 = v144[5];
    v37 = [v36 accessory];
    v38 = [v36 iconDescriptorFor:v37];
    [v5 setObject:v38 forKeyedSubscript:@"icon"];
    v39 = v144;
  }

LABEL_78:
  v113 = [v39[5] accessory];
  v114 = [v113 hf_isVisibleAsBridge];

  if (v114)
  {
    v115 = [v39[5] accessory];
    v116 = [v115 room];
    [v116 uniqueIdentifier];
    v118 = v117 = v39;
    [v5 na_safeSetObject:v118 forKey:@"roomIdentifier"];

    v119 = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
    v120 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
    v121 = [v120 configurationByApplyingConfiguration:v119];
    v122 = [v117[5] accessory];
    v123 = [HFServiceIconFactory iconDescriptorForAccessory:v122];

    objc_opt_class();
    v124 = v123;
    if (objc_opt_isKindOfClass())
    {
      v125 = v124;
    }

    else
    {
      v125 = 0;
    }

    v126 = v125;

    v127 = [v126 imageIconDescriptorWithUpdatedImageSymbolConfiguration:v121];

    [v5 setObject:v127 forKeyedSubscript:@"icon"];
  }

  v128 = [v5 objectForKeyedSubscript:@"controlDescription"];

  if (v128)
  {
    v129 = MEMORY[0x277CCA898];
    v130 = [v5 objectForKeyedSubscript:@"controlDescription"];
    v131 = [v5 objectForKeyedSubscript:@"title"];
    v132 = [v129 hf_attributedStringWithInflectableAccessoryStatus:v130 accessoryName:v131];
    v133 = [v132 string];
    [v5 setObject:v133 forKeyedSubscript:@"controlDescription"];
  }

  v134 = MEMORY[0x277D2C900];
  v135 = [HFItemUpdateOutcome outcomeWithResults:v5];
  v136 = [v134 futureWithResult:v135];

  v137 = *MEMORY[0x277D85DE8];

  return v136;
}

BOOL __47__HFAccessoryItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"state"];
  v4 = [v3 integerValue] == 2;

  return v4;
}

BOOL __47__HFAccessoryItem__subclass_updateWithOptions___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:@"state"];
  v5 = [v4 integerValue] == *(a1 + 32);

  return v5;
}

void *__47__HFAccessoryItem__subclass_updateWithOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"badge"];

  if ([v3 isEqual:&unk_282523D60])
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

- (BOOL)shouldShowMutedMicIcon
{
  commonSettingsManager = [(HFAccessoryItem *)self commonSettingsManager];
  v4 = [commonSettingsManager settingValueForKeyPath:HFAllowHeySiriSettingKeyPath];

  if (v4)
  {
    v5 = [v4 BOOLValue] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  accessory = [(HFAccessoryItem *)self accessory];
  supportsAudioAnalysis = [accessory supportsAudioAnalysis];

  if (!supportsAudioAnalysis || !v5)
  {
    if (((supportsAudioAnalysis ^ 1) & v5) == 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if ([(HFAccessoryItem *)self isAudioAnalysisEnabled])
  {
    goto LABEL_9;
  }

LABEL_7:
  home = [(HFAccessoryItem *)self home];
  v9 = [home audioAnalysisClassifierOptions] != 0;

LABEL_10:
  return v9;
}

- (id)controlItemsForService:(id)service
{
  v3 = [(HFAccessoryItem *)self serviceItemForService:service];
  v4 = v3;
  if (v3)
  {
    latestResults = [v3 latestResults];
    v6 = [latestResults objectForKeyedSubscript:@"childItems"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)serviceItemForService:(id)service
{
  serviceCopy = service;
  serviceItems = [(HFAccessoryItem *)self serviceItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__HFAccessoryItem_serviceItemForService___block_invoke;
  v9[3] = &unk_277DF9450;
  v10 = serviceCopy;
  v6 = serviceCopy;
  v7 = [serviceItems na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __41__HFAccessoryItem_serviceItemForService___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)_buildControlItems
{
  serviceItems = [(HFAccessoryItem *)self serviceItems];
  v4 = [serviceItems count];

  if (!v4)
  {
    v9 = [MEMORY[0x277CBEB98] set];
    goto LABEL_14;
  }

  if (v4 != 1)
  {
LABEL_8:
    accessory = [(HFAccessoryItem *)self accessory];
    hf_primaryService = [accessory hf_primaryService];
    v8 = [(HFAccessoryItem *)self serviceItemForService:hf_primaryService];

    latestResults = [v8 latestResults];
    v13 = [latestResults objectForKeyedSubscript:@"childItems"];

    if ([v13 na_any:&__block_literal_global_37_3] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v14 = [v13 na_map:&__block_literal_global_42];
    }

    else
    {
      serviceItems2 = [(HFAccessoryItem *)self serviceItems];
      v17 = [serviceItems2 na_any:&__block_literal_global_44_0];

      if (v17)
      {
        v18 = [HFAccessoryControlItem alloc];
        valueSource = [(HFAccessoryItem *)self valueSource];
        accessory2 = [(HFAccessoryItem *)self accessory];
        v21 = [(HFAccessoryControlItem *)v18 initWithValueSource:valueSource parentAccessory:accessory2 displayResults:MEMORY[0x277CBEC10]];

        v9 = [MEMORY[0x277CBEB58] setWithObject:v21];

        goto LABEL_12;
      }

      v14 = [MEMORY[0x277CBEB98] set];
    }

    v9 = v14;
LABEL_12:

    goto LABEL_13;
  }

  serviceItems3 = [(HFAccessoryItem *)self serviceItems];
  anyObject = [serviceItems3 anyObject];
  latestResults2 = [anyObject latestResults];
  v8 = [latestResults2 objectForKeyedSubscript:@"childItems"];

  if ([v8 count] != 1)
  {

    goto LABEL_8;
  }

  v9 = [v8 na_map:&__block_literal_global_34_1];
LABEL_13:

LABEL_14:

  return v9;
}

id __37__HFAccessoryItem__buildControlItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

uint64_t __37__HFAccessoryItem__buildControlItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id __37__HFAccessoryItem__buildControlItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

uint64_t __37__HFAccessoryItem__buildControlItems__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:@"childItems"];

  v4 = [v3 na_any:&__block_literal_global_46_0];
  return v4;
}

uint64_t __37__HFAccessoryItem__buildControlItems__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_collectAllChildItems
{
  v3 = MEMORY[0x277CBEB58];
  serviceItems = [(HFAccessoryItem *)self serviceItems];
  v5 = [v3 setWithCapacity:{objc_msgSend(serviceItems, "count")}];

  serviceItems2 = [(HFAccessoryItem *)self serviceItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__HFAccessoryItem__collectAllChildItems__block_invoke;
  v9[3] = &unk_277DF94E0;
  v7 = v5;
  v10 = v7;
  [serviceItems2 na_each:v9];

  return v7;
}

void __40__HFAccessoryItem__collectAllChildItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:@"childItems"];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__HFAccessoryItem__collectAllChildItems__block_invoke_2;
  v5[3] = &unk_277DF94B8;
  v6 = *(a1 + 32);
  [v4 na_each:v5];
}

void __40__HFAccessoryItem__collectAllChildItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  [v2 addObject:v3];
}

- (id)_buildServiceItems
{
  accessory = [(HFAccessoryItem *)self accessory];
  hf_visibleServices = [accessory hf_visibleServices];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HFAccessoryItem__buildServiceItems__block_invoke;
  v7[3] = &unk_277DF4A10;
  v7[4] = self;
  v5 = [hf_visibleServices na_map:v7];

  return v5;
}

id __37__HFAccessoryItem__buildServiceItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 valueSource];
  v5 = [HFServiceItem serviceItemForService:v3 valueSource:v4];

  return v5;
}

- (BOOL)containsActions
{
  _buildServiceItems = [(HFAccessoryItem *)self _buildServiceItems];
  v3 = [_buildServiceItems na_any:&__block_literal_global_54_1];

  return v3;
}

- (BOOL)actionsMayRequireDeviceUnlock
{
  _buildServiceItems = [(HFAccessoryItem *)self _buildServiceItems];
  v3 = [_buildServiceItems na_any:&__block_literal_global_56];

  return v3;
}

- (id)currentStateActionBuildersForHome:(id)home
{
  v37 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v26 = objc_alloc_init(MEMORY[0x277D2C900]);
  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  accessory = [(HFAccessoryItem *)self accessory];
  hf_visibleServices = [accessory hf_visibleServices];

  v7 = [hf_visibleServices countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(hf_visibleServices);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        valueSource = [(HFAccessoryItem *)self valueSource];
        v13 = [HFServiceItem serviceItemForService:v11 valueSource:valueSource];

        if (v13)
        {
          v14 = [v13 currentStateActionBuildersForHome:homeCopy];
          if (v14)
          {
            [array addObject:v14];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [hf_visibleServices countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v15 = MEMORY[0x277D2C900];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v17 = [v15 combineAllFutures:array ignoringErrors:0 scheduler:mainThreadScheduler];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __53__HFAccessoryItem_currentStateActionBuildersForHome___block_invoke;
  v30[3] = &unk_277DF9508;
  v18 = v26;
  v31 = v18;
  v19 = [v17 addSuccessBlock:v30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __53__HFAccessoryItem_currentStateActionBuildersForHome___block_invoke_2;
  v28[3] = &unk_277DF2D08;
  v20 = v18;
  v29 = v20;
  v21 = [v17 addFailureBlock:v28];
  v22 = v29;
  v23 = v20;

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

void __53__HFAccessoryItem_currentStateActionBuildersForHome___block_invoke(uint64_t a1, void *a2)
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
  accessory = [(HFAccessoryItem *)self accessory];
  home = [accessory home];

  return home;
}

- (NSSet)services
{
  accessory = [(HFAccessoryItem *)self accessory];
  hf_visibleServices = [accessory hf_visibleServices];

  return hf_visibleServices;
}

- (BOOL)shouldReduceOptionItemsForNotifyingCharacteristics
{
  accessory = [(HFAccessoryItem *)self accessory];
  hf_isProgrammableSwitch = [accessory hf_isProgrammableSwitch];

  return hf_isProgrammableSwitch ^ 1;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  accessory = [(HFAccessoryItem *)self accessory];
  v4 = [v2 na_setWithSafeObject:accessory];

  return v4;
}

- (id)serviceLikeBuilderInHome:(id)home
{
  homeCopy = home;
  v5 = [HFAccessoryBuilder alloc];
  homeKitObject = [(HFAccessoryItem *)self homeKitObject];
  v7 = [(HFAccessoryBuilder *)v5 initWithExistingObject:homeKitObject inHome:homeCopy];

  return v7;
}

- (id)namingComponentForHomeKitObject
{
  accessory = [(HFAccessoryItem *)self accessory];
  v3 = [HFNamingComponents namingComponentFromAccessory:accessory];

  return v3;
}

- (unint64_t)numberOfCompoundItems
{
  accessory = [(HFAccessoryItem *)self accessory];
  hf_visibleServices = [accessory hf_visibleServices];
  v4 = [hf_visibleServices count];

  return v4;
}

- (HFHomeKitObject)primaryHomeKitObject
{
  accessory = [(HFAccessoryItem *)self accessory];
  hf_primaryService = [accessory hf_primaryService];

  return hf_primaryService;
}

- (NSArray)allHomeKitObjects
{
  accessory = [(HFAccessoryItem *)self accessory];
  hf_visibleServices = [accessory hf_visibleServices];
  allObjects = [hf_visibleServices allObjects];
  hf_serviceComparator = [MEMORY[0x277CD1D90] hf_serviceComparator];
  v6 = [allObjects sortedArrayUsingComparator:hf_serviceComparator];

  return v6;
}

- (HFMediaAccessoryCommonSettingsManager)commonSettingsManager
{
  accessory = [(HFAccessoryItem *)self accessory];
  mediaProfile = [accessory mediaProfile];
  hf_mediaAccessoryCommonSettingsManager = [mediaProfile hf_mediaAccessoryCommonSettingsManager];

  return hf_mediaAccessoryCommonSettingsManager;
}

- (BOOL)isSiriEndpointAccessory
{
  accessory = [(HFAccessoryItem *)self accessory];
  hf_isSiriEndpoint = [accessory hf_isSiriEndpoint];

  return hf_isSiriEndpoint;
}

- (BOOL)isAnnounceEnabled
{
  if (![(HFAccessoryItem *)self isSiriEndpointAccessory])
  {
    return 0;
  }

  commonSettingsManager = [(HFAccessoryItem *)self commonSettingsManager];
  v4 = [commonSettingsManager settingValueForKeyPath:HFAnnounceEnabledKeyPath];

  if (!v4)
  {
    return 0;
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSiriDisabled
{
  commonSettingsManager = [(HFAccessoryItem *)self commonSettingsManager];
  v3 = [commonSettingsManager settingValueForKeyPath:HFAllowHeySiriSettingKeyPath];

  if (v3)
  {
    v4 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (id)setSiriDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  accessory = [(HFAccessoryItem *)self accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];

  if ([(HFAccessoryItem *)self isSiriEndpointAccessory])
  {
    commonSettingsManager = [(HFAccessoryItem *)self commonSettingsManager];
    accessory2 = [(HFAccessoryItem *)self accessory];
    home = [accessory2 home];
    uniqueIdentifier2 = [home uniqueIdentifier];
    v11 = HFAllowHeySiriSettingKeyPath;
    v12 = [MEMORY[0x277CCABB0] numberWithInt:!disabledCopy];
    futureWithNoResult = [commonSettingsManager updateAccessorySettingWithHomeIdentifier:uniqueIdentifier2 accessoryIdentifier:uniqueIdentifier keyPath:v11 rawSettingValue:v12];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (BOOL)isAudioAnalysisEnabled
{
  if (![(HFAccessoryItem *)self isSiriEndpointAccessory])
  {
    return 0;
  }

  commonSettingsManager = [(HFAccessoryItem *)self commonSettingsManager];
  v4 = [commonSettingsManager settingValueForKeyPath:HFAudioAnalysisEnabledKeyPath];

  if (!v4)
  {
    return 0;
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)isDoorbellChimeEnabled
{
  if (![(HFAccessoryItem *)self isSiriEndpointAccessory])
  {
    return 0;
  }

  commonSettingsManager = [(HFAccessoryItem *)self commonSettingsManager];
  v4 = [commonSettingsManager settingValueForKeyPath:HFDoorbellChimeEnabledKeyPath];

  if (!v4)
  {
    return 0;
  }

  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (id)_buildTileDescription:(BOOL)description title:(id)title
{
  descriptionCopy = description;
  v75 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  if (![(HFAccessoryItem *)self _shouldComputeMultiServiceDescription]|| !descriptionCopy)
  {
    accessory = [(HFAccessoryItem *)self accessory];
    hf_primaryService = [accessory hf_primaryService];
    v31 = [(HFAccessoryItem *)self serviceItemForService:hf_primaryService];

    latestResults = [v31 latestResults];
    v33 = [latestResults objectForKeyedSubscript:@"description"];

    v34 = 0;
    goto LABEL_49;
  }

  v66 = titleCopy;
  v69 = objc_opt_new();
  v7 = objc_opt_new();
  v68 = objc_opt_new();
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  serviceItems = [(HFAccessoryItem *)self serviceItems];
  v9 = [serviceItems countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (!v9)
  {
    v12 = 1;
    v13 = &stru_2824B1A78;
    goto LABEL_27;
  }

  v10 = v9;
  v11 = *v71;
  v12 = 1;
  v13 = &stru_2824B1A78;
  v14 = off_277DF0000;
  v67 = serviceItems;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v71 != v11)
      {
        objc_enumerationMutation(serviceItems);
      }

      v16 = *(*(&v70 + 1) + 8 * i);
      v17 = v14[7];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v19 = v7;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        v20 = objc_opt_isKindOfClass();
        v19 = v7;
        if ((v20 & 1) == 0)
        {
          objc_opt_class();
          v21 = objc_opt_isKindOfClass();
          v19 = v7;
          if ((v21 & 1) == 0)
          {
            objc_opt_class();
            v22 = objc_opt_isKindOfClass();
            v19 = v7;
            if ((v22 & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                continue;
              }

              latestResults2 = [v16 latestResults];
              v24 = [latestResults2 objectForKeyedSubscript:@"state"];
              integerValue = [v24 integerValue];

              serviceItems = v67;
              v26 = integerValue == 2;
              v14 = off_277DF0000;
              if (v26)
              {
                v19 = v69;
              }

              else
              {
                v19 = v68;
              }
            }
          }
        }
      }

      [v19 addObject:v16];
      if (![(__CFString *)v13 length])
      {
        service = [v16 service];
        [service serviceType];
        v13 = serviceType = v13;
        goto LABEL_20;
      }

      if (v12)
      {
        service = [v16 service];
        serviceType = [service serviceType];
        v12 = [(__CFString *)v13 isEqualToString:serviceType];
LABEL_20:

        continue;
      }

      v12 = 0;
    }

    v10 = [serviceItems countByEnumeratingWithState:&v70 objects:v74 count:16];
  }

  while (v10);
LABEL_27:

  v35 = [v69 count];
  v36 = [v68 count];
  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = v35 > 0;
  }

  if (v35)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36 > 0;
  }

  v39 = [v7 count];
  v46 = v36 + v35;
  if (!(v36 + v35) && v39 >= 1)
  {
    v33 = HFLocalizedStringWithFormat(@"HFAccessoryTileSensorStatus", @"%d", v40, v41, v42, v43, v44, v45, v39);
    goto LABEL_47;
  }

  if (v46 != 1)
  {
    if (!((v35 != 1) | v12 & 1))
    {
      goto LABEL_42;
    }

    if (v46 <= 3)
    {
      v48 = (v46 == 2) & v12;
    }

    else
    {
      v48 = 1;
    }

    if (v35 < 1)
    {
      if (v36 >= 1)
      {
        v63 = HFLocalizedStringWithFormat(@"HFAccessoryTileOffStatus", @"%d", v40, v41, v42, v43, v44, v45, v36);
        v62 = 0;
        goto LABEL_60;
      }

      v62 = 0;
    }

    else
    {
      v62 = HFLocalizedStringWithFormat(@"HFAccessoryTileOnStatus", @"%d", v40, v41, v42, v43, v44, v45, v35);
      if (v36 > 0)
      {
        v63 = HFLocalizedStringWithFormat(@"HFAccessoryTileOffStatus", @"%d", v56, v57, v58, v59, v60, v61, v36);
        v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ • %@", v62, v63];
LABEL_70:
        v33 = v64;
        goto LABEL_71;
      }
    }

    v63 = 0;
LABEL_60:
    if (v37)
    {
      if (v48)
      {
        v64 = v62;
        v62 = v64;
        goto LABEL_70;
      }

      v65 = @"HFAccessoryTileAllOnStatus";
    }

    else
    {
      if (!v38)
      {
        v33 = 0;
LABEL_71:

        v34 = 1;
        goto LABEL_48;
      }

      if (v48)
      {
        v64 = v63;
        v63 = v64;
        goto LABEL_70;
      }

      v65 = @"HFAccessoryTileAllOffStatus";
    }

    v64 = _HFLocalizedStringWithDefaultValue(v65, v65, 1);
    goto LABEL_70;
  }

  v47 = v68;
  if (v35 >= 1)
  {
LABEL_42:
    v47 = v69;
  }

  firstObject = [v47 firstObject];
  objc_opt_class();
  v50 = HFResultDisplayDescriptionKey;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v50 = HFResultDisplayControlDescriptionKey;
    }
  }

  latestResults3 = [firstObject latestResults];
  v33 = [latestResults3 objectForKeyedSubscript:*v50];

LABEL_47:
  v34 = 0;
LABEL_48:
  titleCopy = v66;

LABEL_49:
  v52 = [MEMORY[0x277CCA898] hf_attributedStringWithInflectableAccessoryStatus:v33 accessoryName:titleCopy forcePluralAgreement:v34];
  string = [v52 string];

  v54 = *MEMORY[0x277D85DE8];

  return string;
}

- (id)_buildControlDescription
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_96_0];
  serviceItems = [(HFAccessoryItem *)self serviceItems];
  allObjects = [serviceItems allObjects];
  v22[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v7 = [allObjects sortedArrayUsingDescriptors:v6];
  v8 = [v7 mutableCopy];

  accessory = [(HFAccessoryItem *)self accessory];
  hf_primaryService = [accessory hf_primaryService];

  if (hf_primaryService)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __43__HFAccessoryItem__buildControlDescription__block_invoke_2;
    v20[3] = &unk_277DF9450;
    v21 = hf_primaryService;
    v11 = [v8 na_firstObjectPassingTest:v20];
    if (v11 && [v8 containsObject:v11])
    {
      [v8 removeObject:v11];
      [v8 insertObject:v11 atIndex:0];
    }
  }

  string = [MEMORY[0x277CCAB68] string];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__HFAccessoryItem__buildControlDescription__block_invoke_3;
  v18[3] = &unk_277DF9550;
  v18[4] = self;
  v13 = string;
  v19 = v13;
  [v8 na_each:v18];
  v14 = v19;
  v15 = v13;

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __43__HFAccessoryItem__buildControlDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 service];
  v6 = [v5 name];

  v7 = [v4 service];

  v8 = [v7 name];

  v9 = [v6 compare:v8];
  return v9;
}

uint64_t __43__HFAccessoryItem__buildControlDescription__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

void __43__HFAccessoryItem__buildControlDescription__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:@"state"];
  v6 = [v5 integerValue];

  objc_opt_class();
  v19 = v3;
  if (objc_opt_isKindOfClass())
  {
    v7 = v19;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8 || ([*(a1 + 32) accessory], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hf_isMultiServiceAccessory"), v9, !v10) || v6 == 2)
  {
    v11 = [v19 latestResults];
    v12 = [v11 objectForKeyedSubscript:@"controlDescription"];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v14 = [v19 latestResults];
      v13 = [v14 objectForKeyedSubscript:@"description"];

      if (!v13)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    if ([*(a1 + 40) length])
    {
      v15 = [*(a1 + 32) _repeatingDescriptionsToCoalesce];
      v16 = [v15 containsObject:v13];

      if ((v16 & 1) == 0)
      {
        v17 = *(a1 + 40);
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@" • %@", v13];
        [v17 appendString:v18];
      }
    }

    else
    {
      [*(a1 + 40) appendString:v13];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (id)_repeatingDescriptionsToCoalesce
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v4 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionUpdating", @"HFServiceDescriptionUpdating", 1);
  v13[0] = v4;
  v5 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAccessoryConnectionError", @"HFServiceDescriptionAccessoryConnectionError", 1);
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v7 = [v3 setWithArray:v6];

  accessory = [(HFAccessoryItem *)self accessory];
  LODWORD(v4) = [accessory hf_isTelevision];

  if (v4)
  {
    v9 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicValuePowerStateOff", @"HFCharacteristicValuePowerStateOff", 1);
    [v7 addObject:v9];
  }

  v10 = [v7 copy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isMultiSensorDevice
{
  accessory = [(HFAccessoryItem *)self accessory];
  if ([accessory hf_isMultiServiceAccessory])
  {
    serviceItems = [(HFAccessoryItem *)self serviceItems];
    v5 = [serviceItems na_all:&__block_literal_global_112_0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __38__HFAccessoryItem_isMultiSensorDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)isMultiLightDevice
{
  accessory = [(HFAccessoryItem *)self accessory];
  if ([accessory hf_isMultiServiceAccessory])
  {
    serviceItems = [(HFAccessoryItem *)self serviceItems];
    v5 = [serviceItems na_all:&__block_literal_global_114_1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __37__HFAccessoryItem_isMultiLightDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_shouldComputeMultiServiceDescription
{
  accessory = [(HFAccessoryItem *)self accessory];
  hf_visibleServices = [accessory hf_visibleServices];
  v4 = [hf_visibleServices na_filter:&__block_literal_global_118_0];
  v5 = [v4 count] != 1;

  return v5;
}

uint64_t __56__HFAccessoryItem__shouldComputeMultiServiceDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_isSensorService])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 hf_isProgrammableSwitch] ^ 1;
  }

  return v3;
}

- (id)_unanimousValueForResultsKey:(id)key inServiceItems:(id)items
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  itemsCopy = items;
  v7 = [itemsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        latestResults = [*(*(&v17 + 1) + 8 * i) latestResults];
        v13 = [latestResults objectForKeyedSubscript:keyCopy];

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

      v8 = [itemsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (id)_mostCommonValueForResultsKey:(id)key inServiceItems:(id)items
{
  keyCopy = key;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HFAccessoryItem__mostCommonValueForResultsKey_inServiceItems___block_invoke;
  v10[3] = &unk_277DF9578;
  v11 = keyCopy;
  v7 = keyCopy;
  v8 = [(HFAccessoryItem *)self _mostCommonValueInServiceItems:items valueProvider:v10];

  return v8;
}

id __64__HFAccessoryItem__mostCommonValueForResultsKey_inServiceItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 latestResults];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  return v4;
}

- (id)_mostCommonValueInServiceItems:(id)items valueProvider:(id)provider
{
  v22 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  providerCopy = provider;
  if (providerCopy)
  {
    v7 = [MEMORY[0x277CCA940] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = itemsCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = providerCopy[2](providerCopy, *(*(&v17 + 1) + 8 * i));
          if (v13)
          {
            [v7 addObject:{v13, v17}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    na_mostCommonObject = [v7 na_mostCommonObject];
  }

  else
  {
    na_mostCommonObject = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return na_mostCommonObject;
}

- (id)_sortDescriptorsForServiceItems
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_121_1];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_127_2];
  v4 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:0 ascending:0 comparator:&__block_literal_global_129_0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __50__HFAccessoryItem__sortDescriptorsForServiceItems__block_invoke(uint64_t a1, void *a2, void *a3)
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
    v8 = &unk_282523D90;
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
    v13 = &unk_282523D90;
  }

  v14 = v13;

  v15 = [v9 compare:v14];
  return v15;
}

uint64_t __50__HFAccessoryItem__sortDescriptorsForServiceItems__block_invoke_125(uint64_t a1, void *a2, void *a3)
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

uint64_t __50__HFAccessoryItem__sortDescriptorsForServiceItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    v8 = &unk_282523DA8;
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
    v13 = &unk_282523DA8;
  }

  v14 = v13;

  v15 = [v9 compare:v14];
  return v15;
}

+ (id)itemWithAccessoryRepresentableObject:(id)object valueSource:(id)source
{
  sourceCopy = source;
  objectCopy = object;
  v8 = objc_opt_class();
  hf_homeKitObject = [objectCopy hf_homeKitObject];

  v10 = hf_homeKitObject;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v14 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v12 = 0;
LABEL_8:

  v15 = [[self alloc] initWithAccessory:v12 valueSource:sourceCopy];

  return v15;
}

@end