@interface NTPBTodayBannerConfig(FCAdditions)
+ (id)bannerConfigWithJSONDictionary:()FCAdditions;
@end

@implementation NTPBTodayBannerConfig(FCAdditions)

+ (id)bannerConfigWithJSONDictionary:()FCAdditions
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306C0]];
  [v4 setIdentifier:v5];

  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306F8]];
  [v4 setTitle:v6];

  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306A0]];
  [v4 setBody:v7];

  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x277D30680]];
  [v4 setActionURL:v8];

  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D30678]];
  [v4 setActionButtonText:v9];

  v10 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306C8]];
  [v4 setImageMethod:{objc_msgSend(v10, "intValue")}];

  v11 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306D0]];
  [v4 setImageURL:v11];

  v12 = [v3 objectForKeyedSubscript:*MEMORY[0x277D30698]];
  [v4 setBackgroundMethod:{objc_msgSend(v12, "intValue")}];

  v13 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306F0]];
  v14 = ColorPairWithJSONDictionary(v13);
  [v4 setSolidBackgroundColorPair:v14];

  v15 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306B8]];
  v16 = ColorGradientPairWithJSONDictionary(v15);
  [v4 setGradientBackgroundPair:v16];

  v17 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306E0]];
  [v4 setNumberOfAppearancesToHide:{objc_msgSend(v17, "intValue")}];

  v18 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306E8]];
  [v4 setNumberOfTapsToHide:{objc_msgSend(v18, "intValue")}];

  v19 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306B0]];
  [v4 setDaysVisibleToNewSubscribers:{objc_msgSend(v19, "intValue")}];

  v20 = *MEMORY[0x277D306D8];
  v21 = [v3 objectForKeyedSubscript:*MEMORY[0x277D306D8]];

  if (v21)
  {
    v22 = [v3 objectForKeyedSubscript:v20];
    [v4 setIsEnabled:{objc_msgSend(v22, "BOOLValue")}];
  }

  return v4;
}

@end