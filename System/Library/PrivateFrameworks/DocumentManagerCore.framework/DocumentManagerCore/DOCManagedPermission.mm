@interface DOCManagedPermission
+ (id)defaultPermission;
- (BOOL)adoptPersona:(id)persona andPerformBlock:(id)block;
- (BOOL)adoptPersonaFromDomain:(id)domain andPerformBlock:(id)block;
- (BOOL)adoptPersonaFromNode:(id)node andPerformBlock:(id)block;
- (BOOL)adoptPersonaFromNodes:(id)nodes andPerformBlock:(id)block;
- (BOOL)adoptPersonaliCloudPersonaAndPerformBlock:(id)block;
- (BOOL)canAppWithBundleIdentifier:(id)identifier performAction:(unint64_t)action accountIdentifier:(id)accountIdentifier;
- (BOOL)canAppWithBundleIdentifier:(id)identifier performAction:(unint64_t)action bundleIdentifier:(id)bundleIdentifier;
- (BOOL)canAppWithBundleIdentifier:(id)identifier performAction:(unint64_t)action node:(id)node;
- (BOOL)canAppWithConfiguration:(id)configuration handleNode:(id)node;
- (BOOL)canAppWithDataOwnerState:(unint64_t)state performAction:(unint64_t)action dataOwnerState:(unint64_t)ownerState;
- (BOOL)canAppWithDataOwnerState:(unint64_t)state performAction:(unint64_t)action node:(id)node;
- (BOOL)canCopyNodes:(id)nodes;
- (BOOL)canCopySourceIsContentManaged:(BOOL)managed;
- (BOOL)canCopyfromContainingBundleIdentifer:(id)identifer;
- (BOOL)canHostAppPerformAction:(unint64_t)action accountIdentifier:(id)identifier;
- (BOOL)canHostAppPerformAction:(unint64_t)action bundleIdentifier:(id)identifier;
- (BOOL)canHostAppPerformAction:(unint64_t)action fileProviderDomain:(id)domain;
- (BOOL)canHostAppPerformAction:(unint64_t)action legacyPickerExtension:(id)extension;
- (BOOL)canHostAppPerformAction:(unint64_t)action targetNode:(id)node;
- (BOOL)canItems:(id)items performAction:(unint64_t)action fileProviderDomain:(id)domain;
- (BOOL)canNode:(id)node performAction:(unint64_t)action node:(id)a5;
- (BOOL)hasAnyEffectiveRestrictions;
- (BOOL)isCurrentPersonaEnterprise;
- (DOCManagedPermission)init;
- (NSString)hostIdentifier;
- (id)allowedFileProviderBundleIdentifiersForHostBundleIdentifier:(id)identifier;
- (id)appContainerBundleIDForFPItem:(id)item;
- (id)defaultFileProviderForAppBundle:(id)bundle;
- (id)personaStringFromNode:(id)node;
- (unint64_t)dataOwnerStateForAccountIdentifier:(id)identifier;
- (unint64_t)dataOwnerStateForBundleIdentifier:(id)identifier;
- (unint64_t)dataOwnerStateForConfiguration:(id)configuration;
- (unint64_t)dataOwnerStateForFPDomain:(id)domain;
- (unint64_t)dataOwnerStateForItem:(id)item;
- (unint64_t)dataOwnerStateForNode:(id)node;
- (unint64_t)dataOwnerStateForNodes:(id)nodes;
- (unint64_t)dataOwnerStateForiCloudDomain:(id)domain;
- (void)_loadSharedConnectionValues;
- (void)cachePersonaStringForProviders:(id)providers;
- (void)cleanAppContainerBundleIDCache;
- (void)dealloc;
- (void)queueFileDataForAcceptance:(id)acceptance originalFileName:(id)name forBundleID:(id)d completion:(id)completion;
- (void)resetAllCachedPermissions;
- (void)setHostIdentifier:(id)identifier;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_resetAllCachedPermissions name:*MEMORY[0x277D25CA0] object:0];
    [defaultCenter addObserver:v3 selector:sel_resetAllCachedPermissions name:*MEMORY[0x277D26120] object:0];
    [defaultCenter addObserver:v3 selector:sel_resetAllCachedPermissions name:*MEMORY[0x277D26118] object:0];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_hostIdentifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_loadSharedConnectionValues
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_didLoadSharedConnectionValues)
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    obj->_mayOpenFromManagedToUnmanaged = [mEMORY[0x277D262A0] mayOpenFromManagedToUnmanaged];
    obj->_mayOpenFromUnmanagedToManaged = [mEMORY[0x277D262A0] mayOpenFromUnmanagedToManaged];
    obj->_isManagedAppsCloudSyncDisallowed = [mEMORY[0x277D262A0] BOOLRestrictionForFeature:*MEMORY[0x277D25F68]] == 2;
    obj->_isUSBAccessAllowed = [mEMORY[0x277D262A0] BOOLRestrictionForFeature:*MEMORY[0x277D260B8]] != 2;
    obj->_isNetworkDriveAccessInFilesAllowed = [mEMORY[0x277D262A0] isNetworkDriveAccessInFilesAllowed];
    obj->_isLocalStorageAllowed = [mEMORY[0x277D262A0] isLocalStorageAllowed];
    obj->_hasOpenInRestrictions = [mEMORY[0x277D262A0] isOpenInRestrictionInEffect];
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
  cache = [(DOCManagedPermission *)obj cache];
  [cache removeAllObjects];

  obj->_didLoadSharedConnectionValues = 0;
  objc_sync_exit(obj);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:*MEMORY[0x277D25CA0]];
  [defaultCenter removeObserver:*MEMORY[0x277D26120]];
  [defaultCenter removeObserver:*MEMORY[0x277D26118]];

  v4.receiver = self;
  v4.super_class = DOCManagedPermission;
  [(DOCManagedPermission *)&v4 dealloc];
}

