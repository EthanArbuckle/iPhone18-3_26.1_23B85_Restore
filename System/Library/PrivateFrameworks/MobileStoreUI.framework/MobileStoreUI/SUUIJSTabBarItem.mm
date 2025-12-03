@interface SUUIJSTabBarItem
- (NSString)badgeValue;
- (NSString)rootURL;
- (NSString)title;
- (SUUIJSTabBarItem)initWithAppContext:(id)context navigationController:(id)controller tabBarItem:(id)item owner:(id)owner;
- (void)dealloc;
- (void)setBadgeValue:(id)value;
@end

@implementation SUUIJSTabBarItem

- (SUUIJSTabBarItem)initWithAppContext:(id)context navigationController:(id)controller tabBarItem:(id)item owner:(id)owner
{
  contextCopy = context;
  controllerCopy = controller;
  itemCopy = item;
  objc_initWeak(&location, owner);
  v26.receiver = self;
  v26.super_class = SUUIJSTabBarItem;
  v13 = [(IKJSObject *)&v26 initWithAppContext:contextCopy];
  if (v13)
  {
    v14 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v13->_owner, v14);

    objc_storeStrong(&v13->_tabBarItem, item);
    if (controllerCopy)
    {
      v15 = [(IKJSNavigationDocument *)[SUUIJSNavigationDocument alloc] initWithAppContext:contextCopy navigationController:controllerCopy];
      navigationDocument = v13->_navigationDocument;
      v13->_navigationDocument = v15;

      jsContext = [contextCopy jsContext];
      v18 = MEMORY[0x277CD4650];
      v19 = [MEMORY[0x277CD4658] valueWithObject:v13->_navigationDocument inContext:jsContext];
      v20 = [v18 managedValueWithValue:v19];
      managedNavigationDocument = v13->_managedNavigationDocument;
      v13->_managedNavigationDocument = v20;

      virtualMachine = [jsContext virtualMachine];
      v23 = v13->_managedNavigationDocument;
      v24 = objc_loadWeakRetained(&location);
      [virtualMachine addManagedReference:v23 withOwner:v24];
    }
  }

  objc_destroyWeak(&location);

  return v13;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v4 = self->_managedNavigationDocument;
  v5 = v4;
  if (WeakRetained)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    appContext = [(IKJSObject *)self appContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __27__SUUIJSTabBarItem_dealloc__block_invoke;
    v9[3] = &unk_2798FAD40;
    v10 = v5;
    v11 = WeakRetained;
    [appContext evaluate:v9 completionBlock:0];
  }

  v8.receiver = self;
  v8.super_class = SUUIJSTabBarItem;
  [(SUUIJSTabBarItem *)&v8 dealloc];
}

void __27__SUUIJSTabBarItem_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 virtualMachine];
  [v3 removeManagedReference:*(a1 + 32) withOwner:*(a1 + 40)];
}

- (NSString)badgeValue
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__47;
  v9 = __Block_byref_object_dispose__47;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__SUUIJSTabBarItem_badgeValue__block_invoke;
  v4[3] = &unk_2798F5B48;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(MEMORY[0x277D85CD0], v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __30__SUUIJSTabBarItem_badgeValue__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 48) underlyingTabBarItem];
  v2 = [v5 badgeValue];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSString)rootURL
{
  rootURL = [(SUUITabBarItem *)self->_tabBarItem rootURL];
  absoluteString = [rootURL absoluteString];

  return absoluteString;
}

- (void)setBadgeValue:(id)value
{
  valueCopy = value;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SUUIJSTabBarItem_setBadgeValue___block_invoke;
  v6[3] = &unk_2798F5AF8;
  v6[4] = self;
  v7 = valueCopy;
  v5 = valueCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __34__SUUIJSTabBarItem_setBadgeValue___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) underlyingTabBarItem];
  [v2 setBadgeValue:*(a1 + 40)];
}

- (NSString)title
{
  underlyingTabBarItem = [(SUUITabBarItem *)self->_tabBarItem underlyingTabBarItem];
  title = [underlyingTabBarItem title];

  return title;
}

@end