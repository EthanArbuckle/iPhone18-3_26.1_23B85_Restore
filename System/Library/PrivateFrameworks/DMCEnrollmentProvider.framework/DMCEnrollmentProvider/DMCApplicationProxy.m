@interface DMCApplicationProxy
+ (id)_allApplications;
+ (id)_bundlePathsForApplications:(id)a3;
+ (id)blockedApplications;
+ (id)bookIconForVariant:(unint64_t)a3;
+ (id)userApplications;
- (BOOL)_canNotBeHidden;
- (BOOL)_canNotBeLocked;
- (BOOL)_hasAppCellularSlice;
- (BOOL)_hasAppContentFilter;
- (BOOL)_hasAppDNSProxy;
- (BOOL)_hasAppRelay;
- (BOOL)_hasAppVPN;
- (BOOL)_hasAssociatedDomains;
- (BOOL)_hasManagedRestrictions;
- (BOOL)_isExcludedFromBackup;
- (BOOL)_isExcludedFromCloudSync;
- (BOOL)_isNotRemovable;
- (BOOL)_isTapToPayScreenLock;
- (BOOL)_isUnableToExportToUnmanaged;
- (BOOL)_isUnableToImportFromUnmanaged;
- (BOOL)_isUnableToUseCellData;
- (BOOL)_isUnableToUseRoamingCellData;
- (BOOL)_isUninstalledOnMDMRemoval;
- (BOOL)checkIsBlocked;
- (DMCApplicationProxy)initWithBundleID:(id)a3 dataSource:(unint64_t)a4;
- (DMCApplicationProxy)initWithCoder:(id)a3;
- (DMCApplicationProxy)initWithLSApplicationProxy:(id)a3 dataSource:(unint64_t)a4;
- (DMCApplicationProxy)initWithLSApplicationRecord:(id)a3 dataSource:(unint64_t)a4;
- (id)_bridgeIconForVariant:(unint64_t)a3;
- (id)_circularImageFromImage:(id)a3 variant:(int)a4;
- (id)_lsIconDataForVariant:(unint64_t)a3 scale:(double)a4;
- (id)_managedAppAttribute:(id)a3;
- (id)iconForVariant:(unint64_t)a3;
- (id)managedAppConfigurationInfo;
- (id)misStateString;
- (unint64_t)misStateIncludingPending:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBlockedInfo:(id)a3;
@end

@implementation DMCApplicationProxy

- (DMCApplicationProxy)initWithBundleID:(id)a3 dataSource:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v12 = 0;
  v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v6 allowPlaceholder:1 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v6;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_ERROR, "DMCApplicationProxy failed to create LSApplicationRecord for bundleID %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  v10 = [(DMCApplicationProxy *)self initWithLSApplicationRecord:v7 dataSource:a4];

  return v10;
}

- (DMCApplicationProxy)initWithLSApplicationRecord:(id)a3 dataSource:(unint64_t)a4
{
  v6 = [a3 compatibilityObject];
  v7 = [(DMCApplicationProxy *)self initWithLSApplicationProxy:v6 dataSource:a4];

  return v7;
}

- (DMCApplicationProxy)initWithLSApplicationProxy:(id)a3 dataSource:(unint64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v26.receiver = self;
  v26.super_class = DMCApplicationProxy;
  v8 = [(DMCApplicationProxy *)&v26 init];
  if (v8)
  {
    v9 = [v7 localizedName];
    name = v8->_name;
    v8->_name = v9;

    v11 = [v7 bundleIdentifier];
    bundleID = v8->_bundleID;
    v8->_bundleID = v11;

    v13 = [v7 bundleURL];
    v14 = [v13 path];
    bundlePath = v8->_bundlePath;
    v8->_bundlePath = v14;

    v16 = [v7 signerIdentity];
    signerID = v8->_signerID;
    v8->_signerID = v16;

    v18 = [v7 entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
    appIDEntitlement = v8->_appIDEntitlement;
    v8->_appIDEntitlement = v18;

    v20 = [v7 appState];
    v8->_isInstalled = [v20 isInstalled];

    v8->_isBetaApp = [v7 isBetaApp];
    v21 = [v7 applicationType];
    v8->_isUserApp = [v21 isEqualToString:@"User"];

    objc_storeStrong(&v8->_lsApp, a3);
    if (!v8->_bundleID)
    {
      v22 = *DMCLogObjects();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v7;
        _os_log_impl(&dword_247E7D000, v22, OS_LOG_TYPE_ERROR, "DMCApplicationProxy encountered an LSApplicationProxy with no bundle ID: %{public}@", buf, 0xCu);
      }
    }

    v8->_dataSource = a4;
    if (a4 == 1)
    {
      v23 = [(DMCApplicationProxy *)v8 managedAppConfigurationInfo];
      cachedManagedAppConfigurationInfo = v8->_cachedManagedAppConfigurationInfo;
      v8->_cachedManagedAppConfigurationInfo = v23;
    }
  }

  return v8;
}

