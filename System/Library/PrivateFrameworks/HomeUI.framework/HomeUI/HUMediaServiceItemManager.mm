@interface HUMediaServiceItemManager
- (BOOL)_hasAuthFatalError;
- (BOOL)_isAppleMusicService;
- (HUMediaServiceItemManager)initWithDelegate:(id)a3;
- (HUMediaServiceItemManager)initWithHome:(id)a3 mediaServiceItem:(id)a4 delegate:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUMediaServiceItemManager

- (HUMediaServiceItemManager)initWithHome:(id)a3 mediaServiceItem:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HUMediaServiceItemManager;
  v10 = [(HFItemManager *)&v16 initWithDelegate:a5];
  v11 = v10;
  if (v10)
  {
    [(HUMediaServiceItemManager *)v10 setHomeForUser:v8];
    [(HUMediaServiceItemManager *)v11 setMediaServiceItem:v9];
    v12 = objc_alloc(MEMORY[0x277D14C98]);
    v13 = [v8 currentUser];
    v14 = [v12 initWithHome:v8 user:v13 nameStyle:0];
    [(HUMediaServiceItemManager *)v11 setUserItem:v14];
  }

  return v11;
}

- (HUMediaServiceItemManager)initWithDelegate:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_mediaServiceItem_delegate_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUMediaServiceItemManager.m" lineNumber:56 description:{@"%s is unavailable; use %@ instead", "-[HUMediaServiceItemManager initWithDelegate:]", v6}];

  return 0;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v72[1] = *MEMORY[0x277D85DE8];
  v5 = [(HUMediaServiceItemManager *)self userItem];
  v6 = [v5 user];
  v7 = [(HUMediaServiceItemManager *)self homeForUser];
  v8 = [v7 currentUser];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    v10 = [(HUMediaServiceItemManager *)self userItem];
    v11 = [v10 hasValidSettings];

    if (v11)
    {
      v12 = [HUAccessorySettingsItemModule alloc];
      v13 = [(HUMediaServiceItemManager *)self userItem];
      v71 = *MEMORY[0x277D14258];
      v72[0] = MEMORY[0x277CBEC38];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
      v15 = [(HUAccessorySettingsItemModule *)v12 initWithItemUpdater:self homeKitSettingsVendor:v13 usageOptions:v14];
      [(HUMediaServiceItemManager *)self setUserSettingsItemModule:v15];
    }

    else
    {
      v13 = HFLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_ERROR, "CAN'T ACCESS USER BASED SETTINGS: The user's settings can't be accessed because hasValidSettings == NO", buf, 2u);
      }
    }
  }

  else
  {
    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412546;
      v68 = self;
      v69 = 2112;
      v70 = v16;
      _os_log_debug_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEBUG, "%@:%@  Not Displaying HMSettings based controls because current user is not permitted", buf, 0x16u);
    }
  }

  v17 = objc_alloc(MEMORY[0x277D14B38]);
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __56__HUMediaServiceItemManager__buildItemProvidersForHome___block_invoke;
  v63[3] = &unk_277DB7478;
  v63[4] = self;
  v18 = [v17 initWithResultsBlock:v63];
  [(HUMediaServiceItemManager *)self setUpdateListeningHistoryItem:v18];

  v19 = objc_alloc(MEMORY[0x277D14B38]);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __56__HUMediaServiceItemManager__buildItemProvidersForHome___block_invoke_32;
  v62[3] = &unk_277DB7478;
  v62[4] = self;
  v20 = [v19 initWithResultsBlock:v62];
  [(HUMediaServiceItemManager *)self setUpdateListeningHistoryFooterItem:v20];

  LOBYTE(v20) = [(HUMediaServiceItemManager *)self _isAppleMusicService];
  v21 = objc_alloc(MEMORY[0x277D14B38]);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __56__HUMediaServiceItemManager__buildItemProvidersForHome___block_invoke_42;
  v60[3] = &unk_277DB8A10;
  v61 = v20;
  v60[4] = self;
  v22 = [v21 initWithResultsBlock:v60];
  [(HUMediaServiceItemManager *)self setRemoveItem:v22];

  v23 = [(HUMediaServiceItemManager *)self _hasAuthFatalError]^ 1;
  v24 = objc_alloc(MEMORY[0x277D14B38]);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __56__HUMediaServiceItemManager__buildItemProvidersForHome___block_invoke_2;
  v58[3] = &unk_277DB8A10;
  v59 = v23;
  v58[4] = self;
  v25 = [v24 initWithResultsBlock:v58];
  [(HUMediaServiceItemManager *)self setReconnectItem:v25];

  v26 = [(HUMediaServiceItemManager *)self mediaServiceItem];
  v27 = [v26 mediaService];
  v28 = [v27 serviceName];

  v29 = objc_alloc(MEMORY[0x277D14B38]);
  v65[0] = *MEMORY[0x277D13F60];
  v36 = HULocalizedStringWithFormat(@"HUMediaServiceReconnectServiceHeader", @"%@%@", v30, v31, v32, v33, v34, v35, v28);
  v66[0] = v36;
  v65[1] = *MEMORY[0x277D13FB8];
  v37 = [MEMORY[0x277CCABB0] numberWithBool:v23];
  v66[1] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v39 = [v29 initWithResults:v38];
  [(HUMediaServiceItemManager *)self setReconnectTitleItem:v39];

  v40 = objc_alloc(MEMORY[0x277CBEB58]);
  v41 = [(HUMediaServiceItemManager *)self mediaServiceItem];
  v64[0] = v41;
  v42 = [(HUMediaServiceItemManager *)self updateListeningHistoryItem];
  v64[1] = v42;
  v43 = [(HUMediaServiceItemManager *)self updateListeningHistoryFooterItem];
  v64[2] = v43;
  v44 = [(HUMediaServiceItemManager *)self removeItem];
  v64[3] = v44;
  v45 = [(HUMediaServiceItemManager *)self reconnectItem];
  v64[4] = v45;
  v46 = [(HUMediaServiceItemManager *)self reconnectTitleItem];
  v64[5] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:6];
  v48 = [v40 initWithArray:v47];

  if ([(HUMediaServiceItemManager *)self _isAppleMusicService])
  {
    v49 = [(HUMediaServiceItemManager *)self updateListeningHistoryItem];
    [v48 removeObject:v49];

    v50 = [(HUMediaServiceItemManager *)self updateListeningHistoryFooterItem];
    [v48 removeObject:v50];
  }

  v51 = MEMORY[0x277CBEB58];
  v52 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v48];
  v53 = [v51 setWithObject:v52];

  if ([(HUMediaServiceItemManager *)self _isAppleMusicService])
  {
    v54 = [(HUMediaServiceItemManager *)self userSettingsItemModule];
    v55 = [v54 itemProviders];
    [v53 unionSet:v55];
  }

  v56 = [v53 allObjects];

  return v56;
}