- (void)setHostIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hostIdentifier = selfCopy->_hostIdentifier;
  if (!hostIdentifier || ![(NSString *)hostIdentifier isEqualToString:identifierCopy])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if ((selfCopy->_hostIdentifier == 0) | [@"com.apple.DocumentsApp" isEqualToString:bundleIdentifier] & 1 || (objc_msgSend(identifierCopy, "isEqualToString:", bundleIdentifier) & 1) == 0)
    {
      objc_storeStrong(&selfCopy->_hostIdentifier, identifier);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__DOCManagedPermission_setHostIdentifier___block_invoke;
      block[3] = &unk_278F9B408;
      block[4] = selfCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  objc_sync_exit(selfCopy);
}

void __42__DOCManagedPermission_setHostIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"DOCManagedPermissionHostIdentifierDidChangeNotification" object:*(a1 + 32)];
}

- (BOOL)canHostAppPerformAction:(unint64_t)action fileProviderDomain:(id)domain
{
  domainCopy = domain;
  hostIdentifier = [(DOCManagedPermission *)self hostIdentifier];

  if (!hostIdentifier)
  {
    [DOCManagedPermission canHostAppPerformAction:fileProviderDomain:];
  }

  hasAnyEffectiveRestrictions = [(DOCManagedPermission *)self hasAnyEffectiveRestrictions];
  v9 = domainCopy;
  if (!v9 || objc_opt_class() == v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v9 length])
  {

    goto LABEL_10;
  }

  objc_opt_class();
  v10 = (objc_opt_isKindOfClass() & 1) != 0 && [v9 count] == 0;

  v11 = 1;
  if (!v10 && hasAnyEffectiveRestrictions)
  {
    providerID = [v9 providerID];
    v14 = [@"com.apple.FileProvider.LocalStorage" isEqualToString:providerID];

    if (v14)
    {
      isLocalStorageAllowed = [(DOCManagedPermission *)self isLocalStorageAllowed];
LABEL_17:
      v11 = isLocalStorageAllowed;
      goto LABEL_11;
    }

    providerID2 = [v9 providerID];
    v17 = [@"com.apple.filesystems.UserFS.FileProvider" isEqualToString:providerID2];

    if (v17)
    {
      if (![(DOCManagedPermission *)self isUSBAccessAllowed])
      {
        v11 = 0;
        goto LABEL_11;
      }

      hostIdentifier2 = [(DOCManagedPermission *)self hostIdentifier];
      v19 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:hostIdentifier2];

      isLocalStorageAllowed = [(DOCManagedPermission *)self canAppWithDataOwnerState:v19 performAction:action dataOwnerState:2];
      goto LABEL_17;
    }

    hostIdentifier3 = [(DOCManagedPermission *)self hostIdentifier];
    v21 = [@"com.apple.DocumentsApp" isEqualToString:hostIdentifier3];

    if ((v21 & 1) == 0)
    {
      if ([v9 isiCloudDriveProvider])
      {
        hostIdentifier4 = [(DOCManagedPermission *)self hostIdentifier];
        v23 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:hostIdentifier4];

        v24 = [(DOCManagedPermission *)self dataOwnerStateForiCloudDomain:v9];
        isLocalStorageAllowed2 = [(DOCManagedPermission *)self isLocalStorageAllowed];
        isManagedAppsCloudSyncAllowed = [(DOCManagedPermission *)self isManagedAppsCloudSyncAllowed];
        v27 = [(DOCManagedPermission *)self canAppWithDataOwnerState:v23 performAction:action dataOwnerState:v24];
        v11 = !isLocalStorageAllowed2;
        if (isLocalStorageAllowed2 && v27)
        {
          v11 = v23 != 1 || isManagedAppsCloudSyncAllowed;
        }
      }

      else
      {
        topLevelBundleIdentifier = [v9 topLevelBundleIdentifier];
        v11 = [(DOCManagedPermission *)self canHostAppPerformAction:action bundleIdentifier:topLevelBundleIdentifier];
      }

      goto LABEL_11;
    }

