@interface NSItemProvider
@end

@implementation NSItemProvider

void __58__NSItemProvider_MapUtils____ck_loadDataForAppleMapVCard___block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:3];
  v2 = [v0 setWithArray:{v1, v4, v5}];
  v3 = __ck_loadDataForAppleMapVCard__sUnarchiveClasses;
  __ck_loadDataForAppleMapVCard__sUnarchiveClasses = v2;
}

void __58__NSItemProvider_MapUtils____ck_loadDataForAppleMapVCard___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v7;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Loading data for location from NSItemProvider failed with error: %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v22 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:__ck_loadDataForAppleMapVCard__sUnarchiveClasses fromData:v5 error:&v22];
    v9 = v22;
    v10 = v9;
    if (!v8 || v9)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v10;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Unexpected nil unarchiving location info with error: %@", buf, 0xCu);
        }
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v11 = MEMORY[0x1E695DEF0];
      v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69A6898]];
      v21 = 0;
      v13 = [v11 dataWithContentsOfURL:v12 options:1 error:&v21];
      v10 = v21;

      if (!v13 || v10)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v24 = v10;
            _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Unable to archive vCardData with error: %@", buf, 0xCu);
          }
        }

        (*(*(a1 + 32) + 16))();
      }

      else
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__NSItemProvider_MapUtils____ck_loadDataForAppleMapVCard___block_invoke_51;
        block[3] = &unk_1E72EDD88;
        v20 = *(a1 + 32);
        v18 = v13;
        v19 = v8;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }
  }
}

void __58__NSItemProvider_MapUtils____ck_loadDataForAppleMapVCard___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69A68A0]];
  (*(v2 + 16))(v2, v1, v3, 0);
}

@end