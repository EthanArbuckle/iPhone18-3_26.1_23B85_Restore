@interface IMSharedMessageAppSummary
+ (Class)dataSourceClass;
+ (id)previewSummary;
@end

@implementation IMSharedMessageAppSummary

+ (Class)dataSourceClass
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EB30AF10 != -1)
  {
    sub_1A88C2510();
  }

  pluginPath = [self pluginPath];
  result = [pluginPath length];
  if (result)
  {
    [qword_1EB30AEF8 lock];
    v5 = [qword_1EB30AF00 objectForKeyedSubscript:pluginPath];
    v6 = v5;
    if (!v5)
    {
      if ([qword_1EB30AF08 containsObject:pluginPath])
      {
        v5 = 0;
      }

      else
      {
        v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:pluginPath];
        v8 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v7];
        if (([v8 load] & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v9 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              v11 = 138412290;
              v12 = pluginPath;
              _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "IMSharedMessageAppSummary - Failed to load bundle at path %@", &v11, 0xCu);
            }
          }
        }

        v5 = NSClassFromString([objc_msgSend(v8 "infoDictionary")]);
        v10 = v5;
        if (v5)
        {
          [qword_1EB30AF00 setObject:v5 forKey:pluginPath];
        }

        else
        {
          [qword_1EB30AF08 addObject:pluginPath];
        }
      }
    }

    [qword_1EB30AEF8 unlock];
    return v5;
  }

  return result;
}

+ (id)previewSummary
{
  dataSourceClass = [objc_opt_class() dataSourceClass];

  return MEMORY[0x1EEE66B58](dataSourceClass, sel_previewSummary);
}

@end