LABEL_10:
    v11 = 1;
  }

LABEL_11:

  return v11 & 1;
}

- (BOOL)canHostAppPerformAction:(unint64_t)action targetNode:(id)node
{
  nodeCopy = node;
  hostIdentifier = [(DOCManagedPermission *)self hostIdentifier];

  if (!hostIdentifier)
  {
    [DOCManagedPermission canHostAppPerformAction:targetNode:];
  }

  hostIdentifier2 = [(DOCManagedPermission *)self hostIdentifier];
  v9 = [@"com.apple.DocumentsApp" isEqualToString:hostIdentifier2];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    hostIdentifier3 = [(DOCManagedPermission *)self hostIdentifier];
    v12 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:hostIdentifier3];

    v10 = [(DOCManagedPermission *)self canAppWithDataOwnerState:v12 performAction:action node:nodeCopy];
  }

  return v10;
}

- (BOOL)canHostAppPerformAction:(unint64_t)action legacyPickerExtension:(id)extension
{
  extensionCopy = extension;
  hostIdentifier = [(DOCManagedPermission *)self hostIdentifier];

  if (!hostIdentifier)
  {
    [DOCManagedPermission canHostAppPerformAction:legacyPickerExtension:];
  }

  identifier = [extensionCopy identifier];
  v9 = [(DOCManagedPermission *)self canHostAppPerformAction:action bundleIdentifier:identifier];

  return v9;
}

- (BOOL)canHostAppPerformAction:(unint64_t)action bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  hostIdentifier = [(DOCManagedPermission *)self hostIdentifier];

  if (!hostIdentifier)
  {
    [DOCManagedPermission canHostAppPerformAction:bundleIdentifier:];
  }

  hostIdentifier2 = [(DOCManagedPermission *)self hostIdentifier];
  v9 = [(DOCManagedPermission *)self canAppWithBundleIdentifier:hostIdentifier2 performAction:action bundleIdentifier:identifierCopy];

  return v9;
}

- (BOOL)canHostAppPerformAction:(unint64_t)action accountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  hostIdentifier = [(DOCManagedPermission *)self hostIdentifier];

  if (!hostIdentifier)
  {
    [DOCManagedPermission canHostAppPerformAction:accountIdentifier:];
  }

  hostIdentifier2 = [(DOCManagedPermission *)self hostIdentifier];
  v9 = [(DOCManagedPermission *)self canAppWithBundleIdentifier:hostIdentifier2 performAction:action accountIdentifier:identifierCopy];

  return v9;
}

- (BOOL)canNode:(id)node performAction:(unint64_t)action node:(id)a5
{
  v8 = a5;
  v9 = [(DOCManagedPermission *)self dataOwnerStateForNode:node];
  v10 = [(DOCManagedPermission *)self dataOwnerStateForNode:v8];

  return [(DOCManagedPermission *)self canAppWithDataOwnerState:v9 performAction:action dataOwnerState:v10];
}