+ (id)_allApplications
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[DMCApplicationProxy alloc] initWithLSApplicationRecord:*(*(&v10 + 1) + 8 * i) dataSource:0];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

+ (id)_bundlePathsForApplications:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) bundlePath];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)blockedApplications
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [a1 _allApplications];
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v26 = 0;
  v5 = [a1 _bundlePathsForApplications:v3];
  v25 = 0;
  v6 = [v4 getAreBundlesBlocked:&v26 bundlePaths:v5 outError:&v25];
  v7 = v26;
  v8 = v25;

  if (v6)
  {
    v20 = v8;
    v9 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 bundlePath];
          v17 = [v7 objectForKeyedSubscript:v16];
          [v15 setBlockedInfo:v17];

          if ([v15 isBlocked])
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v12);
    }

    v8 = v20;
  }

  else
  {
    v18 = *DMCLogObjects();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v8;
      _os_log_impl(&dword_247E7D000, v18, OS_LOG_TYPE_ERROR, "DMCApplicationProxy failed to check profiled if bundle paths are blocked by MIS with error: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

+ (id)userApplications
{
  v2 = [a1 _allApplications];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)iconForVariant:(unint64_t)a3
{
  if ([(DMCApplicationProxy *)self dataSource]== 1)
  {
    v5 = [(DMCApplicationProxy *)self _bridgeIconForVariant:a3];
    goto LABEL_10;
  }

  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v7;

  if (v8 < 1.0)
  {
LABEL_7:
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v9 = [(DMCApplicationProxy *)self _lsIconDataForVariant:a3 scale:v8];
      v10 = v9;
      if (v9 || v8 <= 1.0)
      {
        break;
      }

      v8 = v8 + -1.0;
      if (v8 < 1.0)
      {
        goto LABEL_7;
      }
    }

    if (v9)
    {
      v12 = LICreateIconFromCachedBitmap();
      if (v12)
      {
        v5 = [MEMORY[0x277D755B8] imageWithCGImage:v12 scale:0 orientation:v8];
      }

      else
      {
        v5 = 0;
      }

      CGImageRelease(v12);
      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:

LABEL_10:

  return v5;
}

- (id)_lsIconDataForVariant:(unint64_t)a3 scale:(double)a4
{
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (a4 == 3.0)
  {
    v9 = a3 == 0;
    v10 = 32;
    v11 = 34;
LABEL_10:
    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = [(DMCApplicationProxy *)self lsApp];
    v14 = [v13 iconDataForVariant:v12];

    goto LABEL_14;
  }

  if (a4 == 2.0)
  {
    if (v8 == 1)
    {
      v10 = 24;
    }

    else
    {
      v10 = 15;
    }

    v9 = a3 == 0;
    v11 = 17;
    goto LABEL_10;
  }

  if (a4 == 1.0)
  {
    v10 = v8 == 1;
    v9 = a3 == 0;
    v11 = 4;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_14:

  return v14;
}

+ (id)bookIconForVariant:(unint64_t)a3
{
  v4 = [[DMCApplicationProxy alloc] initWithBundleID:@"com.apple.iBooks" dataSource:0];
  v5 = [(DMCApplicationProxy *)v4 iconForVariant:a3];

  return v5;
}

- (id)_bridgeIconForVariant:(unint64_t)a3
{
  v5 = [MEMORY[0x277D759A0] mainScreen];
  v6 = [v5 traitCollection];
  [v6 displayScale];
  v8 = v7;

  if (a3)
  {
    v9 = 42;
  }

  else
  {
    v9 = 48;
  }

  if (a3)
  {
    v10 = 42;
  }

  else
  {
    v10 = 47;
  }

  if (v8 <= 2.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v19 = 0;
  v12 = [MEMORY[0x277D2BD60] sharedInstance];
  v13 = [(DMCApplicationProxy *)self bundleID];
  [v12 getCachedIconForBundleID:v13 iconVariant:v11 outIconImage:&v19 updateBlock:0];

  if (v19)
  {
    v14 = [(DMCApplicationProxy *)self _circularImageFromImage:v19 variant:v11];
  }

  else
  {
    v15 = [(DMCApplicationProxy *)self bundleID];
    v16 = dispatch_get_global_queue(0, 0);
    [v12 getIconForBundleID:v15 iconVariant:v11 queue:v16 block:&__block_literal_global_19 timeout:10.0];

    v17 = PSBlankIconImage();
    v14 = [(DMCApplicationProxy *)self _circularImageFromImage:v17 variant:v11];
  }

  return v14;
}

void __45__DMCApplicationProxy__bridgeIconForVariant___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"kMCUIBridgeIconLoadedNotification" object:0 userInfo:0];
  }
}

- (id)_circularImageFromImage:(id)a3 variant:(int)a4
{
  v5 = a3;
  if (a4 == 42)
  {
    v6 = 57.0;
  }

  else
  {
    v6 = 29.0;
  }

  v7 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v6, v6}];
  v8 = MEMORY[0x277D755B8];
  v9 = [v5 CGImage];
  [v5 scale];
  v10 = [v8 imageWithCGImage:v9 scale:0 orientation:?];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__DMCApplicationProxy__circularImageFromImage_variant___block_invoke;
  v18[3] = &unk_278EE7310;
  v20 = v6;
  v21 = v6;
  v11 = v10;
  v19 = v11;
  v12 = [v7 imageWithActions:v18];
  v13 = v12;
  if (!v12)
  {
    v14 = *DMCLogObjects();
    v13 = v5;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_247E7D000, v14, OS_LOG_TYPE_ERROR, "DMCApplicationProxy failed to create circular Bridge app icon", v17, 2u);
      v13 = v5;
    }
  }

  v15 = v13;

  return v13;
}

