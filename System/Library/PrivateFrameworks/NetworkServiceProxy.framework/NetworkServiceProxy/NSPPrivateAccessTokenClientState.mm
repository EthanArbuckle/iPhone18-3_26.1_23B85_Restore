@interface NSPPrivateAccessTokenClientState
+ (uint64_t)clientPrivateKey;
- (NSPPrivateAccessTokenClientState)init;
- (void)dealloc;
@end

@implementation NSPPrivateAccessTokenClientState

uint64_t __53__NSPPrivateAccessTokenClientState_sharedClientState__block_invoke()
{
  _MergedGlobals_27 = objc_alloc_init(NSPPrivateAccessTokenClientState);

  return MEMORY[0x1EEE66BB8]();
}

+ (uint64_t)clientPrivateKey
{
  objc_opt_self();
  objc_opt_self();
  if (qword_1ED4BF610 != -1)
  {
    dispatch_once(&qword_1ED4BF610, &__block_literal_global_3);
  }

  v0 = _MergedGlobals_27;
  if (v0)
  {
    v1 = v0[1];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (NSPPrivateAccessTokenClientState)init
{
  v31 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = NSPPrivateAccessTokenClientState;
  v2 = [(NSPPrivateAccessTokenClientState *)&v25 init];
  if (v2)
  {
    v3 = [NPUtilities copyKeyFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.ClientKey"];
    if (v3)
    {
      v4 = v3;
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *v29 = 0;
        _os_log_debug_impl(&dword_1AE7E2000, v5, OS_LOG_TYPE_DEBUG, "Found client key in keychain", v29, 2u);
      }

      v2->_clientKey = v4;
    }

    else if (!v2->_clientKey)
    {
      v6 = *MEMORY[0x1E697AD78];
      v7 = *MEMORY[0x1E697AD50];
      *v27 = *MEMORY[0x1E697AD68];
      v28 = v7;
      *v29 = v6;
      v30 = &unk_1F24427F8;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v27 count:2];
      RandomKey = SecKeyCreateRandomKey(v8, 0);
      if (RandomKey)
      {
        v2->_clientKey = RandomKey;
        [NPUtilities saveKeyToKeychain:RandomKey withIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.ClientKey"];
        v10 = nplog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_DEBUG, "Generated new client key", buf, 2u);
        }
      }

      else
      {
        v10 = nplog_obj();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "SecKeyCreateRandomKey failed to generate client key", buf, 2u);
        }
      }
    }

    v12 = [NPUtilities copyDataFromKeychainWithIdentifier:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.Secret" accountName:@"client-tokens"];
    if (v12)
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v29 = 0;
        _os_log_debug_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_DEBUG, "Found client secret in keychain", v29, 2u);
      }

      objc_setProperty_atomic(v2, v14, v12, 16);
      goto LABEL_28;
    }

    if (objc_getProperty(v2, v11, 16, 1))
    {
LABEL_28:
      v22 = v2;
      goto LABEL_29;
    }

    *v29 = 0;
    ccrng();
    if (*v29)
    {
      v15 = nplog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        v16 = "Failed to generate random";
LABEL_24:
        _os_log_error_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_ERROR, v16, v27, 2u);
      }
    }

    else
    {
      v17 = (32 * *MEMORY[0x1B2707830]()) | 0x10;
      v18 = malloc_type_calloc(1uLL, v17, 0x40BFDC82uLL);
      if (!ccec_generate_key())
      {
        v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v18 length:v17];
        objc_setProperty_atomic(v2, v20, v19, 16);

        free(v18);
        [NPUtilities saveDataToKeychain:objc_getProperty(v2 withIdentifier:v21 accountName:16, 1), @"com.apple.NetworkServiceProxy.PrivateAccessTokens.Secret", @"client-tokens"];
        v15 = nplog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *v27 = 0;
          _os_log_debug_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_DEBUG, "Generated new client secret", v27, 2u);
        }

        goto LABEL_27;
      }

      v15 = nplog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        v16 = "Failed to generate key";
        goto LABEL_24;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v12 = nplog_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *v29 = 0;
    _os_log_fault_impl(&dword_1AE7E2000, v12, OS_LOG_TYPE_FAULT, "[super init] failed", v29, 2u);
  }

LABEL_29:

  v23 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  if (self)
  {
    clientKey = self->_clientKey;
    if (clientKey)
    {
      CFRelease(clientKey);
      self->_clientKey = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = NSPPrivateAccessTokenClientState;
  [(NSPPrivateAccessTokenClientState *)&v4 dealloc];
}

@end