id __56__HUMediaServiceItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) mediaServiceItem];
  v2 = [v1 mediaService];
  v3 = [v2 updateListeningHistoryEnabled];

  v4 = MEMORY[0x277D2C900];
  v5 = *MEMORY[0x277D13FB8];
  v15[0] = &unk_282491610;
  v6 = *MEMORY[0x277D13F60];
  v14[0] = v5;
  v14[1] = v6;
  v7 = _HULocalizedStringWithDefaultValue(@"HUMediaServiceListeningHistoryTitle", @"HUMediaServiceListeningHistoryTitle", 1);
  v15[1] = v7;
  v14[2] = *MEMORY[0x277D14068];
  if (v3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v15[2] = v9;
  v14[3] = *MEMORY[0x277D13EA8];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v12 = [v4 futureWithResult:v11];

  return v12;
}

id __56__HUMediaServiceItemManager__buildItemProvidersForHome___block_invoke_32(uint64_t a1)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D2C900];
  v2 = *MEMORY[0x277D13FB8];
  v18[0] = &unk_282491610;
  v3 = *MEMORY[0x277D13E20];
  v17[0] = v2;
  v17[1] = v3;
  v4 = [*(a1 + 32) mediaServiceItem];
  v5 = [v4 mediaService];
  v6 = [v5 serviceName];
  v13 = HULocalizedStringWithFormat(@"HUMediaServiceListeningHistoryFooter", @"%@", v7, v8, v9, v10, v11, v12, v6);
  v17[2] = @"instructionsStyle";
  v18[1] = v13;
  v18[2] = &unk_282491628;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v15 = [v1 futureWithResult:v14];

  return v15;
}

