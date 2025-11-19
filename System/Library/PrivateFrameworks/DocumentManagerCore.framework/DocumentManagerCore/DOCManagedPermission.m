@interface DOCManagedPermission
+ (id)defaultPermission;
- (BOOL)adoptPersona:(id)a3 andPerformBlock:(id)a4;
- (BOOL)adoptPersonaFromDomain:(id)a3 andPerformBlock:(id)a4;
- (BOOL)adoptPersonaFromNode:(id)a3 andPerformBlock:(id)a4;
- (BOOL)adoptPersonaFromNodes:(id)a3 andPerformBlock:(id)a4;
- (BOOL)adoptPersonaliCloudPersonaAndPerformBlock:(id)a3;
- (BOOL)canAppWithBundleIdentifier:(id)a3 performAction:(unint64_t)a4 accountIdentifier:(id)a5;
- (BOOL)canAppWithBundleIdentifier:(id)a3 performAction:(unint64_t)a4 bundleIdentifier:(id)a5;
- (BOOL)canAppWithBundleIdentifier:(id)a3 performAction:(unint64_t)a4 node:(id)a5;
- (BOOL)canAppWithConfiguration:(id)a3 handleNode:(id)a4;
- (BOOL)canAppWithDataOwnerState:(unint64_t)a3 performAction:(unint64_t)a4 dataOwnerState:(unint64_t)a5;
- (BOOL)canAppWithDataOwnerState:(unint64_t)a3 performAction:(unint64_t)a4 node:(id)a5;
- (BOOL)canCopyNodes:(id)a3;
- (BOOL)canCopySourceIsContentManaged:(BOOL)a3;
- (BOOL)canCopyfromContainingBundleIdentifer:(id)a3;
- (BOOL)canHostAppPerformAction:(unint64_t)a3 accountIdentifier:(id)a4;
- (BOOL)canHostAppPerformAction:(unint64_t)a3 bundleIdentifier:(id)a4;
- (BOOL)canHostAppPerformAction:(unint64_t)a3 fileProviderDomain:(id)a4;
- (BOOL)canHostAppPerformAction:(unint64_t)a3 legacyPickerExtension:(id)a4;
- (BOOL)canHostAppPerformAction:(unint64_t)a3 targetNode:(id)a4;
- (BOOL)canItems:(id)a3 performAction:(unint64_t)a4 fileProviderDomain:(id)a5;
- (BOOL)canNode:(id)a3 performAction:(unint64_t)a4 node:(id)a5;
- (BOOL)hasAnyEffectiveRestrictions;
- (BOOL)isCurrentPersonaEnterprise;
- (DOCManagedPermission)init;
- (NSString)hostIdentifier;
- (id)allowedFileProviderBundleIdentifiersForHostBundleIdentifier:(id)a3;
- (id)appContainerBundleIDForFPItem:(id)a3;
- (id)defaultFileProviderForAppBundle:(id)a3;
- (id)personaStringFromNode:(id)a3;
- (unint64_t)dataOwnerStateForAccountIdentifier:(id)a3;
- (unint64_t)dataOwnerStateForBundleIdentifier:(id)a3;
- (unint64_t)dataOwnerStateForConfiguration:(id)a3;
- (unint64_t)dataOwnerStateForFPDomain:(id)a3;
- (unint64_t)dataOwnerStateForItem:(id)a3;
- (unint64_t)dataOwnerStateForNode:(id)a3;
- (unint64_t)dataOwnerStateForNodes:(id)a3;
- (unint64_t)dataOwnerStateForiCloudDomain:(id)a3;
- (void)_loadSharedConnectionValues;
- (void)cachePersonaStringForProviders:(id)a3;
- (void)cleanAppContainerBundleIDCache;
- (void)dealloc;
- (void)queueFileDataForAcceptance:(id)a3 originalFileName:(id)a4 forBundleID:(id)a5 completion:(id)a6;
- (void)resetAllCachedPermissions;
- (void)setHostIdentifier:(id)a3;
@end

@implementation DOCManagedPermission

uint64_t __41__DOCManagedPermission_defaultPermission__block_invoke()
{
  defaultPermission_manager = objc_alloc_init(DOCManagedPermission);

  return MEMORY[0x2821F96F8]();
}

- (DOCManagedPermission)init
{
  v9.receiver = self;
  v9.super_class = DOCManagedPermission;
  v2 = [(DOCManagedPermission *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_hostAccountDataOwnerState = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(DOCManagedPermission *)v3 setCache:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
    [(DOCManagedPermission *)v3 setAppContainerIDCache:v5];

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(DOCManagedPermission *)v3 setPersonaStringForDomainID:v6];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v3 selector:sel_resetAllCachedPermissions name:*MEMORY[0x277D25CA0] object:0];
    [v7 addObserver:v3 selector:sel_resetAllCachedPermissions name:*MEMORY[0x277D26120] object:0];
    [v7 addObserver:v3 selector:sel_resetAllCachedPermissions name:*MEMORY[0x277D26118] object:0];
  }

  return v3;
}

