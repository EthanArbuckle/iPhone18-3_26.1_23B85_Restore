@interface HUAlarmStatusBannerItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUAlarmStatusBannerItem

- (id)_subclass_updateWithOptions:(id)options
{
  v8.receiver = self;
  v8.super_class = HUAlarmStatusBannerItem;
  v4 = [(HUStatusBannerItem *)&v8 _subclass_updateWithOptions:options];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HUAlarmStatusBannerItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DBB878;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __55__HUAlarmStatusBannerItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277D13FB8];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  if ([v5 BOOLValue])
  {

LABEL_4:
    v8 = MEMORY[0x277D2C900];
    v9 = objc_alloc(MEMORY[0x277D14780]);
    v28 = v4;
    v29[0] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v11 = [v9 initWithResults:v10];
    v12 = [v8 futureWithResult:v11];

    goto LABEL_5;
  }

  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13F20]];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    goto LABEL_4;
  }

  v10 = [v3 mutableCopy];
  v14 = [v3 objectForKeyedSubscript:*MEMORY[0x277D140A8]];
  v15 = [*(a1 + 32) sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v17 = @"HUBannerAlert_CO2_Description";
    v18 = 2;
    v19 = @"Home.Banners.Status.Alarm.CarbonDioxide";
  }

  else
  {
    v20 = [*(a1 + 32) sourceItem];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if (v21)
    {
      v17 = @"HUBannerAlert_CO_Description";
      v18 = 1;
      v19 = @"Home.Banners.Status.Alarm.CarbonMonoxide";
    }

    else
    {
      v22 = [*(a1 + 32) sourceItem];
      objc_opt_class();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        v18 = 0;
        v17 = @"HUBannerAlert_Smoke_Description";
        v19 = @"Home.Banners.Status.Alarm.Smoke";
      }

      else
      {
        v24 = [*(a1 + 32) sourceItem];
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        v18 = -1;
        if ((v25 & 1) == 0)
        {
          v17 = 0;
          goto LABEL_17;
        }

        v17 = @"HUBannerAlert_Leak_Description";
        v19 = @"Home.Banners.Status.Alarm.Leak";
      }
    }
  }

  [v10 setObject:v19 forKeyedSubscript:*MEMORY[0x277D13DC8]];
LABEL_17:
  if ([(__CFString *)v17 length])
  {
    [v10 setObject:v17 forKeyedSubscript:*MEMORY[0x277D13F68]];
  }

  v26 = [*(a1 + 32) _descriptionForLocalizedStringKey:v17 representedHomeKitObjects:v14 options:1];
  [v10 setObject:v26 forKeyedSubscript:*MEMORY[0x277D13E20]];

  [v10 setObject:&unk_282491F10 forKeyedSubscript:@"bannerItemCategory"];
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
  [v10 setObject:v27 forKeyedSubscript:*MEMORY[0x277D13EC8]];

  [v10 setObject:0 forKeyedSubscript:*MEMORY[0x277D13DE8]];
  v12 = [MEMORY[0x277D2C900] futureWithResult:v10];

LABEL_5:

  return v12;
}

@end