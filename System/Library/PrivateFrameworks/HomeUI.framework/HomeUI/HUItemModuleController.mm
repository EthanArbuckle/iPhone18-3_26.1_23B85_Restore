@interface HUItemModuleController
- (Class)cellClassForItem:(id)item;
- (Class)collectionCellClassForItem:(id)item;
- (HUItemModuleController)initWithModule:(id)module;
- (HUItemModuleControllerHosting)host;
- (id)asGeneric;
- (id)textFieldForVisibleItem:(id)item;
@end

@implementation HUItemModuleController

- (id)asGeneric
{
  sub_20CF0A51C();
  v2 = sub_20CF0A490();

  return v2;
}

- (HUItemModuleController)initWithModule:(id)module
{
  moduleCopy = module;
  if (!moduleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemModuleController.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"module"}];
  }

  v13.receiver = self;
  v13.super_class = HUItemModuleController;
  v7 = [(HUItemModuleController *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_module, module);
    moduleIdentifier = [moduleCopy moduleIdentifier];
    moduleIdentifier = v8->_moduleIdentifier;
    v8->_moduleIdentifier = moduleIdentifier;
  }

  return v8;
}

- (Class)cellClassForItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemModuleController.m" lineNumber:29 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUItemModuleController cellClassForItem:]", objc_opt_class()}];

  return 0;
}

- (Class)collectionCellClassForItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUItemModuleController.m" lineNumber:35 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HUItemModuleController collectionCellClassForItem:]", objc_opt_class()}];

  return 0;
}

- (id)textFieldForVisibleItem:(id)item
{
  itemCopy = item;
  host = [(HUItemModuleController *)self host];
  v6 = [host moduleController:self textFieldForVisibleItem:itemCopy];

  return v6;
}

- (HUItemModuleControllerHosting)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end