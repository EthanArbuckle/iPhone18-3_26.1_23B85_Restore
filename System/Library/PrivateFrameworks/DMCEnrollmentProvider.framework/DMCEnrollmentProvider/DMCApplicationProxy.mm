@interface DMCApplicationProxy
+ (id)_allApplications;
+ (id)_bundlePathsForApplications:(id)applications;
+ (id)blockedApplications;
+ (id)bookIconForVariant:(unint64_t)variant;
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
- (DMCApplicationProxy)initWithBundleID:(id)d dataSource:(unint64_t)source;
- (DMCApplicationProxy)initWithCoder:(id)coder;
- (DMCApplicationProxy)initWithLSApplicationProxy:(id)proxy dataSource:(unint64_t)source;
- (DMCApplicationProxy)initWithLSApplicationRecord:(id)record dataSource:(unint64_t)source;
- (id)_bridgeIconForVariant:(unint64_t)variant;
- (id)_circularImageFromImage:(id)image variant:(int)variant;
- (id)_lsIconDataForVariant:(unint64_t)variant scale:(double)scale;
- (id)_managedAppAttribute:(id)attribute;
- (id)iconForVariant:(unint64_t)variant;
- (id)managedAppConfigurationInfo;
- (id)misStateString;
- (unint64_t)misStateIncludingPending:(BOOL)pending;
- (void)encodeWithCoder:(id)coder;
- (void)setBlockedInfo:(id)info;
@end

@implementation DMCApplicationProxy

- (DMCApplicationProxy)initWithBundleID:(id)d dataSource:(unint64_t)source
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v12 = 0;
  v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:1 error:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = dCopy;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&dword_247E7D000, v9, OS_LOG_TYPE_ERROR, "DMCApplicationProxy failed to create LSApplicationRecord for bundleID %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  v10 = [(DMCApplicationProxy *)self initWithLSApplicationRecord:v7 dataSource:source];

  return v10;
}

- (DMCApplicationProxy)initWithLSApplicationRecord:(id)record dataSource:(unint64_t)source
{
  compatibilityObject = [record compatibilityObject];
  v7 = [(DMCApplicationProxy *)self initWithLSApplicationProxy:compatibilityObject dataSource:source];

  return v7;
}

