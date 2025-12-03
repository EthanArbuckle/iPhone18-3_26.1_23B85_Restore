@interface UITableViewCell(NTKFaceDetailComplicationPickerViewControllerAdditions)
- (void)ntk_setPickerSelected:()NTKFaceDetailComplicationPickerViewControllerAdditions;
@end

@implementation UITableViewCell(NTKFaceDetailComplicationPickerViewControllerAdditions)

- (void)ntk_setPickerSelected:()NTKFaceDetailComplicationPickerViewControllerAdditions
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__UITableViewCell_NTKFaceDetailComplicationPickerViewControllerAdditions__ntk_setPickerSelected___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  if (ntk_setPickerSelected__onceToken != -1)
  {
    dispatch_once(&ntk_setPickerSelected__onceToken, block);
  }

  v5 = BPSBridgeTintColor();
  imageView = [self imageView];
  [imageView setTintColor:v5];

  v7 = ntk_setPickerSelected__CheckmarkCheckImage;
  imageView2 = [self imageView];
  [imageView2 setImage:v7];

  imageView3 = [self imageView];
  [imageView3 setHidden:a3 ^ 1u];
}

@end