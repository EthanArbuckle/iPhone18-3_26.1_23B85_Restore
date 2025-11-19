@interface NDOCoverageCentralViewControllerLegacy
- (BOOL)shouldDeferPushForSpecifierID:(id)a3;
- (BOOL)shouldShowDeviceListUI;
- (NDOACController)acController;
- (NDOCoverageCentralViewControllerLegacy)init;
- (id)_errorStateConfig;
- (id)_getParamsDictFromPath:(id)a3;
- (id)_localizedResourceWithString:(id)a3;
- (id)_noAccountConfig;
- (id)offerTextForDeviceInfo:(id)a3;
- (id)specifiers;
- (id)updateCells;
- (void)_getUpdatedParamsFromPath:(id)a3 withCompletion:(id)a4;
- (void)_refreshAndForcePostFollowUp:(BOOL)a3 refreshControlToStop:(id)a4;
- (void)addFooterLabelToSpecifier:(id)a3;
- (void)completeWithStatus:(unint64_t)a3 params:(id)a4;
- (void)dismissAMSUI;
- (void)fetchAllDeviceInfoUsingPolicy:(unint64_t)a3 sessionID:(id)a4 params:(id)a5 isSales:(BOOL)a6 withReply:(id)a7;
- (void)fetchAllLocalDevices;
- (void)getAllDeviceInfoUsingPolicy:(unint64_t)a3 sessionID:(id)a4 params:(id)a5 isSales:(BOOL)a6 andForcePostFollowup:(BOOL)a7 withReply:(id)a8;
- (void)handlePurchaseCompleted;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)init;
- (void)loadView;
- (void)openAMSUIWithURL:(id)a3 httpBody:(id)a4;
- (void)openURL:(id)a3;
- (void)resetAll;
- (void)showUI;
- (void)specifiers;
- (void)updateCells;
- (void)updateDefaultDeviceWithDeviceInfo:(id)a3;
@end

@implementation NDOCoverageCentralViewControllerLegacy

- (NDOCoverageCentralViewControllerLegacy)init
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(NDOCoverageCentralViewControllerLegacy *)v3 init:v4];
  }

  v11 = [MEMORY[0x277D2D0B0] isSignedIntoAppleAccount];
  v12 = objc_opt_new();
  v13 = [(NDOCoverageCentralViewControllerLegacy *)self initWithIsSignedIn:v11 deviceManager:v12];

  return v13;
}

- (void)loadView
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_25BD8D000, a1, a3, "%{public}s: Not signed in to icloud. Leaving...", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__NDOCoverageCentralViewControllerLegacy_loadView__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setOnViewIsAppearing:0];
    v3 = _NDOLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __50__NDOCoverageCentralViewControllerLegacy_loadView__block_invoke_cold_1(v2);
    }

    if (([v2 launchedWithUrl] & 1) == 0)
    {
      v4 = [v2 specifier];
      v5 = [v4 propertyForKey:@"NDODeviceInfo"];

      v6 = [v5 warranty];

      if (v6)
      {
        v7 = _NDOLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v5 warranty];
          v10 = 136446466;
          v11 = "[NDOCoverageCentralViewControllerLegacy loadView]_block_invoke";
          v12 = 2112;
          v13 = v8;
          _os_log_impl(&dword_25BD8D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Updating default device info with warranty:%@: ", &v10, 0x16u);
        }

        [v2 updateDefaultDeviceWithDeviceInfo:v5];
      }

      [v2 fetchAllDeviceInfoUsingPolicy:0 sessionID:v2[189] params:0 isSales:0 withReply:0];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_localizedResourceWithString:(id)a3
{
  v3 = MEMORY[0x277CCAEB8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 bundleURL];
  v9 = [v5 initWithKey:v4 table:0 locale:v6 bundleURL:v8];

  return v9;
}

- (id)specifiers
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(NDOCoverageCentralViewControllerLegacy *)v3 specifiers:v4];
  }

  v11 = *MEMORY[0x277D3FC48];
  v12 = *(&self->super.super.super.super.super.isa + v11);
  if (!v12)
  {
    v13 = [(NDOCoverageCentralViewControllerLegacy *)self updateCells];
    v14 = *(&self->super.super.super.super.super.isa + v11);
    *(&self->super.super.super.super.super.isa + v11) = v13;

    v12 = *(&self->super.super.super.super.super.isa + v11);
  }

  return v12;
}

- (id)offerTextForDeviceInfo:(id)a3
{
  v3 = MEMORY[0x277D2D0E8];
  v4 = [a3 warranty];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v3 ctaTextWithWarranty:v4 forDate:v5];

  return v6;
}

