@interface HFAccessorySettingsEntity
+ (id)settingsAtURL:(id)l error:(id *)error;
- (HFAccessorySettingsEntity)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation HFAccessorySettingsEntity

+ (id)settingsAtURL:(id)l error:(id *)error
{
  lCopy = l;
  if ([lCopy checkResourceIsReachableAndReturnError:error])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:lCopy];
    v7 = objc_opt_new();
    v8 = [v6 objectForKey:@"CodexRoot"];
    [v7 na_safeSetObject:v8 forKey:@"Children"];

    [v7 setObject:@"root" forKeyedSubscript:@"KeyPath"];
    v9 = objc_alloc(MEMORY[0x277D2C910]);
    v10 = [[HFAccessorySettingsEntity alloc] initWithDictionary:v7];
    v11 = [v9 initWithRepresentedObject:v10];

    v15 = 0;
    v16 = &v15;
    v17 = 0x3042000000;
    v18 = __Block_byref_object_copy__26;
    v19 = __Block_byref_object_dispose__26;
    v20 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__HFAccessorySettingsEntity_settingsAtURL_error___block_invoke;
    aBlock[3] = &unk_277E01CA8;
    aBlock[4] = &v15;
    v12 = _Block_copy(aBlock);
    objc_storeWeak(v16 + 5, v12);
    (*(v12 + 2))(v12, v11, v7);
    _Block_object_dispose(&v15, 8);
    objc_destroyWeak(&v20);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __49__HFAccessorySettingsEntity_settingsAtURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [a3 objectForKeyedSubscript:@"Children"];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [[HFAccessorySettingsEntity alloc] initWithDictionary:v10];
        v12 = [objc_alloc(MEMORY[0x277D2C910]) initWithRepresentedObject:v11];
        [v5 addChild:v12];
        WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
        WeakRetained[2](WeakRetained, v12, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  keyPath = [(HFAccessorySettingsEntity *)self keyPath];
  [v3 appendString:keyPath withName:@"keyPath"];

  sortKey = [(HFAccessorySettingsEntity *)self sortKey];
  [v3 appendString:sortKey withName:@"sortKey"];

  build = [v3 build];

  return build;
}