id __56__HUMediaServiceItemManager__buildItemProvidersForHome___block_invoke_42(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v17[0] = *MEMORY[0x277D13FB8];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D13F60];
  v4 = [*(a1 + 32) mediaServiceItem];
  v5 = [v4 mediaService];
  v6 = [v5 serviceName];
  v13 = HULocalizedStringWithFormat(@"HUMediaServiceRemoveServiceTitle", @"%@", v7, v8, v9, v10, v11, v12, v6);
  v18[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15 = [v2 futureWithResult:v14];

  return v15;
}

id __56__HUMediaServiceItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v17[0] = *MEMORY[0x277D13FB8];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D13F60];
  v4 = [*(a1 + 32) mediaServiceItem];
  v5 = [v4 mediaService];
  v6 = [v5 serviceName];
  v13 = HULocalizedStringWithFormat(@"HUMediaServiceReconnectServiceTitle", @"%@", v7, v8, v9, v10, v11, v12, v6);
  v18[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15 = [v2 futureWithResult:v14];

  return v15;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v169[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v136 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v140 = [(HUMediaServiceItemManager *)self mediaServiceItem];
  v167[0] = v140;
  v6 = [(HUMediaServiceItemManager *)self updateListeningHistoryItem];
  v167[1] = v6;
  v7 = [(HUMediaServiceItemManager *)self updateListeningHistoryFooterItem];
  v167[2] = v7;
  v8 = [(HUMediaServiceItemManager *)self removeItem];
  v167[3] = v8;
  v9 = [(HUMediaServiceItemManager *)self reconnectItem];
  v167[4] = v9;
  v10 = [(HUMediaServiceItemManager *)self reconnectTitleItem];
  v167[5] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:6];
  v12 = [v5 initWithArray:v11];
  v13 = [v4 intersectsSet:v12];

  v14 = v4;
  v15 = v136;

  if (v13)
  {
    v16 = [(HUMediaServiceItemManager *)self _hasAuthFatalError];
    v17 = [(HUMediaServiceItemManager *)self mediaServiceItem];
    v18 = [v14 containsObject:v17];
    v19 = !v16;

    if (v18 && v19)
    {
      v20 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUMediaServiceAccountInfoSectionIdentifier"];
      v21 = MEMORY[0x277CBEA60];
      v22 = [(HUMediaServiceItemManager *)self mediaServiceItem];
      v23 = [v21 arrayWithObject:v22];
      [v20 setItems:v23];

      [v136 addObject:v20];
    }

    v24 = [(HUMediaServiceItemManager *)self updateListeningHistoryItem];
    v25 = [v14 containsObject:v24] & v19;

    if (v25 == 1)
    {
      v26 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUMediaServiceUpdateListeningHistorySectionIdentifier"];
      v27 = MEMORY[0x277CBEA60];
      v28 = [(HUMediaServiceItemManager *)self updateListeningHistoryItem];
      v29 = [v27 arrayWithObject:v28];
      [v26 setItems:v29];

      [v136 addObject:v26];
    }

    v30 = [(HUMediaServiceItemManager *)self updateListeningHistoryFooterItem];
    v31 = [v14 containsObject:v30] & v19;

    v15 = v136;
    if (v31 == 1)
    {
      v32 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUMediaServiceUpdateListeningHistoryFooterSectionIdentifier"];
      v33 = MEMORY[0x277CBEA60];
      v34 = [(HUMediaServiceItemManager *)self updateListeningHistoryFooterItem];
      v35 = [v33 arrayWithObject:v34];
      [v32 setItems:v35];

      [v136 addObject:v32];
    }

    v36 = [(HUMediaServiceItemManager *)self removeItem];
    v37 = [v14 containsObject:v36];

    if (v37)
    {
      if (v16)
      {
        v38 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUMediaServiceReconnectServiceTitleSectionIdentifier"];
        v39 = [(HUMediaServiceItemManager *)self reconnectTitleItem];
        v166 = v39;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
        [v38 setItems:v40];

        [v136 addObject:v38];
      }

      v41 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUMediaServiceRemoveServiceSectionIdentifier"];
      v42 = objc_opt_new();
      if (v16)
      {
        v43 = [(HUMediaServiceItemManager *)self reconnectItem];
        [v42 addObject:v43];
      }

      v44 = [(HUMediaServiceItemManager *)self removeItem];
      [v42 addObject:v44];

      [v41 setItems:v42];
      [v136 addObject:v41];
    }
  }

  if ([(HUMediaServiceItemManager *)self _isAppleMusicService])
  {
    v134 = self;
    v45 = [(HUMediaServiceItemManager *)self userSettingsItemModule];
    v135 = v14;
    v46 = [v45 buildSectionsWithDisplayedItems:v14];

    v138 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"allowiTunesAccountSection"];
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v47 = v46;
    v48 = [v47 countByEnumeratingWithState:&v155 objects:v165 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v156;
      v141 = *MEMORY[0x277D14068];
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v156 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v155 + 1) + 8 * i);
          v53 = [v52 headerTitle];
          v54 = HFLocalizedString();
          v55 = [v53 isEqualToString:v54];

          if (v55)
          {
            v56 = [v52 items];
            v57 = [v56 na_firstObjectPassingTest:&__block_literal_global_103];

            if (v57)
            {
              v164 = v57;
              v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v164 count:1];
              [v138 setItems:v58];

              v59 = [v57 latestResults];
              v60 = [v59 objectForKeyedSubscript:v141];
              v61 = [v60 integerValue];

              if (v61 == 2)
              {
                v62 = @"HUUserSettingsAllowiTunesAccountEnabled_Footer";
              }

              else
              {
                v62 = @"HUUserSettingsAllowiTunesAccountDisabled_Footer";
              }

              v63 = _HULocalizedStringWithDefaultValue(v62, v62, 1);
              [v138 setFooterTitle:v63];
            }
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v155 objects:v165 count:16];
      }

      while (v49);
    }

    v142 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"losslessSection"];
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v64 = v47;
    v65 = [v64 countByEnumeratingWithState:&v151 objects:v163 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v152;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v152 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = *(*(&v151 + 1) + 8 * j);
          v70 = [v69 headerTitle];
          v71 = HFLocalizedString();
          v72 = [v70 isEqualToString:v71];

          if (v72)
          {
            v73 = [v69 items];
            v74 = [v73 na_firstObjectPassingTest:&__block_literal_global_79_0];

            if (v74)
            {
              v162 = v74;
              v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:1];
              [v142 setItems:v75];
            }
          }
        }

        v66 = [v64 countByEnumeratingWithState:&v151 objects:v163 count:16];
      }

      while (v66);
    }

    v76 = HFLocalizedString();
    v77 = HFLocalizedString();
    v78 = objc_alloc(MEMORY[0x277CCAB48]);
    v79 = [v76 stringByAppendingString:@"\n"];
    v80 = [v78 initWithString:v79];

    v81 = objc_alloc(MEMORY[0x277CCA898]);
    v168 = *MEMORY[0x277D740E8];
    v82 = [MEMORY[0x277CBEBC0] hf_losslessURL];
    v169[0] = v82;
    v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:&v168 count:1];
    v84 = [v81 initWithString:v77 attributes:v83];
    [v80 appendAttributedString:v84];

    [v142 setAttributedFooterTitle:v80];
    v139 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"dolbyAtmosSection"];
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v85 = v64;
    v86 = [v85 countByEnumeratingWithState:&v147 objects:v161 count:16];
    if (v86)
    {
      v87 = v86;
      v88 = *v148;
      do
      {
        for (k = 0; k != v87; ++k)
        {
          if (*v148 != v88)
          {
            objc_enumerationMutation(v85);
          }

          v90 = *(*(&v147 + 1) + 8 * k);
          v91 = [v90 headerTitle];
          v92 = HFLocalizedString();
          v93 = [v91 isEqualToString:v92];

          if (v93)
          {
            v94 = [v90 items];
            v95 = [v94 na_firstObjectPassingTest:&__block_literal_global_99_0];

            if (v95)
            {
              v160 = v95;
              v96 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
              [v139 setItems:v96];
            }
          }
        }

        v87 = [v85 countByEnumeratingWithState:&v147 objects:v161 count:16];
      }

      while (v87);
    }

    v97 = HFLocalizedString();
    [v139 setFooterTitle:v97];

    if (_os_feature_enabled_impl())
    {
      v137 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"crossfadeSection"];
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v98 = v85;
      v99 = [v98 countByEnumeratingWithState:&v143 objects:v159 count:16];
      if (v99)
      {
        v100 = v99;
        v101 = *v144;
        do
        {
          for (m = 0; m != v100; ++m)
          {
            if (*v144 != v101)
            {
              objc_enumerationMutation(v98);
            }

            v103 = *(*(&v143 + 1) + 8 * m);
            v104 = [v103 headerTitle];
            v105 = HFLocalizedString();
            v106 = [v104 isEqualToString:v105];

            if (v106)
            {
              v107 = [v103 items];
              v108 = [v107 na_firstObjectPassingTest:&__block_literal_global_109];

              v109 = [v103 items];
              v110 = [v109 na_firstObjectPassingTest:&__block_literal_global_111_1];

              v111 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v112 = v111;
              if (v108)
              {
                [v111 addObject:v108];
              }

              if (v110)
              {
                [v112 addObject:v110];
              }

              v113 = [v112 copy];
              [v137 setItems:v113];
            }
          }

          v100 = [v98 countByEnumeratingWithState:&v143 objects:v159 count:16];
        }

        while (v100);
      }
    }

    else
    {
      v137 = 0;
    }

    v14 = v135;
    v114 = objc_alloc(MEMORY[0x277CBEB18]);
    v115 = [v85 na_filter:&__block_literal_global_131_1];
    v116 = [v115 na_map:&__block_literal_global_114];
    v117 = [v114 initWithArray:v116];

    if (v138)
    {
      v118 = [v138 items];
      v119 = [v118 count];

      if (v119)
      {
        [v117 insertObject:v138 atIndex:0];
      }
    }

    v120 = [(HUMediaServiceItemManager *)v134 homeForUser];
    if ([v120 hf_currentUserIsOwner])
    {
      v121 = [(HUMediaServiceItemManager *)v134 homeForUser];
      if ([v121 hf_hasAtLeastOneOasisEnabledDevice] && v142)
      {
        v122 = [v142 items];
        v123 = [v122 count];

        if (v123)
        {
          [v117 addObject:v142];
        }

LABEL_78:
        v124 = [(HUMediaServiceItemManager *)v134 homeForUser];
        if ([v124 hf_currentUserIsOwner])
        {
          v125 = [(HUMediaServiceItemManager *)v134 homeForUser];
          if ([v125 hf_hasAtLeastOneOasisEnabledDevice] && v139)
          {
            v126 = [v139 items];
            v127 = [v126 count];

            if (v127)
            {
              [v117 addObject:v139];
            }

LABEL_85:
            if (_os_feature_enabled_impl())
            {
              v128 = [(HUMediaServiceItemManager *)v134 homeForUser];
              if ([v128 hf_currentUserIsOwner])
              {
                v129 = [(HUMediaServiceItemManager *)v134 homeForUser];
                if ([v129 hf_hasAtLeastOneCrossfadeEnabledDevice] && v137)
                {
                  v130 = [v137 items];
                  v131 = [v130 count];

                  if (v131)
                  {
                    [v117 addObject:v137];
                  }

                  goto LABEL_93;
                }
              }
            }

LABEL_93:
            v132 = [v117 sortedArrayUsingComparator:&__block_literal_global_134];
            v15 = v136;
            [v136 addObjectsFromArray:v132];

            goto LABEL_94;
          }
        }

        goto LABEL_85;
      }
    }

    goto LABEL_78;
  }

