@interface CPSActionSheetController
+ (id)actionSheetControllerWithActionSheet:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CPSActionSheetController

+ (id)actionSheetControllerWithActionSheet:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [location[0] actions];
  v12 = [v11 count];
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v7 = v26;
    v9 = [location[0] title];
    v8 = [location[0] message];
    v21 = [v7 alertControllerWithTitle:v9 message:? preferredStyle:?];
    MEMORY[0x277D82BD8](v8);
    *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    [v21 setActionSheet:{location[0], v4}];
    v20 = [location[0] alertDelegate];
    v10 = [location[0] actions];
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __65__CPSActionSheetController_actionSheetControllerWithActionSheet___block_invoke;
    v17 = &unk_278D92050;
    v18 = MEMORY[0x277D82BE0](v20);
    v19 = MEMORY[0x277D82BE0](v21);
    [v10 enumerateObjectsUsingBlock:&v13];
    MEMORY[0x277D82BD8](v10);
    v27 = MEMORY[0x277D82BE0](v21);
    v22 = 1;
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  else
  {
    v24 = CarPlaySupportGeneralLogging();
    v23 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v28, v26);
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

- (void)viewWillAppear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = CPSActionSheetController;
  [(CPSActionSheetController *)&v11 viewWillAppear:a3];
  v9 = [(CPSActionSheetController *)v14 actionSheet];
  v8 = [(CPActionSheetTemplate *)v9 alertDelegate];
  v10 = [v8 conformsToProtocol:&unk_28562C040];
  MEMORY[0x277D82BD8](v8);
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v7 = [(CPSActionSheetController *)v14 actionSheet];
    v6 = [(CPActionSheetTemplate *)v7 alertDelegate];
    v5 = [(CPSActionSheetController *)v14 actionSheet];
    v4 = [(CPActionSheetTemplate *)v5 identifier];
    [v6 templateWillAppearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = CPSActionSheetController;
  [(CPSActionSheetController *)&v11 viewDidAppear:a3];
  v9 = [(CPSActionSheetController *)v14 actionSheet];
  v8 = [(CPActionSheetTemplate *)v9 alertDelegate];
  v10 = [v8 conformsToProtocol:&unk_28562C040];
  MEMORY[0x277D82BD8](v8);
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v7 = [(CPSActionSheetController *)v14 actionSheet];
    v6 = [(CPActionSheetTemplate *)v7 alertDelegate];
    v5 = [(CPSActionSheetController *)v14 actionSheet];
    v4 = [(CPActionSheetTemplate *)v5 identifier];
    [v6 templateDidAppearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11.receiver = self;
  v11.super_class = CPSActionSheetController;
  [(CPSActionSheetController *)&v11 viewWillDisappear:a3];
  v9 = [(CPSActionSheetController *)v14 actionSheet];
  v8 = [(CPActionSheetTemplate *)v9 alertDelegate];
  v10 = [v8 conformsToProtocol:&unk_28562C040];
  MEMORY[0x277D82BD8](v8);
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v7 = [(CPSActionSheetController *)v14 actionSheet];
    v6 = [(CPActionSheetTemplate *)v7 alertDelegate];
    v5 = [(CPSActionSheetController *)v14 actionSheet];
    v4 = [(CPActionSheetTemplate *)v5 identifier];
    [v6 templateWillDisappearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16.receiver = self;
  v16.super_class = CPSActionSheetController;
  [(CPSActionSheetController *)&v16 viewDidDisappear:a3];
  v14 = [(CPSActionSheetController *)v19 actionSheet];
  v13 = [(CPActionSheetTemplate *)v14 alertDelegate];
  v15 = [v13 conformsToProtocol:&unk_28562C040];
  MEMORY[0x277D82BD8](v13);
  *&v3 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v15)
  {
    v8 = [(CPSActionSheetController *)v19 actionSheet];
    v7 = [(CPActionSheetTemplate *)v8 alertDelegate];
    v6 = [(CPSActionSheetController *)v19 actionSheet];
    v5 = [(CPActionSheetTemplate *)v6 identifier];
    [v7 templateDidDisappearWithIdentifier:? animated:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    v12 = [(CPSActionSheetController *)v19 actionSheet];
    v11 = [(CPActionSheetTemplate *)v12 alertDelegate];
    v10 = [(CPSActionSheetController *)v19 actionSheet];
    v9 = [(CPActionSheetTemplate *)v10 identifier];
    [v11 templateDidDismissWithIdentifier:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }
}

@end