+ (id)defaultPermission
{
  if (defaultPermission_onceToken != -1)
  {
    +[DOCManagedPermission defaultPermission];
  }

  v3 = defaultPermission_manager;

  return v3;
}

- (NSString)hostIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_hostIdentifier;
  objc_sync_exit(v2);

  return v3;
}

- (void)_loadSharedConnectionValues
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_didLoadSharedConnectionValues)
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    obj->_mayOpenFromManagedToUnmanaged = [v3 mayOpenFromManagedToUnmanaged];
    obj->_mayOpenFromUnmanagedToManaged = [v3 mayOpenFromUnmanagedToManaged];
    obj->_isManagedAppsCloudSyncDisallowed = [v3 BOOLRestrictionForFeature:*MEMORY[0x277D25F68]] == 2;
    obj->_isUSBAccessAllowed = [v3 BOOLRestrictionForFeature:*MEMORY[0x277D260B8]] != 2;
    obj->_isNetworkDriveAccessInFilesAllowed = [v3 isNetworkDriveAccessInFilesAllowed];
    obj->_isLocalStorageAllowed = [v3 isLocalStorageAllowed];
    obj->_hasOpenInRestrictions = [v3 isOpenInRestrictionInEffect];
    obj->_didLoadSharedConnectionValues = 1;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (BOOL)hasAnyEffectiveRestrictions
{
  if ([(DOCManagedPermission *)self hasOpenInRestrictions]|| [(DOCManagedPermission *)self isManagedAppsCloudSyncDisallowed]|| ![(DOCManagedPermission *)self isUSBAccessAllowed]|| ![(DOCManagedPermission *)self isNetworkDriveAllowed])
  {
    return 1;
  }

  else
  {
    return ![(DOCManagedPermission *)self isLocalStorageAllowed];
  }
}

- (void)resetAllCachedPermissions
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(DOCManagedPermission *)obj cache];
  [v2 removeAllObjects];

  obj->_didLoadSharedConnectionValues = 0;
  objc_sync_exit(obj);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*MEMORY[0x277D25CA0]];
  [v3 removeObserver:*MEMORY[0x277D26120]];
  [v3 removeObserver:*MEMORY[0x277D26118]];

  v4.receiver = self;
  v4.super_class = DOCManagedPermission;
  [(DOCManagedPermission *)&v4 dealloc];
}

- (void)setHostIdentifier:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  hostIdentifier = v6->_hostIdentifier;
  if (!hostIdentifier || ![(NSString *)hostIdentifier isEqualToString:v5])
  {
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 bundleIdentifier];

    if ((v6->_hostIdentifier == 0) | [@"com.apple.DocumentsApp" isEqualToString:v9] & 1 || (objc_msgSend(v5, "isEqualToString:", v9) & 1) == 0)
    {
      objc_storeStrong(&v6->_hostIdentifier, a3);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__DOCManagedPermission_setHostIdentifier___block_invoke;
      block[3] = &unk_278F9B408;
      block[4] = v6;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  objc_sync_exit(v6);
}

void __42__DOCManagedPermission_setHostIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"DOCManagedPermissionHostIdentifierDidChangeNotification" object:*(a1 + 32)];
}

