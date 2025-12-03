@interface UIImage(MTUIStyling)
+ (id)mtui_deleteButtonImage;
+ (id)mtui_imageWithSymbolName:()MTUIStyling font:andTintColor:;
+ (id)mtui_imageWithSymbolName:()MTUIStyling pointSize:;
+ (id)mtui_imageWithSymbolName:()MTUIStyling pointSize:color:;
+ (id)mtui_imageWithSymbolName:()MTUIStyling scale:textStyle:andTintColor:;
+ (id)mtui_imageWithSymbolName:()MTUIStyling style:;
+ (id)mtui_sleepImage;
+ (id)mtui_wakeImage;
@end

@implementation UIImage(MTUIStyling)

+ (id)mtui_imageWithSymbolName:()MTUIStyling pointSize:
{
  v5 = MEMORY[0x277D74300];
  v6 = *MEMORY[0x277D74418];
  v7 = a4;
  v8 = [v5 systemFontOfSize:@"NSCTFontUIFontDesignCompactRounded" weight:self design:v6];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:v7];

  v10 = [MEMORY[0x277D755D0] configurationWithFont:v8];
  v11 = [v9 imageWithSymbolConfiguration:v10];

  return v11;
}

+ (id)mtui_imageWithSymbolName:()MTUIStyling scale:textStyle:andTintColor:
{
  v9 = MEMORY[0x277D755B8];
  v10 = a6;
  v11 = a5;
  v12 = [v9 systemImageNamed:a3];
  v13 = [MEMORY[0x277D755D0] configurationWithTextStyle:v11 scale:a4];

  v14 = [v12 imageWithSymbolConfiguration:v13];
  v15 = [v14 mtui_imageWithTintColor:v10];

  return v15;
}

+ (id)mtui_imageWithSymbolName:()MTUIStyling font:andTintColor:
{
  v7 = MEMORY[0x277D755B8];
  v8 = a5;
  v9 = a4;
  v10 = [v7 systemImageNamed:a3];
  v11 = [MEMORY[0x277D755D0] configurationWithFont:v9];

  v12 = [v10 imageWithSymbolConfiguration:v11];
  v13 = [v12 mtui_imageWithTintColor:v8];

  return v13;
}

+ (id)mtui_sleepImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__UIImage_MTUIStyling__mtui_sleepImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mtui_sleepImage_onceToken != -1)
  {
    dispatch_once(&mtui_sleepImage_onceToken, block);
  }

  v1 = mtui_sleepImage_SleepImage;

  return v1;
}

+ (id)mtui_wakeImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__UIImage_MTUIStyling__mtui_wakeImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mtui_wakeImage_onceToken != -1)
  {
    dispatch_once(&mtui_wakeImage_onceToken, block);
  }

  v1 = mtui_wakeImage_WakeImage;

  return v1;
}

+ (id)mtui_deleteButtonImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__UIImage_MTUIStyling__mtui_deleteButtonImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mtui_deleteButtonImage_onceToken != -1)
  {
    dispatch_once(&mtui_deleteButtonImage_onceToken, block);
  }

  v1 = mtui_deleteButtonImage_DeleteButtonImage;

  return v1;
}

+ (id)mtui_imageWithSymbolName:()MTUIStyling style:
{
  v5 = MEMORY[0x277D755B8];
  v6 = a4;
  v7 = [v5 systemImageNamed:a3];
  v8 = [MEMORY[0x277D755D0] configurationWithTextStyle:v6];

  v9 = [v7 imageWithSymbolConfiguration:v8];

  return v9;
}

+ (id)mtui_imageWithSymbolName:()MTUIStyling pointSize:color:
{
  v7 = MEMORY[0x277D755B8];
  v8 = a5;
  v9 = [v7 mtui_imageWithSymbolName:a4 pointSize:self];
  v10 = [v9 mtui_imageWithTintColor:v8];

  return v10;
}

@end