void __55__DMCApplicationProxy__circularImageFromImage_variant___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{*MEMORY[0x277CBF348], v5, v6, v7}];
  v8 = v9;
  CGContextAddPath(v3, [v9 CGPath]);
  CGContextClip(v3);
  [*(a1 + 32) drawInRect:{v4, v5, v6, v7}];
}

- (void)setBlockedInfo:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D26458]];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_isBlocked = [v6 BOOLValue];
      }

      else
      {
        v9 = *DMCLogObjects();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v14 = 138543362;
          v15 = v6;
          _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_ERROR, "DMCApplicationProxy failed to parse blocked app isBlockedInfo as NSNumber: %{public}@", &v14, 0xCu);
        }
      }
    }

    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277D26448]];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_misCDHash, v10);
      }

      else
      {
        v11 = *DMCLogObjects();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v14 = 138543362;
          v15 = v10;
          _os_log_impl(&dword_247E7D000, v11, OS_LOG_TYPE_ERROR, "DMCApplicationProxy failed to parse blocked app hash info as NSData: %{public}@", &v14, 0xCu);
        }
      }
    }

    v12 = [v5 objectForKeyedSubscript:*MEMORY[0x277D26450]];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_misHashType, v12);
      }

      else
      {
        v13 = *DMCLogObjects();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = 138543362;
          v15 = v12;
          _os_log_impl(&dword_247E7D000, v13, OS_LOG_TYPE_ERROR, "DMCApplicationProxy failed to parse blocked app hash type as NSNumber: %{public}@", &v14, 0xCu);
        }
      }
    }
  }

  else
  {
    self->_isBlocked = 0;
    misCDHash = self->_misCDHash;
    self->_misCDHash = 0;

    misHashType = self->_misHashType;
    self->_misHashType = 0;
  }
}

- (BOOL)checkIsBlocked
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(DMCApplicationProxy *)self bundlePath];

  if (v3)
  {
    v20 = 0;
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    v5 = [(DMCApplicationProxy *)self bundlePath];
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v6 = [v4 getIsBundleBlocked:&v20 bundlePath:v5 outHash:&v19 outHashType:&v18 outError:&v17];
    v7 = v19;
    v8 = v19;
    v9 = v18;
    v10 = v18;
    v11 = v17;

    if (v6)
    {
      self->_isBlocked = v20;
      objc_storeStrong(&self->_misCDHash, v7);
      objc_storeStrong(&self->_misHashType, v9);
    }

    else
    {
      v13 = *DMCLogObjects();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [(DMCApplicationProxy *)self bundlePath];
        *buf = 138543618;
        v22 = v15;
        v23 = 2114;
        v24 = v11;
        _os_log_impl(&dword_247E7D000, v14, OS_LOG_TYPE_ERROR, "DMCApplicationProxy failed to check profiled if bundle path '%{public}@' is blocked by MIS with error: %{public}@", buf, 0x16u);
      }
    }

    v12 = v20;
  }

  else
  {
    return 0;
  }

  return v12;
}

