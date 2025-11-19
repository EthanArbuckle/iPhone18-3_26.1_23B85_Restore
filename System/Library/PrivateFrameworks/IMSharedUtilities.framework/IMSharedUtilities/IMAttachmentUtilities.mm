@interface IMAttachmentUtilities
+ (BOOL)asset:(id)a3 containsMetadataKey:(id)a4;
+ (Class)__AVDataAssetClass;
+ (id)photosSupportedPreviewGeneratorClasses;
@end

@implementation IMAttachmentUtilities

+ (Class)__AVDataAssetClass
{
  if (qword_1EB30AD60 != -1)
  {
    sub_1A88C0F90();
  }

  return qword_1EB30AD58;
}

+ (BOOL)asset:(id)a3 containsMetadataKey:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = dispatch_semaphore_create(0);
  v24[0] = @"availableMetadataFormats";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A863DD54;
  v19[3] = &unk_1E7826DA8;
  v19[4] = v6;
  [a3 loadValuesAsynchronouslyForKeys:v7 completionHandler:v19];
  v8 = dispatch_time(0, 100000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v21 = a4;
        v22 = 2048;
        v23 = 0x4059000000000000;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Failed to fetch metadata for %@: Timeout during async fetch(%f ms)", buf, 0x16u);
      }
    }

    dispatch_release(v6);
    return 0;
  }

  dispatch_release(v6);
  v12 = MEMORY[0x1E6987FE0];
  v13 = [a3 metadataForFormat:*MEMORY[0x1E6987708]];
  v14 = [v12 metadataItemsFromArray:v13 withKey:a4 keySpace:*MEMORY[0x1E6987858]];
  if (![v14 count])
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = a4;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "IMAttachmentUtilities failed to load metadata for key %@", buf, 0xCu);
      }
    }

    return 0;
  }

  v18 = 0;
  v15 = [objc_msgSend(v14 objectAtIndexedSubscript:{0), "dataValue"}];
  v10 = [v15 isEqualToData:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", &v18, 4)}];
  if ((v10 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v21 = a4;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "IMAttachmentUtilities found %@ metadata with unexpected contents, assuming metadata doesn't exist", buf, 0xCu);
      }
    }
  }

  return v10;
}

+ (id)photosSupportedPreviewGeneratorClasses
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
}

@end