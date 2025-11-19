@interface UIImage
@end

@implementation UIImage

uint64_t __39__UIImage_MTUIStyling__mtui_sleepImage__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mtui_imageWithSymbolName:@"zzz" pointSize:13.0];
  v2 = mtui_sleepImage_SleepImage;
  mtui_sleepImage_SleepImage = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

uint64_t __38__UIImage_MTUIStyling__mtui_wakeImage__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mtui_imageWithSymbolName:@"bell.fill" pointSize:13.0];
  v2 = mtui_wakeImage_WakeImage;
  mtui_wakeImage_WakeImage = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

void __46__UIImage_MTUIStyling__mtui_deleteButtonImage__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mtui_imageWithSymbolName:@"minus.circle.fill" pointSize:20.0];
  v1 = [v3 imageWithRenderingMode:1];
  v2 = mtui_deleteButtonImage_DeleteButtonImage;
  mtui_deleteButtonImage_DeleteButtonImage = v1;
}

@end