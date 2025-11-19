@interface HFAnalyticsAccessorySettingsVisitEvent
- (HFAnalyticsAccessorySettingsVisitEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsAccessorySettingsVisitEvent

- (HFAnalyticsAccessorySettingsVisitEvent)initWithData:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HFAnalyticsAccessorySettingsVisitEvent;
  v5 = [(HFAnalyticsEvent *)&v12 initWithEventType:33];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"accessorySettingsSourceItem"];

    if (!v6)
    {
      NSLog(&cfstr_MissingSourceI.isa);
    }

    objc_opt_class();
    v7 = [v4 objectForKeyedSubscript:@"accessorySettingsSourceItem"];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      if ([v9 isHomePod])
      {
        v10 = 1;
      }

      else
      {
        v10 = [v9 isHomePodMediaSystem];
      }
    }

    else
    {
      v10 = 0;
    }

    [(HFAnalyticsAccessorySettingsVisitEvent *)v5 setIsHomePod:v10];
    [(HFAnalyticsAccessorySettingsVisitEvent *)v5 setIsMediaAccessory:v9 != 0];
  }

  return v5;
}

- (id)payload
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"accessorySettingsForHomePod";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAccessorySettingsVisitEvent isHomePod](self, "isHomePod")}];
  v9[0] = v3;
  v8[1] = @"accessorySettingsForMediaAccessory";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsAccessorySettingsVisitEvent isMediaAccessory](self, "isMediaAccessory")}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end