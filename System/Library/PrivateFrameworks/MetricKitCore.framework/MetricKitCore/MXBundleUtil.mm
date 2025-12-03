@interface MXBundleUtil
- (BOOL)isAppExtensionFromBundleID:(id)d;
- (BOOL)isAppInstalledForBundleID:(id)d;
- (MXBundleUtil)init;
- (id)_bundleIDFromURL:(id)l;
- (id)bundleIDFromAuditToken:(id *)token;
- (id)bundleIDFromPid:(int)pid;
- (id)mainAppBundleIDforExtension:(id)extension;
- (id)teamIDFromAuditToken:(id *)token;
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

- (id)bundleIDFromPid:(int)pid
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:proc_pidpath(pid encoding:{buffer, 0x1000u), 4}];
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

- (id)bundleIDFromAuditToken:(id *)token
{
  v4 = *&token->var0[4];
  *cf.val = *token->var0;
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

- (id)teamIDFromAuditToken:(id *)token
{
  v4 = *&token->var0[4];
  *cf.val = *token->var0;
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

- (BOOL)isAppExtensionFromBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v10 = 0;
    v5 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:dCopy error:&v10];
    v6 = v10;
    if (v6)
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(MXBundleUtil *)dCopy isAppExtensionFromBundleID:v6];
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

- (id)mainAppBundleIDforExtension:(id)extension
{
  extensionCopy = extension;
  if (extensionCopy)
  {
    v11 = 0;
    v5 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:extensionCopy error:&v11];
    v6 = v11;
    if (v6)
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        [(MXBundleUtil *)extensionCopy isAppExtensionFromBundleID:v6];
      }

      bundleIdentifier = 0;
    }

    else
    {
      containingBundleRecord = [v5 containingBundleRecord];
      bundleIdentifier = [containingBundleRecord bundleIdentifier];
    }
  }

  else
  {
    if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_ERROR))
    {
      [MXBundleUtil isAppExtensionFromBundleID:];
    }

    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

- (BOOL)isAppInstalledForBundleID:(id)d
{
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:d];
  appState = [v3 appState];
  isInstalled = [appState isInstalled];

  return isInstalled;
}

- (id)_bundleIDFromURL:(id)l
{
  if (l && (v3 = *MEMORY[0x277CBECE8], (Unique = _CFBundleCreateUnique()) != 0))
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