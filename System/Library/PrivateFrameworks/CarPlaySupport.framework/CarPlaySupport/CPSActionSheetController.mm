@interface CPSActionSheetController
+ (id)actionSheetControllerWithActionSheet:(id)sheet;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CPSActionSheetController

+ (id)actionSheetControllerWithActionSheet:(id)sheet
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, sheet);
  actions = [location[0] actions];
  v12 = [actions count];
  *&v3 = MEMORY[0x277D82BD8](actions).n128_u64[0];
  if (v12)
  {
    v7 = selfCopy;
    title = [location[0] title];
    message = [location[0] message];
    v21 = [v7 alertControllerWithTitle:title message:? preferredStyle:?];
    MEMORY[0x277D82BD8](message);
    *&v4 = MEMORY[0x277D82BD8](title).n128_u64[0];
    [v21 setActionSheet:{location[0], v4}];
    alertDelegate = [location[0] alertDelegate];
    actions2 = [location[0] actions];
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __65__CPSActionSheetController_actionSheetControllerWithActionSheet___block_invoke;
    v17 = &unk_278D92050;
    v18 = MEMORY[0x277D82BE0](alertDelegate);
    v19 = MEMORY[0x277D82BE0](v21);
    [actions2 enumerateObjectsUsingBlock:&v13];
    MEMORY[0x277D82BD8](actions2);
    v27 = MEMORY[0x277D82BE0](v21);
    v22 = 1;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&alertDelegate, 0);
    objc_storeStrong(&v21, 0);
  }

  else
  {
    v24 = CarPlaySupportGeneralLogging();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v28, selfCopy);
      _os_log_error_impl(&dword_242FE8000, v24, v23, "No actions attached to action sheet %@", v28, 0xCu);
    }

    objc_storeStrong(&v24, 0);
    v27 = 0;
    v22 = 1;
  }

  objc_storeStrong(location, 0);
  v5 = v27;

  return v5;
}

