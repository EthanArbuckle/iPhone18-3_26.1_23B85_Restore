@interface HUAccessoryDebugViewController
- (HUAccessoryDebugViewController)initWithHomeKitObject:(id)a3;
- (id)buildItemModuleControllerForModule:(id)a3;
@end

@implementation HUAccessoryDebugViewController

- (HUAccessoryDebugViewController)initWithHomeKitObject:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HUAccessoryDebugViewController.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"homeKitObject"}];
  }

  v7 = [objc_alloc(MEMORY[0x277D14B08]) initWithDelegate:self];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 setIdentifier:v9];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__HUAccessoryDebugViewController_initWithHomeKitObject___block_invoke;
  v16[3] = &unk_277DB9F78;
  v10 = v6;
  v17 = v10;
  [v7 setItemModuleCreator:v16];
  v15.receiver = self;
  v15.super_class = HUAccessoryDebugViewController;
  v11 = [(HUItemTableViewController *)&v15 initWithItemManager:v7 tableViewStyle:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_homeKitObject, a3);
  }

  return v12;
}

id __56__HUAccessoryDebugViewController_initWithHomeKitObject___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[HUAccessoryDebugModule alloc] initWithItemUpdater:v4 homeKitObject:*(a1 + 32)];

  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, v4);
  }

  v5 = [[HUAccessoryDebugModuleController alloc] initWithModule:v4];
  [(HUAccessoryDebugViewController *)self setDebugModuleController:v5];

  v6 = [(HUAccessoryDebugViewController *)self debugModuleController];

  return v6;
}

@end