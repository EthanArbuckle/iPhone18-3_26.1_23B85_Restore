@interface CWFNetworkProfile(Strings)
- (__CFString)__descriptionForHiddenState;
- (__CFString)__descriptionForLowDataMode;
- (id)dictionary;
@end

@implementation CWFNetworkProfile(Strings)

- (id)dictionary
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isCaptiveStateDetermined")}];
  [v2 setValue:v3 forKey:@"wifi_is_captive_state_determined"];

  if ([a1 isCaptiveStateDetermined])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isCaptive")}];
    [v2 setValue:v4 forKey:@"wifi_is_captive"];
  }

  v5 = [a1 __descriptionForHiddenState];

  if (v5)
  {
    v6 = [a1 __descriptionForHiddenState];
    [v2 setValue:v6 forKey:@"wifi_hidden_state"];
  }

  v7 = [a1 __descriptionForLowDataMode];

  if (v7)
  {
    v8 = [a1 __descriptionForLowDataMode];
    [v2 setValue:v8 forKey:@"wifi_low_data_mode"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isPersonalHotspot")}];
  [v2 setValue:v9 forKey:@"wifi_is_personal_hotspot"];

  v10 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v10;
}

- (__CFString)__descriptionForHiddenState
{
  v1 = [a1 hiddenState];
  v2 = @"None";
  if (v1 == 2)
  {
    v2 = @"Broadcast";
  }

  if (v1 == 1)
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
  v1 = [a1 lowDataMode];
  if (v1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2789D3DA8[v1];
  }
}

@end