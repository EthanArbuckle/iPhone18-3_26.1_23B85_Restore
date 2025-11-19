@interface HFTriggerBuilder(AutomationBuilders)
- (BOOL)supportsHomeKitAutomationBuilders;
@end

@implementation HFTriggerBuilder(AutomationBuilders)

- (BOOL)supportsHomeKitAutomationBuilders
{
  v3 = [(HFTriggerBuilder *)self trigger];
  if (v3)
  {
    v4 = v3;
    v5 = [(HFTriggerBuilder *)self trigger];
    v6 = [v5 hf_copyAsBuilder];

    if (!v6)
    {
      return 0;
    }
  }

  v7 = [(HFItemBuilder *)self home];
  v8 = [v7 areAutomationBuildersSupported];

  return v8;
}

@end