- (id)updateCells
{
  v170 = *MEMORY[0x277D85DE8];
  v144 = objc_opt_new();
  v3 = [(NDOCoverageCentralViewControllerLegacy *)self shouldShowDeviceListUI];
  v4 = _NDOLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (!v3)
  {
    if (v5)
    {
      [(NDOCoverageCentralViewControllerLegacy *)v4 updateCells:v6];
    }

    v49 = [(NDOCoverageCentralViewControllerLegacy *)self defaultDevice];

    v50 = MEMORY[0x277D40140];
    v51 = MEMORY[0x277D76F30];
    v52 = MEMORY[0x277D3FFB8];
    if (v49)
    {
      v53 = _NDOLogSystem();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        [(NDOCoverageCentralViewControllerLegacy *)v53 updateCells:v54];
      }

      v61 = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
      v62 = [(NDOCoverageCentralViewControllerLegacy *)self defaultDevice];
      v63 = [v62 serialNumber];
      v64 = [v61 objectForKeyedSubscript:v63];

      v65 = _NDOLogSystem();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        [(NDOCoverageCentralViewControllerLegacy *)v64 updateCells];
      }

      v66 = [v64 warranty];

      if (v66)
      {
        v67 = MEMORY[0x277D3FAD8];
        v68 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
        v69 = [v68 localizedStringForKey:@"CC_DEFAULT_TITLE" value:&stru_286D71538 table:@"Localizable"];
        v70 = [v67 preferenceSpecifierNamed:v69 target:self set:0 get:0 detail:0 cell:0 edit:0];

        v135 = v70;
        [v144 addObject:v70];
        v164[0] = *MEMORY[0x277D3FE58];
        v165[0] = objc_opt_class();
        v164[1] = *v50;
        v71 = [MEMORY[0x277CCABB0] numberWithDouble:*v51];
        v165[1] = v71;
        v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:2];

        v73 = MEMORY[0x277D3FAD8];
        v74 = [v64 device];
        v75 = [v74 name];
        v76 = [v73 preferenceSpecifierNamed:v75 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

        [v76 setProperties:v72];
        [v76 setProperty:@"DEFAULT_COVERAGE" forKey:*v52];
        v77 = _NDOLogSystem();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          [(NDOCoverageCentralViewControllerLegacy *)self updateCells];
          v78 = v160;
        }

        else
        {
          v78 = @"NDOHostingController";
        }

        [v76 setProperty:self forKey:v78];
        v79 = MEMORY[0x277CBEC38];
        [v76 setProperty:MEMORY[0x277CBEC38] forKey:@"isCoverageCentralContainer"];
        v80 = [v64 warranty];
        [v76 setProperty:v80 forKey:@"NDOWarranty"];

        [v76 setProperty:v64 forKey:@"NDODeviceInfo"];
        [v76 setProperty:v79 forKey:@"isSettingsContainer"];
        v81 = [v64 warranty];
        v82 = [v81 coverageLocalizedLabel];
        [v76 setObject:v82 forKeyedSubscript:@"NDOCoverageItemCellCoverageLabelKey"];

        v83 = [(NDOCoverageCentralViewControllerLegacy *)self offerTextForDeviceInfo:v64];
        [v76 setObject:v83 forKeyedSubscript:@"NDOCoverageItemCellOfferLabelKey"];

        v84 = [v64 warranty];
        v85 = [v84 deviceImageUrl];
        [v76 setObject:v85 forKeyedSubscript:@"NDOCoverageItemCellImageURLKey"];

        v86 = [v64 device];
        v87 = [v86 productPlaceholderImage];
        [v76 setObject:v87 forKeyedSubscript:@"NDOCoverageItemCellFallbackImageKey"];

        v88 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];

        if (v88)
        {
          v89 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];
          [v76 setProperty:v89 forKey:@"NDODeeplinkParams"];
        }

        [v144 addObject:v76];
      }

      else
      {
        v135 = 0;
      }
    }

    else
    {
      v135 = 0;
    }

    v90 = [(NDOCoverageCentralViewControllerLegacy *)self pairedDevices];
    v91 = MEMORY[0x277D3FAD8];
    v92 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v93 = [v92 localizedStringForKey:@"CC_OTHER_TITLE" value:&stru_286D71538 table:@"Localizable"];
    v133 = [v91 preferenceSpecifierNamed:v93 target:self set:0 get:0 detail:0 cell:0 edit:0];

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v94 = v90;
    v95 = [v94 countByEnumeratingWithState:&v145 objects:v163 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = 0;
      v98 = *v146;
      v141 = *v50;
      v143 = *MEMORY[0x277D3FE58];
      v99 = *v51;
      v139 = *v52;
      v137 = v94;
      do
      {
        for (i = 0; i != v96; ++i)
        {
          if (*v146 != v98)
          {
            objc_enumerationMutation(v137);
          }

          v101 = *(*(&v145 + 1) + 8 * i);
          v102 = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
          v103 = [v101 serialNumber];
          v104 = [v102 objectForKeyedSubscript:v103];

          v105 = [v104 warranty];

          if (v105)
          {
            if ((v97 & 1) == 0)
            {
              [v144 addObject:v133];
            }

            v161[0] = v143;
            v106 = objc_opt_class();
            v161[1] = v141;
            v162[0] = v106;
            v107 = [MEMORY[0x277CCABB0] numberWithDouble:v99];
            v162[1] = v107;
            v108 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:2];

            v109 = MEMORY[0x277D3FAD8];
            v110 = [v104 device];
            v111 = [v110 name];
            v112 = [v109 preferenceSpecifierNamed:v111 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

            [v112 setProperties:v108];
            v113 = [v101 name];
            v114 = v113;
            if (v113)
            {
              v115 = v113;
            }

            else
            {
              v115 = @"COVERAGE_ITEM1";
            }

            [v112 setProperty:v115 forKey:v139];

            [v112 setProperty:self forKey:@"NDOHostingController"];
            v116 = MEMORY[0x277CBEC38];
            [v112 setProperty:MEMORY[0x277CBEC38] forKey:@"isCoverageCentralContainer"];
            [v112 setProperty:v116 forKey:@"isSettingsContainer"];
            v117 = [v104 warranty];
            [v112 setProperty:v117 forKey:@"NDOWarranty"];

            [v112 setProperty:v104 forKey:@"NDODeviceInfo"];
            v118 = [v104 warranty];
            v119 = [v118 coverageLocalizedLabel];
            [v112 setObject:v119 forKeyedSubscript:@"NDOCoverageItemCellCoverageLabelKey"];

            v120 = [(NDOCoverageCentralViewControllerLegacy *)self offerTextForDeviceInfo:v104];
            [v112 setObject:v120 forKeyedSubscript:@"NDOCoverageItemCellOfferLabelKey"];

            v121 = [v104 warranty];
            v122 = [v121 deviceImageUrl];
            [v112 setObject:v122 forKeyedSubscript:@"NDOCoverageItemCellImageURLKey"];

            v123 = [v104 device];
            v124 = [v123 productPlaceholderImage];
            [v112 setObject:v124 forKeyedSubscript:@"NDOCoverageItemCellFallbackImageKey"];

            v125 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];

            if (v125)
            {
              v126 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];
              [v112 setProperty:v126 forKey:@"NDODeeplinkParams"];
            }

            [v144 addObject:v112];

            v97 = 1;
          }
        }

        v94 = v137;
        v96 = [v137 countByEnumeratingWithState:&v145 objects:v163 count:16];
      }

      while (v96);

      if (v97)
      {
        [(NDOCoverageCentralViewControllerLegacy *)self addFooterLabelToSpecifier:v133];
        v13 = v135;
LABEL_64:

        goto LABEL_65;
      }
    }

    else
    {
    }

    v13 = v135;
    if (v135)
    {
      [(NDOCoverageCentralViewControllerLegacy *)self addFooterLabelToSpecifier:v135];
    }

    goto LABEL_64;
  }

  if (v5)
  {
    [(NDOCoverageCentralViewControllerLegacy *)v4 updateCells:v6];
  }

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = [(NDOCoverageCentralViewControllerLegacy *)self deviceListAPISections];
  v131 = [obj countByEnumeratingWithState:&v156 objects:v169 count:16];
  v13 = 0;
  if (v131)
  {
    v130 = *v157;
    v142 = *MEMORY[0x277D3FE58];
    v140 = *MEMORY[0x277D40140];
    v14 = *MEMORY[0x277D76F30];
    v138 = *MEMORY[0x277D3FFB8];
    v15 = MEMORY[0x277CBEC38];
    do
    {
      v16 = 0;
      v17 = v13;
      do
      {
        if (*v157 != v130)
        {
          objc_enumerationMutation(obj);
        }

        v132 = v16;
        v18 = *(*(&v156 + 1) + 8 * v16);
        v19 = MEMORY[0x277D3FAD8];
        v20 = [v18 identifier];
        v21 = [v18 label];
        v22 = [v19 groupSpecifierWithID:v20 name:v21];

        v23 = v22;
        v134 = v23;
        [v144 addObject:v23];
        v154 = 0u;
        v155 = 0u;
        v152 = 0u;
        v153 = 0u;
        v136 = [v18 deviceList];
        v24 = [v136 countByEnumeratingWithState:&v152 objects:v168 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v153;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v153 != v26)
              {
                objc_enumerationMutation(v136);
              }

              v28 = *(*(&v152 + 1) + 8 * j);
              v29 = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
              v30 = [v28 serialNumber];
              v31 = [v29 objectForKeyedSubscript:v30];

              v166[0] = v142;
              v167[0] = objc_opt_class();
              v166[1] = v140;
              v32 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
              v167[1] = v32;
              v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:2];

              v34 = MEMORY[0x277D3FAD8];
              v35 = [v28 name];
              v36 = [v34 preferenceSpecifierNamed:v35 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

              [v36 setProperties:v33];
              v37 = [v28 name];
              v38 = v37;
              if (v37)
              {
                v39 = v37;
              }

              else
              {
                v39 = @"COVERAGE_ITEM";
              }

              [v36 setProperty:v39 forKey:v138];

              [v36 setProperty:self forKey:@"NDOHostingController"];
              [v36 setProperty:v15 forKey:@"isCoverageCentralContainer"];
              [v36 setProperty:v15 forKey:@"isSettingsContainer"];
              v40 = [v28 coverageLocalizedLabel];
              [v36 setObject:v40 forKeyedSubscript:@"NDOCoverageItemCellCoverageLabelKey"];

              if (v31)
              {
                [(NDOCoverageCentralViewControllerLegacy *)self offerTextForDeviceInfo:v31];
              }

              else
              {
                [(NDOCoverageCentralViewControllerLegacy *)self offerTextForDevice:v28];
              }
              v41 = ;
              [v36 setObject:v41 forKeyedSubscript:@"NDOCoverageItemCellOfferLabelKey"];

              v42 = [v28 deviceImageUrl];
              [v36 setObject:v42 forKeyedSubscript:@"NDOCoverageItemCellImageURLKey"];

              v43 = [v28 productPlaceholderImage];
              [v36 setObject:v43 forKeyedSubscript:@"NDOCoverageItemCellFallbackImageKey"];

              [v36 setObject:v28 forKeyedSubscript:@"NDODevice"];
              v44 = [(NDOCoverageCentralViewControllerLegacy *)self allLocalDevices];
              v149[0] = MEMORY[0x277D85DD0];
              v149[1] = 3221225472;
              v149[2] = __53__NDOCoverageCentralViewControllerLegacy_updateCells__block_invoke;
              v149[3] = &unk_2799785F0;
              v149[4] = v28;
              v45 = v36;
              v150 = v45;
              v151 = v31;
              v46 = v31;
              [v44 enumerateObjectsUsingBlock:v149];

              v47 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];

              if (v47)
              {
                v48 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];
                [v45 setProperty:v48 forKey:@"NDODeeplinkParams"];
              }

              [v144 addObject:v45];
            }

            v25 = [v136 countByEnumeratingWithState:&v152 objects:v168 count:16];
          }

          while (v25);
        }

        v13 = v134;
        v16 = v132 + 1;
        v17 = v134;
      }

      while (v132 + 1 != v131);
      v131 = [obj countByEnumeratingWithState:&v156 objects:v169 count:16];
    }

    while (v131);
  }

  [(NDOCoverageCentralViewControllerLegacy *)self addFooterLabelToSpecifier:v13];