- (BOOL)canItems:(id)items performAction:(unint64_t)action fileProviderDomain:(id)domain
{
  itemsCopy = items;
  domainCopy = domain;
  firstObject = [itemsCopy firstObject];

  if (firstObject)
  {
    providerID = [domainCopy providerID];
    v12 = [@"com.apple.FileProvider.LocalStorage" isEqualToString:providerID];

    if (v12)
    {
      isLocalStorageAllowed = [(DOCManagedPermission *)self isLocalStorageAllowed];
    }

    else
    {
      firstObject2 = [itemsCopy firstObject];
      v16 = [(DOCManagedPermission *)self dataOwnerStateForNode:firstObject2];

      isLocalStorageAllowed = [(DOCManagedPermission *)self canAppWithDataOwnerState:v16 performAction:action dataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForFPDomain:domainCopy]];
    }

    v14 = isLocalStorageAllowed;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)canAppWithDataOwnerState:(unint64_t)state performAction:(unint64_t)action node:(id)node
{
  v8 = [(DOCManagedPermission *)self dataOwnerStateForNode:node];

  return [(DOCManagedPermission *)self canAppWithDataOwnerState:state performAction:action dataOwnerState:v8];
}

- (BOOL)canAppWithConfiguration:(id)configuration handleNode:(id)node
{
  nodeCopy = node;
  configurationCopy = configuration;
  v8 = [(DOCManagedPermission *)self dataOwnerStateForConfiguration:configurationCopy];
  v9 = [(DOCManagedPermission *)self userActionForConfiguration:configurationCopy];

  LOBYTE(configurationCopy) = [(DOCManagedPermission *)self canAppWithDataOwnerState:v8 performAction:v9 node:nodeCopy];
  return configurationCopy;
}

- (BOOL)canAppWithBundleIdentifier:(id)identifier performAction:(unint64_t)action node:(id)node
{
  identifierCopy = identifier;
  nodeCopy = node;
  if (![(DOCManagedPermission *)self hasOpenInRestrictions])
  {
    goto LABEL_10;
  }

  v10 = identifierCopy;
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
      v12 = [(DOCManagedPermission *)self canAppWithDataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v10] performAction:action dataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForNode:nodeCopy]];
      goto LABEL_11;
    }
  }

LABEL_10:
  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)canAppWithBundleIdentifier:(id)identifier performAction:(unint64_t)action bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (![(DOCManagedPermission *)self hasOpenInRestrictions])
  {
    goto LABEL_19;
  }

  v10 = bundleIdentifierCopy;
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

    v12 = identifierCopy;
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
        v14 = [(DOCManagedPermission *)self canAppWithDataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v12] performAction:action dataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v10]];
        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v14 = 1;
LABEL_20:

  return v14;
}

- (BOOL)canAppWithBundleIdentifier:(id)identifier performAction:(unint64_t)action accountIdentifier:(id)accountIdentifier
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  if (![(DOCManagedPermission *)self hasOpenInRestrictions])
  {
    goto LABEL_19;
  }

  v10 = accountIdentifierCopy;
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

    v12 = identifierCopy;
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
        v14 = [(DOCManagedPermission *)self canAppWithDataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:v12] performAction:action dataOwnerState:[(DOCManagedPermission *)self dataOwnerStateForAccountIdentifier:v10]];
        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v14 = 1;
LABEL_20:

  return v14;
}

- (BOOL)canAppWithDataOwnerState:(unint64_t)state performAction:(unint64_t)action dataOwnerState:(unint64_t)ownerState
{
  v7 = state == 1;
  v8 = ownerState == 1;
  mayOpenFromManagedToUnmanaged = [(DOCManagedPermission *)self mayOpenFromManagedToUnmanaged];
  mayOpenFromUnmanagedToManaged = [(DOCManagedPermission *)self mayOpenFromUnmanagedToManaged];
  v11 = 1;
  if (v7 != v8 && (!mayOpenFromManagedToUnmanaged || !mayOpenFromUnmanagedToManaged))
  {
    if (action == 2)
    {
      v12 = v8;
    }

    else
    {
      v12 = v7;
    }

    if (action == 1)
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

    v11 = (v13 == 0) | mayOpenFromUnmanagedToManaged | v12;
    if ((v14 | mayOpenFromManagedToUnmanaged) != 1)
    {
      v11 = 0;
    }

    if (!action)
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (unint64_t)dataOwnerStateForNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v6 = [MEMORY[0x277D04700] appLibraryNodeForNode:nodeCopy];
    v7 = v6;
    if (v6)
    {
      appIdentifier = [v6 appIdentifier];
      v9 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:appIdentifier];
    }

    else
    {
      v10 = MEMORY[0x277CC6420];
      providerDomainID = [nodeCopy providerDomainID];
      appIdentifier = [v10 providerDomainWithID:providerDomainID cachePolicy:2 error:0];

      if (!appIdentifier)
      {
        v5 = 0;
        goto LABEL_10;
      }

      v9 = [(DOCManagedPermission *)self dataOwnerStateForFPDomain:appIdentifier];
    }

    v5 = v9;
LABEL_10:

    goto LABEL_11;
  }

  v5 = [(DOCManagedPermission *)self dataOwnerStateForItem:nodeCopy];