- (BOOL)canHostAppPerformAction:(unint64_t)a3 fileProviderDomain:(id)a4
{
  v6 = a4;
  v7 = [(DOCManagedPermission *)self hostIdentifier];

  if (!v7)
  {
    [DOCManagedPermission canHostAppPerformAction:fileProviderDomain:];
  }

  v8 = [(DOCManagedPermission *)self hasAnyEffectiveRestrictions];
  v9 = v6;
  if (!v9 || objc_opt_class() == v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v9 length])
  {

    goto LABEL_10;
  }

  objc_opt_class();
  v10 = (objc_opt_isKindOfClass() & 1) != 0 && [v9 count] == 0;

  v11 = 1;
  if (!v10 && v8)
  {
    v13 = [v9 providerID];
    v14 = [@"com.apple.FileProvider.LocalStorage" isEqualToString:v13];

    if (v14)
    {
      v15 = [(DOCManagedPermission *)self isLocalStorageAllowed];
LABEL_17:
      v11 = v15;
      goto LABEL_11;
    }

    v16 = [v9 providerID];
    v17 = [@"com.apple.filesystems.UserFS.FileProvider" isEqualToString:v16];

    if (v17)
    {
      if (![(DOCManagedPermission *)self isUSBAccessAllowed])
      {
        v11 = 0;
        goto LABEL_11;
      }

      v18 = [(DOCManagedPermission *)self hostIdentifier];
      v19 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v18];

      v15 = [(DOCManagedPermission *)self canAppWithDataOwnerState:v19 performAction:a3 dataOwnerState:2];
      goto LABEL_17;
    }

    v20 = [(DOCManagedPermission *)self hostIdentifier];
    v21 = [@"com.apple.DocumentsApp" isEqualToString:v20];

    if ((v21 & 1) == 0)
    {
      if ([v9 isiCloudDriveProvider])
      {
        v22 = [(DOCManagedPermission *)self hostIdentifier];
        v23 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v22];

        v24 = [(DOCManagedPermission *)self dataOwnerStateForiCloudDomain:v9];
        v25 = [(DOCManagedPermission *)self isLocalStorageAllowed];
        v26 = [(DOCManagedPermission *)self isManagedAppsCloudSyncAllowed];
        v27 = [(DOCManagedPermission *)self canAppWithDataOwnerState:v23 performAction:a3 dataOwnerState:v24];
        v11 = !v25;
        if (v25 && v27)
        {
          v11 = v23 != 1 || v26;
        }
      }

      else
      {
        v28 = [v9 topLevelBundleIdentifier];
        v11 = [(DOCManagedPermission *)self canHostAppPerformAction:a3 bundleIdentifier:v28];
      }

      goto LABEL_11;
    }

LABEL_10:
    v11 = 1;
  }

LABEL_11:

  return v11 & 1;
}

- (BOOL)canHostAppPerformAction:(unint64_t)a3 targetNode:(id)a4
{
  v6 = a4;
  v7 = [(DOCManagedPermission *)self hostIdentifier];

  if (!v7)
  {
    [DOCManagedPermission canHostAppPerformAction:targetNode:];
  }

  v8 = [(DOCManagedPermission *)self hostIdentifier];
  v9 = [@"com.apple.DocumentsApp" isEqualToString:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [(DOCManagedPermission *)self hostIdentifier];
    v12 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v11];

    v10 = [(DOCManagedPermission *)self canAppWithDataOwnerState:v12 performAction:a3 node:v6];
  }

  return v10;
}

- (BOOL)canHostAppPerformAction:(unint64_t)a3 legacyPickerExtension:(id)a4
{
  v6 = a4;
  v7 = [(DOCManagedPermission *)self hostIdentifier];

  if (!v7)
  {
    [DOCManagedPermission canHostAppPerformAction:legacyPickerExtension:];
  }

  v8 = [v6 identifier];
  v9 = [(DOCManagedPermission *)self canHostAppPerformAction:a3 bundleIdentifier:v8];

  return v9;
}

- (BOOL)canHostAppPerformAction:(unint64_t)a3 bundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(DOCManagedPermission *)self hostIdentifier];

  if (!v7)
  {
    [DOCManagedPermission canHostAppPerformAction:bundleIdentifier:];
  }

  v8 = [(DOCManagedPermission *)self hostIdentifier];
  v9 = [(DOCManagedPermission *)self canAppWithBundleIdentifier:v8 performAction:a3 bundleIdentifier:v6];

  return v9;
}

- (BOOL)canHostAppPerformAction:(unint64_t)a3 accountIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(DOCManagedPermission *)self hostIdentifier];

  if (!v7)
  {
    [DOCManagedPermission canHostAppPerformAction:accountIdentifier:];
  }

  v8 = [(DOCManagedPermission *)self hostIdentifier];
  v9 = [(DOCManagedPermission *)self canAppWithBundleIdentifier:v8 performAction:a3 accountIdentifier:v6];

  return v9;
}

- (BOOL)canNode:(id)a3 performAction:(unint64_t)a4 node:(id)a5
{
  v8 = a5;
  v9 = [(DOCManagedPermission *)self dataOwnerStateForNode:a3];
  v10 = [(DOCManagedPermission *)self dataOwnerStateForNode:v8];

  return [(DOCManagedPermission *)self canAppWithDataOwnerState:v9 performAction:a4 dataOwnerState:v10];
}

- (BOOL)canItems:(id)a3 performAction:(unint64_t)a4 fileProviderDomain:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 firstObject];

  if (v10)
  {
    v11 = [v9 providerID];
    v12 = [@"com.apple.FileProvider.LocalStorage" isEqualToString:v11];

    if (v12)
    {
      v13 = [(DOCManagedPermission *)self isLocalStorageAllowed];
    }

    else
    {
      v15 = [v8 firstObject];
      v16 = [(DOCManagedPermission *)self dataOwnerStateForNode:v15];

      v13 = [(DOCManagedPermission *)self canAppWithDataOwnerState:v16 performAction:a4 dataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForFPDomain:v9]];
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)canAppWithDataOwnerState:(unint64_t)a3 performAction:(unint64_t)a4 node:(id)a5
{
  v8 = [(DOCManagedPermission *)self dataOwnerStateForNode:a5];

  return [(DOCManagedPermission *)self canAppWithDataOwnerState:a3 performAction:a4 dataOwnerState:v8];
}

