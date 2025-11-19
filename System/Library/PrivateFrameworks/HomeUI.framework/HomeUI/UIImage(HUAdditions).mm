@interface UIImage(HUAdditions)
+ (__CFString)hu_symbolNameForDescriptionBadgeType:()HUAdditions;
+ (id)hu_airPlaySpeakerImage;
+ (id)hu_avatarImageWithSymbolNamed:()HUAdditions configuration:backgroundColor:diameter:;
+ (id)hu_cameraErrorImage;
+ (id)hu_cellCheckmarkImage;
+ (id)hu_circleImageWithDiameter:()HUAdditions;
+ (id)hu_closeButtonImage;
+ (id)hu_connectedCheckmarkImage;
+ (id)hu_exclamationMarkImage;
+ (id)hu_fastForwardButtonImage;
+ (id)hu_gearImageWithBadgeCount:()HUAdditions;
+ (id)hu_gearSymbolImageWithBadgeCount:()HUAdditions;
+ (id)hu_homeAppIconWithSize:()HUAdditions scale:userInterfaceStyle:;
+ (id)hu_imageForDescriptionBadgeType:()HUAdditions tintColor:;
+ (id)hu_largeQRBadgeTemplateImage;
+ (id)hu_microphoneGlyphForTalkingState:()HUAdditions usingStandardSymbolConfiguration:;
+ (id)hu_mutedMicrophoneImageInCircleWithTintColor:()HUAdditions backgroundColor:;
+ (id)hu_mutedMicrophoneImageWithTintColor:()HUAdditions;
+ (id)hu_navigationBarGlyphHouse;
+ (id)hu_navigationBarGlyphPlus;
+ (id)hu_pauseButton;
+ (id)hu_playButton;
+ (id)hu_playButtonImageForAnnouncementPlaybackButton;
+ (id)hu_recordingButtonMicOffImage;
+ (id)hu_recordingButtonMicOnImage;
+ (id)hu_recordingButtonSendImage;
+ (id)hu_recordingButtonStopImage;
+ (id)hu_recordingButtonWaveformImage;
+ (id)hu_recordingDeleteButton;
+ (id)hu_settingsImageUsingStandardSymbolConfiguration:()HUAdditions;
+ (id)hu_smallAirPlayAudioImage;
+ (id)hu_smallQRBadgeTemplateImage;
+ (id)hu_stopButtonImage;
+ (id)hu_walletAppIconImage;
+ (uint64_t)hu_homeAppIconWithSize:()HUAdditions scale:;
@end

@implementation UIImage(HUAdditions)

+ (id)hu_navigationBarGlyphHouse
{
  v2 = [MEMORY[0x277D755B8] systemImageNamed:@"house"];
  v3 = [a1 hu_navigationBarGlyphSize];
  v4 = [v2 imageWithConfiguration:v3];

  return v4;
}

+ (id)hu_navigationBarGlyphPlus
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"plus"];
  v1 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:-1];
  v2 = [v0 imageWithConfiguration:v1];

  return v2;
}

+ (id)hu_largeQRBadgeTemplateImage
{
  v0 = [MEMORY[0x277D755B8] imageNamed:@"QRBadgeLg"];
  v1 = [v0 imageWithRenderingMode:2];

  return v1;
}

+ (id)hu_smallQRBadgeTemplateImage
{
  v0 = [MEMORY[0x277D755B8] imageNamed:@"QRBadgeSm"];
  v1 = [v0 imageWithRenderingMode:2];

  return v1;
}

+ (id)hu_cameraErrorImage
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"video.slash.fill"];
  v1 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769A8]];
  v2 = [v0 imageWithConfiguration:v1];

  return v2;
}

+ (id)hu_cellCheckmarkImage
{
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v0 = 1;
  }

  else
  {
    v0 = 2;
  }

  v1 = [MEMORY[0x277D180C8] staticPreferredFontForTextStyle:*MEMORY[0x277D76918] traits:v0];
  v2 = [MEMORY[0x277D755D0] configurationWithFont:v1 scale:2];
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:@"checkmark"];
  v4 = [v3 imageWithConfiguration:v2];

  return v4;
}

+ (id)hu_exclamationMarkImage
{
  v0 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76988]];
  v1 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.circle.fill" withConfiguration:v0];

  return v1;
}

+ (id)hu_closeButtonImage
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"xmark.circle.fill"];
  v1 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A08] scale:3];
  v2 = [v0 imageWithConfiguration:v1];

  return v2;
}

+ (id)hu_recordingButtonWaveformImage
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"waveform"];
  v1 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:32.0];
  v2 = [v0 imageWithConfiguration:v1];

  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

+ (id)hu_recordingButtonStopImage
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"stop.fill"];
  v1 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:-1];
  v2 = [v0 imageWithConfiguration:v1];

  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

+ (id)hu_recordingButtonSendImage
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"arrow.up"];
  v1 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:-1];
  v2 = [v0 imageWithConfiguration:v1];

  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

