@interface HUServiceDetailsAddGroupItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsAddGroupItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v97[1] = *MEMORY[0x277D85DE8];
  v4 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsGroupAddButton", @"HUServiceDetailsGroupAddButton", 1);
  v5 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsGroupFooter", @"HUServiceDetailsGroupFooter", 1);
  v6 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsGroupTitle", @"HUServiceDetailsGroupTitle", 1);
  v7 = [(HUServiceDetailsAbstractItem *)self home];
  v8 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v9 = [v8 latestResults];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D14090]];
  v11 = [v7 hf_roomWithIdentifier:v10];

  v12 = [(HUServiceDetailsAbstractItem *)self home];
  LODWORD(v8) = [v12 hf_currentUserIsAdministrator];

  if (!v8 || !v11)
  {
    v27 = MEMORY[0x277D2C900];
    v28 = MEMORY[0x277D14780];
    v96 = *MEMORY[0x277D13FB8];
    v97[0] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:&v96 count:1];
    v16 = [v28 outcomeWithResults:v13];
    v29 = [v27 futureWithResult:v16];
    goto LABEL_44;
  }

  v78 = v5;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  objc_opt_class();
  v14 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  objc_opt_class();
  v17 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  objc_opt_class();
  v20 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v79 = v4;
  v76 = v22;
  v77 = v19;
  if (v22)
  {
    v23 = [v22 accessory];
    v24 = [v23 hf_visibleServices];
    v25 = [v24 na_any:&__block_literal_global_133];

    v26 = ([v23 hf_canShowAsIndividualServices] ^ 1) & v25;
  }

  else
  {
    if (v16 && ![(HUServiceDetailsAbstractItem *)self isAccessory])
    {
      v50 = [v16 service];
      v51 = [MEMORY[0x277CBEB98] setWithObject:v50];
      [v13 setObject:v51 forKeyedSubscript:*MEMORY[0x277D13DA8]];

      v52 = MEMORY[0x277CBEB98];
      v53 = [v50 hf_effectiveServiceType];
      v54 = [v52 setWithObject:v53];
      [v13 setObject:v54 forKeyedSubscript:*MEMORY[0x277D13DB0]];

      v55 = [v50 hf_supportsGroups];
      v56 = [(HUServiceDetailsAbstractItem *)self home];
      v57 = [v56 hf_serviceGroupsForService:v50];
      if ([v57 count])
      {
        v58 = 0;
      }

      else
      {
        v58 = v55;
      }

      v59 = [(HUServiceDetailsAbstractItem *)self home];
      v60 = [v59 hf_allServices];
      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __60__HUServiceDetailsAddGroupItem__subclass_updateWithOptions___block_invoke_2;
      v82[3] = &unk_277DB9560;
      v83 = v50;
      v30 = v50;
      v26 = v58 & [v60 na_any:v82];
    }

    else
    {
      v26 = 0;
      if ((_os_feature_enabled_impl() & 1) != 0 || !v19)
      {
        goto LABEL_39;
      }

      v30 = [v19 mediaProfileContainer];
      if (([MEMORY[0x277D14810] isHomePod:v30] & 1) != 0 || objc_msgSend(MEMORY[0x277D14810], "isHomePodMediaSystem:", v30))
      {
        if ([v30 hf_supportsStereoPairing])
        {
          v31 = [v19 accessories];
          v32 = [v31 mutableCopy];

          v33 = [(HUServiceDetailsAbstractItem *)self home];
          [v32 na_safeAddObject:v33];

          v74 = v32;
          [v13 setObject:v32 forKeyedSubscript:*MEMORY[0x277D13DA8]];
          v34 = [(HUServiceDetailsAbstractItem *)self home];
          v35 = [v34 hf_accessoriesMatchingCategoryType:*MEMORY[0x277CCE8B0]];
          v80[0] = MEMORY[0x277D85DD0];
          v80[1] = 3221225472;
          v80[2] = __60__HUServiceDetailsAddGroupItem__subclass_updateWithOptions___block_invoke_3;
          v80[3] = &unk_277DB8EC0;
          v36 = v30;
          v81 = v36;
          v37 = [v35 na_filter:v80];

          v75 = v37;
          v38 = [v37 count];
          v39 = [v36 settings];
          v40 = [v39 isControllable];
          if (v40)
          {
            LOBYTE(v40) = [v36 hf_isReachable];
          }

          v41 = v79;
          v26 = (v38 > 1) & v40;

          v42 = HFLogForCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = @"NOT ";
            if (v26)
            {
              v43 = &stru_2823E0EE8;
            }

            v73 = v43;
            v72 = [v75 count];
            v44 = [v36 settings];
            v45 = v30;
            v46 = [v44 isControllable];
            v47 = [v36 hf_isReachable];
            *buf = 138413570;
            v85 = v36;
            v86 = 2112;
            v87 = v73;
            v88 = 2048;
            v89 = v72;
            v90 = 2112;
            v91 = v75;
            v92 = 1024;
            v93 = v46;
            v30 = v45;
            v94 = 1024;
            v95 = v47;
            _os_log_impl(&dword_20CEB6000, v42, OS_LOG_TYPE_DEFAULT, "%@ does %@support showing 'Create Stereo Pair' button --> %lu unpairedHomePodsInHome: %@, isControllable: %{BOOL}d, hf_isReachable: %{BOOL}d", buf, 0x36u);

            v41 = v79;
          }

          v48 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsMediaSystemAddButton", @"HUServiceDetailsMediaSystemAddButton", 1);

          v49 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsMediaSystemFooter", @"HUServiceDetailsMediaSystemFooter", 1);

          v6 = 0;
          v79 = v48;
        }

        else
        {
          v26 = 0;
          v49 = v78;
        }

        v61 = HFLogForCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v85 = v30;
          _os_log_impl(&dword_20CEB6000, v61, OS_LOG_TYPE_DEFAULT, "%@ does NOT support showing 'Create Stereo Pair' button --> hf_supportsStereoPairing: NO", buf, 0xCu);
        }

        v78 = v49;
      }

      else
      {
        v26 = 0;
      }
    }
  }

