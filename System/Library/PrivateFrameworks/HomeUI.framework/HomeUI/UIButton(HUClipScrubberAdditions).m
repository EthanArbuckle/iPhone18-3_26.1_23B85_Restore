@interface UIButton(HUClipScrubberAdditions)
+ (id)hu_clipScrubberLiveButtonWithMaximimumLineHeight:()HUClipScrubberAdditions;
+ (id)hu_clipScrubberNearbyAccessoryButton;
+ (void)hu_microphoneButton:()HUClipScrubberAdditions forTalkingState:usingStandardSymbolConfiguration:;
@end

@implementation UIButton(HUClipScrubberAdditions)

+ (id)hu_clipScrubberLiveButtonWithMaximimumLineHeight:()HUClipScrubberAdditions
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75220] buttonWithType:1];
  v3 = [MEMORY[0x277D75348] systemOrangeColor];
  [v2 setBackgroundColor:v3];

  v4 = [MEMORY[0x277D75348] systemWhiteColor];
  [v2 setTintColor:v4];

  v5 = [v2 titleLabel];
  [v5 setAdjustsFontSizeToFitWidth:1];

  v6 = _HULocalizedStringWithDefaultValue(@"HUCameraLive", @"HUCameraLive", 1);
  v7 = objc_alloc_init(MEMORY[0x277D74240]);
  LODWORD(v8) = 1.0;
  [v7 setHyphenationFactor:v8];
  [v7 setMaximumLineHeight:18.0];
  v9 = objc_alloc(MEMORY[0x277CCAB48]);
  v10 = *MEMORY[0x277D740A8];
  v19[0] = *MEMORY[0x277D74118];
  v19[1] = v10;
  v20[0] = v7;
  v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
  v20[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v13 = [v9 initWithString:v6 attributes:v12];

  [v13 size];
  if (v14 > 54.0)
  {
    v15 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
    v16 = [v13 string];
    [v13 addAttribute:v10 value:v15 range:{0, objc_msgSend(v16, "length")}];

    [v7 setMaximumLineHeight:a1];
  }

  [v2 setAttributedTitle:v13 forState:0];
  v17 = [v2 titleLabel];
  [v17 setNumberOfLines:3];

  return v2;
}

+ (id)hu_clipScrubberNearbyAccessoryButton
{
  v0 = [MEMORY[0x277D75220] buttonWithType:1];
  v1 = [MEMORY[0x277D755B8] systemImageNamed:@"square.grid.2x2.fill"];
  [v0 setImage:v1 forState:0];
  v2 = [MEMORY[0x277D75348] systemWhiteColor];
  [v0 setTintColor:v2];

  return v0;
}

+ (void)hu_microphoneButton:()HUClipScrubberAdditions forTalkingState:usingStandardSymbolConfiguration:
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277D75348] systemYellowColor];
  [v7 setBackgroundColor:v8];

  v9 = [MEMORY[0x277D755B8] hu_microphoneGlyphForTalkingState:a4 usingStandardSymbolConfiguration:a5];
  if (v9)
  {
    [v7 setImage:v9 forState:0];
  }

  v10 = [MEMORY[0x277D75348] systemBlackColor];
  [v7 setTintColor:v10];

  [v7 setContentEdgeInsets:{0.0, 18.0, 0.0, 18.0}];
  v11 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v7, "semanticContentAttribute")}];
  v12 = -9.0;
  if (v11)
  {
    v12 = 9.0;
    v13 = @"HUCameraMicrophoneDoneRTLText";
  }

  else
  {
    v13 = @"HUCameraMicrophoneDoneLTRText";
  }

  [v7 setImageEdgeInsets:{0.0, v12, 0.0, 0.0}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 _setContinuousCornerRadius:16.0];
  if (a4)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"HUCameraMicrophoneTalkText";
  }

  v15 = _HULocalizedStringWithDefaultValue(v14, v14, 1);
  v16 = objc_alloc(MEMORY[0x277CCAB48]);
  v20 = *MEMORY[0x277D740A8];
  v17 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
  v21[0] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v19 = [v16 initWithString:v15 attributes:v18];

  [v7 setAttributedTitle:v19 forState:0];
}

@end