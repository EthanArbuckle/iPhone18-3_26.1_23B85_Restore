@interface HUDropInBannerItem
- (HUDropInBannerItem)initWithHome:(id)a3;
- (HUDropInBannerItem)initWithHome:(id)a3 device:(id)a4 eventBulletin:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUDropInBannerItem

- (HUDropInBannerItem)initWithHome:(id)a3 device:(id)a4 eventBulletin:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"HUDropInBannerItem.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"HUDropInBannerItem.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"device"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = HUDropInBannerItem;
  v12 = [(HUBannerItem *)&v17 initWithHome:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, a4);
    objc_storeStrong(&v13->_eventBulletin, a5);
  }

  return v13;
}

- (HUDropInBannerItem)initWithHome:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_device_eventBulletin_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUDropInBannerItem.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUDropInBannerItem initWithHome:]", v6}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HUBannerItem *)self home];
  v6 = [(HUDropInBannerItem *)self device];
  v7 = [(HUDropInBannerItem *)self eventBulletin];
  v8 = [v4 initWithHome:v5 device:v6 eventBulletin:v7];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = [(HUDropInBannerItem *)self device];
    *buf = 138412802;
    v83 = self;
    v84 = 2112;
    v85 = v6;
    v86 = 2112;
    *v87 = v7;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@ DropIn device: %@", buf, 0x20u);
  }

  v8 = [(HUDropInBannerItem *)self device];
  if ([v8 state] == 2)
  {
  }

  else
  {
    v9 = [(HUDropInBannerItem *)self device];
    v10 = [v9 state];

    if (v10 != 3)
    {
      v14 = 0;
      goto LABEL_10;
    }
  }

  v11 = [(HUBannerItem *)self home];
  v12 = [(HUDropInBannerItem *)self device];
  v13 = [v12 homeKitIdentifier];
  v14 = [v11 hf_accessoryWithIdentifier:v13];

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138412802;
    v83 = self;
    v84 = 2112;
    v85 = v16;
    v86 = 2112;
    *v87 = v14;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "%@: %@ Found accessory %@", buf, 0x20u);
  }

