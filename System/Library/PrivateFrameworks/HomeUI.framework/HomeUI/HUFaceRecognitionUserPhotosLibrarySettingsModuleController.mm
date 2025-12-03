@interface HUFaceRecognitionUserPhotosLibrarySettingsModuleController
- (HUFaceRecognitionUserPhotosLibrarySettingsModuleController)initWithModule:(id)module;
- (HUFaceRecognitionUserPhotosLibrarySettingsModuleController)initWithModule:(id)module host:(id)host;
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUFaceRecognitionUserPhotosLibrarySettingsModuleController

- (HUFaceRecognitionUserPhotosLibrarySettingsModuleController)initWithModule:(id)module
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithModule_host_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionUserPhotosLibrarySettingsModuleController.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionUserPhotosLibrarySettingsModuleController initWithModule:]", v6}];

  return 0;
}

- (HUFaceRecognitionUserPhotosLibrarySettingsModuleController)initWithModule:(id)module host:(id)host
{
  moduleCopy = module;
  hostCopy = host;
  v8 = objc_opt_class();
  v9 = moduleCopy;
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

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_8:

  v17.receiver = self;
  v17.super_class = HUFaceRecognitionUserPhotosLibrarySettingsModuleController;
  v14 = [(HUItemModuleController *)&v17 initWithModule:v9];
  v15 = v14;
  if (v14)
  {
    [(HUItemModuleController *)v14 setHost:hostCopy];
  }

  return v15;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  v17.receiver = self;
  v17.super_class = HUFaceRecognitionUserPhotosLibrarySettingsModuleController;
  [(HUItemModuleController *)&v17 setupCell:cellCopy forItem:item];
  objc_opt_class();
  v7 = cellCopy;
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
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v11 = module;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  shouldUseProxCardPresentationStyle = [v12 shouldUseProxCardPresentationStyle];
  if (shouldUseProxCardPresentationStyle)
  {
    v14 = objc_opt_new();
    [v7 setBackgroundView:v14];

    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    backgroundView = [v7 backgroundView];
    [backgroundView setBackgroundColor:secondarySystemBackgroundColor];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v12.receiver = self;
  v12.super_class = HUFaceRecognitionUserPhotosLibrarySettingsModuleController;
  itemCopy = item;
  cellCopy = cell;
  [(HUItemModuleController *)&v12 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  latestResults = [itemCopy latestResults];

  v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  if ([v10 BOOLValue])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [cellCopy setAccessoryType:v11];
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (([MEMORY[0x277D14CE8] isCloudPhotosOn] & 1) == 0)
  {
    photoLibraryAccessNever = [v7 photoLibraryAccessNever];
    v9 = [itemCopy isEqual:photoLibraryAccessNever];

    if ((v9 & 1) == 0)
    {
      v14 = MEMORY[0x277D75110];
      v15 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionTurnOniCloudPhotosAlertTitle", @"HUFaceRecognitionTurnOniCloudPhotosAlertTitle", 1);
      v16 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionTurnOniCloudPhotosAlertMessage", @"HUFaceRecognitionTurnOniCloudPhotosAlertMessage", 1);
      module3 = [v14 alertControllerWithTitle:v15 message:v16 preferredStyle:1];

      v17 = MEMORY[0x277D750F8];
      v18 = _HULocalizedStringWithDefaultValue(@"HUOkTitle", @"HUOkTitle", 1);
      v19 = [v17 actionWithTitle:v18 style:1 handler:0];
      [module3 addAction:v19];

      v20 = [HUViewControllerPresentationRequest requestWithViewController:module3];
      host = [(HUItemModuleController *)self host];
      v22 = [host moduleController:self presentViewControllerForRequest:v20];

      goto LABEL_9;
    }
  }

  module2 = [(HUItemModuleController *)self module];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    module3 = [(HUItemModuleController *)self module];
    v13 = [module3 didSelectItem:itemCopy];
LABEL_9:
  }

  return 0;
}

@end