LABEL_94:

  return v15;
}

uint64_t __62__HUMediaServiceItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 settingKeyPath];
    v7 = [v6 isEqualToString:*MEMORY[0x277D13980]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __62__HUMediaServiceItemManager__buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 settingKeyPath];
    v7 = [v6 isEqualToString:*MEMORY[0x277D139D0]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __62__HUMediaServiceItemManager__buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 settingKeyPath];
    v7 = [v6 isEqualToString:*MEMORY[0x277D139A8]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __62__HUMediaServiceItemManager__buildSectionsWithDisplayedItems___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 settingKeyPath];
    v7 = [v6 isEqualToString:*MEMORY[0x277D139A0]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __62__HUMediaServiceItemManager__buildSectionsWithDisplayedItems___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 settingKeyPath];
    v7 = [v6 isEqualToString:*MEMORY[0x277D13998]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __62__HUMediaServiceItemManager__buildSectionsWithDisplayedItems___block_invoke_7(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 headerTitle];
  v4 = HFLocalizedString();
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D14850]);
    v7 = [v2 identifier];
    v8 = [v6 initWithIdentifier:v7];

    v9 = [v2 items];
    v10 = [v9 na_filter:&__block_literal_global_116_0];
    [v8 setItems:v10];

    v11 = HFLocalizedString();
    v12 = HFLocalizedString();
    v13 = objc_alloc(MEMORY[0x277CCAB48]);
    v14 = [v11 stringByAppendingString:@" "];
    v15 = [v13 initWithString:v14];

    v16 = objc_alloc(MEMORY[0x277CCA898]);
    v24 = *MEMORY[0x277D740E8];
    v17 = [MEMORY[0x277D14C80] musicPrivacyURL];
    v25[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v19 = [v16 initWithString:v12 attributes:v18];
    [v15 appendAttributedString:v19];

    v20 = [v8 items];
    if ([v20 count])
    {
      v21 = v8;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
  }

  else
  {
    v22 = v2;
  }

  return v22;
}