LABEL_39:
  v62 = [v16 service];
  v63 = [v62 accessory];
  v64 = [v63 hf_isMultiServiceAccessory];

  v65 = [v16 service];
  v66 = [v65 accessory];
  v67 = [v66 hf_showAsIndividualServices];

  if (v26 && ((v64 ^ 1 | v67) & 1) != 0)
  {
    [v13 setObject:v79 forKeyedSubscript:*MEMORY[0x277D13F60]];
    v5 = v78;
    [v13 setObject:v78 forKeyedSubscript:@"HUServiceDetailsAddGroupSectionFooterResultKey"];
    v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", v6];
    [v13 setObject:v68 forKeyedSubscript:*MEMORY[0x277D13DC8]];

    [v13 na_safeSetObject:v6 forKey:@"HUServiceDetailsAddGroupSectionHeaderResultKey"];
  }

  else
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v5 = v78;
  }

  v69 = MEMORY[0x277D2C900];
  v70 = [MEMORY[0x277D14780] outcomeWithResults:v13];
  v29 = [v69 futureWithResult:v70];

  v4 = v79;
LABEL_44:

  return v29;
}

BOOL __60__HUServiceDetailsAddGroupItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mediaProfile];
  v5 = [v4 hf_supportsStereoPairing];

  if (v5 && (v6 = [v3 supportedStereoPairVersions], objc_msgSend(*(a1 + 32), "hf_backingAccessory"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "supportedStereoPairVersions") & v6, v7, v8))
  {
    v9 = [v3 home];
    v10 = [v9 hf_mediaSystemForAccessory:v3];
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end