- (BOOL)canAppWithConfiguration:(id)a3 handleNode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DOCManagedPermission *)self dataOwnerStateForConfiguration:v7];
  v9 = [(DOCManagedPermission *)self userActionForConfiguration:v7];

  LOBYTE(v7) = [(DOCManagedPermission *)self canAppWithDataOwnerState:v8 performAction:v9 node:v6];
  return v7;
}

- (BOOL)canAppWithBundleIdentifier:(id)a3 performAction:(unint64_t)a4 node:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (![(DOCManagedPermission *)self hasOpenInRestrictions])
  {
    goto LABEL_10;
  }

  v10 = v8;
  if (!v10 || objc_opt_class() == v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v10 length])
  {
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 count];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    if (([@"com.apple.DocumentsApp" isEqualToString:v10] & 1) == 0)
    {
      v12 = [(DOCManagedPermission *)self canAppWithDataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v10] performAction:a4 dataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForNode:v9]];
      goto LABEL_11;
    }
  }

LABEL_10:
  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)canAppWithBundleIdentifier:(id)a3 performAction:(unint64_t)a4 bundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (![(DOCManagedPermission *)self hasOpenInRestrictions])
  {
    goto LABEL_19;
  }

  v10 = v9;
  if (!v10 || objc_opt_class() == v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v10 length])
  {
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 count];

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v12 = v8;
    if (!v12 || objc_opt_class() == v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v12 length])
    {
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 count];

        if (!v13)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      if (([@"com.apple.DocumentsApp" isEqualToString:v12] & 1) == 0)
      {
        v14 = [(DOCManagedPermission *)self canAppWithDataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v12] performAction:a4 dataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v10]];
        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v14 = 1;
LABEL_20:

  return v14;
}

- (BOOL)canAppWithBundleIdentifier:(id)a3 performAction:(unint64_t)a4 accountIdentifier:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (![(DOCManagedPermission *)self hasOpenInRestrictions])
  {
    goto LABEL_19;
  }

  v10 = v9;
  if (!v10 || objc_opt_class() == v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v10 length])
  {
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 count];

      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    v12 = v8;
    if (!v12 || objc_opt_class() == v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v12 length])
    {
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 count];

        if (!v13)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      if (([@"com.apple.DocumentsApp" isEqualToString:v12] & 1) == 0)
      {
        v14 = [(DOCManagedPermission *)self canAppWithDataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v12] performAction:a4 dataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForAccountIdentifier:v10]];
        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v14 = 1;
LABEL_20:

  return v14;
}

- (BOOL)canAppWithDataOwnerState:(unint64_t)a3 performAction:(unint64_t)a4 dataOwnerState:(unint64_t)a5
{
  v7 = a3 == 1;
  v8 = a5 == 1;
  v9 = [(DOCManagedPermission *)self mayOpenFromManagedToUnmanaged];
  v10 = [(DOCManagedPermission *)self mayOpenFromUnmanagedToManaged];
  v11 = 1;
  if (v7 != v8 && (!v9 || !v10))
  {
    if (a4 == 2)
    {
      v12 = v8;
    }

    else
    {
      v12 = v7;
    }

    if (a4 == 1)
    {
      v13 = v8;
    }

    else
    {
      v13 = v7;
    }

    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    v11 = (v13 == 0) | v10 | v12;
    if ((v14 | v9) != 1)
    {
      v11 = 0;
    }

    if (!a4)
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (unint64_t)dataOwnerStateForNode:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v6 = [MEMORY[0x277D04700] appLibraryNodeForNode:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 appIdentifier];
      v9 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v8];
    }

    else
    {
      v10 = MEMORY[0x277CC6420];
      v11 = [v4 providerDomainID];
      v8 = [v10 providerDomainWithID:v11 cachePolicy:2 error:0];

      if (!v8)
      {
        v5 = 0;
        goto LABEL_10;
      }

      v9 = [(DOCManagedPermission *)self dataOwnerStateForFPDomain:v8];
    }

    v5 = v9;
LABEL_10:

    goto LABEL_11;
  }

  v5 = [(DOCManagedPermission *)self dataOwnerStateForItem:v4];
LABEL_11:

  return v5;
}

