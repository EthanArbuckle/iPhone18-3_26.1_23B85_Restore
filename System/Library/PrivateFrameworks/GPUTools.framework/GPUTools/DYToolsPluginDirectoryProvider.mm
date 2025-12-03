@interface DYToolsPluginDirectoryProvider
- (DYToolsPluginDirectoryProvider)init;
- (DYToolsPluginDirectoryProvider)initWithDeveloperPath:(id)path includePrivatePlugins:(BOOL)plugins;
- (void)enumerateDirectories:(id)directories;
@end

@implementation DYToolsPluginDirectoryProvider

- (DYToolsPluginDirectoryProvider)init
{
  [(DYToolsPluginDirectoryProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYToolsPluginDirectoryProvider)initWithDeveloperPath:(id)path includePrivatePlugins:(BOOL)plugins
{
  v8.receiver = self;
  v8.super_class = DYToolsPluginDirectoryProvider;
  v6 = [(DYPluginDirectoryProvider *)&v8 init];
  if (v6)
  {
    v6->super._developerDirectory = [MEMORY[0x277CBEBC0] URLWithString:path];
    v6->_toolsPluginBundle = @"GPUToolsPlatform";
    v6->_toolsPrivatePluginBundle = @"GPUToolsPlatformPrivate";
    v6->_includePrivatePlugins = plugins;
  }

  return v6;
}

- (void)enumerateDirectories:(id)directories
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  [v5 addObjectsFromArray:{-[DYPluginDirectoryProvider getPlatformDirectoriesWithBundleName:](self, "getPlatformDirectoriesWithBundleName:", self->_toolsPluginBundle)}];
  if (self->_includePrivatePlugins)
  {
    [v5 addObjectsFromArray:{-[DYPluginDirectoryProvider getPlatformDirectoriesWithBundleName:](self, "getPlatformDirectoriesWithBundleName:", self->_toolsPrivatePluginBundle)}];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(directories + 2))(directories, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end