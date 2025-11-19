@interface DYStandardPluginDirectoryProvider
+ (id)_developerDirectory;
- (DYStandardPluginDirectoryProvider)init;
- (DYStandardPluginDirectoryProvider)initWithBundle:(id)a3 includeDeveloperDirectory:(BOOL)a4 includeBundleDirectory:(BOOL)a5;
- (void)dealloc;
- (void)enumerateDirectories:(id)a3;
@end

@implementation DYStandardPluginDirectoryProvider

+ (id)_developerDirectory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__DYStandardPluginDirectoryProvider__developerDirectory__block_invoke;
  block[3] = &unk_279309890;
  block[4] = a1;
  if (_developerDirectory_once != -1)
  {
    dispatch_once(&_developerDirectory_once, block);
  }

  return _developerDirectory_s_developerDirectory;
}

void __56__DYStandardPluginDirectoryProvider__developerDirectory__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];
  if (!v1)
  {
    __56__DYStandardPluginDirectoryProvider__developerDirectory__block_invoke_cold_1();
  }

  v2 = v1;
  v7 = objc_opt_new();
  v3 = getenv("GT_DEVELOPER_DIR");
  if ((v3 || (v3 = getenv("XCODE_DEVELOPER_DIR_PATH")) != 0) && (v4 = v3, [v7 fileExistsAtPath:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v3)}]))
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:{objc_msgSend(objc_msgSend(v7, "stringWithFileSystemRepresentation:length:", v4, strlen(v4)), "stringByStandardizingPath")}];
  }

  else
  {
    v5 = [objc_msgSend(objc_msgSend(objc_msgSend(v2 "bundleURL")];
  }

  v6 = v5;
  if ([v7 fileExistsAtPath:{objc_msgSend(v5, "path")}])
  {
    _developerDirectory_s_developerDirectory = [v6 copy];
  }
}

- (DYStandardPluginDirectoryProvider)init
{
  [(DYStandardPluginDirectoryProvider *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYStandardPluginDirectoryProvider)initWithBundle:(id)a3 includeDeveloperDirectory:(BOOL)a4 includeBundleDirectory:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = DYStandardPluginDirectoryProvider;
  v8 = [(DYPluginDirectoryProvider *)&v10 init];
  if (v8)
  {
    v8->_bundle = a3;
    v8->_includeDeveloperDirectory = a4;
    v8->_includeBundleDirectory = a5;
    v8->super._developerDirectory = [objc_opt_class() _developerDirectory];
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYStandardPluginDirectoryProvider;
  [(DYStandardPluginDirectoryProvider *)&v3 dealloc];
}

- (void)enumerateDirectories:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = [(NSURL *)[(NSBundle *)self->_bundle bundleURL] URLByStandardizingPath];
  if (self->_includeBundleDirectory)
  {
    (*(a3 + 2))(a3, v6);
  }

  (*(a3 + 2))(a3, [(NSURL *)[(NSBundle *)self->_bundle builtInPlugInsURL] URLByStandardizingPath]);
  if (getenv("GT_SIBLING_PLUGINS"))
  {
    (*(a3 + 2))(a3, [(NSURL *)v6 URLByDeletingLastPathComponent]);
  }

  if (self->_includeDeveloperDirectory)
  {
    if (self->super._developerDirectory)
    {
      v7 = [(NSDictionary *)[(NSBundle *)self->_bundle infoDictionary] objectForKey:@"CFBundleName"];
      v8 = [(DYPluginDirectoryProvider *)self getPlatformDirectoriesWithBundleName:v7];
      (*(a3 + 2))(a3, -[NSURL URLByAppendingPathComponent:](self->super._developerDirectory, "URLByAppendingPathComponent:", [MEMORY[0x277CCACA8] stringWithFormat:@"Library/%@/PlugIns", v7]));
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v15;
        do
        {
          v12 = 0;
          do
          {
            if (*v15 != v11)
            {
              objc_enumerationMutation(v8);
            }

            (*(a3 + 2))(a3, *(*(&v14 + 1) + 8 * v12++));
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v10);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end