- (unint64_t)dataOwnerStateForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 providerID];
  if (([v5 hasPrefix:@"com.apple.CloudDocs.iCloudDriveFileProvider"] & 1) == 0 && (objc_msgSend(v5, "hasPrefix:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged") & 1) == 0 && !objc_msgSend(v5, "hasPrefix:", @"com.apple.CloudDocs.MobileDocumentsFileProvider"))
  {
    v10 = [v5 hasPrefix:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"];

    if (v10)
    {
      goto LABEL_5;
    }

    v11 = [v4 providerDomainID];
    v12 = [@"com.apple.FileProvider.LocalStorage" isEqualToString:v11];

    if (!v12)
    {
      v6 = [v4 providerID];
      goto LABEL_16;
    }

    v13 = [v4 parentItemIdentifier];
    v14 = v13;
    if (v13)
    {
      if ([v13 isEqualToString:*MEMORY[0x277CC6348]])
      {
        v15 = [v4 fp_appContainerBundleIdentifier];
        goto LABEL_19;
      }

      if ([(DOCManagedPermission *)self hasAnyEffectiveRestrictions])
      {
        v15 = [(DOCManagedPermission *)self appContainerBundleIDForFPItem:v4];
LABEL_19:
        v6 = v15;
        if (v6)
        {
          if (objc_opt_class() != v6)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v6 length])
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [v6 count];

                if (!v16)
                {
                  goto LABEL_28;
                }
              }

              else
              {
              }

LABEL_16:
              v7 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v6];
              goto LABEL_7;
            }
          }
        }

LABEL_28:
        v8 = 2;
        goto LABEL_9;
      }
    }

    v6 = 0;
    goto LABEL_28;
  }

LABEL_5:
  v6 = [MEMORY[0x277CC6420] providerDomainForItem:v4 cachePolicy:3 error:0];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v7 = [(DOCManagedPermission *)self dataOwnerStateForiCloudDomain:v6];
LABEL_7:
  v8 = v7;
LABEL_9:

  return v8;
}

- (unint64_t)dataOwnerStateForNodes:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 firstObject];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v20 + 1) + 8 * i) providerDomainID];
          v13 = [v6 providerDomainID];
          v14 = [v12 isEqual:v13];

          if ((v14 & 1) == 0)
          {
            v17 = docPersonaLogHandle;
            if (!docPersonaLogHandle)
            {
              DOCInitLogging();
              v17 = docPersonaLogHandle;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [DOCManagedPermission dataOwnerStateForNodes:];
            }

            goto LABEL_21;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    v16 = [(DOCManagedPermission *)self dataOwnerStateForNode:v6];
  }

  else
  {
    v15 = docPersonaLogHandle;
    if (!docPersonaLogHandle)
    {
      DOCInitLogging();
      v15 = docPersonaLogHandle;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [DOCManagedPermission dataOwnerStateForNodes:];
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (unint64_t)dataOwnerStateForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (!v4 || objc_opt_class() == v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v4 length])
  {

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 count];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = [(DOCManagedPermission *)self hostIdentifier];
  if ([v4 isEqualToString:v8])
  {
    v9 = [(DOCManagedPermission *)self hostAccountDataOwnerState];

    if (v9)
    {
      v6 = [(DOCManagedPermission *)self hostAccountDataOwnerState];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v10 = [(DOCManagedPermission *)self cache];
  v11 = containingBundleForBundle(v4, v10);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v4;
  }

  v14 = v13;

  v15 = [MEMORY[0x277D262A0] sharedConnection];
  v16 = [v15 isAppManaged:v14];

  if (v16)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

LABEL_10:
  return v6;
}

- (unint64_t)dataOwnerStateForFPDomain:(id)a3
{
  v4 = a3;
  if ([v4 isiCloudDriveProvider])
  {
    v5 = [(DOCManagedPermission *)self dataOwnerStateForiCloudDomain:v4];
  }

  else
  {
    v6 = [v4 topLevelBundleIdentifier];

    v5 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v6];
    v4 = v6;
  }

  return v5;
}

- (unint64_t)dataOwnerStateForiCloudDomain:(id)a3
{
  v3 = a3;
  if (([v3 isiCloudDriveProvider] & 1) == 0)
  {
    [DOCManagedPermission dataOwnerStateForiCloudDomain:];
  }

  if ([v3 isEnterpriseDomain])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (unint64_t)dataOwnerStateForAccountIdentifier:(id)a3
{
  v4 = a3;
  if (!v4 || objc_opt_class() == v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v4 length])
  {
    v6 = 2;
    v7 = v4;
LABEL_18:

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  v5 = [v4 count];

  if (v5)
  {
LABEL_10:
    if (!self->_accountStore)
    {
      v8 = objc_alloc_init(MEMORY[0x277CB8F48]);
      accountStore = self->_accountStore;
      self->_accountStore = v8;
    }

    v10 = [v4 componentsSeparatedByString:@"."];
    v7 = [v10 firstObject];

    v11 = [(ACAccountStore *)self->_accountStore accountWithIdentifier:v7];
    v12 = v11;
    if (v11)
    {
      if ([v11 aa_isManagedAppleID])
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 2;
LABEL_19:

  return v6;
}

- (unint64_t)dataOwnerStateForConfiguration:(id)a3
{
  v4 = a3;
  if ([v4 isContentManaged])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 hostIdentifier];
    v5 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v6];
  }

  return v5;
}

