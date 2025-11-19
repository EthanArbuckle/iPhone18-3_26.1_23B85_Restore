@interface HUServiceDetailsSeparateTileItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsSeparateTileItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = [(HUServiceDetailsAbstractItem *)self home];
  v5 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D14090]];
  v8 = [v4 hf_roomWithIdentifier:v7];

  v9 = [(HUServiceDetailsAbstractItem *)self home];
  LODWORD(v5) = [v9 hf_currentUserIsAdministrator];

  if (v5 && v8)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    objc_opt_class();
    v11 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

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

    if (v13)
    {
      v20 = v13;
      goto LABEL_14;
    }

    if (v16)
    {
      v26 = [v16 service];
      v21 = [v26 accessory];

      if (v21)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v19)
      {
        v20 = v19;
LABEL_14:
        v21 = [v20 accessory];
        if (!v21)
        {
          goto LABEL_33;
        }

LABEL_21:
        if ([v21 hf_showAsIndividualServices])
        {
          v27 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsUnifyTileButton", @"HUServiceDetailsUnifyTileButton", 1);
          v28 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsUnifyTileFooter", @"HUServiceDetailsUnifyTileFooter", 1);
          v29 = HFLogForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *v39 = 138412290;
            *&v39[4] = v21;
            v30 = "Separate tile item's sourceAccessory %@. Present option to show as single tile to user.";
LABEL_26:
            _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, v30, v39, 0xCu);
          }
        }

        else
        {
          v27 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsSeparateTileButton", @"HUServiceDetailsSeparateTileButton", 1);
          v28 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsSeparateTileFooter", @"HUServiceDetailsSeparateTileFooter", 1);
          v29 = HFLogForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *v39 = 138412290;
            *&v39[4] = v21;
            v30 = "Separate tile item's sourceAccessory %@. Present option to show as separate tiles to user.";
            goto LABEL_26;
          }
        }

        v31 = [MEMORY[0x277CBEB98] setWithObject:v21];
        [v10 setObject:v31 forKeyedSubscript:*MEMORY[0x277D13DA8]];

        [v21 hf_isMultiServiceAccessory];
        if ([v21 hf_isCamera])
        {
          v32 = [v21 hf_visibleServices];
          [v32 count];
        }

        [v10 setObject:v27 forKeyedSubscript:{*MEMORY[0x277D13F60], *v39}];
        [v10 setObject:v28 forKeyedSubscript:@"HUServiceDetailsSeparateTileSectionFooterResultKey"];
        goto LABEL_34;
      }

      v21 = 0;
    }

LABEL_33:
    v27 = 0;
    v28 = 0;
LABEL_34:
    if (![v21 hf_canShowAsIndividualServices] || (objc_msgSend(v16, "service"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "hf_isSensorService"), v33, v34))
    {
      v35 = HFLogForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 138412290;
        *&v39[4] = v21;
        _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "Item is not separable into multiple tiles for sourceAccessory %@", v39, 0xCu);
      }

      [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    }

    v36 = MEMORY[0x277D2C900];
    v37 = [MEMORY[0x277D14780] outcomeWithResults:v10];
    v25 = [v36 futureWithResult:v37];

    goto LABEL_40;
  }

  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 0;
    _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "Not authorized to separate tiles", v39, 2u);
  }

  v23 = MEMORY[0x277D2C900];
  v24 = MEMORY[0x277D14780];
  v40 = *MEMORY[0x277D13FB8];
  v41[0] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v13 = [v24 outcomeWithResults:v10];
  v25 = [v23 futureWithResult:v13];
LABEL_40:

  return v25;
}

@end