- (unint64_t)misStateIncludingPending:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(DMCApplicationProxy *)self bundlePath];

  if (v5)
  {
    v6 = [(DMCApplicationProxy *)self bundlePath];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{v3, *MEMORY[0x277D82AA0]}];
    v14 = v7;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v8 = MISAppApprovalState();

    if (v8 > 5)
    {
      return 4;
    }

    else
    {
      return qword_247ED4288[v8];
    }
  }

  else
  {
    v10 = *DMCLogObjects();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = [(DMCApplicationProxy *)self bundleID];
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_247E7D000, v11, OS_LOG_TYPE_ERROR, "DMCApplicationProxy MIS validator failed to find bundle for app: %{public}@", buf, 0xCu);
    }

    return 0;
  }
}

- (id)misStateString
{
  v2 = [(DMCApplicationProxy *)self misStateIncludingPending:0]- 2;
  if (v2 > 3)
  {
    v3 = @"DMC_MIS_NOT_VERIFIED_APP";
  }

  else
  {
    v3 = off_278EE7330[v2];
  }

  v4 = DMCEnrollmentLocalizedString(v3);

  return v4;
}

- (id)managedAppConfigurationInfo
{
  v3 = [(DMCApplicationProxy *)self cachedManagedAppConfigurationInfo];

  if (v3)
  {
    v4 = [(DMCApplicationProxy *)self cachedManagedAppConfigurationInfo];
LABEL_40:
    v23 = v4;
    goto LABEL_41;
  }

  if (![(DMCApplicationProxy *)self _hasManagedRestrictions])
  {
    v4 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_HAS_NO_RESTRICTIONS");
    goto LABEL_40;
  }

  v5 = objc_opt_new();
  if ([(DMCApplicationProxy *)self _isUninstalledOnMDMRemoval])
  {
    v6 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_WILL_BE_REMOVED");
    [v5 addObject:v6];
  }

  if ([(DMCApplicationProxy *)self _isExcludedFromBackup])
  {
    v7 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_CANNOT_BACKUP");
    [v5 addObject:v7];
  }

  if ([(DMCApplicationProxy *)self _isUnableToExportToUnmanaged])
  {
    v8 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_CANNOT_EXPORT_DATA_TO_UNMANAGED");
    [v5 addObject:v8];
  }

  if ([(DMCApplicationProxy *)self _isUnableToImportFromUnmanaged])
  {
    v9 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_CANNOT_IMPORT_UNMANAGED_DATA");
    [v5 addObject:v9];
  }

  if ([(DMCApplicationProxy *)self _isExcludedFromCloudSync])
  {
    v10 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_CANNOT_CLOUD_SYNC");
    [v5 addObject:v10];
  }

  if ([(DMCApplicationProxy *)self _isUnableToUseCellData])
  {
    v11 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_CANNOT_USE_CELL_DATA");
    [v5 addObject:v11];
  }

  if ([(DMCApplicationProxy *)self _isUnableToUseRoamingCellData])
  {
    v12 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_CANNOT_USE_ROAMING_CELL_DATA");
    [v5 addObject:v12];
  }

  if ([(DMCApplicationProxy *)self _hasAppVPN])
  {
    v13 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_USES_VPN");
    [v5 addObject:v13];
  }

  if ([(DMCApplicationProxy *)self _hasAppCellularSlice])
  {
    v14 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_USES_CELLULAR_SLICE");
    [v5 addObject:v14];
  }

  if ([(DMCApplicationProxy *)self _hasAppContentFilter])
  {
    v15 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_USES_CONTENT_FILTER");
    [v5 addObject:v15];
  }

  if ([(DMCApplicationProxy *)self _hasAppDNSProxy])
  {
    v16 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_USES_DNS_PROXY");
    [v5 addObject:v16];
  }

  if ([(DMCApplicationProxy *)self _hasAppRelay])
  {
    v17 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_USES_RELAY");
    [v5 addObject:v17];
  }

  if ([(DMCApplicationProxy *)self _hasAssociatedDomains])
  {
    v18 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_ADDS_ASSOCIATED_DOMAINS");
    [v5 addObject:v18];
  }

  if ([(DMCApplicationProxy *)self _isNotRemovable])
  {
    v19 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_CANNOT_BE_REMOVED");
    [v5 addObject:v19];
  }

  if ([(DMCApplicationProxy *)self _canNotBeHidden])
  {
    v20 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_CANNOT_BE_HIDDEN");
    [v5 addObject:v20];
  }

  if ([(DMCApplicationProxy *)self _canNotBeLocked])
  {
    v21 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_CANNOT_BE_LOCKED");
    [v5 addObject:v21];
  }

  if ([(DMCApplicationProxy *)self _isTapToPayScreenLock])
  {
    v22 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_TAP_TO_SCREEN_LOCK_ENABLED");
    [v5 addObject:v22];
  }

  v23 = [v5 componentsJoinedByString:@"\n\n"];

LABEL_41:

  return v23;
}

