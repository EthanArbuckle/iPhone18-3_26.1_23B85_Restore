@interface CNAuditTokenUtilities
+ (id)_bundleIdentifierFromInfoPlistForAuditToken:(id *)a3;
+ (id)_bundleIdentifierFromSecTaskForAuditToken:(id *)a3;
+ (id)bundleIdentifierForAuditToken:(id)a3;
+ (id)os_log;
+ (id)processNameForAuditToken:(id)a3;
+ (int)processIdentifierForAuditToken:(id)a3;
@end

@implementation CNAuditTokenUtilities

+ (id)os_log
{
  if (os_log_cn_once_token_1_12 != -1)
  {
    +[CNAuditTokenUtilities os_log];
  }

  v3 = os_log_cn_once_object_1_12;

  return v3;
}

uint64_t __31__CNAuditTokenUtilities_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.foundation", "CNAuditTokenUtilities");
  v1 = os_log_cn_once_object_1_12;
  os_log_cn_once_object_1_12 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)bundleIdentifierForAuditToken:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = 0;
    goto LABEL_16;
  }

  [v4 audit_token];
  v6 = [a1 _bundleIdentifierFromSecTaskForAuditToken:v15];
  if (off_1EF440728(&__block_literal_global_122, v6))
  {
    v7 = [a1 os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CNAuditTokenUtilities *)v6 bundleIdentifierForAuditToken:v7];
    }

    v8 = v6;
  }

  else
  {
    [v5 audit_token];
    v10 = [a1 _bundleIdentifierFromInfoPlistForAuditToken:v15];

    v11 = off_1EF440728(&__block_literal_global_122, v10);
    v12 = [a1 os_log];
    v13 = v12;
    if (!v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CNAuditTokenUtilities bundleIdentifierForAuditToken:];
      }

      v9 = 0;
      goto LABEL_15;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(CNAuditTokenUtilities *)v10 bundleIdentifierForAuditToken:v13];
    }

    v8 = v10;
  }

  v10 = v8;
  v9 = v8;
LABEL_15:

LABEL_16:

  return v9;
}

+ (id)processNameForAuditToken:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [a3 audit_token];
    v4 = audit_token_to_pid(&atoken);
    LOBYTE(atoken.val[0]) = 0;
    if (proc_pidpath(v4, &atoken, 0x800u) > 0)
    {
      v5 = strrchr(&atoken, 47);
      if (v5)
      {
        p_atoken = (v5 + 1);
      }

      else
      {
        p_atoken = &atoken;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_atoken];
      goto LABEL_11;
    }

    v8 = [a1 os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CNAuditTokenUtilities processNameForAuditToken:];
    }
  }

  v7 = 0;
LABEL_11:
  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (int)processIdentifierForAuditToken:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [a3 audit_token];
  return audit_token_to_pid(&v4);
}

+ (id)_bundleIdentifierFromSecTaskForAuditToken:(id *)a3
{
  v4 = *&a3->var0[4];
  *v21.val = *a3->var0;
  *&v21.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &v21);
  if (!v5)
  {
    v9 = [a1 os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CNAuditTokenUtilities _bundleIdentifierFromSecTaskForAuditToken:];
    }

    goto LABEL_7;
  }

  v6 = v5;
  *__error() = 0;
  *v21.val = 0;
  v7 = SecTaskCopySigningIdentifier(v6, &v21);
  if (v7)
  {
    v8 = v7;
    CFRelease(v6);
    goto LABEL_29;
  }

  v10 = [a1 os_log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [CNAuditTokenUtilities _bundleIdentifierFromSecTaskForAuditToken:?];
  }

  v11 = SecTaskCopyValueForEntitlement(v6, @"application-identifier", &v21);
  if (!v11)
  {
    v20 = [a1 os_log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[CNAuditTokenUtilities _bundleIdentifierFromSecTaskForAuditToken:];
    }

    CFRelease(v6);
LABEL_7:
    v8 = 0;
    goto LABEL_29;
  }

  v12 = v11;
  if ([v11 length] < 0xB || objc_msgSend(v12, "characterAtIndex:", 10) != 46)
  {
    goto LABEL_27;
  }

  v13 = 0;
  do
  {
    v14 = [v12 characterAtIndex:v13];
    v16 = (v14 - 65) < 0x1A || (v14 - 48) < 0xA;
  }

  while (v16 && v13++ < 9);
  if (!v16 || ([v12 substringWithRange:{11, objc_msgSend(v12, "length") - 11}], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_27:
    v18 = [v12 copy];
  }

  CFRelease(v6);
  v8 = v18;

LABEL_29:

  return v8;
}

+ (id)_bundleIdentifierFromInfoPlistForAuditToken:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *a3->var0;
  v5 = *&a3->var0[4];
  v6 = audit_token_to_pid(v19);
  v7 = proc_pidpath(v6, v19, 0x1000u);
  if (v7 <= 0)
  {
    v8 = [a1 os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CNAuditTokenUtilities _bundleIdentifierFromInfoPlistForAuditToken:];
    }

    goto LABEL_8;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v19 length:v7 encoding:4];
  if (access([v8 UTF8String], 4))
  {
    v9 = [a1 os_log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CNAuditTokenUtilities _bundleIdentifierFromInfoPlistForAuditToken:];
    }

    goto LABEL_8;
  }

  v13 = CFURLCreateWithFileSystemPath(0, v8, kCFURLPOSIXPathStyle, 0);
  if (!v13)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v14 = v13;
  v15 = _CFBundleCopyBundleURLForExecutableURL();
  if (v15)
  {
    v16 = v15;
    v17 = CFBundleCreate(0, v15);
    if (v17)
    {
      v18 = v17;
      v10 = CFBundleGetIdentifier(v17);
      CFRelease(v18);
    }

    else
    {
      v10 = 0;
    }

    CFRelease(v16);
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v14);
LABEL_9:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)bundleIdentifierForAuditToken:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)bundleIdentifierForAuditToken:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Looked up bundle ID %@ from audit token using Info.plist.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)bundleIdentifierForAuditToken:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Looked up bundle ID %@ from audit token using SecTask.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)processNameForAuditToken:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_bundleIdentifierFromSecTaskForAuditToken:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_bundleIdentifierFromSecTaskForAuditToken:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_bundleIdentifierFromSecTaskForAuditToken:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_bundleIdentifierFromInfoPlistForAuditToken:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_bundleIdentifierFromInfoPlistForAuditToken:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end