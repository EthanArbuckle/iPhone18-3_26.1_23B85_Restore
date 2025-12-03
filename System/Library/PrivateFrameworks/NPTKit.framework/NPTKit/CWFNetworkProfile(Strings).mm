@interface CWFNetworkProfile(Strings)
- (__CFString)__descriptionForHiddenState;
- (__CFString)__descriptionForLowDataMode;
- (id)dictionary;
@end

@implementation CWFNetworkProfile(Strings)

- (id)dictionary
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isCaptiveStateDetermined")}];
  [v2 setValue:v3 forKey:@"wifi_is_captive_state_determined"];

  if ([self isCaptiveStateDetermined])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isCaptive")}];
    [v2 setValue:v4 forKey:@"wifi_is_captive"];
  }

  __descriptionForHiddenState = [self __descriptionForHiddenState];

  if (__descriptionForHiddenState)
  {
    __descriptionForHiddenState2 = [self __descriptionForHiddenState];
    [v2 setValue:__descriptionForHiddenState2 forKey:@"wifi_hidden_state"];
  }

  __descriptionForLowDataMode = [self __descriptionForLowDataMode];

  if (__descriptionForLowDataMode)
  {
    __descriptionForLowDataMode2 = [self __descriptionForLowDataMode];
    [v2 setValue:__descriptionForLowDataMode2 forKey:@"wifi_low_data_mode"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(self, "isPersonalHotspot")}];
  [v2 setValue:v9 forKey:@"wifi_is_personal_hotspot"];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v10;
}

- (__CFString)__descriptionForHiddenState
{
  hiddenState = [self hiddenState];
  v2 = @"None";
  if (hiddenState == 2)
  {
    v2 = @"Broadcast";
  }

  if (hiddenState == 1)
  {
    return @"Hidden";
  }

  else
  {
    return v2;
  }
}

- (__CFString)__descriptionForLowDataMode
{
  lowDataMode = [self lowDataMode];
  if (lowDataMode > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789D3DA8[lowDataMode];
  }
}

@end