LABEL_11:

  return v5;
}

- (unint64_t)dataOwnerStateForItem:(id)item
{
  itemCopy = item;
  providerID = [itemCopy providerID];
  if (([providerID hasPrefix:@"com.apple.CloudDocs.iCloudDriveFileProvider"] & 1) == 0 && (objc_msgSend(providerID, "hasPrefix:", @"com.apple.CloudDocs.iCloudDriveFileProviderManaged") & 1) == 0 && !objc_msgSend(providerID, "hasPrefix:", @"com.apple.CloudDocs.MobileDocumentsFileProvider"))
  {
    v10 = [providerID hasPrefix:@"com.apple.CloudDocs.MobileDocumentsFileProviderManaged"];

    if (v10)
    {
      goto LABEL_5;
    }

    providerDomainID = [itemCopy providerDomainID];
    v12 = [@"com.apple.FileProvider.LocalStorage" isEqualToString:providerDomainID];

    if (!v12)
    {
      providerID2 = [itemCopy providerID];
      goto LABEL_16;
    }

    parentItemIdentifier = [itemCopy parentItemIdentifier];
    v14 = parentItemIdentifier;
    if (parentItemIdentifier)
    {
      if ([parentItemIdentifier isEqualToString:*MEMORY[0x277CC6348]])
      {
        fp_appContainerBundleIdentifier = [itemCopy fp_appContainerBundleIdentifier];
        goto LABEL_19;
      }

      if ([(DOCManagedPermission *)self hasAnyEffectiveRestrictions])
      {
        fp_appContainerBundleIdentifier = [(DOCManagedPermission *)self appContainerBundleIDForFPItem:itemCopy];
LABEL_19:
        providerID2 = fp_appContainerBundleIdentifier;
        if (providerID2)
        {
          if (objc_opt_class() != providerID2)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [providerID2 length])
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = [providerID2 count];

                if (!v16)
                {
                  goto LABEL_28;
                }
              }

              else
              {
              }

LABEL_16:
              v7 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:providerID2];
              goto LABEL_7;
            }
          }
        }

LABEL_28:
        v8 = 2;
        goto LABEL_9;
      }
    }

    providerID2 = 0;
    goto LABEL_28;
  }

LABEL_5:
  providerID2 = [MEMORY[0x277CC6420] providerDomainForItem:itemCopy cachePolicy:3 error:0];
  if (!providerID2)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v7 = [(DOCManagedPermission *)self dataOwnerStateForiCloudDomain:providerID2];
LABEL_7:
  v8 = v7;
LABEL_9:

  return v8;
}

- (unint64_t)dataOwnerStateForNodes:(id)nodes
{
  v25 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v5 = nodesCopy;
  if (nodesCopy && [nodesCopy count])
  {
    firstObject = [v5 firstObject];
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

          providerDomainID = [*(*(&v20 + 1) + 8 * i) providerDomainID];
          providerDomainID2 = [firstObject providerDomainID];
          v14 = [providerDomainID isEqual:providerDomainID2];

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

    v16 = [(DOCManagedPermission *)self dataOwnerStateForNode:firstObject];
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

- (unint64_t)dataOwnerStateForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy || objc_opt_class() == identifierCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![identifierCopy length])
  {

LABEL_9:
    hostAccountDataOwnerState2 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [identifierCopy count];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  hostIdentifier = [(DOCManagedPermission *)self hostIdentifier];
  if ([identifierCopy isEqualToString:hostIdentifier])
  {
    hostAccountDataOwnerState = [(DOCManagedPermission *)self hostAccountDataOwnerState];

    if (hostAccountDataOwnerState)
    {
      hostAccountDataOwnerState2 = [(DOCManagedPermission *)self hostAccountDataOwnerState];
      goto LABEL_10;
    }
  }

  else
  {
  }

  cache = [(DOCManagedPermission *)self cache];
  v11 = containingBundleForBundle(identifierCopy, cache);
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = identifierCopy;
  }

  v14 = v13;

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v16 = [mEMORY[0x277D262A0] isAppManaged:v14];

  if (v16)
  {
    hostAccountDataOwnerState2 = 1;
  }

  else
  {
    hostAccountDataOwnerState2 = 2;
  }

LABEL_10:
  return hostAccountDataOwnerState2;
}

