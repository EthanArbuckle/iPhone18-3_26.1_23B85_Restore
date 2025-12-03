@interface SSUCacheDirectoryProviderSandbox
- (SSUCacheDirectoryProviderSandbox)initWithDirectory:(id)directory;
@end

@implementation SSUCacheDirectoryProviderSandbox

- (SSUCacheDirectoryProviderSandbox)initWithDirectory:(id)directory
{
  directoryCopy = directory;
  v8.receiver = self;
  v8.super_class = SSUCacheDirectoryProviderSandbox;
  v5 = [(SSUCacheDirectoryProviderSandbox *)&v8 init];
  directory = v5->_directory;
  v5->_directory = directoryCopy;

  return v5;
}

@end