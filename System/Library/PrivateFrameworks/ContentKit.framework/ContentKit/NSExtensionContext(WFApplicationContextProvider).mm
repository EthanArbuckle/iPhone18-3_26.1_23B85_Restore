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
  v1 = [a1 extensionApplicationContextProviderDelegate];
  v2 = [v1 extensionViewController];
  v3 = [v2 view];
  v4 = [v3 effectiveUserInterfaceLayoutDirection] == 1;

  return v4;
}

- (id)keyWindowForWFApplicationContext:()WFApplicationContextProvider
{
  v1 = [a1 extensionApplicationContextProviderDelegate];
  v2 = [v1 extensionViewController];
  v3 = [v2 view];
  v4 = [v3 window];

  return v4;
}

- (void)setExtensionApplicationContextProviderDelegate:()WFApplicationContextProvider
{
  v4 = MEMORY[0x277CCAA50];
  v5 = a3;
  value = [v4 weakObjectsHashTable];
  [value addObject:v5];

  objc_setAssociatedObject(a1, sel_extensionApplicationContextProviderDelegate, value, 1);
}

- (id)extensionApplicationContextProviderDelegate
{
  v1 = objc_getAssociatedObject(a1, sel_extensionApplicationContextProviderDelegate);
  v2 = [v1 anyObject];

  return v2;
}

- (id)notificationNameForApplicationStateEvent:()WFApplicationContextProvider applicationContext:
{
  v4 = [a1 extensionApplicationContextProviderDelegate];
  v5 = [v4 notificationNameForApplicationStateEvent:a3];

  return v5;
}

- (id)currentUserInterfaceTypeForWFApplicationContext:()WFApplicationContextProvider
{
  v4 = [a1 extensionApplicationContextProviderDelegate];
  if (!v4)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"NSExtensionContext+WFApplicationContextProvider.m" lineNumber:30 description:@"The extension application context provider delegate is not set."];
  }

  v5 = [v4 currentUserInterfaceType];

  return v5;
}

- (id)bundleForWFApplicationContext:()WFApplicationContextProvider
{
  v4 = [a1 extensionApplicationContextProviderDelegate];
  if (!v4)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"NSExtensionContext+WFApplicationContextProvider.m" lineNumber:24 description:@"The extension application context provider delegate is not set."];
  }

  v5 = [v4 bundle];

  return v5;
}

@end