LABEL_65:

  v127 = *MEMORY[0x277D85DE8];

  return v144;
}

void __53__NDOCoverageCentralViewControllerLegacy_updateCells__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 serialNumber];
  v6 = [v4 serialNumber];

  LODWORD(v4) = [v5 isEqualToString:v6];
  if (v4)
  {
    v7 = [*(a1 + 48) warranty];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:@"NDOWarranty"];

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);

    [v8 setObject:v9 forKeyedSubscript:@"NDODeviceInfo"];
  }
}

- (void)addFooterLabelToSpecifier:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v6 = [v3 bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v5 = [v6 localizedStringForKey:@"CC_FOOTER_APPLEID" value:&stru_286D71538 table:@"Localizable"];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D3FF88]];
}

- (void)openURL:(id)a3
{
  v3 = a3;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [NDOCoverageCentralViewControllerLegacy openURL:];
  }

  [*MEMORY[0x277D76620] openURL:v3 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)fetchAllLocalDevices
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 allLocalDevices];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllDeviceInfoUsingPolicy:(unint64_t)a3 sessionID:(id)a4 params:(id)a5 isSales:(BOOL)a6 withReply:(id)a7
{
  v8 = a6;
  v11 = a5;
  v12 = a7;
  v13 = _NDOLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [NDOCoverageCentralViewControllerLegacy fetchAllDeviceInfoUsingPolicy:v11 sessionID:? params:? isSales:? withReply:?];
  }

  [(NDOCoverageCentralViewControllerLegacy *)self fetchAllLocalDevices];
  v14 = [(NDOCoverageCentralViewControllerLegacy *)self isSignedIn];
  v15 = _NDOLogSystem();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    v31 = a3;
    if (v16)
    {
      [(NDOCoverageCentralViewControllerLegacy *)v15 fetchAllDeviceInfoUsingPolicy:v17 sessionID:v18 params:v19 isSales:v20 withReply:v21, v22, v23];
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke;
    aBlock[3] = &unk_279978660;
    aBlock[4] = self;
    v24 = v11;
    v35 = v24;
    v25 = _Block_copy(aBlock);
    v26 = [(NDOCoverageCentralViewControllerLegacy *)self ndoManager];
    v27 = [(NDOCoverageCentralViewControllerLegacy *)self allLocalDevices];
    v28 = [MEMORY[0x277CCAD78] UUID];
    v29 = [v28 UUIDString];
    if (v8)
    {
      v30 = v25;
    }

    else
    {
      v30 = 0;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_68;
    v32[3] = &unk_2799786B0;
    v32[4] = self;
    v33 = v12;
    [v26 getDeviceListForLocalDevices:v27 sessionID:v29 policy:v31 params:v24 salesReplyOnly:0 salesInfoReply:v30 deviceInfoReply:0 completionBlock:v32];
  }

  else
  {
    if (v16)
    {
      [(NDOCoverageCentralViewControllerLegacy *)v15 fetchAllDeviceInfoUsingPolicy:v17 sessionID:v18 params:v19 isSales:v20 withReply:v21, v22, v23];
    }

    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

void __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _getParamsDictFromPath:*(a1 + 40)];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2;
  v11[3] = &unk_279978638;
  v12 = v6;
  v13 = v7;
  v14 = *(a1 + 32);
  v15 = v5;
  v8 = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  if ([*(a1 + 32) count])
  {
    [v2 setObject:*(a1 + 32) forKeyedSubscript:@"devices"];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:@"additionalInfo"];
  }

  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446466;
    v7 = "[NDOCoverageCentralViewControllerLegacy fetchAllDeviceInfoUsingPolicy:sessionID:params:isSales:withReply:]_block_invoke_2";
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_25BD8D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: amsui payload: %@", &v6, 0x16u);
  }

  [*(a1 + 48) openAMSUIWithURL:*(a1 + 56) httpBody:v2];
  v5 = *MEMORY[0x277D85DE8];
}

