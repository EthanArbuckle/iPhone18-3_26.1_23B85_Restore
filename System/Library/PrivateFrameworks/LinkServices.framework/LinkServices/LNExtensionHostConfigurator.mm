@interface LNExtensionHostConfigurator
+ (id)extensionIdentityWithExtensionPointIdentifier:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
+ (id)extensionProcessWithExtensionRecord:(id)a3 extensionType:(int64_t *)a4 error:(id *)a5;
@end

@implementation LNExtensionHostConfigurator

+ (id)extensionIdentityWithExtensionPointIdentifier:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc(MEMORY[0x1E6966CE0]);
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleIdentifier = %@", v8];
  v11 = [v9 initWithExtensionPointIdentifier:v7 predicate:v10];

  v12 = [MEMORY[0x1E6966CF8] executeQuery:v11];
  if ([v12 count])
  {
    if ([v12 count] >= 2)
    {
      v13 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 firstObject];
        v15 = [v14 url];
        *buf = 138412546;
        v22 = v8;
        v23 = 2112;
        v24 = v15;
      }
    }

    a5 = [v12 firstObject];
  }

  else if (a5)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = v25 = *MEMORY[0x1E696A578];
    v26[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    *a5 = [v16 errorWithDomain:@"LNConnectionErrorDomain" code:1100 userInfo:v18];

    a5 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return a5;
}

+ (id)extensionProcessWithExtensionRecord:(id)a3 extensionType:(int64_t *)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"LNExtensionHostConfigurator.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"extensionRecord"}];
  }

  v10 = [v9 extensionPointRecord];
  v11 = [v10 identifier];

  if ([v11 isEqualToString:@"com.apple.appintents-extension"])
  {
    *a4 = 0;
  }

  if ([v11 isEqualToString:@"com.apple.widgetkit-extension"])
  {
    v12 = 0;
    *a4 = 1;
  }

  else if (a4)
  {
    v13 = [v9 bundleIdentifier];
    v14 = [a1 extensionIdentityWithExtensionPointIdentifier:v11 bundleIdentifier:v13 error:a5];

    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x1E6966CC8]) initWithExtensionIdentity:v14];
      v12 = [MEMORY[0x1E6966CC0] extensionProcessWithConfiguration:v15 error:a5];
    }

    else
    {
      v17 = getLNLogCategoryConnection();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *a5;
        *buf = 138543362;
        v23 = v18;
        _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Unable to create extension identity: %{public}@", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v16 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = v11;
      _os_log_impl(&dword_19763D000, v16, OS_LOG_TYPE_ERROR, "Unsupported extension point identifier %{public}@", buf, 0xCu);
    }

    v12 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

@end