- (unint64_t)dataOwnerStateForFPDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isiCloudDriveProvider])
  {
    v5 = [(DOCManagedPermission *)self dataOwnerStateForiCloudDomain:domainCopy];
  }

  else
  {
    topLevelBundleIdentifier = [domainCopy topLevelBundleIdentifier];

    v5 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:topLevelBundleIdentifier];
    domainCopy = topLevelBundleIdentifier;
  }

  return v5;
}

- (unint64_t)dataOwnerStateForiCloudDomain:(id)domain
{
  domainCopy = domain;
  if (([domainCopy isiCloudDriveProvider] & 1) == 0)
  {
    [DOCManagedPermission dataOwnerStateForiCloudDomain:];
  }

  if ([domainCopy isEnterpriseDomain])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (unint64_t)dataOwnerStateForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy || objc_opt_class() == identifierCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![identifierCopy length])
  {
    v6 = 2;
    firstObject = identifierCopy;
LABEL_18:

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  v5 = [identifierCopy count];

  if (v5)
  {
LABEL_10:
    if (!self->_accountStore)
    {
      v8 = objc_alloc_init(MEMORY[0x277CB8F48]);
      accountStore = self->_accountStore;
      self->_accountStore = v8;
    }

    v10 = [identifierCopy componentsSeparatedByString:@"."];
    firstObject = [v10 firstObject];

    v11 = [(ACAccountStore *)self->_accountStore accountWithIdentifier:firstObject];
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

- (unint64_t)dataOwnerStateForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ([configurationCopy isContentManaged])
  {
    v5 = 1;
  }

  else
  {
    hostIdentifier = [configurationCopy hostIdentifier];
    v5 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:hostIdentifier];
  }

  return v5;
}

- (id)defaultFileProviderForAppBundle:(id)bundle
{
  bundleCopy = bundle;
  cache = [(DOCManagedPermission *)self cache];
  v6 = containingBundleForBundle(bundleCopy, cache);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = bundleCopy;
  }

  v9 = v8;

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v11 = [mEMORY[0x277D262A0] isAppManaged:v9];

  if (v11)
  {
    mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
    v13 = [mEMORY[0x277D262A0]2 objectRestrictionForFeature:@"MCFeatureManagedAppsDefaultFileProviderAppBundleID"];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)queueFileDataForAcceptance:(id)acceptance originalFileName:(id)name forBundleID:(id)d completion:(id)completion
{
  v9 = MEMORY[0x277D262A0];
  completionCopy = completion;
  dCopy = d;
  nameCopy = name;
  acceptanceCopy = acceptance;
  sharedConnection = [v9 sharedConnection];
  [sharedConnection queueFileDataForAcceptance:acceptanceCopy originalFileName:nameCopy forBundleID:dCopy completion:completionCopy];
}

- (BOOL)canCopyfromContainingBundleIdentifer:(id)identifer
{
  v4 = [(DOCManagedPermission *)self dataOwnerStateForBundleIdentifier:identifer]== 1;

  return [(DOCManagedPermission *)self canCopySourceIsContentManaged:v4];
}