void __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2_69;
  block[3] = &unk_279978688;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2_69(uint64_t a1)
{
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2_69_cold_1(a1, v2, v3);
  }

  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) setDeviceLoadCompleted:1];
    [*(a1 + 40) setDeviceListAPISections:*(a1 + 32)];
    [*(a1 + 40) showUI];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)getAllDeviceInfoUsingPolicy:(unint64_t)a3 sessionID:(id)a4 params:(id)a5 isSales:(BOOL)a6 andForcePostFollowup:(BOOL)a7 withReply:(id)a8
{
  v42 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a8;
  v16 = _NDOLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[NDOCoverageCentralViewControllerLegacy getAllDeviceInfoUsingPolicy:sessionID:params:isSales:andForcePostFollowup:withReply:]";
    _os_log_impl(&dword_25BD8D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__1;
  v40 = __Block_byref_object_dispose__1;
  v41 = [MEMORY[0x277CBEB18] array];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__1;
  v35[4] = __Block_byref_object_dispose__1;
  v36 = 0;
  v17 = [(NDOCoverageCentralViewControllerLegacy *)self allLocalDevices];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke;
  v28[3] = &unk_279978700;
  v28[4] = self;
  v33 = a3;
  v18 = v13;
  v29 = v18;
  v19 = v14;
  v34 = a7;
  v30 = v19;
  v31 = v35;
  p_buf = &buf;
  [v17 enumerateObjectsUsingBlock:v28];
  group = self->_group;
  policyLookupQueue = self->_policyLookupQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_74;
  block[3] = &unk_279978750;
  v26 = &buf;
  v27 = v35;
  block[4] = self;
  v25 = v15;
  v22 = v15;
  dispatch_group_notify(group, policyLookupQueue, block);

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&buf, 8);

  v23 = *MEMORY[0x277D85DE8];
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(*(a1 + 32) + 1464));
  v4 = *(a1 + 32);
  v5 = [v3 serialNumber];
  v6 = *(a1 + 72);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2;
  v12[3] = &unk_2799786D8;
  v10 = *(a1 + 32);
  v13 = v3;
  v14 = v10;
  v15 = *(a1 + 56);
  v11 = v3;
  [v4 getDeviceInfoForSerialNumber:v5 usingPolicy:v6 sessionID:v7 params:v8 andForcePostFollowup:v9 withReply:v12];
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_1(v3, a1);
  }

  v5 = [v3 device];
  v6 = [v5 serialNumber];
  if (v6)
  {
    v7 = [v3 device];
  }

  else
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;

  if (v3)
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_2(v8, v3);
    }

    v10 = [v3 warranty];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = [*(a1 + 40) deviceInfoDict];
      v22 = [v8 serialNumber];
      v23 = [v11 objectForKeyedSubscript:v22];
      if (v23)
      {
        v24 = v23;
        v25 = [*(a1 + 40) deviceInfoDict];
        v26 = [v8 serialNumber];
        v27 = [v25 objectForKeyedSubscript:v26];
        v28 = [v27 warranty];

        if (!v28)
        {
LABEL_13:
          v13 = [v3 warranty];
          v14 = [v13 agsULURL];
          if (v14)
          {
            v15 = *(*(*(a1 + 48) + 8) + 40);

            if (v15)
            {
LABEL_17:
              v19 = _NDOLogSystem();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_4(v8, v3);
              }

              v20 = [*(a1 + 40) deviceInfoDict];
              v21 = [v8 serialNumber];
              [v20 setObject:v3 forKeyedSubscript:v21];

              [*(*(*(a1 + 56) + 8) + 40) addObject:v3];
              goto LABEL_20;
            }

            v13 = [v3 warranty];
            v16 = [v13 agsULURL];
            v17 = *(*(a1 + 48) + 8);
            v18 = *(v17 + 40);
            *(v17 + 40) = v16;
          }

          goto LABEL_17;
        }

        v29 = MEMORY[0x277D2D0B8];
        v30 = [*(a1 + 40) deviceInfoDict];
        v31 = [v8 serialNumber];
        v32 = [v30 objectForKeyedSubscript:v31];
        v33 = [v32 warranty];
        v12 = [v29 deviceInfoWithDevice:v8 warranty:v33];

        v11 = _NDOLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_3(v12, v8);
        }