- (BOOL)_hasManagedRestrictions
{
  if ([(DMCApplicationProxy *)self _isUninstalledOnMDMRemoval]|| [(DMCApplicationProxy *)self _isExcludedFromBackup]|| [(DMCApplicationProxy *)self _isExcludedFromCloudSync]|| [(DMCApplicationProxy *)self _isUnableToImportFromUnmanaged]|| [(DMCApplicationProxy *)self _isUnableToExportToUnmanaged]|| [(DMCApplicationProxy *)self _isUnableToUseCellData]|| [(DMCApplicationProxy *)self _isUnableToUseRoamingCellData]|| [(DMCApplicationProxy *)self _hasAppVPN]|| [(DMCApplicationProxy *)self _hasAppCellularSlice]|| [(DMCApplicationProxy *)self _hasAppContentFilter]|| [(DMCApplicationProxy *)self _hasAppDNSProxy]|| [(DMCApplicationProxy *)self _hasAppRelay]|| [(DMCApplicationProxy *)self _hasAssociatedDomains]|| [(DMCApplicationProxy *)self _isNotRemovable]|| [(DMCApplicationProxy *)self _isTapToPayScreenLock]|| [(DMCApplicationProxy *)self _canNotBeHidden])
  {
    return 1;
  }

  return [(DMCApplicationProxy *)self _canNotBeLocked];
}

- (BOOL)_isUninstalledOnMDMRemoval
{
  v3 = [MEMORY[0x277D24678] managedAppIDsWithFlags:1];
  v4 = [(DMCApplicationProxy *)self bundleID];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (BOOL)_isExcludedFromBackup
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 doNotBackupAppIDs];

  v5 = [(DMCApplicationProxy *)self bundleID];
  LOBYTE(v3) = [v4 containsObject:v5];

  return v3;
}

- (BOOL)_isExcludedFromCloudSync
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25F68]] == 2;

  return v3;
}

- (BOOL)_isUnableToImportFromUnmanaged
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25FD0]] == 2;

  return v3;
}

- (BOOL)_isUnableToExportToUnmanaged
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25FC8]] == 2;

  return v3;
}

- (BOOL)_isUnableToUseCellData
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [MEMORY[0x277CD92C0] copyAggregatePathRules];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 matchSigningIdentifier];
        v10 = [(DMCApplicationProxy *)self bundleID];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          v12 = [v8 supportsCellularBehavior:0] ^ 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v12) = 0;
LABEL_11:

  return v12;
}