- (BOOL)canCopyNodes:(id)nodes
{
  v21 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  if ([(DOCManagedPermission *)self hasOpenInRestrictions]&& ![(DOCManagedPermission *)self mayOpenFromManagedToUnmanaged])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = nodesCopy;
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

          providerDomainID = [v11 providerDomainID];
          if ([providerDomainID isEqualToString:@"com.apple.FileProvider.LocalStorage"])
          {
            isAppContainer = [v11 isAppContainer];

            if (isAppContainer)
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

- (BOOL)canCopySourceIsContentManaged:(BOOL)managed
{
  if ([(DOCManagedPermission *)self hasOpenInRestrictions])
  {
    return [(DOCManagedPermission *)self mayOpenFromManagedToUnmanaged]|| !managed;
  }

  else
  {
    return 1;
  }
}

- (id)appContainerBundleIDForFPItem:(id)item
{
  v55 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  appContainerIDCache = [(DOCManagedPermission *)self appContainerIDCache];
  parentItemID = [itemCopy parentItemID];
  v7 = [appContainerIDCache objectForKey:parentItemID];

  if (v7)
  {
    fp_appContainerBundleIdentifier2 = v7;
  }

  else
  {
    appContainerIDCache2 = [(DOCManagedPermission *)self appContainerIDCache];
    itemID = [itemCopy itemID];
    v35 = [appContainerIDCache2 objectForKey:itemID];

    v11 = v35;
    if (v35)
    {
      fp_appContainerBundleIdentifier2 = v35;
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
      defaultManager = [MEMORY[0x277CC6408] defaultManager];
      itemID2 = [itemCopy itemID];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __54__DOCManagedPermission_appContainerBundleIDForFPItem___block_invoke;
      v44[3] = &unk_278F9BB80;
      v46 = &v47;
      dsema = v12;
      v45 = dsema;
      [defaultManager fetchParentsForItemID:itemID2 recursively:1 completionHandler:v44];

      v15 = dispatch_time(0, 5000000000);
      dispatch_semaphore_wait(dsema, v15);
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      reverseObjectEnumerator = [v48[5] reverseObjectEnumerator];
      fp_appContainerBundleIdentifier2 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v54 count:16];
      if (fp_appContainerBundleIdentifier2)
      {
        v17 = *v41;
LABEL_7:
        v18 = 0;
        while (1)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v19 = *(*(&v40 + 1) + 8 * v18);
          fp_appContainerBundleIdentifier = [v19 fp_appContainerBundleIdentifier];
          v21 = fp_appContainerBundleIdentifier == 0;

          if (!v21)
          {
            break;
          }

          if (fp_appContainerBundleIdentifier2 == ++v18)
          {
            fp_appContainerBundleIdentifier2 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v54 count:16];
            if (fp_appContainerBundleIdentifier2)
            {
              goto LABEL_7;
            }

            goto LABEL_25;
          }
        }

        fp_appContainerBundleIdentifier2 = [v19 fp_appContainerBundleIdentifier];

        if (!fp_appContainerBundleIdentifier2)
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
                appContainerIDCache3 = [(DOCManagedPermission *)self appContainerIDCache];
                itemID3 = [v26 itemID];
                [appContainerIDCache3 setObject:fp_appContainerBundleIdentifier2 forKey:itemID3];
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
          }

          while (v23);
        }

        appContainerIDCache4 = [(DOCManagedPermission *)self appContainerIDCache];
        itemID4 = [itemCopy itemID];
        [appContainerIDCache4 setObject:fp_appContainerBundleIdentifier2 forKey:itemID4];

        reverseObjectEnumerator = [(DOCManagedPermission *)self appContainerIDCache];
        parentItemID2 = [itemCopy parentItemID];
        [reverseObjectEnumerator setObject:fp_appContainerBundleIdentifier2 forKey:parentItemID2];
      }

LABEL_25:

LABEL_26:
      _Block_object_dispose(&v47, 8);

      v11 = 0;
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return fp_appContainerBundleIdentifier2;
}

void __54__DOCManagedPermission_appContainerBundleIDForFPItem___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)cleanAppContainerBundleIDCache
{
  appContainerIDCache = [(DOCManagedPermission *)self appContainerIDCache];
  [appContainerIDCache removeAllObjects];
}

