@interface HUWelcomeBannerItem
- (BOOL)_shouldHideDiscoverHomeBanner;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUWelcomeBannerItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277D13BB0]];
  if ([v4 BOOLValue])
  {

LABEL_4:
    v6 = MEMORY[0x277D2C900];
    v7 = objc_alloc(MEMORY[0x277D14780]);
    v24 = *MEMORY[0x277D13FB8];
    v25[0] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v9 = [v7 initWithResults:v8];
    v10 = [v6 futureWithResult:v9];
    goto LABEL_6;
  }

  v5 = [(HUWelcomeBannerItem *)self _shouldHideDiscoverHomeBanner];

  if (v5)
  {
    goto LABEL_4;
  }

  v11 = MEMORY[0x277D2C900];
  v12 = MEMORY[0x277D14780];
  v22[0] = *MEMORY[0x277D13F60];
  v8 = _HULocalizedStringWithDefaultValue(@"HUWelcomeUIBannerCell_Title", @"HUWelcomeUIBannerCell_Title", 1);
  v13 = *MEMORY[0x277D13DC8];
  v23[0] = v8;
  v23[1] = @"Home.Banners.Status.Welcome";
  v14 = *MEMORY[0x277D13E20];
  v22[1] = v13;
  v22[2] = v14;
  v9 = _HULocalizedStringWithDefaultValue(@"HUWelcomeUIBannerCell_Details", @"HUWelcomeUIBannerCell_Details", 1);
  v23[2] = v9;
  v22[3] = *MEMORY[0x277D13DE8];
  v15 = _HULocalizedStringWithDefaultValue(@"HUWelcomeUIBannerCell_ActionBar", @"HUWelcomeUIBannerCell_ActionBar", 1);
  v23[3] = v15;
  v22[4] = *MEMORY[0x277D13DA0];
  v16 = MEMORY[0x277CBEB98];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v23[4] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  v20 = [v12 outcomeWithResults:v19];
  v10 = [v11 futureWithResult:v20];

LABEL_6:

  return v10;
}

- (BOOL)_shouldHideDiscoverHomeBanner
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = [(HUBannerItem *)self home];
  v5 = objc_alloc(MEMORY[0x277D14C98]);
  v6 = [v4 currentUser];
  v7 = [v5 initWithHome:v4 user:v6 nameStyle:0];

  if (![(HUBannerItem *)self forceShowBanner])
  {
    if ([v4 hf_currentUserIsRestrictedGuest])
    {
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v4 hf_minimumDescription];
        v11 = [v4 currentUser];
        v12 = [v11 hf_prettyDescription];
        *buf = 136315650;
        v36 = "[HUWelcomeBannerItem _shouldHideDiscoverHomeBanner]";
        v37 = 2112;
        v38 = v10;
        v39 = 2112;
        v40 = v12;
        v13 = "(%s) Hiding discover home banner because current user is RG | home = %@ | currentUser = %@";
LABEL_9:
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, v13, buf, 0x20u);

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if ([v4 hf_shouldBlockCurrentUserFromHome])
    {
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v4 hf_minimumDescription];
        v11 = [v4 currentUser];
        v12 = [v11 hf_prettyDescription];
        *buf = 136315650;
        v36 = "[HUWelcomeBannerItem _shouldHideDiscoverHomeBanner]";
        v37 = 2112;
        v38 = v10;
        v39 = 2112;
        v40 = v12;
        v13 = "(%s) Hiding discover home banner because should block current user | home = %@ | currentUser = %@";
        goto LABEL_9;
      }

LABEL_18:
      v8 = 1;
LABEL_19:

      goto LABEL_20;
    }

    if ([v7 hasDismissedWelcomeUIBanner])
    {
      v9 = HFLogForCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = NSStringFromSelector(a2);
      v15 = [v4 debugDescription];
      v16 = [v7 debugDescription];
      *buf = 138413570;
      v36 = self;
      v37 = 2112;
      v38 = v14;
      v39 = 2048;
      v40 = v4;
      v41 = 2112;
      v42 = v15;
      v43 = 2112;
      v44 = v16;
      v45 = 1024;
      v46 = [v7 hasDismissedWelcomeUIBanner];
      v17 = "%@:%@ Discover Home Banner is not shown, for home:(%p:%@), userItem:%@ hasDismissedWelcomeBanner: %{BOOL}d";
      v18 = v9;
      v19 = 58;
    }

    else
    {
      v20 = [v4 accessories];
      v21 = [v20 count];

      if (!v21)
      {
        v23 = [MEMORY[0x277D14B68] getAvailabilityDictionary];

        v9 = HFLogForCategory();
        v24 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        if (v23)
        {
          if (v24)
          {
            v33 = NSStringFromSelector(a2);
            v25 = [v4 debugDescription];
            v26 = [v7 debugDescription];
            v32 = [v7 hasDismissedWelcomeUIBanner];
            v34 = [v4 accessories];
            v27 = [v34 count];
            v28 = [MEMORY[0x277D14B68] getAvailabilityDictionary];
            v29 = [v28 debugDescription];
            *buf = 138414082;
            v36 = self;
            v37 = 2112;
            v38 = v33;
            v39 = 2048;
            v40 = v4;
            v41 = 2112;
            v42 = v25;
            v43 = 2112;
            v44 = v26;
            v45 = 1024;
            v46 = v32;
            v47 = 2048;
            v48 = v27;
            v49 = 2112;
            v50 = v29;
            _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Discover Home Banner is shown, for home:(%p:%@), with reasons: userItem:%@ hasDismissedWelcomeBanner: %{BOOL}d, self.home.accessories.count = %ld, localeDictionary: %@", buf, 0x4Eu);
          }

          v8 = 0;
          goto LABEL_19;
        }

        if (!v24)
        {
          goto LABEL_18;
        }

        v14 = NSStringFromSelector(a2);
        v15 = [v4 debugDescription];
        v30 = [MEMORY[0x277D14B68] getAvailabilityDictionary];
        v31 = [v30 debugDescription];
        *buf = 138413314;
        v36 = self;
        v37 = 2112;
        v38 = v14;
        v39 = 2048;
        v40 = v4;
        v41 = 2112;
        v42 = v15;
        v43 = 2112;
        v44 = v31;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "%@:%@ Discover Home Banner is not shown, for home:(%p:%@), with invalid localeDictionary: %@", buf, 0x34u);

LABEL_17:
        goto LABEL_18;
      }

      v9 = HFLogForCategory();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      v14 = NSStringFromSelector(a2);
      v15 = [v4 debugDescription];
      v16 = [v4 accessories];
      *buf = 138413314;
      v36 = self;
      v37 = 2112;
      v38 = v14;
      v39 = 2048;
      v40 = v15;
      v41 = 2112;
      v42 = v4;
      v43 = 2048;
      v44 = [v16 count];
      v17 = "%@:%@ Discover Home Banner is not shown, for home:(%p:%@), with accessory count: %ld";
      v18 = v9;
      v19 = 52;
    }

    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);

    goto LABEL_17;
  }

  v8 = 0;
LABEL_20:

  return v8;
}

@end