LABEL_12:

        v3 = v12;
        goto LABEL_13;
      }
    }

    v12 = v3;
    goto LABEL_12;
  }

LABEL_20:
  dispatch_group_leave(*(*(a1 + 40) + 1464));
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_74(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 136446466;
    v13 = "[NDOCoverageCentralViewControllerLegacy getAllDeviceInfoUsingPolicy:sessionID:params:isSales:andForcePostFollowup:withReply:]_block_invoke";
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_25BD8D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s: finishing with device infos: %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_75;
  block[3] = &unk_279978728;
  v8 = *(a1 + 32);
  v7 = *(a1 + 56);
  v4 = *(&v8 + 1);
  *&v5 = v7;
  *(&v5 + 1) = *(a1 + 48);
  v10 = v8;
  v11 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_75(uint64_t a1)
{
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_75_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  [*(a1 + 32) setUlSalesURL:*(*(*(a1 + 48) + 8) + 40)];
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, *(*(*(a1 + 56) + 8) + 40));
  }

  [*(a1 + 32) setDeviceLoadCompleted:1];
  return [*(a1 + 32) showUI];
}

- (void)updateDefaultDeviceWithDeviceInfo:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v7 = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
    v5 = [(NDOCoverageCentralViewControllerLegacy *)self defaultDevice];
    v6 = [v5 serialNumber];
    [v7 setObject:v4 forKeyedSubscript:v6];
  }
}

void __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2;
  v7[3] = &unk_279978778;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) warranty];

  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = [*(v1 + 40) deviceInfoDict];
    v5 = [*(v1 + 32) device];
    v6 = [v5 serialNumber];
    [v4 setObject:v3 forKeyedSubscript:v6];

    v7 = _NDOLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v1 + 32);
      v9 = [v8 device];
      v10 = [v9 serialNumber];
      *buf = 136446722;
      v32 = "[NDOCoverageCentralViewControllerLegacy updateDeviceInfoForDevice:usingPolicy:params:forceUpdateFollowup:withReply:]_block_invoke_2";
      v33 = 2112;
      v34 = v8;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_25BD8D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: updating deviceInfo: %@ for sn: %@", buf, 0x20u);
    }
  }

  if ([*(v1 + 40) shouldShowDeviceListUI])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [*(v1 + 40) specifiers];
    v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v25 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"NDODevice"];
          v16 = [v15 serialNumber];
          [*(v1 + 32) device];
          v18 = v17 = v1;
          v19 = [v18 serialNumber];
          v20 = [v16 isEqualToString:v19];

          v1 = v17;
          if (v20)
          {
            [v14 setObject:*(v17 + 48) forKeyedSubscript:@"NDODevice"];
            [v14 setObject:*(v17 + 32) forKeyedSubscript:@"NDODeviceInfo"];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }
  }

  [*(v1 + 40) reloadSpecifiers];
  v21 = *(v1 + 32);
  result = (*(*(v1 + 56) + 16))();
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2_77;
  v5[3] = &unk_2799783F0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2_77(uint64_t a1)
{
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2_77_cold_1(a1);
  }

  v3 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v22 = "[NDOCoverageCentralViewControllerLegacy handleURL:withCompletion:]";
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&dword_25BD8D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Handle url with dict: %@", buf, 0x16u);
  }

  if ([(NDOCoverageCentralViewControllerLegacy *)self isSignedIn])
  {
    v9 = [v6 objectForKeyedSubscript:@"path"];
    if ([MEMORY[0x277D2D0D0] isNotEmptyString:v9])
    {
      [(NDOCoverageCentralViewControllerLegacy *)self setLaunchedWithUrl:1];
      if ([v9 hasPrefix:@"DEFAULT_COVERAGE"])
      {
        v10 = [(NDOCoverageCentralViewControllerLegacy *)self specifiers];
        v11 = [v10 specifierForID:@"DEFAULT_COVERAGE"];

        v12 = [[NDOWarrantyInfoController alloc] initWithSpecifier:v11];
        v13 = [(NDOCoverageCentralViewControllerLegacy *)self navigationController];
        [v13 pushViewController:v12 animated:1];

        v7[2](v7);
      }

      else
      {
        objc_initWeak(buf, self);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __67__NDOCoverageCentralViewControllerLegacy_handleURL_withCompletion___block_invoke;
        v16[3] = &unk_2799787F0;
        objc_copyWeak(&v18, buf);
        v17 = v7;
        [(NDOCoverageCentralViewControllerLegacy *)self _getUpdatedParamsFromPath:v9 withCompletion:v16];

        objc_destroyWeak(&v18);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v19.receiver = self;
      v19.super_class = NDOCoverageCentralViewControllerLegacy;
      [(NDOCoverageCentralViewControllerLegacy *)&v19 handleURL:v6 withCompletion:v7];
    }
  }

  else
  {
    v14 = _NDOLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v22 = "[NDOCoverageCentralViewControllerLegacy handleURL:withCompletion:]";
      _os_log_impl(&dword_25BD8D000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring handle as the user is not signed in to icloud.", buf, 0xCu);
    }

    v20.receiver = self;
    v20.super_class = NDOCoverageCentralViewControllerLegacy;
    [(NDOCoverageCentralViewControllerLegacy *)&v20 handleURL:v6 withCompletion:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __67__NDOCoverageCentralViewControllerLegacy_handleURL_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDeeplinkParams:v3];
  v5 = [WeakRetained _getParamsDictFromPath:v3];
  v6 = _NDOLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v16 = "[NDOCoverageCentralViewControllerLegacy handleURL:withCompletion:]_block_invoke";
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_25BD8D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: fetching devices with params dict: %@", buf, 0x16u);
  }

  v7 = [v5 objectForKey:@"type"];
  v8 = v7;
  if (v7 && [v7 length])
  {
    v9 = [v8 lowercaseString];
    v10 = [v9 isEqualToString:@"sales"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [WeakRetained sessionID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__NDOCoverageCentralViewControllerLegacy_handleURL_withCompletion___block_invoke_90;
  v13[3] = &unk_2799787C8;
  v14 = *(a1 + 32);
  [WeakRetained fetchAllDeviceInfoUsingPolicy:2 sessionID:v11 params:v3 isSales:v10 withReply:v13];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDeferPushForSpecifierID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[NDOCoverageCentralViewControllerLegacy shouldDeferPushForSpecifierID:]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_25BD8D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s specifierId:%@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)handlePurchaseCompleted
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_refreshAndForcePostFollowUp:(BOOL)a3 refreshControlToStop:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(NDOCoverageCentralViewControllerLegacy *)v7 _refreshAndForcePostFollowUp:v8 refreshControlToStop:v9, v10, v11, v12, v13, v14];
  }

  v15 = [(NDOCoverageCentralViewControllerLegacy *)self table];
  v16 = [v15 isHidden];

  if (v16)
  {
    [(NDOCoverageCentralViewControllerLegacy *)self _setContentUnavailableConfiguration:self->_loadingConfig];
  }

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__NDOCoverageCentralViewControllerLegacy__refreshAndForcePostFollowUp_refreshControlToStop___block_invoke;
  aBlock[3] = &unk_279978840;
  objc_copyWeak(&v25, &location);
  aBlock[4] = self;
  v17 = v6;
  v24 = v17;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (v4)
  {
    v20 = [(NDOCoverageCentralViewControllerLegacy *)self ndoManager];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __92__NDOCoverageCentralViewControllerLegacy__refreshAndForcePostFollowUp_refreshControlToStop___block_invoke_3;
    v21[3] = &unk_279978468;
    v22 = v19;
    [v20 clearAllUserInitiatedFollowUpDismissalsWithReply:v21];
  }

  else
  {
    (*(v18 + 2))(v18);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __92__NDOCoverageCentralViewControllerLegacy__refreshAndForcePostFollowUp_refreshControlToStop___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] sessionID];
  v4 = [a1[4] deeplinkParams];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__NDOCoverageCentralViewControllerLegacy__refreshAndForcePostFollowUp_refreshControlToStop___block_invoke_2;
  v5[3] = &unk_279978818;
  v6 = a1[5];
  [WeakRetained fetchAllDeviceInfoUsingPolicy:2 sessionID:v3 params:v4 isSales:0 withReply:v5];
}