- (id)allowedFileProviderBundleIdentifiersForHostBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(DOCManagedPermission *)self hasAnyEffectiveRestrictions])
  {
    v5 = +[DOCManagedPermission defaultPermission];
    [v5 setHostIdentifier:identifierCopy];

    v6 = MEMORY[0x277CC6420];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __84__DOCManagedPermission_allowedFileProviderBundleIdentifiersForHostBundleIdentifier___block_invoke;
    v13 = &unk_278F9BBA8;
    v14 = identifierCopy;
    selfCopy = self;
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

- (BOOL)adoptPersonaFromNode:(id)node andPerformBlock:(id)block
{
  blockCopy = block;
  v7 = [(DOCManagedPermission *)self personaStringFromNode:node];
  LOBYTE(self) = [(DOCManagedPermission *)self adoptPersona:v7 andPerformBlock:blockCopy];

  return self;
}

- (BOOL)adoptPersonaFromNodes:(id)nodes andPerformBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  blockCopy = block;
  if (nodesCopy && [nodesCopy count])
  {
    selfCopy = self;
    firstObject = [nodesCopy firstObject];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = nodesCopy;
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

          providerDomainID = [*(*(&v24 + 1) + 8 * i) providerDomainID];
          providerDomainID2 = [firstObject providerDomainID];
          v16 = [providerDomainID isEqual:providerDomainID2];

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

    v20 = [(DOCManagedPermission *)selfCopy personaStringFromNode:firstObject];
    v18 = [(DOCManagedPermission *)selfCopy adoptPersona:v20 andPerformBlock:blockCopy];
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

    blockCopy[2](blockCopy);
    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)adoptPersonaFromDomain:(id)domain andPerformBlock:(id)block
{
  blockCopy = block;
  personaIdentifier = [domain personaIdentifier];
  LOBYTE(self) = [(DOCManagedPermission *)self adoptPersona:personaIdentifier andPerformBlock:blockCopy];

  return self;
}

- (BOOL)adoptPersonaliCloudPersonaAndPerformBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  personaStringForDomainID = [(DOCManagedPermission *)selfCopy personaStringForDomainID];
  v7 = FPIsCloudDocsWithFPFSEnabled();
  v8 = DOCDocumentSourceIdentifierICloudFPFS;
  if (!v7)
  {
    v8 = DOCDocumentSourceIdentifierICloudFPv2;
  }

  v9 = *v8;
  v10 = [personaStringForDomainID objectForKeyedSubscript:v9];

  v11 = [(DOCManagedPermission *)selfCopy adoptPersona:v10 andPerformBlock:blockCopy];
  objc_sync_exit(selfCopy);

  return v11;
}

- (BOOL)isCurrentPersonaEnterprise
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];
  isEnterprisePersona = [currentPersona isEnterprisePersona];

  return isEnterprisePersona;
}

- (BOOL)adoptPersona:(id)persona andPerformBlock:(id)block
{
  v24 = *MEMORY[0x277D85DE8];
  personaCopy = persona;
  blockCopy = block;
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];

  if ([currentPersona isSystemPersona])
  {
    v21 = 0;
    v9 = [currentPersona copyCurrentPersonaContextWithError:&v21];
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
      v23 = currentPersona;
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
        v23 = personaCopy;
        _os_log_impl(&dword_249340000, v12, OS_LOG_TYPE_DEFAULT, "Generating and Restoring Persona from String. Persona String: (%@)", buf, 0xCu);
      }

      v15 = [currentPersona generateAndRestorePersonaContextWithIdentityString:personaCopy];
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

        blockCopy[2](blockCopy);
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

        v10 = [currentPersona restorePersonaWithSavedPersonaContext:v9];
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

    blockCopy[2](blockCopy);
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
    v23 = currentPersona;
    _os_log_impl(&dword_249340000, v13, OS_LOG_TYPE_DEFAULT, "App already has a persona that's not system, just execute the block. Persona: (%@)", buf, 0xCu);
  }

  blockCopy[2](blockCopy);
  v14 = 0;
LABEL_27:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)personaStringFromNode:(id)node
{
  nodeCopy = node;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  personaStringForDomainID = [(DOCManagedPermission *)selfCopy personaStringForDomainID];
  providerDomainID = [nodeCopy providerDomainID];
  personaIdentifier = [personaStringForDomainID objectForKeyedSubscript:providerDomainID];

  objc_sync_exit(selfCopy);
  if (!personaIdentifier)
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

    cachedDomain = [nodeCopy cachedDomain];
    v11 = cachedDomain;
    if (cachedDomain)
    {
      personaIdentifier = [cachedDomain personaIdentifier];
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

      personaIdentifier = 0;
    }
  }

  return personaIdentifier;
}

- (void)cachePersonaStringForProviders:(id)providers
{
  v20 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(providersCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = providersCopy;
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
        personaIdentifier = [v10 personaIdentifier];
        identifier = [v10 identifier];
        [v5 setObject:personaIdentifier forKeyedSubscript:identifier];
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(DOCManagedPermission *)selfCopy setPersonaStringForDomainID:v5];
  objc_sync_exit(selfCopy);

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