uint64_t __62__HUMediaServiceItemManager__buildSectionsWithDisplayedItems___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 settingKeyPath];
    v7 = [v6 isEqualToString:*MEMORY[0x277D13990]];

    v8 = [v5 settingKeyPath];
    v9 = [v8 isEqualToString:*MEMORY[0x277D13978]];

    v10 = v7 | v9;
    v11 = [v5 settingKeyPath];
    v12 = [v11 isEqualToString:*MEMORY[0x277D13980]];

    v13 = (v10 | v12) ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v5 settingKeyPath];
  if ([v14 isEqualToString:*MEMORY[0x277D139D0]])
  {
  }

  else
  {
    v15 = [v5 settingKeyPath];
    v16 = [v15 isEqualToString:*MEMORY[0x277D139A8]];

    v17 = v13;
    if (!v16)
    {
      goto LABEL_11;
    }
  }

  v17 = 0;
LABEL_11:
  v18 = [v5 settingKeyPath];
  if ([v18 isEqualToString:*MEMORY[0x277D139A0]])
  {

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  if (v5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v13;
  }

  v20 = [v5 settingKeyPath];
  v21 = [v20 isEqualToString:*MEMORY[0x277D13998]];

  if (v21)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v5)
  {
    v22 = v19;
  }

  else
  {
    v22 = v13;
  }

  return v22 & 1;
}

uint64_t __62__HUMediaServiceItemManager__buildSectionsWithDisplayedItems___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 headerTitle];
  v3 = HFLocalizedString();
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t __62__HUMediaServiceItemManager__buildSectionsWithDisplayedItems___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"HUAccessorySettingsItemModuleSortKey"];
  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"HUAccessorySettingsItemModuleSortKey"];
  v9 = [v6 compare:v8];

  return v9;
}

- (BOOL)_isAppleMusicService
{
  v2 = [(HUMediaServiceItemManager *)self mediaServiceItem];
  v3 = [v2 mediaService];
  v4 = [v3 isServiceRemovable];

  return v4 ^ 1;
}

- (BOOL)_hasAuthFatalError
{
  v2 = [(HUMediaServiceItemManager *)self mediaServiceItem];
  v3 = [v2 mediaService];
  v4 = [v3 authFatalError];

  return v4;
}

@end