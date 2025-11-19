@interface SSUSystemState
- (SSUSystemState)initWithCacheDirectoryProvider:(id)a3 installedAppProvider:(id)a4;
@end

@implementation SSUSystemState

- (SSUSystemState)initWithCacheDirectoryProvider:(id)a3 installedAppProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SSUSystemState;
  v8 = [(SSUSystemState *)&v13 init];
  cacheDirectoryProvider = v8->_cacheDirectoryProvider;
  v8->_cacheDirectoryProvider = v6;
  v10 = v6;

  installedAppProvider = v8->_installedAppProvider;
  v8->_installedAppProvider = v7;

  return v8;
}

@end