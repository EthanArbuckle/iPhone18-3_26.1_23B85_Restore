@interface UIImage(CarPlayUIServices)
+ (id)crsui_imageNamed:()CarPlayUIServices compatibleWithTraitCollection:;
+ (id)crsui_nowPlayingIconImageWthTraitCollection:()CarPlayUIServices;
+ (id)crsui_symbolImageNamed:()CarPlayUIServices tintColor:compatibleWithTraitCollection:;
+ (id)crsui_wallpaperImageNamed:()CarPlayUIServices compatibleWithTraitCollection:;
@end

@implementation UIImage(CarPlayUIServices)

+ (id)crsui_imageNamed:()CarPlayUIServices compatibleWithTraitCollection:
{
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277CCA8D8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 bundleWithIdentifier:@"com.apple.CarPlayUIServices"];
  v10 = [v5 imageNamed:v8 inBundle:v9 compatibleWithTraitCollection:v7];

  return v10;
}

+ (id)crsui_nowPlayingIconImageWthTraitCollection:()CarPlayUIServices
{
  v3 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__UIImage_CarPlayUIServices__crsui_nowPlayingIconImageWthTraitCollection___block_invoke;
  v8[3] = &unk_278DA0C40;
  v9 = v3;
  v4 = v3;
  v5 = [v4 traitCollectionByModifyingTraits:v8];
  v6 = [MEMORY[0x277D755B8] crsui_imageNamed:@"CarDisplayCanvasIcon-com.apple.cardisplay.nowplaying" compatibleWithTraitCollection:v5];

  return v6;
}

+ (id)crsui_wallpaperImageNamed:()CarPlayUIServices compatibleWithTraitCollection:
{
  v5 = a3;
  if ([a4 userInterfaceStyle] == 1)
  {
    v6 = @"-Light";
  }

  else
  {
    v6 = @"-Dark";
  }

  v7 = [v5 stringByAppendingString:v6];

  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CarPlayUIServices"];
  v9 = [v8 pathForResource:v7 ofType:@"heic"];

  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v9];
  v11 = [MEMORY[0x277D755B8] imageWithData:v10];

  return v11;
}

+ (id)crsui_symbolImageNamed:()CarPlayUIServices tintColor:compatibleWithTraitCollection:
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{256.0, 256.0}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__UIImage_CarPlayUIServices__crsui_symbolImageNamed_tintColor_compatibleWithTraitCollection___block_invoke;
  v12[3] = &unk_278DA0C68;
  v14 = v5;
  v15 = 0x4070000000000000;
  v13 = v6;
  v8 = v5;
  v9 = v6;
  v10 = [v7 imageWithActions:v12];

  return v10;
}

@end