- (DMCApplicationProxy)initWithLSApplicationProxy:(id)proxy dataSource:(unint64_t)source
{
  v29 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  v26.receiver = self;
  v26.super_class = DMCApplicationProxy;
  v8 = [(DMCApplicationProxy *)&v26 init];
  if (v8)
  {
    localizedName = [proxyCopy localizedName];
    name = v8->_name;
    v8->_name = localizedName;

    bundleIdentifier = [proxyCopy bundleIdentifier];
    bundleID = v8->_bundleID;
    v8->_bundleID = bundleIdentifier;

    bundleURL = [proxyCopy bundleURL];
    path = [bundleURL path];
    bundlePath = v8->_bundlePath;
    v8->_bundlePath = path;

    signerIdentity = [proxyCopy signerIdentity];
    signerID = v8->_signerID;
    v8->_signerID = signerIdentity;

    v18 = [proxyCopy entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
    appIDEntitlement = v8->_appIDEntitlement;
    v8->_appIDEntitlement = v18;

    appState = [proxyCopy appState];
    v8->_isInstalled = [appState isInstalled];

    v8->_isBetaApp = [proxyCopy isBetaApp];
    applicationType = [proxyCopy applicationType];
    v8->_isUserApp = [applicationType isEqualToString:@"User"];

    objc_storeStrong(&v8->_lsApp, proxy);
    if (!v8->_bundleID)
    {
      v22 = *DMCLogObjects();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = proxyCopy;
        _os_log_impl(&dword_247E7D000, v22, OS_LOG_TYPE_ERROR, "DMCApplicationProxy encountered an LSApplicationProxy with no bundle ID: %{public}@", buf, 0xCu);
      }
    }

    v8->_dataSource = source;
    if (source == 1)
    {
      managedAppConfigurationInfo = [(DMCApplicationProxy *)v8 managedAppConfigurationInfo];
      cachedManagedAppConfigurationInfo = v8->_cachedManagedAppConfigurationInfo;
      v8->_cachedManagedAppConfigurationInfo = managedAppConfigurationInfo;
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

+ (id)_bundlePathsForApplications:(id)applications
{
  v17 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = applicationsCopy;
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

        bundlePath = [*(*(&v12 + 1) + 8 * i) bundlePath];
        [v4 addObject:bundlePath];
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
  _allApplications = [self _allApplications];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v26 = 0;
  v5 = [self _bundlePathsForApplications:_allApplications];
  v25 = 0;
  v6 = [mEMORY[0x277D262A0] getAreBundlesBlocked:&v26 bundlePaths:v5 outError:&v25];
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
    v10 = _allApplications;
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
          bundlePath = [v15 bundlePath];
          v17 = [v7 objectForKeyedSubscript:bundlePath];
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
  _allApplications = [self _allApplications];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
  v4 = [_allApplications filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)iconForVariant:(unint64_t)variant
{
  if ([(DMCApplicationProxy *)self dataSource]== 1)
  {
    v5 = [(DMCApplicationProxy *)self _bridgeIconForVariant:variant];
    goto LABEL_10;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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
      v9 = [(DMCApplicationProxy *)self _lsIconDataForVariant:variant scale:v8];
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

- (id)_lsIconDataForVariant:(unint64_t)variant scale:(double)scale
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (scale == 3.0)
  {
    v9 = variant == 0;
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

    lsApp = [(DMCApplicationProxy *)self lsApp];
    v14 = [lsApp iconDataForVariant:v12];

    goto LABEL_14;
  }

  if (scale == 2.0)
  {
    if (userInterfaceIdiom == 1)
    {
      v10 = 24;
    }

    else
    {
      v10 = 15;
    }

    v9 = variant == 0;
    v11 = 17;
    goto LABEL_10;
  }

  if (scale == 1.0)
  {
    v10 = userInterfaceIdiom == 1;
    v9 = variant == 0;
    v11 = 4;
    goto LABEL_10;
  }

  v14 = 0;
LABEL_14:

  return v14;
}

+ (id)bookIconForVariant:(unint64_t)variant
{
  v4 = [[DMCApplicationProxy alloc] initWithBundleID:@"com.apple.iBooks" dataSource:0];
  v5 = [(DMCApplicationProxy *)v4 iconForVariant:variant];

  return v5;
}

- (id)_bridgeIconForVariant:(unint64_t)variant
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  [traitCollection displayScale];
  v8 = v7;

  if (variant)
  {
    v9 = 42;
  }

  else
  {
    v9 = 48;
  }

  if (variant)
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
  mEMORY[0x277D2BD60] = [MEMORY[0x277D2BD60] sharedInstance];
  bundleID = [(DMCApplicationProxy *)self bundleID];
  [mEMORY[0x277D2BD60] getCachedIconForBundleID:bundleID iconVariant:v11 outIconImage:&v19 updateBlock:0];

  if (v19)
  {
    v14 = [(DMCApplicationProxy *)self _circularImageFromImage:v19 variant:v11];
  }

  else
  {
    bundleID2 = [(DMCApplicationProxy *)self bundleID];
    v16 = dispatch_get_global_queue(0, 0);
    [mEMORY[0x277D2BD60] getIconForBundleID:bundleID2 iconVariant:v11 queue:v16 block:&__block_literal_global_19 timeout:10.0];

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

- (id)_circularImageFromImage:(id)image variant:(int)variant
{
  imageCopy = image;
  if (variant == 42)
  {
    v6 = 57.0;
  }

  else
  {
    v6 = 29.0;
  }

  v7 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v6, v6}];
  v8 = MEMORY[0x277D755B8];
  cGImage = [imageCopy CGImage];
  [imageCopy scale];
  v10 = [v8 imageWithCGImage:cGImage scale:0 orientation:?];
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
    v13 = imageCopy;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_247E7D000, v14, OS_LOG_TYPE_ERROR, "DMCApplicationProxy failed to create circular Bridge app icon", v17, 2u);
      v13 = imageCopy;
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

- (void)setBlockedInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    v6 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D26458]];
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
  bundlePath = [(DMCApplicationProxy *)self bundlePath];

  if (bundlePath)
  {
    v20 = 0;
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    bundlePath2 = [(DMCApplicationProxy *)self bundlePath];
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v6 = [mEMORY[0x277D262A0] getIsBundleBlocked:&v20 bundlePath:bundlePath2 outHash:&v19 outHashType:&v18 outError:&v17];
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
        bundlePath3 = [(DMCApplicationProxy *)self bundlePath];
        *buf = 138543618;
        v22 = bundlePath3;
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

- (unint64_t)misStateIncludingPending:(BOOL)pending
{
  pendingCopy = pending;
  v17 = *MEMORY[0x277D85DE8];
  bundlePath = [(DMCApplicationProxy *)self bundlePath];

  if (bundlePath)
  {
    bundlePath2 = [(DMCApplicationProxy *)self bundlePath];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{pendingCopy, *MEMORY[0x277D82AA0]}];
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
      bundleID = [(DMCApplicationProxy *)self bundleID];
      *buf = 138543362;
      v16 = bundleID;
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
  cachedManagedAppConfigurationInfo = [(DMCApplicationProxy *)self cachedManagedAppConfigurationInfo];

  if (cachedManagedAppConfigurationInfo)
  {
    cachedManagedAppConfigurationInfo2 = [(DMCApplicationProxy *)self cachedManagedAppConfigurationInfo];
LABEL_40:
    v23 = cachedManagedAppConfigurationInfo2;
    goto LABEL_41;
  }

  if (![(DMCApplicationProxy *)self _hasManagedRestrictions])
  {
    cachedManagedAppConfigurationInfo2 = DMCEnrollmentLocalizedString(@"DMC_MANAGED_APP_HAS_NO_RESTRICTIONS");
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
  bundleID = [(DMCApplicationProxy *)self bundleID];
  v5 = [v3 containsObject:bundleID];

  return v5;
}

- (BOOL)_isExcludedFromBackup
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  doNotBackupAppIDs = [mEMORY[0x277D262A0] doNotBackupAppIDs];

  bundleID = [(DMCApplicationProxy *)self bundleID];
  LOBYTE(mEMORY[0x277D262A0]) = [doNotBackupAppIDs containsObject:bundleID];

  return mEMORY[0x277D262A0];
}

- (BOOL)_isExcludedFromCloudSync
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25F68]] == 2;

  return v3;
}

