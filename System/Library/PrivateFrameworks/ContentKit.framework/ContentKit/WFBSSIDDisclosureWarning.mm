@interface WFBSSIDDisclosureWarning
- (id)localizedMessage;
@end

@implementation WFBSSIDDisclosureWarning

- (id)localizedMessage
{
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  v3 = [currentDevice hasCapability:*MEMORY[0x277D7A3F8]];

  if (v3)
  {
    v4 = @"This shortcut is attempting to use your WLAN network address. This may be used to infer your device location.";
  }

  else
  {
    v4 = @"This shortcut is attempting to use your Wi-Fi network address. This may be used to infer your device location.";
  }

  v5 = WFLocalizedString(v4);

  return v5;
}

@end