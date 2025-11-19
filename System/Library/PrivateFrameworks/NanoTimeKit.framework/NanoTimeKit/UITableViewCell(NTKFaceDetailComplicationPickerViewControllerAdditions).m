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
  block[4] = a1;
  if (ntk_setPickerSelected__onceToken != -1)
  {
    dispatch_once(&ntk_setPickerSelected__onceToken, block);
  }

  v5 = BPSBridgeTintColor();
  v6 = [a1 imageView];
  [v6 setTintColor:v5];

  v7 = ntk_setPickerSelected__CheckmarkCheckImage;
  v8 = [a1 imageView];
  [v8 setImage:v7];

  v9 = [a1 imageView];
  [v9 setHidden:a3 ^ 1u];
}

@end