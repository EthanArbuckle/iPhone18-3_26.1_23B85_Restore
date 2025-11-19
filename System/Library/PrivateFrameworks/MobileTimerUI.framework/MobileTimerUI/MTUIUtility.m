@interface MTUIUtility
+ (void)openSleepInHealthApp;
@end

@implementation MTUIUtility

+ (void)openSleepInHealthApp
{
  [MEMORY[0x277D296E0] incrementEventCount:*MEMORY[0x277D29760]];
  v6 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  v2 = _HKCreateURLForSampleType();
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 canOpenURL:v2];

  if (v4)
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 openURL:v2 options:MEMORY[0x277CBEC10] completionHandler:0];
  }
}

@end