- (void)resetAll
{
  v2 = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
  [v2 removeAllObjects];

  v3 = +[NDOImageManager sharedManager];
  [v3 resetCache];
}

- (BOOL)shouldShowDeviceListUI
{
  v2 = [(NDOCoverageCentralViewControllerLegacy *)self deviceListAPISections];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)showUI
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_25BD8D000, a1, a3, "%{public}s: No warranties found", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_getUpdatedParamsFromPath:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  ndoManager = self->_ndoManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__NDOCoverageCentralViewControllerLegacy__getUpdatedParamsFromPath_withCompletion___block_invoke;
  v9[3] = &unk_279978868;
  v10 = v6;
  v8 = v6;
  [(NDOCoverageCentralVCManager *)ndoManager getDecodedParamsForPath:a3 withReply:v9];
}

void __83__NDOCoverageCentralViewControllerLegacy__getUpdatedParamsFromPath_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_286D71538;
  }

  v5 = [MEMORY[0x277CCAB68] stringWithString:v4];
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 6)
  {
    v8 = @"VisionPro";
  }

  else
  {
    v9 = [MEMORY[0x277D75418] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v8 = @"iPhone";
    if (v10 == 1)
    {
      v8 = @"iPad";
    }
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"lobType=%@", v8];
  if (v14 && ([(__CFString *)v14 isEqualToString:&stru_286D71538]& 1) == 0)
  {
    [v5 appendString:@"&"];
  }

  [v5 appendString:v11];
  v12 = *(a1 + 32);
  v13 = [v5 copy];
  (*(v12 + 16))(v12, v13);
}

- (id)_getParamsDictFromPath:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v17 = v3;
  v5 = [v3 componentsSeparatedByString:@"&"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v10 count] == 2)
        {
          v11 = [v10 firstObject];
          v12 = [v11 stringByRemovingPercentEncoding];

          v13 = [v10 lastObject];
          v14 = [v13 stringByRemovingPercentEncoding];

          [v4 setObject:v14 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)openAMSUIWithURL:(id)a3 httpBody:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v32 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];
    *location = 136446978;
    *&location[4] = "[NDOCoverageCentralViewControllerLegacy openAMSUIWithURL:httpBody:]";
    v42 = 2112;
    v43 = v6;
    v44 = 2112;
    v45 = v7;
    v46 = 2112;
    v47 = v32;
    _os_log_debug_impl(&dword_25BD8D000, v8, OS_LOG_TYPE_DEBUG, "%{public}s: url: %@, httpBody: %@, deeplinkParams: %@", location, 0x2Au);
  }

  v9 = [(NDOCoverageCentralViewControllerLegacy *)self deviceInfoDict];
  v10 = [(NDOCoverageCentralViewControllerLegacy *)self defaultDevice];
  v11 = [v10 serialNumber];
  v12 = [v9 objectForKeyedSubscript:v11];

  objc_initWeak(location, self);
  v13 = [NDOAMSUILoadingViewController alloc];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __68__NDOCoverageCentralViewControllerLegacy_openAMSUIWithURL_httpBody___block_invoke;
  v36 = &unk_279978890;
  objc_copyWeak(&v40, location);
  v14 = v12;
  v37 = v14;
  v15 = v6;
  v38 = v15;
  v16 = v7;
  v39 = v16;
  v17 = [(NDOAMSUILoadingViewController *)v13 initWithCreateAMSViewController:&v33];
  [(NDOCoverageCentralViewControllerLegacy *)self setAmsLoadingViewController:v17, v33, v34, v35, v36];

  WeakRetained = objc_loadWeakRetained(location);
  v19 = [(NDOCoverageCentralViewControllerLegacy *)self amsLoadingViewController];
  [v19 setPresenter:WeakRetained];

  v20 = [MEMORY[0x277D75418] currentDevice];
  if ([v20 userInterfaceIdiom] == 6)
  {

LABEL_6:
    v23 = [(NDOCoverageCentralViewControllerLegacy *)self amsLoadingViewController];
    [v23 setModalPresentationStyle:2];
    goto LABEL_8;
  }

  v21 = [MEMORY[0x277D75418] currentDevice];
  v22 = [v21 userInterfaceIdiom] == 1;

  if (v22)
  {
    goto LABEL_6;
  }

  v23 = [(NDOCoverageCentralViewControllerLegacy *)self amsLoadingViewController];
  [v23 setModalPresentationStyle:0];
