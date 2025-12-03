@interface NSExtensionContext(WFApplicationContextProvider)
- (BOOL)shouldReverseLayoutDirection;
- (id)bundleForWFApplicationContext:()WFApplicationContextProvider;
- (id)currentUserInterfaceTypeForWFApplicationContext:()WFApplicationContextProvider;
- (id)extensionApplicationContextProviderDelegate;
- (id)keyWindowForWFApplicationContext:()WFApplicationContextProvider;
- (id)notificationNameForApplicationStateEvent:()WFApplicationContextProvider applicationContext:;
- (void)setExtensionApplicationContextProviderDelegate:()WFApplicationContextProvider;
@end

@implementation NSExtensionContext(WFApplicationContextProvider)

- (BOOL)shouldReverseLayoutDirection
{
  extensionApplicationContextProviderDelegate = [self extensionApplicationContextProviderDelegate];
  extensionViewController = [extensionApplicationContextProviderDelegate extensionViewController];
  view = [extensionViewController view];
  v4 = [view effectiveUserInterfaceLayoutDirection] == 1;

  return v4;
}

- (id)keyWindowForWFApplicationContext:()WFApplicationContextProvider
{
  extensionApplicationContextProviderDelegate = [self extensionApplicationContextProviderDelegate];
  extensionViewController = [extensionApplicationContextProviderDelegate extensionViewController];
  view = [extensionViewController view];
  window = [view window];

  return window;
}

- (void)setExtensionApplicationContextProviderDelegate:()WFApplicationContextProvider
{
  v4 = MEMORY[0x277CCAA50];
  v5 = a3;
  value = [v4 weakObjectsHashTable];
  [value addObject:v5];

  objc_setAssociatedObject(self, sel_extensionApplicationContextProviderDelegate, value, 1);
}

- (id)extensionApplicationContextProviderDelegate
{
  v1 = objc_getAssociatedObject(self, sel_extensionApplicationContextProviderDelegate);
  anyObject = [v1 anyObject];

  return anyObject;
}

- (id)notificationNameForApplicationStateEvent:()WFApplicationContextProvider applicationContext:
{
  extensionApplicationContextProviderDelegate = [self extensionApplicationContextProviderDelegate];
  v5 = [extensionApplicationContextProviderDelegate notificationNameForApplicationStateEvent:a3];

  return v5;
}

- (id)currentUserInterfaceTypeForWFApplicationContext:()WFApplicationContextProvider
{
  extensionApplicationContextProviderDelegate = [self extensionApplicationContextProviderDelegate];
  if (!extensionApplicationContextProviderDelegate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSExtensionContext+WFApplicationContextProvider.m" lineNumber:30 description:@"The extension application context provider delegate is not set."];
  }

  currentUserInterfaceType = [extensionApplicationContextProviderDelegate currentUserInterfaceType];

  return currentUserInterfaceType;
}

- (id)bundleForWFApplicationContext:()WFApplicationContextProvider
{
  extensionApplicationContextProviderDelegate = [self extensionApplicationContextProviderDelegate];
  if (!extensionApplicationContextProviderDelegate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSExtensionContext+WFApplicationContextProvider.m" lineNumber:24 description:@"The extension application context provider delegate is not set."];
  }

  bundle = [extensionApplicationContextProviderDelegate bundle];

  return bundle;
}

@end