- (BOOL)_isUnableToImportFromUnmanaged
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25FD0]] == 2;

  return v3;
}

- (BOOL)_isUnableToExportToUnmanaged
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25FC8]] == 2;

  return v3;
}

- (BOOL)_isUnableToUseCellData
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  copyAggregatePathRules = [MEMORY[0x277CD92C0] copyAggregatePathRules];
  v4 = [copyAggregatePathRules countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(copyAggregatePathRules);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        matchSigningIdentifier = [v8 matchSigningIdentifier];
        bundleID = [(DMCApplicationProxy *)self bundleID];
        v11 = [matchSigningIdentifier isEqualToString:bundleID];

        if (v11)
        {
          v12 = [v8 supportsCellularBehavior:0] ^ 1;
          goto LABEL_11;
        }
      }

      v5 = [copyAggregatePathRules countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  copyAggregatePathRules = [MEMORY[0x277CD92C0] copyAggregatePathRules];
  v4 = [copyAggregatePathRules countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(copyAggregatePathRules);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      matchSigningIdentifier = [v8 matchSigningIdentifier];
      bundleID = [(DMCApplicationProxy *)self bundleID];
      v11 = [matchSigningIdentifier isEqualToString:bundleID];

      if (v11)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [copyAggregatePathRules countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_managedAppAttribute:(id)attribute
{
  attributeCopy = attribute;
  attributesByAppID = [MEMORY[0x277D24678] attributesByAppID];
  bundleID = [(DMCApplicationProxy *)self bundleID];
  v7 = [attributesByAppID objectForKeyedSubscript:bundleID];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:attributeCopy];
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
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(DMCApplicationProxy *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  bundleID = [(DMCApplicationProxy *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  bundlePath = [(DMCApplicationProxy *)self bundlePath];
  [coderCopy encodeObject:bundlePath forKey:@"bundlePath"];

  signerID = [(DMCApplicationProxy *)self signerID];
  [coderCopy encodeObject:signerID forKey:@"signerID"];

  appIDEntitlement = [(DMCApplicationProxy *)self appIDEntitlement];
  [coderCopy encodeObject:appIDEntitlement forKey:@"appIDEntitlement"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCApplicationProxy isInstalled](self, "isInstalled")}];
  [coderCopy encodeObject:v9 forKey:@"isInstalled"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCApplicationProxy isBetaApp](self, "isBetaApp")}];
  [coderCopy encodeObject:v10 forKey:@"isBetaApp"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCApplicationProxy isUserApp](self, "isUserApp")}];
  [coderCopy encodeObject:v11 forKey:@"isUserApp"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[DMCApplicationProxy isBlocked](self, "isBlocked")}];
  [coderCopy encodeObject:v12 forKey:@"isBlocked"];

  misCDHash = [(DMCApplicationProxy *)self misCDHash];
  [coderCopy encodeObject:misCDHash forKey:@"misCDHash"];

  misHashType = [(DMCApplicationProxy *)self misHashType];
  [coderCopy encodeObject:misHashType forKey:@"misHashType"];

  cachedManagedAppConfigurationInfo = [(DMCApplicationProxy *)self cachedManagedAppConfigurationInfo];
  [coderCopy encodeObject:cachedManagedAppConfigurationInfo forKey:@"cachedManagedAppConfigurationInfo"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DMCApplicationProxy dataSource](self, "dataSource")}];
  [coderCopy encodeObject:v16 forKey:@"dataSource"];

  if (self->_dataSource != 1)
  {
    lsApp = [(DMCApplicationProxy *)self lsApp];
    [coderCopy encodeObject:lsApp forKey:@"lsApp"];
  }
}

