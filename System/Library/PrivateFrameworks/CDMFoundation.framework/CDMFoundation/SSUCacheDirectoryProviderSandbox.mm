@interface SSUCacheDirectoryProviderSandbox
- (SSUCacheDirectoryProviderSandbox)initWithDirectory:(id)a3;
@end

@implementation SSUCacheDirectoryProviderSandbox

- (SSUCacheDirectoryProviderSandbox)initWithDirectory:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SSUCacheDirectoryProviderSandbox;
  v5 = [(SSUCacheDirectoryProviderSandbox *)&v8 init];
  directory = v5->_directory;
  v5->_directory = v4;

  return v5;
}

@end