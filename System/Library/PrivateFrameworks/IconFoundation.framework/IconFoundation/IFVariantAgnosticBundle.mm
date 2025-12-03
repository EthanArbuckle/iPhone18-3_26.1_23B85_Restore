@interface IFVariantAgnosticBundle
- (id)infoDictionary;
@end

@implementation IFVariantAgnosticBundle

- (id)infoDictionary
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(IFBundle *)self bundle])
  {
    [(IFBundle *)self bundle];
    v3 = _CFBundleCopyInfoPlistURL();
    if (v3)
    {
      v10 = 0;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3 error:&v10];
      v5 = v10;
      if (v4)
      {
        v6 = v4;
      }

      else
      {
        v8 = IFDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v12 = v3;
          v13 = 2112;
          v14 = v5;
          _os_log_impl(&dword_1B9DEC000, v8, OS_LOG_TYPE_INFO, "Failed to read Info.plist contents at URL: %@. Error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v5 = IFDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        bundleURL = [(IFBundle *)self bundleURL];
        *buf = 138412290;
        v12 = bundleURL;
        _os_log_impl(&dword_1B9DEC000, v5, OS_LOG_TYPE_INFO, "Failed to determine Info.plist URL for bundle at URL: %@", buf, 0xCu);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end