- (id)defaultFileProviderForAppBundle:(id)a3
{
  v4 = a3;
  v5 = [(DOCManagedPermission *)self cache];
  v6 = containingBundleForBundle(v4, v5);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  v10 = [MEMORY[0x277D262A0] sharedConnection];
  v11 = [v10 isAppManaged:v9];

  if (v11)
  {
    v12 = [MEMORY[0x277D262A0] sharedConnection];
    v13 = [v12 objectRestrictionForFeature:@"MCFeatureManagedAppsDefaultFileProviderAppBundleID"];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)queueFileDataForAcceptance:(id)a3 originalFileName:(id)a4 forBundleID:(id)a5 completion:(id)a6
{
  v9 = MEMORY[0x277D262A0];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 sharedConnection];
  [v14 queueFileDataForAcceptance:v13 originalFileName:v12 forBundleID:v11 completion:v10];
}

- (BOOL)canCopyfromContainingBundleIdentifer:(id)a3
{
  v4 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:a3]== 1;

  return [(DOCManagedPermission *)self canCopySourceIsContentManaged:v4];
}

- (BOOL)canCopyNodes:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(DOCManagedPermission *)self hasOpenInRestrictions]&& ![(DOCManagedPermission *)self mayOpenFromManagedToUnmanaged])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (-[DOCManagedPermission dataOwnerStateForNode:](self, "dataOwnerStateForNode:", v11, v16) == 1 || ([v11 isAppContainer] & 1) != 0)
          {
LABEL_18:
            v5 = 0;
            goto LABEL_20;
          }

          v12 = [v11 providerDomainID];
          if ([v12 isEqualToString:@"com.apple.FileProvider.LocalStorage"])
          {
            v13 = [v11 isAppContainer];

            if (v13)
            {
              goto LABEL_18;
            }
          }

          else
          {
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v5 = 1;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_20:
  }

  else
  {
    v5 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)canCopySourceIsContentManaged:(BOOL)a3
{
  if ([(DOCManagedPermission *)self hasOpenInRestrictions])
  {
    return [(DOCManagedPermission *)self mayOpenFromManagedToUnmanaged]|| !a3;
  }

  else
  {
    return 1;
  }
}

- (id)appContainerBundleIDForFPItem:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DOCManagedPermission *)self appContainerIDCache];
  v6 = [v4 parentItemID];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(DOCManagedPermission *)self appContainerIDCache];
    v10 = [v4 itemID];
    v35 = [v9 objectForKey:v10];

    v11 = v35;
    if (v35)
    {
      v8 = v35;
    }

    else
    {
      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = __Block_byref_object_copy__4;
      v51 = __Block_byref_object_dispose__4;
      v52 = 0;
      v12 = dispatch_semaphore_create(0);
      v13 = [MEMORY[0x277CC6408] defaultManager];
      v14 = [v4 itemID];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __54__DOCManagedPermission_appContainerBundleIDForFPItem___block_invoke;
      v44[3] = &unk_278F9BB80;
      v46 = &v47;
      dsema = v12;
      v45 = dsema;
      [v13 fetchParentsForItemID:v14 recursively:1 completionHandler:v44];

      v15 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(dsema, v15);
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v16 = [v48[5] reverseObjectEnumerator];
      v8 = [v16 countByEnumeratingWithState:&v40 objects:v54 count:16];
      if (v8)
      {
        v17 = *v41;
LABEL_7:
        v18 = 0;
        while (1)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v16);
          }

          v19 = *(*(&v40 + 1) + 8 * v18);
          v20 = [v19 fp_appContainerBundleIdentifier];
          v21 = v20 == 0;

          if (!v21)
          {
            break;
          }

          if (v8 == ++v18)
          {
            v8 = [v16 countByEnumeratingWithState:&v40 objects:v54 count:16];
            if (v8)
            {
              goto LABEL_7;
            }

            goto LABEL_25;
          }
        }

        v8 = [v19 fp_appContainerBundleIdentifier];

        if (!v8)
        {
          goto LABEL_26;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v22 = v48[5];
        v23 = [v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
        if (v23)
        {
          v24 = *v37;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v36 + 1) + 8 * i);
              if (([v26 isRootItem] & 1) == 0)
              {
                v27 = [(DOCManagedPermission *)self appContainerIDCache];
                v28 = [v26 itemID];
                [v27 setObject:v8 forKey:v28];
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
          }

          while (v23);
        }

        v29 = [(DOCManagedPermission *)self appContainerIDCache];
        v30 = [v4 itemID];
        [v29 setObject:v8 forKey:v30];

        v16 = [(DOCManagedPermission *)self appContainerIDCache];
        v31 = [v4 parentItemID];
        [v16 setObject:v8 forKey:v31];
      }

