@interface NSItemProvider(MapUtils)
+ (id)__ck_itemProviderForAppleMapsCoordinateURL:()MapUtils vCardURL:;
- (void)__ck_loadDataForAppleMapVCard:()MapUtils;
@end

@implementation NSItemProvider(MapUtils)

+ (id)__ck_itemProviderForAppleMapsCoordinateURL:()MapUtils vCardURL:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v28 = 0;
    v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v6 options:1 error:&v28];
    v9 = v28;
    v10 = v9;
    if (!v8 || v9)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v32 = v10;
          _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Unexpected nil loading vCard data with error: %@", buf, 0xCu);
        }
      }

      v20 = 0;
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithContentsOfURL:v7];
      v12 = CKFrameworkBundle();
      v13 = [v12 localizedStringForKey:@"LOCATION_FILE_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
      [v11 setSuggestedName:v13];

      v29[0] = *MEMORY[0x1E69A68A0];
      lastPathComponent = [v7 lastPathComponent];
      v15 = *MEMORY[0x1E69A6898];
      v30[0] = lastPathComponent;
      v30[1] = v7;
      v16 = *MEMORY[0x1E69A6890];
      v29[1] = v15;
      v29[2] = v16;
      v30[2] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];

      v27 = 0;
      v18 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v27];
      v19 = v27;
      v10 = v19;
      if (!v18 || v19)
      {
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v32 = v10;
            _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Unexpected nil archiving vCard data with error: %@", buf, 0xCu);
          }
        }

        v20 = 0;
      }

      else
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __80__NSItemProvider_MapUtils____ck_itemProviderForAppleMapsCoordinateURL_vCardURL___block_invoke;
        v25[3] = &unk_1E72EC878;
        v26 = v18;
        [v11 registerDataRepresentationForTypeIdentifier:v16 visibility:0 loadHandler:v25];
        v20 = v11;
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Unexpected nil parameter", buf, 2u);
      }
    }

    v20 = 0;
  }

  return v20;
}

- (void)__ck_loadDataForAppleMapVCard:()MapUtils
{
  v4 = a3;
  if (__ck_loadDataForAppleMapVCard__onceToken != -1)
  {
    [NSItemProvider(MapUtils) __ck_loadDataForAppleMapVCard:];
  }

  v5 = *MEMORY[0x1E69A6890];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__NSItemProvider_MapUtils____ck_loadDataForAppleMapVCard___block_invoke_2;
  v8[3] = &unk_1E72F0030;
  v9 = v4;
  v6 = v4;
  v7 = [self loadDataRepresentationForTypeIdentifier:v5 completionHandler:v8];
}

@end