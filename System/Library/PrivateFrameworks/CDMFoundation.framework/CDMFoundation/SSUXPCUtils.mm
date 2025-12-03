@interface SSUXPCUtils
+ (BOOL)isPlaceholder:(id)placeholder;
+ (id)extractSingleBundleId:(id)id;
+ (id)extractUserInfo:(id)info;
+ (void)dispatchAsyncWithTransaction:(id)transaction block:(id)block;
@end

@implementation SSUXPCUtils

+ (id)extractUserInfo:(id)info
{
  v10 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (MEMORY[0x1E1298A50]() == MEMORY[0x1E69E9E80])
  {
    v5 = xpc_dictionary_get_dictionary(infoCopy, "UserInfo");
  }

  else
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "+[SSUXPCUtils extractUserInfo:]";
      _os_log_error_impl(&dword_1DC287000, v4, OS_LOG_TYPE_ERROR, "%s [ERR]: Received XPC event of non-dictionary type", &v8, 0xCu);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (void)dispatchAsyncWithTransaction:(id)transaction block:(id)block
{
  blockCopy = block;
  transactionCopy = transaction;
  v7 = os_transaction_create();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SSUXPCUtils_dispatchAsyncWithTransaction_block___block_invoke;
  v10[3] = &unk_1E862F240;
  v11 = v7;
  v12 = blockCopy;
  v8 = v7;
  v9 = blockCopy;
  dispatch_async(transactionCopy, v10);
}

uint64_t __50__SSUXPCUtils_dispatchAsyncWithTransaction_block___block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = (*(*(a1 + 40) + 16))();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)extractSingleBundleId:(id)id
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [self extractUserInfo:id];
  v4 = v3;
  if (v3)
  {
    v5 = xpc_dictionary_get_array(v3, "bundleIDs");
    v6 = v5;
    if (v5)
    {
      count = xpc_array_get_count(v5);
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
      if (count)
      {
        v10 = 0;
        *&v9 = 136315138;
        v18 = v9;
        do
        {
          string = xpc_array_get_string(v6, v10);
          if (string)
          {
            v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
            [v8 addObject:v12];
          }

          else
          {
            v12 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = v18;
              v20 = "+[SSUXPCUtils extractSingleBundleId:]";
              _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: Encountered non-string bundle ID. Skipping.", buf, 0xCu);
            }
          }

          ++v10;
        }

        while (count != v10);
      }

      if ([v8 count])
      {
        if ([v8 count]>= 2)
        {
          v13 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v20 = "+[SSUXPCUtils extractSingleBundleId:]";
            _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: Received list of bundle IDs of size greater than 1. Continuing using the first one.", buf, 0xCu);
          }
        }

        firstObject = [v8 firstObject];
        goto LABEL_25;
      }

      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v20 = "+[SSUXPCUtils extractSingleBundleId:]";
        _os_log_error_impl(&dword_1DC287000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: Received empty list of bundle IDs. Aborting app registration handling.", buf, 0xCu);
      }
    }

    else
    {
      v8 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v20 = "+[SSUXPCUtils extractSingleBundleId:]";
        _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: Received XPC event missing bundle IDs", buf, 0xCu);
      }
    }

    firstObject = 0;
LABEL_25:

    goto LABEL_26;
  }

  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v20 = "+[SSUXPCUtils extractSingleBundleId:]";
    _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Received XPC event missing user info", buf, 0xCu);
  }

  firstObject = 0;
LABEL_26:

  v16 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (BOOL)isPlaceholder:(id)placeholder
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [self extractUserInfo:placeholder];
  v4 = v3;
  if (v3)
  {
    v5 = xpc_dictionary_get_BOOL(v3, "isPlaceholder");
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "+[SSUXPCUtils isPlaceholder:]";
      _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: Received XPC event missing user info", &v9, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

@end