@interface IKJSTabBarItem
- (IKAppNavigationController)navigationControllerDelegate;
- (IKJSTabBar)owner;
- (IKJSTabBarItem)initWithAppContext:(id)a3 identifier:(id)a4 navigationController:(id)a5 owner:(id)a6;
- (id)asPrivateIKJSTabBarItem;
- (void)dealloc;
@end

@implementation IKJSTabBarItem

- (id)asPrivateIKJSTabBarItem
{
  if ([(IKJSTabBarItem *)self conformsToProtocol:&unk_286706308])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (IKJSTabBarItem)initWithAppContext:(id)a3 identifier:(id)a4 navigationController:(id)a5 owner:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = IKJSTabBarItem;
  v14 = [(IKJSObject *)&v32 initWithAppContext:v10];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_navigationControllerDelegate, v12);
    v16 = [[IKJSNavigationDocument alloc] initWithAppContext:v10 navigationController:v12];
    navigationDocument = v15->_navigationDocument;
    v15->_navigationDocument = v16;

    objc_storeStrong(&v15->_identifier, a4);
    objc_storeWeak(&v15->_owner, v13);
    v18 = [v10 jsContext];
    v19 = MEMORY[0x277CD4650];
    v20 = [MEMORY[0x277CD4658] valueWithObject:v15 inContext:v18];
    v21 = [v19 managedValueWithValue:v20];
    managedSelf = v15->_managedSelf;
    v15->_managedSelf = v21;

    v23 = [v18 virtualMachine];
    managedNavigationDocument = v15->_managedNavigationDocument;
    WeakRetained = objc_loadWeakRetained(&v15->_owner);
    [v23 addManagedReference:managedNavigationDocument withOwner:WeakRetained];

    v26 = MEMORY[0x277CD4650];
    v27 = [MEMORY[0x277CD4658] valueWithObject:v15->_navigationDocument inContext:v18];
    v28 = [v26 managedValueWithValue:v27];
    v29 = v15->_managedNavigationDocument;
    v15->_managedNavigationDocument = v28;

    v30 = [v18 virtualMachine];
    [v30 addManagedReference:v15->_managedNavigationDocument withOwner:v15];
  }

  return v15;
}

- (void)dealloc
{
  v3 = [(IKJSObject *)self appContext];
  v4 = [v3 jsContext];
  v5 = [v4 virtualMachine];

  v6 = [(IKJSTabBarItem *)self managedNavigationDocument];
  [v5 removeManagedReference:v6 withOwner:self];

  v7 = [(IKJSTabBarItem *)self managedSelf];
  v8 = [(IKJSTabBarItem *)self owner];
  [v5 removeManagedReference:v7 withOwner:v8];

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