@interface IKJSTabBarItem
- (IKAppNavigationController)navigationControllerDelegate;
- (IKJSTabBar)owner;
- (IKJSTabBarItem)initWithAppContext:(id)context identifier:(id)identifier navigationController:(id)controller owner:(id)owner;
- (id)asPrivateIKJSTabBarItem;
- (void)dealloc;
@end

@implementation IKJSTabBarItem

- (id)asPrivateIKJSTabBarItem
{
  if ([(IKJSTabBarItem *)self conformsToProtocol:&unk_286706308])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IKJSTabBarItem)initWithAppContext:(id)context identifier:(id)identifier navigationController:(id)controller owner:(id)owner
{
  contextCopy = context;
  identifierCopy = identifier;
  controllerCopy = controller;
  ownerCopy = owner;
  v32.receiver = self;
  v32.super_class = IKJSTabBarItem;
  v14 = [(IKJSObject *)&v32 initWithAppContext:contextCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_navigationControllerDelegate, controllerCopy);
    v16 = [[IKJSNavigationDocument alloc] initWithAppContext:contextCopy navigationController:controllerCopy];
    navigationDocument = v15->_navigationDocument;
    v15->_navigationDocument = v16;

    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeWeak(&v15->_owner, ownerCopy);
    jsContext = [contextCopy jsContext];
    v19 = MEMORY[0x277CD4650];
    v20 = [MEMORY[0x277CD4658] valueWithObject:v15 inContext:jsContext];
    v21 = [v19 managedValueWithValue:v20];
    managedSelf = v15->_managedSelf;
    v15->_managedSelf = v21;

    virtualMachine = [jsContext virtualMachine];
    managedNavigationDocument = v15->_managedNavigationDocument;
    WeakRetained = objc_loadWeakRetained(&v15->_owner);
    [virtualMachine addManagedReference:managedNavigationDocument withOwner:WeakRetained];

    v26 = MEMORY[0x277CD4650];
    v27 = [MEMORY[0x277CD4658] valueWithObject:v15->_navigationDocument inContext:jsContext];
    v28 = [v26 managedValueWithValue:v27];
    v29 = v15->_managedNavigationDocument;
    v15->_managedNavigationDocument = v28;

    virtualMachine2 = [jsContext virtualMachine];
    [virtualMachine2 addManagedReference:v15->_managedNavigationDocument withOwner:v15];
  }

  return v15;
}

- (void)dealloc
{
  appContext = [(IKJSObject *)self appContext];
  jsContext = [appContext jsContext];
  virtualMachine = [jsContext virtualMachine];

  managedNavigationDocument = [(IKJSTabBarItem *)self managedNavigationDocument];
  [virtualMachine removeManagedReference:managedNavigationDocument withOwner:self];

  managedSelf = [(IKJSTabBarItem *)self managedSelf];
  owner = [(IKJSTabBarItem *)self owner];
  [virtualMachine removeManagedReference:managedSelf withOwner:owner];

  v9.receiver = self;
  v9.super_class = IKJSTabBarItem;
  [(IKJSTabBarItem *)&v9 dealloc];
}

- (IKAppNavigationController)navigationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);

  return WeakRetained;
}

- (IKJSTabBar)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end