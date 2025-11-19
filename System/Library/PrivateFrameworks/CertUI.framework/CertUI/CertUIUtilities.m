@interface CertUIUtilities
+ (id)_certUIBundle;
+ (id)bundleIDFromAuditToken:(id *)a3;
+ (id)localizedAppTitleForBundleID:(id)a3;
@end

@implementation CertUIUtilities

+ (id)bundleIDFromAuditToken:(id *)a3
{
  v14 = *MEMORY[0x277D85DE8];
  cf = 0;
  v3 = *&a3->var0[4];
  *buf = *a3->var0;
  v13 = v3;
  if (CPCopyBundleIdentifierAndTeamFromAuditToken())
  {
    v4 = _CertUILogObjects;
    if (!os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_DEBUG))
    {
LABEL_5:
      v6 = cf;
      goto LABEL_11;
    }

    *buf = 138412290;
    *&buf[4] = 0;
    v5 = "Looked up bundle ID %@ from audit token using entitlement.";
LABEL_4:
    _os_log_impl(&dword_2433D3000, v4, OS_LOG_TYPE_DEBUG, v5, buf, 0xCu);
    goto LABEL_5;
  }

  cf = CPCopyBundleIdentifierFromAuditToken();
  if (cf)
  {
    v4 = _CertUILogObjects;
    if (!os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    *buf = 138412290;
    *&buf[4] = cf;
    v5 = "Looked up bundle ID %@ from audit token using Info.plist.";
    goto LABEL_4;
  }

  v8 = _CertUILogObjects;
  if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2433D3000, v8, OS_LOG_TYPE_ERROR, "Could not look up bundle identifier using audit token.", buf, 2u);
  }

  v6 = 0;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)localizedAppTitleForBundleID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isEqualToString:@"com.apple.SafariViewService"] & 1) != 0 || objc_msgSend(v4, "hasPrefix:", @"com.apple.webapp"))
  {
    v5 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.mobilesafari"];
    if (!v5)
    {
      v6 = _CertUILogObjects;
      if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
      {
        v19 = 138543362;
        v20 = v4;
        _os_log_impl(&dword_2433D3000, v6, OS_LOG_TYPE_ERROR, "Could not retrieve localized app title for Safari for bundle ID: %{public}@", &v19, 0xCu);
      }
    }

    v7 = [v5 localizedName];
    v8 = v7;
    v9 = @"Safari";
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;
LABEL_9:
    v11 = v10;

    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"com.apple.WebSheet"])
  {
    v14 = MGGetBoolAnswer();
    v15 = @"WEBSHEET_LOCALIZED_NAME";
    if (v14)
    {
      v15 = @"WEBSHEET_LOCALIZED_NAME_CHINA";
    }

    v8 = v15;
    v5 = [a1 _certUIBundle];
    v10 = [v5 localizedStringForKey:v8 value:&stru_285620EE0 table:0];
    goto LABEL_9;
  }

  v16 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v4];
  v5 = v16;
  if (!v16 || ([v16 localizedName], v17 = objc_claimAutoreleasedReturnValue(), v17, !v17))
  {
    v18 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543362;
      v20 = v4;
      _os_log_impl(&dword_2433D3000, v18, OS_LOG_TYPE_ERROR, "Could not retrieve localized app title given bundle ID: %{public}@", &v19, 0xCu);
    }
  }

  v11 = [v5 localizedName];
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)_certUIBundle
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__CertUIUtilities__certUIBundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_certUIBundle_onceToken != -1)
  {
    dispatch_once(&_certUIBundle_onceToken, block);
  }

  v2 = _certUIBundle_certUIBundle;

  return v2;
}

uint64_t __32__CertUIUtilities__certUIBundle__block_invoke(uint64_t a1)
{
  _certUIBundle_certUIBundle = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

@end