- (DMCApplicationProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = DMCApplicationProxy;
  v5 = [(DMCApplicationProxy *)&v39 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"name"];
    name = v5->_name;
    v5->_name = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"bundlePath"];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"signerID"];
    signerID = v5->_signerID;
    v5->_signerID = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"appIDEntitlement"];
    appIDEntitlement = v5->_appIDEntitlement;
    v5->_appIDEntitlement = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isInstalled"];
    v5->_isInstalled = [v21 BOOLValue];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isBetaApp"];
    v5->_isBetaApp = [v22 BOOLValue];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isUserApp"];
    v5->_isUserApp = [v23 BOOLValue];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isBlocked"];
    v5->_isBlocked = [v24 BOOLValue];

    v25 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"misCDHash"];
    misCDHash = v5->_misCDHash;
    v5->_misCDHash = v26;

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"misHashType"];
    misHashType = v5->_misHashType;
    v5->_misHashType = v29;

    v31 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"cachedManagedAppConfigurationInfo"];
    cachedManagedAppConfigurationInfo = v5->_cachedManagedAppConfigurationInfo;
    v5->_cachedManagedAppConfigurationInfo = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataSource"];
    v5->_dataSource = [v34 unsignedIntegerValue];

    if (v5->_dataSource != 1)
    {
      v35 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"lsApp"];
      lsApp = v5->_lsApp;
      v5->_lsApp = v36;
    }
  }

  return v5;
}

@end