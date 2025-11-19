@interface HUFaceRecognitionUserPhotosLibrarySettingsModuleController
- (HUFaceRecognitionUserPhotosLibrarySettingsModuleController)initWithModule:(id)a3;
- (HUFaceRecognitionUserPhotosLibrarySettingsModuleController)initWithModule:(id)a3 host:(id)a4;
- (unint64_t)didSelectItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUFaceRecognitionUserPhotosLibrarySettingsModuleController

- (HUFaceRecognitionUserPhotosLibrarySettingsModuleController)initWithModule:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_host_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionUserPhotosLibrarySettingsModuleController.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionUserPhotosLibrarySettingsModuleController initWithModule:]", v6}];

  return 0;
}

- (HUFaceRecognitionUserPhotosLibrarySettingsModuleController)initWithModule:(id)a3 host:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9;
    if (v10)
    {
      goto LABEL_8;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_8:

  v17.receiver = self;
  v17.super_class = HUFaceRecognitionUserPhotosLibrarySettingsModuleController;
  v14 = [(HUItemModuleController *)&v17 initWithModule:v9];
  v15 = v14;
  if (v14)
  {
    [(HUItemModuleController *)v14 setHost:v7];
  }

  return v15;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = HUFaceRecognitionUserPhotosLibrarySettingsModuleController;
  [(HUItemModuleController *)&v17 setupCell:v6 forItem:a4];
  objc_opt_class();
  v7 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    [v9 setValueColorFollowsTintColor:1];
    [v9 setHideIcon:1];
  }

  objc_opt_class();
  v10 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 shouldUseProxCardPresentationStyle];
  if (v13)
  {
    v14 = objc_opt_new();
    [v7 setBackgroundView:v14];

    v15 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v16 = [v7 backgroundView];
    [v16 setBackgroundColor:v15];
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v12.receiver = self;
  v12.super_class = HUFaceRecognitionUserPhotosLibrarySettingsModuleController;
  v7 = a4;
  v8 = a3;
  [(HUItemModuleController *)&v12 updateCell:v8 forItem:v7 animated:v5];
  v9 = [v7 latestResults];

  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  if ([v10 BOOLValue])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v8 setAccessoryType:v11];
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (([MEMORY[0x277D14CE8] isCloudPhotosOn] & 1) == 0)
  {
    v8 = [v7 photoLibraryAccessNever];
    v9 = [v4 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v14 = MEMORY[0x277D75110];
      v15 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionTurnOniCloudPhotosAlertTitle", @"HUFaceRecognitionTurnOniCloudPhotosAlertTitle", 1);
      v16 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionTurnOniCloudPhotosAlertMessage", @"HUFaceRecognitionTurnOniCloudPhotosAlertMessage", 1);
      v12 = [v14 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

      v17 = MEMORY[0x277D750F8];
      v18 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
      v19 = [v17 actionWithTitle:v18 style:1 handler:0];
      [v12 addAction:v19];

      v20 = [HUViewControllerPresentationRequest requestWithViewController:v12];
      v21 = [(HUItemModuleController *)self host];
      v22 = [v21 moduleController:self presentViewControllerForRequest:v20];

      goto LABEL_9;
    }
  }

  v10 = [(HUItemModuleController *)self module];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(HUItemModuleController *)self module];
    v13 = [v12 didSelectItem:v4];
LABEL_9:
  }

  return 0;
}

@end