+ (id)hu_recordingButtonMicOnImage
{
  v0 = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
  v1 = [MEMORY[0x277D755B8] _systemImageNamed:@"mic.slash.fill"];
  v2 = [v1 imageWithConfiguration:v0];

  v3 = [MEMORY[0x277D75348] systemBlackColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

+ (id)hu_recordingButtonMicOffImage
{
  v0 = [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
  v1 = [MEMORY[0x277D755B8] _systemImageNamed:@"mic.fill"];
  v2 = [v1 imageWithConfiguration:v0];

  v3 = [MEMORY[0x277D75348] systemBlackColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

+ (id)hu_connectedCheckmarkImage
{
  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    v0 = 1;
  }

  else
  {
    v0 = 2;
  }

  v1 = [MEMORY[0x277D180C8] staticPreferredFontForTextStyle:*MEMORY[0x277D769A8] traits:v0];
  v2 = [MEMORY[0x277D755D0] configurationWithFont:v1 scale:3];
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:@"checkmark"];
  v4 = [v3 imageWithConfiguration:v2];

  v5 = [MEMORY[0x277D75348] systemGreenColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:1];

  return v6;
}

+ (id)hu_fastForwardButtonImage
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"forward.fill"];
  v1 = [MEMORY[0x277D75348] labelColor];
  v2 = [v0 imageWithTintColor:v1 renderingMode:1];

  return v2;
}

+ (id)hu_airPlaySpeakerImage
{
  v0 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:90.0];
  v1 = [MEMORY[0x277D755B8] systemImageNamed:@"hifispeaker.fill"];
  v2 = [v1 imageWithConfiguration:v0];

  v3 = [MEMORY[0x277D75348] systemGrayColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

+ (id)hu_smallAirPlayAudioImage
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"airplayaudio"];
  v1 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:18.0];
  v2 = [v0 imageWithConfiguration:v1];

  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];

  return v4;
}

+ (id)hu_playButton
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"play.circle.fill"];
  v1 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A28] scale:3];
  v2 = [v0 imageWithConfiguration:v1];

  return v2;
}

+ (id)hu_pauseButton
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"pause.circle.fill"];
  v1 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A28] scale:3];
  v2 = [v0 imageWithConfiguration:v1];

  return v2;
}

+ (id)hu_stopButtonImage
{
  v0 = objc_alloc(MEMORY[0x277D755B8]);
  v1 = [MEMORY[0x277D75348] blackColor];
  v2 = [MEMORY[0x277D75348] systemLightGrayColor];
  v3 = [v0 _initWithFilledSystemImageNamed:@"stop.circle.fill" fillColor:v1 symbolColor:v2];
  v4 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769A8] scale:3];
  v5 = [v3 imageWithConfiguration:v4];

  return v5;
}

+ (id)hu_playButtonImageForAnnouncementPlaybackButton
{
  v0 = objc_alloc(MEMORY[0x277D755B8]);
  v1 = [MEMORY[0x277D75348] blackColor];
  v2 = [MEMORY[0x277D75348] systemLightGrayColor];
  v3 = [v0 _initWithFilledSystemImageNamed:@"play.circle.fill" fillColor:v1 symbolColor:v2];
  v4 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769A8] scale:3];
  v5 = [v3 imageWithConfiguration:v4];

  return v5;
}

+ (id)hu_recordingDeleteButton
{
  v0 = [MEMORY[0x277D755B8] _systemImageNamed:@"xmark.circle.fill"];
  v1 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76A20] scale:3];
  v2 = [v0 imageWithConfiguration:v1];

  return v2;
}

+ (id)hu_microphoneGlyphForTalkingState:()HUAdditions usingStandardSymbolConfiguration:
{
  if (a4)
  {
    [MEMORY[0x277D755B8] hu_standardSymbolConfiguration];
  }

  else
  {
    [MEMORY[0x277D755B8] hu_largeSymbolConfiguration];
  }
  v5 = ;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"mic.fill"];
    v6 = [v7 imageWithConfiguration:v5];
  }

  return v6;
}

+ (id)hu_settingsImageUsingStandardSymbolConfiguration:()HUAdditions
{
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:@"gear"];
  if (a3)
  {
    [a1 hu_standardSymbolConfiguration];
  }

  else
  {
    [a1 hu_largeSymbolConfiguration];
  }
  v6 = ;
  v7 = [v5 imageWithConfiguration:v6];

  return v7;
}

+ (id)hu_gearImageWithBadgeCount:()HUAdditions
{
  if (a3)
  {
    v3 = @"gear-with-badge";
  }

  else
  {
    v3 = @"gear";
  }

  v4 = HUImageNamed(v3);

  return v4;
}