void __65__CPSActionSheetController_actionSheetControllerWithActionSheet___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[3] = a3;
  v15[2] = a4;
  v15[1] = a1;
  v6 = location[0];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __65__CPSActionSheetController_actionSheetControllerWithActionSheet___block_invoke_2;
  v12 = &unk_278D92028;
  v13 = MEMORY[0x277D82BE0](*(a1 + 32));
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15[0] = [v6 alertActionRepresentationWithHandler:?];
  [*(a1 + 40) addAction:v15[0]];
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __65__CPSActionSheetController_actionSheetControllerWithActionSheet___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([a1[4] conformsToProtocol:&unk_2856327C0])
  {
    v2 = a1[4];
    v3 = [a1[5] identifier];
    [v2 handleAlertActionForIdentifier:?];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v13 = a2;
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = CPSActionSheetController;
  [(CPSActionSheetController *)&v11 viewWillAppear:appear];
  actionSheet = [(CPSActionSheetController *)selfCopy actionSheet];
  alertDelegate = [(CPActionSheetTemplate *)actionSheet alertDelegate];
  v10 = [alertDelegate conformsToProtocol:&unk_28562C040];
  MEMORY[0x277D82BD8](alertDelegate);
  *&v3 = MEMORY[0x277D82BD8](actionSheet).n128_u64[0];
  if (v10)
  {
    actionSheet2 = [(CPSActionSheetController *)selfCopy actionSheet];
    alertDelegate2 = [(CPActionSheetTemplate *)actionSheet2 alertDelegate];
    actionSheet3 = [(CPSActionSheetController *)selfCopy actionSheet];
    identifier = [(CPActionSheetTemplate *)actionSheet3 identifier];
    [alertDelegate2 templateWillAppearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](actionSheet3);
    MEMORY[0x277D82BD8](alertDelegate2);
    MEMORY[0x277D82BD8](actionSheet2);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v13 = a2;
  appearCopy = appear;
  v11.receiver = self;
  v11.super_class = CPSActionSheetController;
  [(CPSActionSheetController *)&v11 viewDidAppear:appear];
  actionSheet = [(CPSActionSheetController *)selfCopy actionSheet];
  alertDelegate = [(CPActionSheetTemplate *)actionSheet alertDelegate];
  v10 = [alertDelegate conformsToProtocol:&unk_28562C040];
  MEMORY[0x277D82BD8](alertDelegate);
  *&v3 = MEMORY[0x277D82BD8](actionSheet).n128_u64[0];
  if (v10)
  {
    actionSheet2 = [(CPSActionSheetController *)selfCopy actionSheet];
    alertDelegate2 = [(CPActionSheetTemplate *)actionSheet2 alertDelegate];
    actionSheet3 = [(CPSActionSheetController *)selfCopy actionSheet];
    identifier = [(CPActionSheetTemplate *)actionSheet3 identifier];
    [alertDelegate2 templateDidAppearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](actionSheet3);
    MEMORY[0x277D82BD8](alertDelegate2);
    MEMORY[0x277D82BD8](actionSheet2);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v13 = a2;
  disappearCopy = disappear;
  v11.receiver = self;
  v11.super_class = CPSActionSheetController;
  [(CPSActionSheetController *)&v11 viewWillDisappear:disappear];
  actionSheet = [(CPSActionSheetController *)selfCopy actionSheet];
  alertDelegate = [(CPActionSheetTemplate *)actionSheet alertDelegate];
  v10 = [alertDelegate conformsToProtocol:&unk_28562C040];
  MEMORY[0x277D82BD8](alertDelegate);
  *&v3 = MEMORY[0x277D82BD8](actionSheet).n128_u64[0];
  if (v10)
  {
    actionSheet2 = [(CPSActionSheetController *)selfCopy actionSheet];
    alertDelegate2 = [(CPActionSheetTemplate *)actionSheet2 alertDelegate];
    actionSheet3 = [(CPSActionSheetController *)selfCopy actionSheet];
    identifier = [(CPActionSheetTemplate *)actionSheet3 identifier];
    [alertDelegate2 templateWillDisappearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](actionSheet3);
    MEMORY[0x277D82BD8](alertDelegate2);
    MEMORY[0x277D82BD8](actionSheet2);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v18 = a2;
  disappearCopy = disappear;
  v16.receiver = self;
  v16.super_class = CPSActionSheetController;
  [(CPSActionSheetController *)&v16 viewDidDisappear:disappear];
  actionSheet = [(CPSActionSheetController *)selfCopy actionSheet];
  alertDelegate = [(CPActionSheetTemplate *)actionSheet alertDelegate];
  v15 = [alertDelegate conformsToProtocol:&unk_28562C040];
  MEMORY[0x277D82BD8](alertDelegate);
  *&v3 = MEMORY[0x277D82BD8](actionSheet).n128_u64[0];
  if (v15)
  {
    actionSheet2 = [(CPSActionSheetController *)selfCopy actionSheet];
    alertDelegate2 = [(CPActionSheetTemplate *)actionSheet2 alertDelegate];
    actionSheet3 = [(CPSActionSheetController *)selfCopy actionSheet];
    identifier = [(CPActionSheetTemplate *)actionSheet3 identifier];
    [alertDelegate2 templateDidDisappearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](actionSheet3);
    MEMORY[0x277D82BD8](alertDelegate2);
    *&v4 = MEMORY[0x277D82BD8](actionSheet2).n128_u64[0];
    actionSheet4 = [(CPSActionSheetController *)selfCopy actionSheet];
    alertDelegate3 = [(CPActionSheetTemplate *)actionSheet4 alertDelegate];
    actionSheet5 = [(CPSActionSheetController *)selfCopy actionSheet];
    identifier2 = [(CPActionSheetTemplate *)actionSheet5 identifier];
    [alertDelegate3 templateDidDismissWithIdentifier:?];
    MEMORY[0x277D82BD8](identifier2);
    MEMORY[0x277D82BD8](actionSheet5);
    MEMORY[0x277D82BD8](alertDelegate3);
    MEMORY[0x277D82BD8](actionSheet4);
  }
}

@end