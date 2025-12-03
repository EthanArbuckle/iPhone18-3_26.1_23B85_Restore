@interface HFTriggerBuilder(AutomationBuilders)
- (BOOL)supportsHomeKitAutomationBuilders;
@end

@implementation HFTriggerBuilder(AutomationBuilders)

- (BOOL)supportsHomeKitAutomationBuilders
{
  trigger = [(HFTriggerBuilder *)self trigger];
  if (trigger)
  {
    v4 = trigger;
    trigger2 = [(HFTriggerBuilder *)self trigger];
    hf_copyAsBuilder = [trigger2 hf_copyAsBuilder];

    if (!hf_copyAsBuilder)
    {
      return 0;
    }
  }

  home = [(HFItemBuilder *)self home];
  areAutomationBuildersSupported = [home areAutomationBuildersSupported];

  return areAutomationBuildersSupported;
}

@end