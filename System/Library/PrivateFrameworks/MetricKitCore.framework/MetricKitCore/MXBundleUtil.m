@interface MXBundleUtil
- (BOOL)isAppExtensionFromBundleID:(id)a3;
- (BOOL)isAppInstalledForBundleID:(id)a3;
- (MXBundleUtil)init;
- (id)_bundleIDFromURL:(id)a3;
- (id)bundleIDFromAuditToken:(id *)a3;
- (id)bundleIDFromPid:(int)a3;
- (id)mainAppBundleIDforExtension:(id)a3;
- (id)teamIDFromAuditToken:(id *)a3;
@end

@implementation MXBundleUtil

- (MXBundleUtil)init
{
  v6.receiver = self;
  v6.super_class = MXBundleUtil;
  v2 = [(MXBundleUtil *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.metrickit", "bundle.utility");
    logHandle = v2->_logHandle;
    v2->_logHandle = v3;

    if (!v2->_logHandle)
    {
      objc_storeStrong(&v2->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v2;
}

- (id)bundleIDFromPid:(int)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:proc_pidpath(a3 encoding:{buffer, 0x1000u), 4}];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  if (v5)
  {
    v6 = _CFBundleCopyBundleURLForExecutableURL();
    v7 = [(MXBundleUtil *)self _bundleIDFromURL:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)bundleIDFromAuditToken:(id *)a3
{
  v4 = *&a3->var0[4];
  *cf.val = *a3->var0;
  *&cf.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &cf);
  if (v5)
  {
    v6 = v5;
    *cf.val = 0;
    v7 = SecTaskCopySigningIdentifier(v5, &cf);
    if (*cf.val)
    {
      if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
      {
        [MXBundleUtil bundleIDFromAuditToken:?];
      }

      CFRelease(*cf.val);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)teamIDFromAuditToken:(id *)a3
{
  v4 = *&a3->var0[4];
  *cf.val = *a3->var0;
  *&cf.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &cf);
  if (v5)
  {
    v6 = v5;
    *cf.val = 0;
    v7 = SecTaskCopyTeamIdentifier();
    if (*cf.val)
    {
      if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
      {
        [MXBundleUtil teamIDFromAuditToken:?];
      }

      CFRelease(*cf.val);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAppExtensionFromBundleID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = 0;
    v5 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v4 error:&v10];
    v6 = v10;
    if (v6)
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(MXBundleUtil *)v4 isAppExtensionFromBundleID:v6];
      }
    }

    v8 = v5 != 0;
  }

  else
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXBundleUtil isAppExtensionFromBundleID:];
    }

    v8 = 0;
  }

  return v8;
}

- (id)mainAppBundleIDforExtension:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v5 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v4 error:&v11];
    v6 = v11;
    if (v6)
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(MXBundleUtil *)v4 isAppExtensionFromBundleID:v6];
      }

      v8 = 0;
    }

    else
    {
      v9 = [v5 containingBundleRecord];
      v8 = [v9 bundleIdentifier];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXBundleUtil isAppExtensionFromBundleID:];
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)isAppInstalledForBundleID:(id)a3
{
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:a3];
  v4 = [v3 appState];
  v5 = [v4 isInstalled];

  return v5;
}

- (id)_bundleIDFromURL:(id)a3
{
  if (a3 && (v3 = *MEMORY[0x277CBECE8], (Unique = _CFBundleCreateUnique()) != 0))
  {
    v5 = Unique;
    v6 = CFBundleGetIdentifier(Unique);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)bundleIDFromAuditToken:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)teamIDFromAuditToken:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isAppExtensionFromBundleID:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 description];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7(&dword_258D6F000, v6, v7, "Failed to create bundle record for bundleID %@ and error %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

@end