LABEL_10:
  v17 = objc_opt_new();
  v18 = 1;
  v19 = _HULocalizedStringWithDefaultValue(@"HUDropInBanner_Title_String", @"HUDropInBanner_Title_String", 1);
  [v17 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v17 setObject:@"HUDropInBanner_Title_String" forKeyedSubscript:*MEMORY[0x277D13F68]];
  if (v14)
  {
    v20 = HFLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = NSStringFromSelector(a2);
      v22 = [(HUDropInBannerItem *)self eventBulletin];
      *buf = 138412802;
      v83 = self;
      v84 = 2112;
      v85 = v21;
      v86 = 2112;
      *v87 = v22;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@: %@ Last Known Event Bulletin: %@", buf, 0x20u);
    }

    [v17 setObject:@"Home.Banners.DropIn" forKeyedSubscript:*MEMORY[0x277D13DC8]];
    v23 = [(HUDropInBannerItem *)self eventBulletin];

    if (v23)
    {
      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = NSStringFromSelector(a2);
        v26 = [(HUDropInBannerItem *)self eventBulletin];
        *buf = 138412802;
        v83 = self;
        v84 = 2112;
        v85 = v25;
        v86 = 2112;
        *v87 = v26;
        _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@: %@ Found last known event for accessory: %@", buf, 0x20u);
      }

      v27 = [MEMORY[0x277CBEAA8] now];
      v28 = [(HUDropInBannerItem *)self eventBulletin];
      v29 = [v28 startDate];

      v30 = [(HUDropInBannerItem *)self eventBulletin];
      v80 = [v30 dateOfOccurrence];

      v31 = [v14 hf_serviceNameComponents];
      v32 = [v31 composedString];

      if (objc_opt_respondsToSelector())
      {
        v33 = [v14 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];
        v34 = [v33 composedString];

        v32 = v34;
      }

      v35 = [(HUDropInBannerItem *)self eventBulletin];
      v36 = [v35 state];

      v79 = v32;
      if (v36)
      {
        v37 = [(HUDropInBannerItem *)self eventBulletin];
        v38 = [v37 state];

        if (v38 != 1)
        {
          v18 = 1;
LABEL_36:
          v64 = HFLogForCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = NSStringFromSelector(a2);
            *buf = 138413570;
            v83 = self;
            v84 = 2112;
            v85 = v65;
            v86 = 1024;
            *v87 = v18;
            *&v87[4] = 2112;
            *&v87[6] = v29;
            v88 = 2112;
            v89 = v80;
            v90 = 2112;
            v91 = v27;
            _os_log_impl(&dword_20CEB6000, v64, OS_LOG_TYPE_DEFAULT, "%@: %@ Should hide banner?: %{BOOL}d Event start time: %@ end time: %@ vs Current time: %@", buf, 0x3Au);
          }

          v66 = MEMORY[0x277D755D0];
          v67 = [MEMORY[0x277D75348] systemWhiteColor];
          v81[0] = v67;
          v68 = [MEMORY[0x277D75348] systemRedColor];
          v81[1] = v68;
          v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
          v70 = [v66 configurationWithPaletteColors:v69];

          v71 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"waveform.badge.magnifyingglass.circle.fill" configuration:v70];
          [v17 setObject:v71 forKeyedSubscript:*MEMORY[0x277D13E88]];

          goto LABEL_39;
        }

        v39 = [v80 dateByAddingTimeInterval:900.0];
        v78 = v27;
        [v27 timeIntervalSince1970];
        v41 = v40;
        [v39 timeIntervalSince1970];
        v18 = v41 > v42;
        v43 = [MEMORY[0x277CCA968] localizedStringFromDate:v29 dateStyle:0 timeStyle:1];
        v44 = objc_alloc_init(MEMORY[0x277CCA958]);
        [v44 setUnitsStyle:3];
        [v44 setAllowedUnits:64];
        v77 = [v44 stringFromDate:v29 toDate:v80];
        [v80 timeIntervalSinceDate:v29];
        v46 = v45;
        v47 = [v29 hf_isSingularHour];
        if (v46 >= 60.0)
        {
          if (v47)
          {
            v62 = @"HUDropIn_Description_Alarm_Ended_SingularHour_FormatString";
          }

          else
          {
            v62 = @"HUDropIn_Description_Alarm_Ended_PluralHour_FormatString";
          }

          HULocalizedStringWithFormat(v62, @"%@%@%@", v48, v49, v50, v51, v52, v53, v79);
        }

        else
        {
          if (v47)
          {
            v54 = @"HUDropIn_Description_Alarm_Ended_SingularHour_LessThanOneMin_FormatString";
          }

          else
          {
            v54 = @"HUDropIn_Description_Alarm_Ended_PluralHour_LessThanOneMin_FormatString";
          }

          HULocalizedStringWithFormat(v54, @"%@%@", v48, v49, v50, v51, v52, v53, v79);
        }
        v63 = ;
        [v17 setObject:v63 forKeyedSubscript:*MEMORY[0x277D13E20]];
      }

      else
      {
        v78 = v27;
        v39 = [MEMORY[0x277CCA968] localizedStringFromDate:v29 dateStyle:0 timeStyle:1];
        if ([v29 hf_isSingularHour])
        {
          v61 = @"HUDropIn_Description_Alarm_Started_SingularHour_FormatString";
        }

        else
        {
          v61 = @"HUDropIn_Description_Alarm_Started_PluralHour_FormatString";
        }

        v43 = HULocalizedStringWithFormat(v61, @"%@%@", v55, v56, v57, v58, v59, v60, v32);
        [v17 setObject:v43 forKeyedSubscript:*MEMORY[0x277D13E20]];
        v18 = 0;
      }

      v27 = v78;
      goto LABEL_36;
    }
  }

LABEL_39:
  v72 = _HULocalizedStringWithDefaultValue(@"HUDropInBanner_ActionButton_Title_String", @"HUDropInBanner_ActionButton_Title_String", 1);
  [v17 setObject:v72 forKeyedSubscript:*MEMORY[0x277D13DE8]];

  [v17 setObject:&unk_282491400 forKeyedSubscript:@"bannerItemCategory"];
  v73 = [(HUBannerItem *)self forceShowBanner];
  v74 = [MEMORY[0x277CCABB0] numberWithBool:!v73 & v18];
  [v17 setObject:v74 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v75 = [MEMORY[0x277D2C900] futureWithResult:v17];

  return v75;
}

@end