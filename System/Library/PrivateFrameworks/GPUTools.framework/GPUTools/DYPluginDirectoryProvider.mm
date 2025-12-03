@interface DYPluginDirectoryProvider
- (DYPluginDirectoryProvider)init;
- (id)getPlatformDirectoriesWithBundleName:(id)name;
@end

@implementation DYPluginDirectoryProvider

- (DYPluginDirectoryProvider)init
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    [(DYPluginDirectoryProvider *)self doesNotRecognizeSelector:a2];

    return 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = DYPluginDirectoryProvider;
    return [(DYPluginDirectoryProvider *)&v6 init];
  }
}

- (id)getPlatformDirectoriesWithBundleName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_developerDirectory)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    name = [MEMORY[0x277CCACA8] stringWithFormat:@"Developer/Library/%@/PlugIns", name];
    v8 = [(NSURL *)self->_developerDirectory URLByAppendingPathComponent:@"Platforms"];
    v9 = *MEMORY[0x277CBE868];
    v10 = [v5 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:objc_msgSend(MEMORY[0x277CBEA60] options:"arrayWithObjects:" error:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE868], 0), 0, 0}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          v18 = 0;
          [v15 getResourceValue:&v18 forKey:v9 error:0];
          if ([objc_msgSend(v15 "pathExtension")] && objc_msgSend(v18, "BOOLValue"))
          {
            [v6 addObject:{objc_msgSend(v15, "URLByAppendingPathComponent:", name)}];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    result = v6;
  }

  else
  {
    result = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

@end