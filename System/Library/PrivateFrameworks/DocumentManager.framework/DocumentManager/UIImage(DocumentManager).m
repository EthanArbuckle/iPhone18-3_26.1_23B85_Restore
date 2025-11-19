@interface UIImage(DocumentManager)
+ (id)doc_AppIconForHostBundleIdentifier:()DocumentManager;
@end

@implementation UIImage(DocumentManager)

+ (id)doc_AppIconForHostBundleIdentifier:()DocumentManager
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v3];
  v5 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:128.0 scale:{128.0, 2.0}];
  v6 = MEMORY[0x1E699A450];
  v7 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315906;
    v17 = "+[UIImage(DocumentManager) doc_AppIconForHostBundleIdentifier:]";
    v18 = 2112;
    v19 = v3;
    v20 = 2112;
    v21 = v4;
    v22 = 2112;
    v23 = v5;
    _os_log_debug_impl(&dword_1E57D8000, v7, OS_LOG_TYPE_DEBUG, "%s bundleIdentifier: %@ isIcon: %@ descriptor: %@", &v16, 0x2Au);
  }

  v8 = [v4 imageForDescriptor:v5];
  v9 = *v6;
  if (!*v6)
  {
    DOCInitLogging();
    v9 = *v6;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [UIImage(DocumentManager) doc_AppIconForHostBundleIdentifier:v9];
  }

  if ([v8 placeholder])
  {
    v10 = [v4 prepareImageForDescriptor:v5];

    v11 = *v6;
    if (!*v6)
    {
      DOCInitLogging();
      v11 = *v6;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[UIImage(DocumentManager) doc_AppIconForHostBundleIdentifier:];
    }
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    v12 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v10, "CGImage")}];
    v13 = *v6;
    if (!*v6)
    {
      DOCInitLogging();
      v13 = *v6;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[UIImage(DocumentManager) doc_AppIconForHostBundleIdentifier:];
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *v6;
  if (!*v6)
  {
    DOCInitLogging();
    v14 = *v6;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[UIImage(DocumentManager) doc_AppIconForHostBundleIdentifier:];
  }

  return v12;
}

+ (void)doc_AppIconForHostBundleIdentifier:()DocumentManager .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "+[UIImage(DocumentManager) doc_AppIconForHostBundleIdentifier:]";
  _os_log_debug_impl(&dword_1E57D8000, log, OS_LOG_TYPE_DEBUG, "%s imageForDescriptor returned image: (imageFromDescriptor) isPlaceholder: (imageFromDescriptor.placeholder)", &v1, 0xCu);
}

+ (void)doc_AppIconForHostBundleIdentifier:()DocumentManager .cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1E57D8000, v0, OS_LOG_TYPE_DEBUG, "%s was a placeholder. prepared new image: %@", v1, 0x16u);
}

+ (void)doc_AppIconForHostBundleIdentifier:()DocumentManager .cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1E57D8000, v0, OS_LOG_TYPE_DEBUG, "%s created result image: %@", v1, 0x16u);
}

+ (void)doc_AppIconForHostBundleIdentifier:()DocumentManager .cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_1E57D8000, v2, OS_LOG_TYPE_DEBUG, "%s returning image: %@ for app with bundleIdentifier: %@", v3, 0x20u);
}

@end