- (HFAccessorySettingsEntity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessorySettingsEntity.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"dictionary"}];
  }

  v172.receiver = self;
  v172.super_class = HFAccessorySettingsEntity;
  v146 = [(HFAccessorySettingsEntity *)&v172 init];
  v5 = MEMORY[0x277CCACA8];
  v6 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{1, 2}];
  v7 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{13, 2}];
  v8 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{3, 2}];
  v9 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{32, 2}];
  v148 = [v5 stringWithFormat:@"%@%@%@%@", v6, v7, v8, v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{6, 2}];
  v12 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{13, 2}];
  v13 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{3, 2}];
  v14 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{32, 2}];
  v145 = [v10 stringWithFormat:@"%@%@%@%@", v11, v12, v13, v14];

  v15 = MEMORY[0x277CCACA8];
  v16 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{15, 2}];
  v17 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{19, 2}];
  v18 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{11, 2}];
  v19 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{34, 2}];
  v20 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{24, 2}];
  v21 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{9, 2}];
  v144 = [v15 stringWithFormat:@"%@%@%@%@%@i%@", v16, v17, v18, v19, v20, v21];

  v22 = MEMORY[0x277CCACA8];
  v23 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{30, 2}];
  v24 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{19, 2}];
  v25 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{11, 2}];
  v26 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{34, 2}];
  v27 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{24, 2}];
  v28 = [@"1anun2AnnmebenodobeorXouCh78Y5Docell" substringWithRange:{9, 2}];
  v143 = [v22 stringWithFormat:@"%@%@%@%@%@i%@", v23, v24, v25, v26, v27, v28];

  v29 = MEMORY[0x277CCACA8];
  v30 = [@"stleAdlossatlemelAiobajuloudnt " substringWithRange:{6, 2}];
  v31 = [@"stleAdlossatlemelAiobajuloudnt " substringWithRange:{8, 2}];
  v32 = [@"stleAdlossatlemelAiobajuloudnt " substringWithRange:{12, 2}];
  v33 = [@"stleAdlossatlemelAiobajuloudnt " substringWithRange:{8, 2}];
  v142 = [v29 stringWithFormat:@"%@%@%@%@", v30, v31, v32, v33];

  v34 = MEMORY[0x277CCACA8];
  v35 = [@"yAtdolbmos" substringWithRange:{3, 2}];
  v36 = [@"yAtdolbmos" substringWithRange:{5, 2}];
  v37 = [@"yAtdolbmos" substringWithRange:{0, 1}];
  v38 = [@"yAtdolbmos" substringWithRange:{1, 2}];
  v39 = [@"yAtdolbmos" substringWithRange:{7, 2}];
  v40 = [@"yAtdolbmos" substringWithRange:{9, 1}];
  v141 = [v34 stringWithFormat:@"%@%@%@%@%@%@", v35, v36, v37, v38, v39, v40];

  v41 = MEMORY[0x277CCACA8];
  v42 = [@"stleAdlossatlemelAiobajuloudnt " substringWithRange:{20, 2}];
  v43 = [@"stleAdlossatlemelAiobajuloudnt " substringWithRange:{8, 2}];
  v44 = [@"stleAdlossatlemelAiobajuloudnt " substringWithRange:{4, 2}];
  v45 = [@"stleAdlossatlemelAiobajuloudnt " substringWithRange:{22, 2}];
  v46 = [@"stleAdlossatlemelAiobajuloudnt " substringWithRange:{0, 2}];
  v140 = [v41 stringWithFormat:@"%@%@%@%@%@", v42, v43, v44, v45, v46];

  v138 = MEMORY[0x277CCACA8];
  v137 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{26, 2}];
  v154 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{21, 2}];
  v152 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{9, 2}];
  v135 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{12, 2}];
  v136 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{20, 2}];
  v134 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{6, 2}];
  v47 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{15, 2}];
  v48 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{17, 2}];
  v49 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{0, 2}];
  v50 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{30, 2}];
  v51 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{24, 2}];
  v52 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{3, 2}];
  v53 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{28, 2}];
  v54 = [@"lugabHSiMAdkjuvriVo8sto3Enauleme" substringWithRange:{10, 1}];
  v139 = [v138 stringWithFormat:@"%@%@%@%@%@%@%@%@%@%@%@%@%@%@", v137, v154, v152, v135, v136, v134, v47, v48, v49, v50, v51, v52, v53, v54];

  v55 = v146;
  v169[0] = MEMORY[0x277D85DD0];
  v169[1] = 3221225472;
  v169[2] = __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke;
  v169[3] = &unk_277E01CD0;
  v56 = v148;
  v170 = v56;
  v57 = v145;
  v171 = v57;
  v58 = [dictionaryCopy na_dictionaryByMappingValues:v169];

  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_2;
  v166[3] = &unk_277E01CD0;
  v59 = v144;
  v167 = v59;
  v60 = v143;
  v168 = v60;
  v61 = [v58 na_dictionaryByMappingValues:v166];

  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_3;
  v164[3] = &unk_277E01CF8;
  v155 = v142;
  v165 = v155;
  v62 = [v61 na_dictionaryByMappingValues:v164];

  v162[0] = MEMORY[0x277D85DD0];
  v162[1] = 3221225472;
  v162[2] = __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_4;
  v162[3] = &unk_277E01CF8;
  v153 = v141;
  v163 = v153;
  v63 = [v62 na_dictionaryByMappingValues:v162];

  v160[0] = MEMORY[0x277D85DD0];
  v160[1] = 3221225472;
  v160[2] = __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_5;
  v160[3] = &unk_277E01CF8;
  v151 = v140;
  v161 = v151;
  v64 = [v63 na_dictionaryByMappingValues:v160];

  v158[0] = MEMORY[0x277D85DD0];
  v158[1] = 3221225472;
  v158[2] = __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_6;
  v158[3] = &unk_277E01CF8;
  v65 = v139;
  v159 = v65;
  v66 = [v64 na_dictionaryByMappingValues:v158];

  if (v146)
  {
    v67 = [v66 objectForKeyedSubscript:@"KeyPath"];
    v68 = [v67 copy];
    keyPath = v146->_keyPath;
    v146->_keyPath = v68;

    v70 = [v66 objectForKeyedSubscript:@"SortKey"];
    v71 = [v70 copy];
    sortKey = v146->_sortKey;
    v146->_sortKey = v71;

    v73 = [v66 objectForKeyedSubscript:@"DisplayValuePreviewFromKeyPath"];
    v74 = [v73 copy];
    p_previewValueKeyPath = &v146->_previewValueKeyPath;
    previewValueKeyPath = v146->_previewValueKeyPath;
    v146->_previewValueKeyPath = v74;

    v77 = [v66 objectForKeyedSubscript:@"DisplayValuePreviewFromAccessory"];
    v146->_previewAccessory = [v77 BOOLValue];

    v78 = [v66 objectForKeyedSubscript:@"LocalizedOverrideTitleKey"];
    v79 = [v78 copy];
    overrideLocalizedTitleKey = v146->_overrideLocalizedTitleKey;
    v146->_overrideLocalizedTitleKey = v79;

    if (v146->_previewAccessory && [*p_previewValueKeyPath length])
    {
      NSLog(&cfstr_CannotPopulate.isa);
    }

    v81 = [v66 objectForKeyedSubscript:@"DisplayValuePreviewFormatter"];
    if ([*p_previewValueKeyPath isEqualToString:@"root.siri.allowHeySiri"])
    {

      objc_storeStrong(&v146->_previewValueKeyPath, @"root.siri.allowHeySiri");
      v81 = @"SiriTriggerPhraseSettingFormatter";
    }

    if (([(__CFString *)v81 containsString:@"AudioAnalysis"]& 1) != 0)
    {
      v82 = v81;
      v81 = 0;
LABEL_17:

      goto LABEL_18;
    }

    if (*p_previewValueKeyPath)
    {
      if (!v81)
      {
        goto LABEL_18;
      }
    }

    else if (!v81 || !v146->_previewAccessory)
    {
LABEL_18:
      v85 = [v66 objectForKeyedSubscript:@"HeaderTitleFormatter"];
      if (([v85 containsString:@"AudioAnalysis"] & 1) == 0)
      {
        if (!v85)
        {
          goto LABEL_22;
        }

        v86 = +[HFAccessorySettingFormatterFactory defaultFactory];
        v87 = [v86 formatterForKey:v85];
        headerTitleFormatter = v146->_headerTitleFormatter;
        v146->_headerTitleFormatter = v87;
      }

LABEL_22:
      v89 = [v66 objectForKeyedSubscript:@"FooterTitleFormatter"];
      if (([v89 containsString:@"AudioAnalysis"] & 1) == 0)
      {
        if (!v89)
        {
LABEL_26:
          v93 = [v66 objectForKeyedSubscript:@"GroupHeaderLocalizedStringKey"];

          if (v93)
          {
            v94 = [v66 objectForKeyedSubscript:@"GroupHeaderLocalizedStringKey"];
            v95 = _HFLocalizedStringWithDefaultValue(v94, v94, 1);
            localizedHeader = v146->_localizedHeader;
            v146->_localizedHeader = v95;
          }

          v97 = [v66 objectForKeyedSubscript:@"GroupFooterLocalizedStringKey"];

          if (v97)
          {
            v98 = [v66 objectForKeyedSubscript:@"GroupFooterLocalizedStringKey"];
            v99 = _HFLocalizedStringWithDefaultValue(v98, v98, 1);
            localizedFooter = v146->_localizedFooter;
            v146->_localizedFooter = v99;
          }

          v101 = [v66 objectForKeyedSubscript:@"PreferredInterfaceModality"];
          v102 = v101;
          v149 = v81;
          if (v101)
          {
            v103 = v101;
            if ([v103 isEqualToString:@"AccessorySettingsInterfaceModalitySlider"])
            {
              v104 = 2;
            }

            else if ([v103 isEqualToString:@"AccessorySettingsInterfaceModalityStepper"])
            {
              v104 = 3;
            }

            else if ([v103 isEqualToString:@"AccessorySettingsInterfaceModalitySwitch"])
            {
              v104 = 5;
            }

            else if ([v103 isEqualToString:@"kCodexSettingsModalitySetting"])
            {
              v104 = 1;
            }

            else if ([v103 isEqualToString:@"AccessorySettingsInterfaceModalityAXSecondStepper"])
            {
              v104 = 4;
            }

            else if ([v103 isEqualToString:@"AccessorySettingsInterfaceModalitySelection"])
            {
              v104 = 8;
            }

            else if ([v103 isEqualToString:@"AccessorySettingsInterfaceModalityButton"])
            {
              v104 = 9;
            }

            else
            {
              v104 = -1;
            }
          }

          else
          {
            v105 = [v66 objectForKeyedSubscript:@"Children"];
            if ([v105 count])
            {

              v104 = 0;
            }

            else
            {
              v106 = [v66 objectForKeyedSubscript:@"AlwaysShowGroup"];
              bOOLValue = [v106 BOOLValue];

              v104 = bOOLValue ^ 1u;
              v55 = v146;
            }
          }

          v55->_interfaceModality = v104;
          if (_MergedGlobals_324 != -1)
          {
            dispatch_once(&_MergedGlobals_324, &__block_literal_global_187_0);
          }

          v108 = qword_280E03D88;
          v109 = [v66 objectForKeyedSubscript:@"SwitchEnableDependencies"];
          v110 = [v109 copy];
          BOOLeanKeyPathDependencies = v55->_BOOLeanKeyPathDependencies;
          v55->_BOOLeanKeyPathDependencies = v110;

          v112 = [v66 objectForKeyedSubscript:@"HideOnDisableDependency"];

          if (v112)
          {
            v113 = [v66 objectForKeyedSubscript:@"HideOnDisableDependency"];
            v55->_requiresDependenciesToShowSetting = [v113 BOOLValue];
          }

          else
          {
            v55->_requiresDependenciesToShowSetting = 1;
          }

          v114 = [v66 objectForKeyedSubscript:@"AlwaysShowGroup"];
          v55->_alwaysShowGroup = [v114 BOOLValue];

          v115 = [v66 objectForKeyedSubscript:@"ShowInSeperateSection"];
          v55->_showInSeperateSection = [v115 BOOLValue];

          v116 = [v66 objectForKeyedSubscript:@"IsSoftwareVersionNeeded"];
          v55->_isSoftwareVersionNeeded = [v116 BOOLValue];

          v117 = [v66 objectForKeyedSubscript:@"WantsSeparateSectionPerGroup"];
          if (v117)
          {
            [v66 objectForKeyedSubscript:@"WantsSeparateSectionPerGroup"];
            v147 = v66;
            v118 = v108;
            v119 = v102;
            v120 = v65;
            v121 = v60;
            v122 = v59;
            v123 = v57;
            v124 = v56;
            v126 = v125 = v55;
            v125->_wantsSeparateSectionPerGroup = [v126 BOOLValue];

            v55 = v125;
            v56 = v124;
            v57 = v123;
            v59 = v122;
            v60 = v121;
            v65 = v120;
            v102 = v119;
            v108 = v118;
            v66 = v147;
          }

          else
          {
            v55->_wantsSeparateSectionPerGroup = 1;
          }

          v127 = [v66 objectForKeyedSubscript:@"AdapterIdentifier"];
          adapterIdentifier = v55->_adapterIdentifier;
          v55->_adapterIdentifier = v127;

          v156[0] = MEMORY[0x277D85DD0];
          v156[1] = 3221225472;
          v156[2] = __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_9;
          v156[3] = &unk_277E01D20;
          v157 = v108;
          v129 = v108;
          v130 = [v66 na_filter:v156];
          userInfo = v55->_userInfo;
          v55->_userInfo = v130;

          goto LABEL_59;
        }

        v90 = +[HFAccessorySettingFormatterFactory defaultFactory];
        v91 = [v90 formatterForKey:v89];
        footerTitleFormatter = v146->_footerTitleFormatter;
        v146->_footerTitleFormatter = v91;
      }

      goto LABEL_26;
    }

    v82 = +[HFAccessorySettingFormatterFactory defaultFactory];
    v83 = [v82 formatterForKey:v81];
    previewValueFormatter = v146->_previewValueFormatter;
    v146->_previewValueFormatter = v83;

    goto LABEL_17;
  }