LABEL_25:

LABEL_26:
      _Block_object_dispose(&v47, 8);

      v11 = 0;
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v8;
}

void __54__DOCManagedPermission_appContainerBundleIDForFPItem___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)cleanAppContainerBundleIDCache
{
  v2 = [(DOCManagedPermission *)self appContainerIDCache];
  [v2 removeAllObjects];
}

- (id)allowedFileProviderBundleIdentifiersForHostBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([(DOCManagedPermission *)self hasAnyEffectiveRestrictions])
  {
    v5 = +[DOCManagedPermission defaultPermission];
    [v5 setHostIdentifier:v4];

    v6 = MEMORY[0x277CC6420];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __84__DOCManagedPermission_allowedFileProviderBundleIdentifiersForHostBundleIdentifier___block_invoke;
    v13 = &unk_278F9BBA8;
    v14 = v4;
    v15 = self;
    v7 = [v6 allowedFileProviderBundleIdentifiersFiltered:&v10];
    v8 = [v7 copy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __84__DOCManagedPermission_allowedFileProviderBundleIdentifiersForHostBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isAvailableSystemWide] & 1) != 0 || (objc_msgSend(v3, "topLevelBundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *(a1 + 32)), v4, v5))
  {
    v6 = [*(a1 + 40) canHostAppPerformAction:0 fileProviderDomain:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)adoptPersonaFromNode:(id)a3 andPerformBlock:(id)a4
{
  v6 = a4;
  v7 = [(DOCManagedPermission *)self personaStringFromNode:a3];
  LOBYTE(self) = [(DOCManagedPermission *)self adoptPersona:v7 andPerformBlock:v6];

  return self;
}

- (BOOL)adoptPersonaFromNodes:(id)a3 andPerformBlock:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v23 = self;
    v8 = [v6 firstObject];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v24 + 1) + 8 * i) providerDomainID];
          v15 = [v8 providerDomainID];
          v16 = [v14 isEqual:v15];

          if ((v16 & 1) == 0)
          {
            v19 = docPersonaLogHandle;
            if (!docPersonaLogHandle)
            {
              DOCInitLogging();
              v19 = docPersonaLogHandle;
            }

            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [DOCManagedPermission adoptPersonaFromNodes:andPerformBlock:];
            }

            goto LABEL_21;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    v20 = [(DOCManagedPermission *)v23 personaStringFromNode:v8];
    v18 = [(DOCManagedPermission *)v23 adoptPersona:v20 andPerformBlock:v7];
  }

  else
  {
    v17 = docPersonaLogHandle;
    if (!docPersonaLogHandle)
    {
      DOCInitLogging();
      v17 = docPersonaLogHandle;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [DOCManagedPermission adoptPersonaFromNodes:andPerformBlock:];
    }

    v7[2](v7);
    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)adoptPersonaFromDomain:(id)a3 andPerformBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 personaIdentifier];
  LOBYTE(self) = [(DOCManagedPermission *)self adoptPersona:v7 andPerformBlock:v6];

  return self;
}

- (BOOL)adoptPersonaliCloudPersonaAndPerformBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DOCManagedPermission *)v5 personaStringForDomainID];
  v7 = FPIsCloudDocsWithFPFSEnabled();
  v8 = DOCDocumentSourceIdentifierICloudFPFS;
  if (!v7)
  {
    v8 = DOCDocumentSourceIdentifierICloudFPv2;
  }

  v9 = *v8;
  v10 = [v6 objectForKeyedSubscript:v9];

  v11 = [(DOCManagedPermission *)v5 adoptPersona:v10 andPerformBlock:v4];
  objc_sync_exit(v5);

  return v11;
}

- (BOOL)isCurrentPersonaEnterprise
{
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 currentPersona];
  v4 = [v3 isEnterprisePersona];

  return v4;
}

