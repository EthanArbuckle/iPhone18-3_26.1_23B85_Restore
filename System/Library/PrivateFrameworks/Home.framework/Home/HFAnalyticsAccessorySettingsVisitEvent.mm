@interface HFAnalyticsAccessorySettingsVisitEvent
- (HFAnalyticsAccessorySettingsVisitEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsAccessorySettingsVisitEvent

- (HFAnalyticsAccessorySettingsVisitEvent)initWithData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = HFAnalyticsAccessorySettingsVisitEvent;
  v5 = [(HFAnalyticsEvent *)&v12 initWithEventType:33];
  if (v5)
  {
    v6 = [dataCopy objectForKeyedSubscript:@"accessorySettingsSourceItem"];

    if (!v6)
    {
      NSLog(&cfstr_MissingSourceI.isa);
    }

    objc_opt_class();
    v7 = [dataCopy objectForKeyedSubscript:@"accessorySettingsSourceItem"];
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
        isHomePodMediaSystem = 1;
      }

      else
      {
        isHomePodMediaSystem = [v9 isHomePodMediaSystem];
      }
    }

    else
    {
      isHomePodMediaSystem = 0;
    }

    [(HFAnalyticsAccessorySettingsVisitEvent *)v5 setIsHomePod:isHomePodMediaSystem];
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