LABEL_8:

  v24 = [(NDOCoverageCentralViewControllerLegacy *)self amsLoadingViewController];
  [v24 setModalInPresentation:1];

  v25 = objc_alloc(MEMORY[0x277D757A0]);
  v26 = [(NDOCoverageCentralViewControllerLegacy *)self amsLoadingViewController];
  v27 = [v25 initWithRootViewController:v26];

  v28 = [MEMORY[0x277D75418] currentDevice];
  if ([v28 userInterfaceIdiom] == 6)
  {

LABEL_11:
    [v27 setModalPresentationStyle:2];
    goto LABEL_12;
  }

  v29 = [MEMORY[0x277D75418] currentDevice];
  v30 = [v29 userInterfaceIdiom] == 1;

  if (v30)
  {
    goto LABEL_11;
  }

LABEL_12:
  [v27 setModalInPresentation:1];
  [(NDOCoverageCentralViewControllerLegacy *)self presentViewController:v27 animated:1 completion:0];

  objc_destroyWeak(&v40);
  objc_destroyWeak(location);

  v31 = *MEMORY[0x277D85DE8];
}

void __68__NDOCoverageCentralViewControllerLegacy_openAMSUIWithURL_httpBody___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = [NDOAppleCareAMSUIViewController alloc];
    v5 = [*(a1 + 32) warranty];
    v6 = [WeakRetained defaultDevice];
    v7 = [v6 serialNumber];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"LINK", @"_COVERAGE_CENTRAL"];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = [WeakRetained deeplinkParams];
    v12 = [(NDOAppleCareAMSUIViewController *)v4 initWithWarranty:v5 serialNumber:v7 source:v8 url:v9 purchaseBody:v10 deeplinkParams:v11];

    v13 = objc_loadWeakRetained((a1 + 56));
    [(NDOAppleCareAMSUIViewController *)v12 setPresenter:v13];

    v14[2](v14, v12);
  }
}

- (id)_noAccountConfig
{
  v2 = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v4 = [v3 localizedStringForKey:@"CC_NO_ACCOUNT_ERROR_TITLE" value:&stru_286D71538 table:@"Localizable"];
  [v2 setText:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v6 = [v5 localizedStringForKey:@"CC_NO_ACCOUNT_ERROR_SUBTITLE" value:&stru_286D71538 table:@"Localizable"];
  [v2 setSecondaryText:v6];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"person.crop.circle"];
  [v2 setImage:v7];

  return v2;
}

- (id)_errorStateConfig
{
  v3 = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v5 = [v4 localizedStringForKey:@"CC_ISSUE_ERROR_TITLE" value:&stru_286D71538 table:@"Localizable"];
  [v3 setText:v5];

  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v7 = [v6 localizedStringForKey:@"CC_ISSUE_ERROR_SUBTITLE" value:&stru_286D71538 table:@"Localizable"];
  [v3 setSecondaryText:v7];

  v8 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
  [v3 setImage:v8];

  v9 = [MEMORY[0x277D75230] plainButtonConfiguration];
  v10 = [v3 buttonProperties];
  [v10 setConfiguration:v9];

  v11 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
  v12 = [v11 localizedStringForKey:@"CC_RETRY" value:&stru_286D71538 table:@"Localizable"];
  v13 = [v3 buttonProperties];
  v14 = [v13 configuration];
  [v14 setTitle:v12];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__NDOCoverageCentralViewControllerLegacy__errorStateConfig__block_invoke;
  v18[3] = &unk_2799785A0;
  v18[4] = self;
  v15 = [MEMORY[0x277D750C8] actionWithHandler:v18];
  v16 = [v3 buttonProperties];
  [v16 setPrimaryAction:v15];

  return v3;
}

