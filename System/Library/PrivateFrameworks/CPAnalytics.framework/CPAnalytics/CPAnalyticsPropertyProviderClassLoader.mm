@interface CPAnalyticsPropertyProviderClassLoader
+ (id)_loadDynamicPHPropertyProvider:(id)a3 forPHPhotoLibrary:(id)a4;
+ (id)_loadPHPropertyProvider:(id)a3 forPHPhotoLibrary:(id)a4;
@end

@implementation CPAnalyticsPropertyProviderClassLoader

+ (id)_loadPHPropertyProvider:(id)a3 forPHPhotoLibrary:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = NSClassFromString(v5);
  if (!v7)
  {
    v8 = CPAnalyticsLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_error_impl(&dword_24260A000, v8, OS_LOG_TYPE_ERROR, "Failed to load %@ class", &v13, 0xCu);
    }
  }

  if ([(objc_class *)v7 instancesRespondToSelector:sel_initWithPhotoLibrary_]&& [(objc_class *)v7 instancesRespondToSelector:sel_registerSystemProperties_])
  {
    v9 = [[v7 alloc] initWithPhotoLibrary:v6];
  }

  else
  {
    v10 = CPAnalyticsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_error_impl(&dword_24260A000, v10, OS_LOG_TYPE_ERROR, "%@ does not comply with CPAnalyticsPhotoKitPropertyProvider protocol", &v13, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)_loadDynamicPHPropertyProvider:(id)a3 forPHPhotoLibrary:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a1 _loadPHPropertyProvider:v6 forPHPhotoLibrary:a4];
  if ([objc_opt_class() instancesRespondToSelector:sel_getDynamicProperty_forEventName_payloadForSystemPropertyExtraction_])
  {
    v8 = v7;
  }

  else
  {
    v9 = CPAnalyticsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_24260A000, v9, OS_LOG_TYPE_ERROR, "%@ does not comply with CPAnalyticsDynamicPropertyProvider protocol", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

@end