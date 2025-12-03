@interface HUFaceRecognitionItemModuleController
- (Class)cellClassForItem:(id)item;
- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)event animated:(BOOL)animated;
- (id)presentFaceRecognitionPersonSettingsForPerson:(id)person personManager:(id)manager animated:(BOOL)animated;
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUFaceRecognitionItemModuleController

- (id)presentFaceRecognitionPersonSettingsForPerson:(id)person personManager:(id)manager animated:(BOOL)animated
{
  animatedCopy = animated;
  personCopy = person;
  managerCopy = manager;
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

  v13 = [HUFaceRecognitionLibraryListViewController alloc];
  home = [v12 home];

  v15 = [(HUFaceRecognitionLibraryListViewController *)v13 initWithHome:home];
  v16 = [HUViewControllerPresentationRequest requestWithViewController:v15];
  [v16 setAnimated:animatedCopy];
  [v16 setPreferredPresentationType:1];
  host = [(HUItemModuleController *)self host];
  v18 = [host moduleController:self presentViewControllerForRequest:v16];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __110__HUFaceRecognitionItemModuleController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke;
  v24[3] = &unk_277DC14E0;
  v25 = personCopy;
  v26 = managerCopy;
  v27 = v15;
  v28 = animatedCopy;
  v19 = personCopy;
  v20 = managerCopy;
  v21 = v15;
  v22 = [v18 flatMap:v24];

  return v22;
}

id __110__HUFaceRecognitionItemModuleController_presentFaceRecognitionPersonSettingsForPerson_personManager_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) && *(a1 + 40))
  {
    v1 = [*(a1 + 48) presentFaceRecognitionPersonSettingsForPerson:? personManager:? animated:?];
  }

  else
  {
    v1 = [MEMORY[0x277D2C900] futureWithResult:*(a1 + 48)];
  }

  return v1;
}

- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)event animated:(BOOL)animated
{
  animatedCopy = animated;
  eventCopy = event;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v8 = module;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [HUFaceRecognitionLibraryListViewController alloc];
  home = [v9 home];

  v12 = [(HUFaceRecognitionLibraryListViewController *)v10 initWithHome:home];
  v13 = [HUViewControllerPresentationRequest requestWithViewController:v12];
  [v13 setAnimated:animatedCopy];
  [v13 setPreferredPresentationType:1];
  host = [(HUItemModuleController *)self host];
  v15 = [host moduleController:self presentViewControllerForRequest:v13];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __111__HUFaceRecognitionItemModuleController_presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent_animated___block_invoke;
  v20[3] = &unk_277DC1508;
  v21 = v12;
  v22 = eventCopy;
  v23 = animatedCopy;
  v16 = v12;
  v17 = eventCopy;
  v18 = [v15 flatMap:v20];

  return v18;
}

- (Class)cellClassForItem:(id)item
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

  faceRecognitionCellItem = [v7 faceRecognitionCellItem];

  if (faceRecognitionCellItem != itemCopy)
  {
    NSLog(&cfstr_ForgotToDeclar.isa);
  }

  v9 = objc_opt_class();

  return v9;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v8 = module;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  faceRecognitionCellItem = [v9 faceRecognitionCellItem];

  if (faceRecognitionCellItem == itemCopy)
  {
    objc_opt_class();
    v11 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    [v13 setAccessoryType:1];
    [v13 setHideIcon:1];
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v9 = module;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  faceRecognitionCellItem = [v10 faceRecognitionCellItem];

  if (faceRecognitionCellItem == itemCopy)
  {
    latestResults = [itemCopy latestResults];
    v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA8]];
    bOOLValue = [v13 BOOLValue];

    [cellCopy setAccessoryType:bOOLValue ^ 1u];
  }
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

  faceRecognitionCellItem = [v7 faceRecognitionCellItem];
  v9 = [itemCopy isEqual:faceRecognitionCellItem];

  v10 = 0;
  if (v9)
  {
    v11 = [HUFaceRecognitionLibraryListViewController alloc];
    home = [v7 home];
    v13 = [(HUFaceRecognitionLibraryListViewController *)v11 initWithHome:home];

    v14 = [HUViewControllerPresentationRequest requestWithViewController:v13];
    v10 = 1;
    [v14 setPreferredPresentationType:1];
    host = [(HUItemModuleController *)self host];
    v16 = [host moduleController:self presentViewControllerForRequest:v14];
  }

  return v10;
}

@end