- (BOOL)adoptPersona:(id)a3 andPerformBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D77BF8] sharedManager];
  v8 = [v7 currentPersona];

  if ([v8 isSystemPersona])
  {
    v21 = 0;
    v9 = [v8 copyCurrentPersonaContextWithError:&v21];
    v10 = v21;
    v11 = docPersonaLogHandle;
    if (!docPersonaLogHandle)
    {
      DOCInitLogging();
      v11 = docPersonaLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_249340000, v11, OS_LOG_TYPE_DEFAULT, "Copying current Persona into context. Persona: (%@)", buf, 0xCu);
    }

    v12 = docPersonaLogHandle;
    if (v10)
    {
      if (!docPersonaLogHandle)
      {
        DOCInitLogging();
        v12 = docPersonaLogHandle;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DOCManagedPermission adoptPersona:andPerformBlock:];
      }
    }

    else
    {
      if (!docPersonaLogHandle)
      {
        DOCInitLogging();
        v12 = docPersonaLogHandle;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v5;
        _os_log_impl(&dword_249340000, v12, OS_LOG_TYPE_DEFAULT, "Generating and Restoring Persona from String. Persona String: (%@)", buf, 0xCu);
      }

      v15 = [v8 generateAndRestorePersonaContextWithIdentityString:v5];
      v16 = docPersonaLogHandle;
      if (v15)
      {
        v10 = v15;
        if (!docPersonaLogHandle)
        {
          DOCInitLogging();
          v16 = docPersonaLogHandle;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [DOCManagedPermission adoptPersona:andPerformBlock:];
        }
      }

      else
      {
        if (!docPersonaLogHandle)
        {
          DOCInitLogging();
          v16 = docPersonaLogHandle;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_249340000, v16, OS_LOG_TYPE_DEFAULT, "Executing Block with temporary Persona", buf, 2u);
        }

        v6[2](v6);
        v19 = docPersonaLogHandle;
        if (!docPersonaLogHandle)
        {
          DOCInitLogging();
          v19 = docPersonaLogHandle;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v23 = v9;
          _os_log_impl(&dword_249340000, v19, OS_LOG_TYPE_DEFAULT, "Restoring Persona from context : %@", buf, 0xCu);
        }

        v10 = [v8 restorePersonaWithSavedPersonaContext:v9];
        if (!v10)
        {
          v14 = 1;
          goto LABEL_26;
        }

        v20 = docPersonaLogHandle;
        if (!docPersonaLogHandle)
        {
          DOCInitLogging();
          v20 = docPersonaLogHandle;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [DOCManagedPermission adoptPersona:andPerformBlock:];
        }
      }
    }

    v6[2](v6);
    v14 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v13 = docPersonaLogHandle;
  if (!docPersonaLogHandle)
  {
    DOCInitLogging();
    v13 = docPersonaLogHandle;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_249340000, v13, OS_LOG_TYPE_DEFAULT, "App already has a persona that's not system, just execute the block. Persona: (%@)", buf, 0xCu);
  }

  v6[2](v6);
  v14 = 0;
LABEL_27:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)personaStringFromNode:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(DOCManagedPermission *)v5 personaStringForDomainID];
  v7 = [v4 providerDomainID];
  v8 = [v6 objectForKeyedSubscript:v7];

  objc_sync_exit(v5);
  if (!v8)
  {
    v9 = docPersonaLogHandle;
    if (!docPersonaLogHandle)
    {
      DOCInitLogging();
      v9 = docPersonaLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_249340000, v9, OS_LOG_TYPE_DEFAULT, "No cached persona string, trying to fetch domain instead", v14, 2u);
    }

    v10 = [v4 cachedDomain];
    v11 = v10;
    if (v10)
    {
      v8 = [v10 personaIdentifier];
    }

    else
    {
      v12 = docPersonaLogHandle;
      if (!docPersonaLogHandle)
      {
        DOCInitLogging();
        v12 = docPersonaLogHandle;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [DOCManagedPermission personaStringFromNode:];
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)cachePersonaStringForProviders:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 personaIdentifier];
        v12 = [v10 identifier];
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = self;
  objc_sync_enter(v13);
  [(DOCManagedPermission *)v13 setPersonaStringForDomainID:v5];
  objc_sync_exit(v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)canHostAppPerformAction:fileProviderDomain:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)canHostAppPerformAction:targetNode:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)canHostAppPerformAction:legacyPickerExtension:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)canHostAppPerformAction:bundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)canHostAppPerformAction:accountIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)dataOwnerStateForiCloudDomain:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)adoptPersona:andPerformBlock:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_249340000, v0, v1, "Could not copy current persona contex: Persona: (%@) Error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)adoptPersona:andPerformBlock:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_249340000, v0, v1, "Could not adopt persona: (%@) Error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)adoptPersona:andPerformBlock:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_249340000, v0, v1, "Could not restore current persona contex : Context: (%@) Error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end