LABEL_59:

  return v55;
}

id __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 stringByReplacingOccurrencesOfString:@"*dertbu*" withString:*(a1 + 32)];

    v9 = [v8 stringByReplacingOccurrencesOfString:@"*Dertbu*" withString:*(a1 + 40)];
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

id __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 stringByReplacingOccurrencesOfString:@"*grtyde*" withString:*(a1 + 32)];

    v9 = [v8 stringByReplacingOccurrencesOfString:@"*Grtyde*" withString:*(a1 + 40)];
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

id __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 stringByReplacingOccurrencesOfString:@"*wdeioes*" withString:*(a1 + 32)];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

id __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 stringByReplacingOccurrencesOfString:@"*uehgslv*" withString:*(a1 + 32)];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

id __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 stringByReplacingOccurrencesOfString:@"*cyutvegi*" withString:*(a1 + 32)];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

id __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 stringByReplacingOccurrencesOfString:@"*lRVrruvjJf*" withString:*(a1 + 32)];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

void __48__HFAccessorySettingsEntity_initWithDictionary___block_invoke_8()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{@"KeyPath", @"SortKey", @"GroupHeaderLocalizedStringKey", @"GroupFooterLocalizedStringKey", @"PreferredInterfaceModality", @"Children", @"SwitchEnableDependencies", @"WantsSeparateSectionPerGroup", @"AlwaysShowGroup", @"AdapterIdentifier", @"LocalizedOverrideTitleKey", @"FooterTitleFormatter", 0}];
  v1 = qword_280E03D88;
  qword_280E03D88 = v0;
}

@end