@interface HUDropInBannerItem
- (HUDropInBannerItem)initWithHome:(id)home;
- (HUDropInBannerItem)initWithHome:(id)home device:(id)device eventBulletin:(id)bulletin;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUDropInBannerItem

- (HUDropInBannerItem)initWithHome:(id)home device:(id)device eventBulletin:(id)bulletin
{
  homeCopy = home;
  deviceCopy = device;
  bulletinCopy = bulletin;
  if (homeCopy)
  {
    if (deviceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUDropInBannerItem.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (deviceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUDropInBannerItem.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"device"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = HUDropInBannerItem;
  v12 = [(HUBannerItem *)&v17 initWithHome:homeCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, device);
    objc_storeStrong(&v13->_eventBulletin, bulletin);
  }

  return v13;
}

- (HUDropInBannerItem)initWithHome:(id)home
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_device_eventBulletin_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUDropInBannerItem.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HUDropInBannerItem initWithHome:]", v6}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  home = [(HUBannerItem *)self home];
  device = [(HUDropInBannerItem *)self device];
  eventBulletin = [(HUDropInBannerItem *)self eventBulletin];
  v8 = [v4 initWithHome:home device:device eventBulletin:eventBulletin];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    device = [(HUDropInBannerItem *)self device];
    *buf = 138412802;
    selfCopy5 = self;
    v84 = 2112;
    v85 = v6;
    v86 = 2112;
    *v87 = device;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@: %@ DropIn device: %@", buf, 0x20u);
  }

  device2 = [(HUDropInBannerItem *)self device];
  if ([device2 state] == 2)
  {
  }

  else
  {
    device3 = [(HUDropInBannerItem *)self device];
    state = [device3 state];

    if (state != 3)
    {
      v14 = 0;
      goto LABEL_10;
    }
  }

  home = [(HUBannerItem *)self home];
  device4 = [(HUDropInBannerItem *)self device];
  homeKitIdentifier = [device4 homeKitIdentifier];
  v14 = [home hf_accessoryWithIdentifier:homeKitIdentifier];

  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy5 = self;
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
      eventBulletin = [(HUDropInBannerItem *)self eventBulletin];
      *buf = 138412802;
      selfCopy5 = self;
      v84 = 2112;
      v85 = v21;
      v86 = 2112;
      *v87 = eventBulletin;
      _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@: %@ Last Known Event Bulletin: %@", buf, 0x20u);
    }

    [v17 setObject:@"Home.Banners.DropIn" forKeyedSubscript:*MEMORY[0x277D13DC8]];
    eventBulletin2 = [(HUDropInBannerItem *)self eventBulletin];

    if (eventBulletin2)
    {
      v24 = HFLogForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = NSStringFromSelector(a2);
        eventBulletin3 = [(HUDropInBannerItem *)self eventBulletin];
        *buf = 138412802;
        selfCopy5 = self;
        v84 = 2112;
        v85 = v25;
        v86 = 2112;
        *v87 = eventBulletin3;
        _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@: %@ Found last known event for accessory: %@", buf, 0x20u);
      }

      v27 = [MEMORY[0x277CBEAA8] now];
      eventBulletin4 = [(HUDropInBannerItem *)self eventBulletin];
      startDate = [eventBulletin4 startDate];

      eventBulletin5 = [(HUDropInBannerItem *)self eventBulletin];
      dateOfOccurrence = [eventBulletin5 dateOfOccurrence];

      hf_serviceNameComponents = [v14 hf_serviceNameComponents];
      composedString = [hf_serviceNameComponents composedString];

      if (objc_opt_respondsToSelector())
      {
        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 = [v14 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];
        composedString2 = [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 composedString];

        composedString = composedString2;
      }

      eventBulletin6 = [(HUDropInBannerItem *)self eventBulletin];
      state2 = [eventBulletin6 state];

      v79 = composedString;
      if (state2)
      {
        eventBulletin7 = [(HUDropInBannerItem *)self eventBulletin];
        state3 = [eventBulletin7 state];

        if (state3 != 1)
        {
          v18 = 1;
LABEL_36:
          v64 = HFLogForCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = NSStringFromSelector(a2);
            *buf = 138413570;
            selfCopy5 = self;
            v84 = 2112;
            v85 = v65;
            v86 = 1024;
            *v87 = v18;
            *&v87[4] = 2112;
            *&v87[6] = startDate;
            v88 = 2112;
            v89 = dateOfOccurrence;
            v90 = 2112;
            v91 = v27;
            _os_log_impl(&dword_20CEB6000, v64, OS_LOG_TYPE_DEFAULT, "%@: %@ Should hide banner?: %{BOOL}d Event start time: %@ end time: %@ vs Current time: %@", buf, 0x3Au);
          }

          v66 = MEMORY[0x277D755D0];
          systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
          v81[0] = systemWhiteColor;
          systemRedColor = [MEMORY[0x277D75348] systemRedColor];
          v81[1] = systemRedColor;
          v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
          v70 = [v66 configurationWithPaletteColors:v69];

          v71 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"waveform.badge.magnifyingglass.circle.fill" configuration:v70];
          [v17 setObject:v71 forKeyedSubscript:*MEMORY[0x277D13E88]];

          goto LABEL_39;
        }

        v39 = [dateOfOccurrence dateByAddingTimeInterval:900.0];
        v78 = v27;
        [v27 timeIntervalSince1970];
        v41 = v40;
        [v39 timeIntervalSince1970];
        v18 = v41 > v42;
        v43 = [MEMORY[0x277CCA968] localizedStringFromDate:startDate dateStyle:0 timeStyle:1];
        v44 = objc_alloc_init(MEMORY[0x277CCA958]);
        [v44 setUnitsStyle:3];
        [v44 setAllowedUnits:64];
        v77 = [v44 stringFromDate:startDate toDate:dateOfOccurrence];
        [dateOfOccurrence timeIntervalSinceDate:startDate];
        v46 = v45;
        hf_isSingularHour = [startDate hf_isSingularHour];
        if (v46 >= 60.0)
        {
          if (hf_isSingularHour)
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
          if (hf_isSingularHour)
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
        v39 = [MEMORY[0x277CCA968] localizedStringFromDate:startDate dateStyle:0 timeStyle:1];
        if ([startDate hf_isSingularHour])
        {
          v61 = @"HUDropIn_Description_Alarm_Started_SingularHour_FormatString";
        }

        else
        {
          v61 = @"HUDropIn_Description_Alarm_Started_PluralHour_FormatString";
        }

        v43 = HULocalizedStringWithFormat(v61, @"%@%@", v55, v56, v57, v58, v59, v60, composedString);
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
  forceShowBanner = [(HUBannerItem *)self forceShowBanner];
  v74 = [MEMORY[0x277CCABB0] numberWithBool:!forceShowBanner & v18];
  [v17 setObject:v74 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v75 = [MEMORY[0x277D2C900] futureWithResult:v17];

  return v75;
}

@end