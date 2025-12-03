@interface MAAutoAssetAuthorizationPolicy
+ (BOOL)consumeSandboxExtension:(id)extension forPath:(id)path;
+ (id)_existingSandboxExtensions;
@end

@implementation MAAutoAssetAuthorizationPolicy

+ (id)_existingSandboxExtensions
{
  if (_existingSandboxExtensions_existingSandboxExtensionsOnceToken != -1)
  {
    +[MAAutoAssetAuthorizationPolicy _existingSandboxExtensions];
  }

  v3 = _existingSandboxExtensions_activeExtensions;

  return v3;
}

uint64_t __60__MAAutoAssetAuthorizationPolicy__existingSandboxExtensions__block_invoke()
{
  _existingSandboxExtensions_activeExtensions = objc_alloc_init(MEMORY[0x1E695DF70]);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)consumeSandboxExtension:(id)extension forPath:(id)path
{
  v28 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  uTF8String = [extension UTF8String];
  v7 = +[MAAutoAssetAuthorizationPolicy _existingSandboxExtensions];
  v8 = v7;
  if (!pathCopy || ![v7 containsObject:pathCopy])
  {
    if (uTF8String)
    {
      v10 = sandbox_extension_consume();
      v11 = _MAClientLog(@"Auto");
      v12 = v11;
      if (v10 != -1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138543362;
          v23 = pathCopy;
          _os_log_impl(&dword_197AD5000, v12, OS_LOG_TYPE_DEFAULT, "{MAAutoAssetAuthorizationPolicy}(consumeSandboxExtensionFromMessage) consumed sandbox extension for path %{public}@", &v22, 0xCu);
        }

        if (pathCopy)
        {
          [v8 addObject:pathCopy];
        }

        goto LABEL_12;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v17 = __error();
        v18 = strerror(*v17);
        v19 = *__error();
        v22 = 136446722;
        v23 = v18;
        v24 = 1024;
        v25 = v19;
        v26 = 2114;
        v27 = pathCopy;
        v14 = "{MAAutoAssetAuthorizationPolicy}(consumeSandboxExtensionFromMessage) unable to consume sandbox extension with errno %{public}s (%d) for path %{public}@";
        v15 = v12;
        v16 = 28;
        goto LABEL_17;
      }
    }

    else
    {
      v12 = _MAClientLog(@"Auto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v22 = 138543362;
        v23 = pathCopy;
        v14 = "{MAAutoAssetAuthorizationPolicy}(consumeSandboxExtensionFromMessage) unable to consume sandbox extension as there is no extension available for path %{public}@";
        v15 = v12;
        v16 = 12;
LABEL_17:
        _os_log_impl(&dword_197AD5000, v15, OS_LOG_TYPE_ERROR, v14, &v22, v16);
      }
    }

    v13 = 0;
    goto LABEL_19;
  }

  v9 = _MAClientLog(@"Auto");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138543362;
    v23 = pathCopy;
    _os_log_impl(&dword_197AD5000, v9, OS_LOG_TYPE_DEFAULT, "{MAAutoAssetAuthorizationPolicy}(consumeSandboxExtensionFromMessage) found existing consumed sandbox extension for path %{public}@", &v22, 0xCu);
  }

LABEL_12:
  v13 = 1;
LABEL_19:

  v20 = *MEMORY[0x1E69E9840];
  return v13;
}

@end