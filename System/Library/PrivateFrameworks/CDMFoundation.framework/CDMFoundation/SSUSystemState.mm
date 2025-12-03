@interface SSUSystemState
- (SSUSystemState)initWithCacheDirectoryProvider:(id)provider installedAppProvider:(id)appProvider;
@end

@implementation SSUSystemState

- (SSUSystemState)initWithCacheDirectoryProvider:(id)provider installedAppProvider:(id)appProvider
{
  providerCopy = provider;
  appProviderCopy = appProvider;
  v13.receiver = self;
  v13.super_class = SSUSystemState;
  v8 = [(SSUSystemState *)&v13 init];
  cacheDirectoryProvider = v8->_cacheDirectoryProvider;
  v8->_cacheDirectoryProvider = providerCopy;
  v10 = providerCopy;

  installedAppProvider = v8->_installedAppProvider;
  v8->_installedAppProvider = appProviderCopy;

  return v8;
}

@end