- (void)dismissAMSUI
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__NDOCoverageCentralViewControllerLegacy_dismissAMSUI__block_invoke;
  v2[3] = &unk_2799785C8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __54__NDOCoverageCentralViewControllerLegacy_dismissAMSUI__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[NDOCoverageCentralViewControllerLegacy dismissAMSUI]_block_invoke";
    _os_log_impl(&dword_25BD8D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  v3 = [WeakRetained amsLoadingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];

  [WeakRetained setAmsLoadingViewController:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)completeWithStatus:(unint64_t)a3 params:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v28 = "[NDOCoverageCentralViewControllerLegacy completeWithStatus:params:]";
    v29 = 2048;
    v30 = a3;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&dword_25BD8D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: status: %lu, params: %@", buf, 0x20u);
  }

  v8 = 1;
  if (a3 <= 5 && ((1 << a3) & 0x2C) != 0)
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[NDOCoverageCentralViewControllerLegacy completeWithStatus:params:]";
      _os_log_impl(&dword_25BD8D000, v9, OS_LOG_TYPE_DEFAULT, "%s: refreshing summary api", buf, 0xCu);
    }

    v10 = [v6 objectForKey:@"deviceSeq"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 intValue];
        if ((v11 & 0x80000000) != 0 || (-[NDOCoverageCentralViewControllerLegacy allLocalDevices](self, "allLocalDevices"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count] > v11, v12, !v13))
        {
          v8 = 1;
        }

        else
        {
          v14 = [(NDOCoverageCentralViewControllerLegacy *)self allLocalDevices];
          v15 = [v14 objectAtIndexedSubscript:v11];

          ndoManager = self->_ndoManager;
          v17 = [v15 serialNumber];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __68__NDOCoverageCentralViewControllerLegacy_completeWithStatus_params___block_invoke;
          v25[3] = &unk_279978278;
          v18 = v15;
          v26 = v18;
          [(NDOCoverageCentralVCManager *)ndoManager dismissFollowUpForSerialNumber:v17 completion:v25];

          objc_initWeak(buf, self);
          v19 = [(NDOCoverageCentralViewControllerLegacy *)self deeplinkParams];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __68__NDOCoverageCentralViewControllerLegacy_completeWithStatus_params___block_invoke_162;
          v23[3] = &unk_2799788B8;
          objc_copyWeak(&v24, buf);
          [(NDOCoverageCentralViewControllerLegacy *)self updateDeviceInfoForDevice:v18 usingPolicy:2 params:v19 forceUpdateFollowup:1 withReply:v23];

          objc_destroyWeak(&v24);
          objc_destroyWeak(buf);

          v8 = 0;
        }
      }
    }
  }

  if (a3 == 5 && v8)
  {
    v20 = _NDOLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[NDOCoverageCentralViewControllerLegacy completeWithStatus:params:]";
      _os_log_impl(&dword_25BD8D000, v20, OS_LOG_TYPE_DEFAULT, "%s: refreshing device list", buf, 0xCu);
    }

    [(NDOCoverageCentralViewControllerLegacy *)self _refreshAndForcePostFollowUp:0 refreshControlToStop:0];
  }

  else if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    [(NDOCoverageCentralViewControllerLegacy *)self dismissAMSUI];
    v21 = _NDOLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = "[NDOCoverageCentralViewControllerLegacy completeWithStatus:params:]";
      _os_log_impl(&dword_25BD8D000, v21, OS_LOG_TYPE_DEFAULT, "%s: dismissing amsui", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __68__NDOCoverageCentralViewControllerLegacy_completeWithStatus_params___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v5 = @"Dismissed";
    }

    else
    {
      v5 = @"Failed to dismiss";
    }

    v6 = [*(a1 + 32) serialNumber];
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_25BD8D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ followup up for %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __68__NDOCoverageCentralViewControllerLegacy_completeWithStatus_params___block_invoke_162(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (NDOACController)acController
{
  WeakRetained = objc_loadWeakRetained(&self->_acController);

  return WeakRetained;
}

- (void)init
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s:", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithIsSignedIn:(uint64_t)a3 deviceManager:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_25BD8D000, a1, a3, "%{public}s: Not signed in to icloud. Leaving...", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__NDOCoverageCentralViewControllerLegacy_loadView__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "launchedWithUrl")}];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)specifiers
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s:", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateCells
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s: generating specifiers from device list api response", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)openURL:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v4[0] = 136446466;
  OUTLINED_FUNCTION_0_3();
  v5 = v0;
  OUTLINED_FUNCTION_4(&dword_25BD8D000, v1, v2, "%{public}s: Opening url: %@", v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllDeviceInfoUsingPolicy:(void *)a1 sessionID:params:isSales:withReply:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllDeviceInfoUsingPolicy:(uint64_t)a3 sessionID:(uint64_t)a4 params:(uint64_t)a5 isSales:(uint64_t)a6 withReply:(uint64_t)a7 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s: skipping fetch: not logged in", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllDeviceInfoUsingPolicy:(uint64_t)a3 sessionID:(uint64_t)a4 params:(uint64_t)a5 isSales:(uint64_t)a6 withReply:(uint64_t)a7 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s: starting fetch", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __107__NDOCoverageCentralViewControllerLegacy_fetchAllDeviceInfoUsingPolicy_sessionID_params_isSales_withReply___block_invoke_2_69_cold_1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 136446466;
  v6 = "[NDOCoverageCentralViewControllerLegacy fetchAllDeviceInfoUsingPolicy:sessionID:params:isSales:withReply:]_block_invoke_2";
  v7 = 2112;
  v8 = v3;
  OUTLINED_FUNCTION_4(&dword_25BD8D000, a2, a3, "%{public}s: getDeviceListForLocalDevices reply: %@", &v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a2 + 32) serialNumber];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 serialNumber];
  v4 = [a2 warranty];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_3(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 serialNumber];
  v4 = [a1 warranty];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x2Au);

  v10 = *MEMORY[0x277D85DE8];
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_2_cold_4(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 serialNumber];
  v4 = [a2 warranty];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __126__NDOCoverageCentralViewControllerLegacy_getAllDeviceInfoUsingPolicy_sessionID_params_isSales_andForcePostFollowup_withReply___block_invoke_75_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s: refreshing", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getDeviceInfoForSerialNumber:(uint64_t)a3 usingPolicy:(uint64_t)a4 sessionID:(uint64_t)a5 params:(uint64_t)a6 andForcePostFollowup:(uint64_t)a7 withReply:(uint64_t)a8 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s: skipping fetch: not logged in", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateDeviceInfoForDevice:usingPolicy:params:forceUpdateFollowup:withReply:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v4[0] = 136446466;
  OUTLINED_FUNCTION_0_3();
  v5 = v0;
  OUTLINED_FUNCTION_4(&dword_25BD8D000, v1, v2, "%{public}s: for device: %@", v4);
  v3 = *MEMORY[0x277D85DE8];
}

void __117__NDOCoverageCentralViewControllerLegacy_updateDeviceInfoForDevice_usingPolicy_params_forceUpdateFollowup_withReply___block_invoke_2_77_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) device];
  v2 = [v1 serialNumber];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_refreshAndForcePostFollowUp:(uint64_t)a3 refreshControlToStop:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_25BD8D000, a1, a3, "%{public}s:", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end