- (BOOL)_isUnableToUseRoamingCellData
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [MEMORY[0x277CD92C0] copyAggregatePathRules];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      v9 = [v8 matchSigningIdentifier];
      v10 = [(DMCApplicationProxy *)self bundleID];
      v11 = [v9 isEqualToString:v10];

      if (v11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if ([v8 supportsCellularBehavior:0] && !objc_msgSend(v8, "supportsCellularBehavior:", 2))
    {
      v12 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v12 = 0;
LABEL_13:

  return v12;
}

- (id)_managedAppAttribute:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D24678] attributesByAppID];
  v6 = [(DMCApplicationProxy *)self bundleID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_hasAppVPN
{
  v2 = [(DMCApplicationProxy *)self _managedAppAttribute:*MEMORY[0x277D24898]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_hasAppCellularSlice
{
  v2 = [(DMCApplicationProxy *)self _managedAppAttribute:*MEMORY[0x277D24868]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_hasAppContentFilter
{
  v2 = [(DMCApplicationProxy *)self _managedAppAttribute:*MEMORY[0x277D24870]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_hasAppDNSProxy
{
  v2 = [(DMCApplicationProxy *)self _managedAppAttribute:*MEMORY[0x277D24878]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_hasAppRelay
{
  v2 = [(DMCApplicationProxy *)self _managedAppAttribute:*MEMORY[0x277D24880]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_hasAssociatedDomains
{
  v2 = [(DMCApplicationProxy *)self _managedAppAttribute:*MEMORY[0x277D24858]];
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 count] != 0;

  return v3;
}

- (BOOL)_isNotRemovable
{
  v2 = [(DMCApplicationProxy *)self _managedAppAttribute:*MEMORY[0x277D24888]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_isTapToPayScreenLock
{
  v2 = [(DMCApplicationProxy *)self _managedAppAttribute:*MEMORY[0x277D24890]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_canNotBeHidden
{
  v2 = [(DMCApplicationProxy *)self _managedAppAttribute:*MEMORY[0x277D247B0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_canNotBeLocked
{
  v2 = [(DMCApplicationProxy *)self _managedAppAttribute:*MEMORY[0x277D247B8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = a3;
  v4 = [(DMCApplicationProxy *)self name];
  [v18 encodeObject:v4 forKey:@"name"];

  v5 = [(DMCApplicationProxy *)self bundleID];
  [v18 encodeObject:v5 forKey:@"bundleID"];

  v6 = [(DMCApplicationProxy *)self bundlePath];
  [v18 encodeObject:v6 forKey:@"bundlePath"];

  v7 = [(DMCApplicationProxy *)self signerID];
  [v18 encodeObject:v7 forKey:@"signerID"];

  v8 = [(DMCApplicationProxy *)self appIDEntitlement];
  [v18 encodeObject:v8 forKey:@"appIDEntitlement"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCApplicationProxy isInstalled](self, "isInstalled")}];
  [v18 encodeObject:v9 forKey:@"isInstalled"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCApplicationProxy isBetaApp](self, "isBetaApp")}];
  [v18 encodeObject:v10 forKey:@"isBetaApp"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCApplicationProxy isUserApp](self, "isUserApp")}];
  [v18 encodeObject:v11 forKey:@"isUserApp"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCApplicationProxy isBlocked](self, "isBlocked")}];
  [v18 encodeObject:v12 forKey:@"isBlocked"];

  v13 = [(DMCApplicationProxy *)self misCDHash];
  [v18 encodeObject:v13 forKey:@"misCDHash"];

  v14 = [(DMCApplicationProxy *)self misHashType];
  [v18 encodeObject:v14 forKey:@"misHashType"];

  v15 = [(DMCApplicationProxy *)self cachedManagedAppConfigurationInfo];
  [v18 encodeObject:v15 forKey:@"cachedManagedAppConfigurationInfo"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DMCApplicationProxy dataSource](self, "dataSource")}];
  [v18 encodeObject:v16 forKey:@"dataSource"];

  if (self->_dataSource != 1)
  {
    v17 = [(DMCApplicationProxy *)self lsApp];
    [v18 encodeObject:v17 forKey:@"lsApp"];
  }
}

- (DMCApplicationProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = DMCApplicationProxy;
  v5 = [(DMCApplicationProxy *)&v39 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"bundlePath"];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"signerID"];
    signerID = v5->_signerID;
    v5->_signerID = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"appIDEntitlement"];
    appIDEntitlement = v5->_appIDEntitlement;
    v5->_appIDEntitlement = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isInstalled"];
    v5->_isInstalled = [v21 BOOLValue];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isBetaApp"];
    v5->_isBetaApp = [v22 BOOLValue];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isUserApp"];
    v5->_isUserApp = [v23 BOOLValue];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isBlocked"];
    v5->_isBlocked = [v24 BOOLValue];

    v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"misCDHash"];
    misCDHash = v5->_misCDHash;
    v5->_misCDHash = v26;

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"misHashType"];
    misHashType = v5->_misHashType;
    v5->_misHashType = v29;

    v31 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"cachedManagedAppConfigurationInfo"];
    cachedManagedAppConfigurationInfo = v5->_cachedManagedAppConfigurationInfo;
    v5->_cachedManagedAppConfigurationInfo = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataSource"];
    v5->_dataSource = [v34 unsignedIntegerValue];

    if (v5->_dataSource != 1)
    {
      v35 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v36 = [v4 decodeObjectOfClasses:v35 forKey:@"lsApp"];
      lsApp = v5->_lsApp;
      v5->_lsApp = v36;
    }
  }

  return v5;
}

@end