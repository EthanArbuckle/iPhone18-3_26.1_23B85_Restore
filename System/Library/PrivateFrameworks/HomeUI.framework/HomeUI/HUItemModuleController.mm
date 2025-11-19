@interface HUItemModuleController
- (Class)cellClassForItem:(id)a3;
- (Class)collectionCellClassForItem:(id)a3;
- (HUItemModuleController)initWithModule:(id)a3;
- (HUItemModuleControllerHosting)host;
- (id)asGeneric;
- (id)textFieldForVisibleItem:(id)a3;
@end

@implementation HUItemModuleController

- (id)asGeneric
{
  sub_20CF0A51C();
  v2 = sub_20CF0A490();

  return v2;
}

- (HUItemModuleController)initWithModule:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HUItemModuleController.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"module"}];
  }

  v13.receiver = self;
  v13.super_class = HUItemModuleController;
  v7 = [(HUItemModuleController *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_module, a3);
    v9 = [v6 moduleIdentifier];
    moduleIdentifier = v8->_moduleIdentifier;
    v8->_moduleIdentifier = v9;
  }

  return v8;
}

- (Class)cellClassForItem:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HUItemModuleController.m" lineNumber:29 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUItemModuleController cellClassForItem:]", objc_opt_class()}];

  return 0;
}

- (Class)collectionCellClassForItem:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HUItemModuleController.m" lineNumber:35 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUItemModuleController collectionCellClassForItem:]", objc_opt_class()}];

  return 0;
}

- (id)textFieldForVisibleItem:(id)a3
{
  v4 = a3;
  v5 = [(HUItemModuleController *)self host];
  v6 = [v5 moduleController:self textFieldForVisibleItem:v4];

  return v6;
}

- (HUItemModuleControllerHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end