+ (id)hu_gearSymbolImageWithBadgeCount:()HUAdditions
{
  if (a3)
  {
    v3 = [MEMORY[0x277D755B8] systemImageNamed:@"gear.badge"];
    if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
    {
      v4 = [MEMORY[0x277D755D0] configurationPreferringMulticolor];
      v5 = [v3 imageByApplyingSymbolConfiguration:v4];

      v3 = v5;
    }
  }

  else
  {
    v3 = [MEMORY[0x277D755B8] systemImageNamed:@"gear"];
  }

  return v3;
}

+ (id)hu_avatarImageWithSymbolNamed:()HUAdditions configuration:backgroundColor:diameter:
{
  v9 = MEMORY[0x277D755B8];
  v10 = a6;
  v11 = a5;
  v12 = [v9 _systemImageNamed:a4];
  v13 = [v12 imageWithSymbolConfiguration:v11];

  v27.width = a1;
  v27.height = a1;
  UIGraphicsBeginImageContextWithOptions(v27, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
  v15 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a1, a1, a1 * 0.5}];
  [v10 set];

  [v15 setLineWidth:1.0];
  [v15 addClip];
  [v15 fill];
  [v13 size];
  v17 = v16;
  [v13 size];
  v19 = v17 + v18 * 0.5;
  [v13 size];
  v21 = v20;
  [v13 size];
  [v13 drawInRect:0 blendMode:(a1 - v19) * 0.5 alpha:{(a1 - (v21 + v22 * 0.5)) * 0.5, v19, v21 + v22 * 0.5, 1.0}];
  v23 = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(v23, kCGBlendModeCopy);
  [v15 stroke];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v24;
}

+ (id)hu_circleImageWithDiameter:()HUAdditions
{
  UIGraphicsBeginImageContextWithOptions(*&a1, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
  v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, a1, a1, a1 * 0.5}];
  v5 = [MEMORY[0x277D75348] whiteColor];
  [v5 set];

  [v4 setLineWidth:1.0];
  [v4 addClip];
  [v4 fill];
  v6 = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(v6, kCGBlendModeCopy);
  [v4 stroke];
  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v7;
}

+ (id)hu_mutedMicrophoneImageWithTintColor:()HUAdditions
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = [v3 _systemImageNamed:@"mic.slash.circle.fill"];
  v6 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76968] scale:3];
  v7 = [v5 imageWithConfiguration:v6];

  v8 = [v7 imageWithTintColor:v4 renderingMode:1];

  return v8;
}

+ (id)hu_mutedMicrophoneImageInCircleWithTintColor:()HUAdditions backgroundColor:
{
  v5 = MEMORY[0x277D755B8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 _systemImageNamed:@"mic.slash.circle.fill"];
  v9 = [v8 imageWithTintColor:v7 renderingMode:1];

  [v9 size];
  v11 = v10;
  [v9 size];
  v13 = v12;
  v20.width = v11 + 2.0;
  v20.height = v11 + 2.0;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
  v15 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v11 + 2.0, v11 + 2.0, (v11 + 2.0) * 0.5}];
  [v6 set];

  [v15 setLineWidth:1.0];
  [v15 addClip];
  [v15 fill];
  [v9 drawInRect:0 blendMode:(v11 + 2.0 - v11) * 0.5 alpha:{(v11 + 2.0 - v13) * 0.5, v11, v13, 1.0}];
  v16 = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(v16, kCGBlendModeCopy);
  [v15 stroke];
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

+ (id)hu_walletAppIconImage
{
  v0 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76968] scale:3];
  v1 = [MEMORY[0x277D755B8] _systemImageNamed:@"wallet.fill"];
  v2 = [v1 imageWithConfiguration:v0];
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

+ (__CFString)hu_symbolNameForDescriptionBadgeType:()HUAdditions
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return off_277DB8580[a3 - 1];
  }
}

+ (id)hu_imageForDescriptionBadgeType:()HUAdditions tintColor:
{
  v5 = a4;
  v6 = [MEMORY[0x277D755B8] hu_symbolNameForDescriptionBadgeType:a3];
  if (v6)
  {
    v7 = [MEMORY[0x277D755B8] _systemImageNamed:v6];
    v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76968] scale:-1];
    v9 = [v7 imageWithConfiguration:v8];

    v10 = [v9 imageWithTintColor:v5 renderingMode:1];

    [v10 setAccessibilityIdentifier:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (uint64_t)hu_homeAppIconWithSize:()HUAdditions scale:
{
  v6 = objc_opt_class();

  return [v6 hu_homeAppIconWithSize:0 scale:a1 userInterfaceStyle:{a2, a3}];
}

+ (id)hu_homeAppIconWithSize:()HUAdditions scale:userInterfaceStyle:
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__UIImage_HUAdditions__hu_homeAppIconWithSize_scale_userInterfaceStyle___block_invoke;
  v8[3] = &__block_descriptor_64_e19_v16__0__NAPromise_8l;
  *&v8[4] = a1;
  *&v8[5] = a2;
  *&v8[6] = a3;
  v8[7] = a6;
  v6 = [MEMORY[0x277D2C900] futureWithBlock:v8];

  return v6;
}

@end