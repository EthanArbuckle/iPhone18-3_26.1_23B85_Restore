@interface NTKBundleComplicationManager
+ (id)sharedManager;
- (BOOL)bundleComplicationExistsForAppBundleIdentifier:(id)identifier;
- (BOOL)bundleExistsWithIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier;
- (Class)_dataSourceClassForBundleIdentifier:(id)identifier;
- (Class)dataSourceClassForBundleComplication:(id)complication;
- (Class)dataSourceClassForBundleComplication:(id)complication withFamily:(int64_t)family andDevice:(id)device factorInMigration:(BOOL)migration;
- (NTKBundleComplicationManager)init;
- (id)_buildDataSourceInfoLookup;
- (id)_infoByBundleIdentifierLookup;
- (id)_infoForBundleIdentifier:(id)identifier;
- (id)allComplicationAppBundleIDs;
- (id)bundleComplicationsForBundleIdentifier:(id)identifier;
- (id)groupIdentifierForBundleIdentifier:(id)identifier;
- (id)localizedAppNameForBundleIdentifier:(id)identifier;
- (id)localizedComplicationNameForBundleIdentifier:(id)identifier;
- (id)sectionIdentifierForBundleIdentifier:(id)identifier;
- (void)_enumerateBundleInfo:(id)info;
- (void)enumerateBundlesForComplicationFamily:(int64_t)family device:(id)device withBlock:(id)block;
- (void)enumerateBundlesForDevice:(id)device withBlock:(id)block;
@end

@implementation NTKBundleComplicationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__NTKBundleComplicationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken_2 != -1)
  {
    dispatch_once(&sharedManager_onceToken_2, block);
  }

  v2 = sharedManager_manager_1;

  return v2;
}

void __45__NTKBundleComplicationManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedManager_manager_1;
  sharedManager_manager_1 = v0;
}

- (NTKBundleComplicationManager)init
{
  v14.receiver = self;
  v14.super_class = NTKBundleComplicationManager;
  v2 = [(NTKBundleComplicationManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = NTKBundleComplicationDirectoryURLs();
    if (NTKInternalBuild(v4, v5))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__NTKBundleComplicationManager_init__block_invoke;
      block[3] = &unk_27877DB10;
      v13 = v4;
      if (init_onceToken_0 != -1)
      {
        dispatch_once(&init_onceToken_0, block);
      }
    }

    v6 = [NTKBundleComplicationDataSourceLoader complicationDataSourceLoaderWithDirectories:v4];
    loader = v3->_loader;
    v3->_loader = v6;
    v8 = v6;

    v9 = +[NTKCompanionBundleComplicationSyncCoordinator sharedInstance];
    syncCoordinator = v3->_syncCoordinator;
    v3->_syncCoordinator = v9;
  }

  return v3;
}

void __36__NTKBundleComplicationManager_init__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) path];
        v9 = [[NTKDirectoryMonitor alloc] initWithPath:v8 handler:&__block_literal_global_130];
        if (v9)
        {
          [v2 addObject:v9];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];
  v11 = init_monitors;
  init_monitors = v10;
}

- (BOOL)bundleComplicationExistsForAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__NTKBundleComplicationManager_bundleComplicationExistsForAppBundleIdentifier___block_invoke;
  v7[3] = &unk_278784F50;
  v5 = identifierCopy;
  v8 = v5;
  v9 = &v10;
  [(NTKBundleComplicationManager *)self _enumerateBundleInfo:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __79__NTKBundleComplicationManager_bundleComplicationExistsForAppBundleIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 appIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (Class)dataSourceClassForBundleComplication:(id)complication
{
  complicationCopy = complication;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v18 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    complication = [complicationCopy complication];
    bundleIdentifier = [complication bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  complicationType = [complicationCopy complicationType];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__NTKBundleComplicationManager_dataSourceClassForBundleComplication___block_invoke;
  v11[3] = &unk_278784F78;
  v8 = bundleIdentifier;
  v12 = v8;
  v13 = &v15;
  v14 = complicationType;
  [(NTKBundleComplicationManager *)self _enumerateBundleInfo:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __69__NTKBundleComplicationManager_dataSourceClassForBundleComplication___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = a1[4];
  v7 = [v9 bundleIdentifier];
  LODWORD(v6) = [v6 isEqualToString:v7];

  if (v6)
  {
    *(*(a1[5] + 8) + 24) = [v9 dataSourceClass];
    *a3 = 1;
  }

  else
  {
    v8 = [v9 legacyNTKComplicationType];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 unsignedIntegerValue] == a1[6])
    {
      *(*(a1[5] + 8) + 24) = [v9 dataSourceClass];
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (Class)dataSourceClassForBundleComplication:(id)complication withFamily:(int64_t)family andDevice:(id)device factorInMigration:(BOOL)migration
{
  migrationCopy = migration;
  deviceCopy = device;
  v11 = [(NTKBundleComplicationManager *)self dataSourceClassForBundleComplication:complication];
  if (!-[objc_class acceptsComplicationFamily:forDevice:](v11, "acceptsComplicationFamily:forDevice:", family, deviceCopy) || [deviceCopy supportsWidgetMigration] && migrationCopy && (-[objc_class hasMigratedToWidgetForFamily:device:](v11, "hasMigratedToWidgetForFamily:device:", family, deviceCopy) & 1) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (BOOL)bundleExistsWithIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  v7 = [(NTKBundleComplicationManager *)self _infoForBundleIdentifier:identifier];
  v8 = v7;
  if (v7)
  {
    appIdentifier = [v7 appIdentifier];
    v10 = [appIdentifier isEqualToString:bundleIdentifierCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)localizedAppNameForBundleIdentifier:(id)identifier
{
  v3 = [(NTKBundleComplicationManager *)self _infoForBundleIdentifier:identifier];
  localizedAppName = [v3 localizedAppName];

  return localizedAppName;
}

- (id)sectionIdentifierForBundleIdentifier:(id)identifier
{
  v3 = [(NTKBundleComplicationManager *)self _infoForBundleIdentifier:identifier];
  sectionIdentifier = [v3 sectionIdentifier];

  return sectionIdentifier;
}

- (id)groupIdentifierForBundleIdentifier:(id)identifier
{
  v3 = [(NTKBundleComplicationManager *)self _infoForBundleIdentifier:identifier];
  appGroupIdentifier = [v3 appGroupIdentifier];

  return appGroupIdentifier;
}

- (id)localizedComplicationNameForBundleIdentifier:(id)identifier
{
  v3 = [(NTKBundleComplicationManager *)self _infoForBundleIdentifier:identifier];
  localizedComplicationName = [v3 localizedComplicationName];
  v5 = localizedComplicationName;
  if (localizedComplicationName)
  {
    localizedAppName = localizedComplicationName;
  }

  else
  {
    localizedAppName = [v3 localizedAppName];
  }

  v7 = localizedAppName;

  return v7;
}

- (void)enumerateBundlesForComplicationFamily:(int64_t)family device:(id)device withBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  supportsWidgetMigration = [deviceCopy supportsWidgetMigration];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  loader = [(NTKBundleComplicationManager *)self loader];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__NTKBundleComplicationManager_enumerateBundlesForComplicationFamily_device_withBlock___block_invoke;
  v14[3] = &unk_278784FA0;
  v17 = v20;
  familyCopy = family;
  v12 = deviceCopy;
  v15 = v12;
  v19 = supportsWidgetMigration;
  v13 = blockCopy;
  v16 = v13;
  [loader enumerateComplicationClassesWithBlock:v14];

  _Block_object_dispose(v20, 8);
}

void __87__NTKBundleComplicationManager_enumerateBundlesForComplicationFamily_device_withBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  else
  {
    v9 = *(a1 + 56);
    while (![a2 acceptsComplicationFamily:v9 forDevice:*(a1 + 32)] || *(a1 + 64) == 1 && (objc_msgSend(a2, "hasMigratedToWidgetForFamily:device:", v9, *(a1 + 32)) & 1) != 0)
    {
      if ((NTKFallbackComplicationFamilyForFamily(v9, &v9) & 1) == 0)
      {
        return;
      }
    }

    v5 = objc_autoreleasePoolPush();
    v6 = [a2 bundleIdentifier];
    v7 = [a2 appIdentifier];
    v8 = [a2 legacyNTKComplicationType];
    (*(*(a1 + 40) + 16))();

    objc_autoreleasePoolPop(v5);
  }
}

- (void)enumerateBundlesForDevice:(id)device withBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  supportsWidgetMigration = [deviceCopy supportsWidgetMigration];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  loader = [(NTKBundleComplicationManager *)self loader];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__NTKBundleComplicationManager_enumerateBundlesForDevice_withBlock___block_invoke;
  v12[3] = &unk_278784FF0;
  v15 = v17;
  v10 = deviceCopy;
  v13 = v10;
  v16 = supportsWidgetMigration;
  v11 = blockCopy;
  v14 = v11;
  [loader enumerateComplicationClassesWithBlock:v12];

  _Block_object_dispose(v17, 8);
}

void __68__NTKBundleComplicationManager_enumerateBundlesForDevice_withBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  else
  {
    v22 = v3;
    v23 = v4;
    v7 = objc_opt_new();
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __68__NTKBundleComplicationManager_enumerateBundlesForDevice_withBlock___block_invoke_2;
    v17 = &unk_278784FC8;
    v20 = a2;
    v18 = *(a1 + 32);
    v21 = *(a1 + 56);
    v8 = v7;
    v19 = v8;
    NTKEnumerateComplicationFamilies(&v14);
    if ([v8 count])
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [a2 bundleIdentifier];
      v11 = [a2 appIdentifier];
      v12 = *(a1 + 40);
      v13 = [v8 copy];
      (*(v12 + 16))(v12, v10, v11, v13, *(*(a1 + 48) + 8) + 24);

      objc_autoreleasePoolPop(v9);
    }
  }
}

void __68__NTKBundleComplicationManager_enumerateBundlesForDevice_withBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 48) acceptsComplicationFamily:a2 forDevice:*(a1 + 32)] && (*(a1 + 56) != 1 || (objc_msgSend(*(a1 + 48), "hasMigratedToWidgetForFamily:device:", a2, *(a1 + 32)) & 1) == 0))
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v4 addObject:v5];
  }
}

- (id)allComplicationAppBundleIDs
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__NTKBundleComplicationManager_allComplicationAppBundleIDs__block_invoke;
  v6[3] = &unk_278785018;
  v4 = v3;
  v7 = v4;
  [(NTKBundleComplicationManager *)self _enumerateBundleInfo:v6];

  return v4;
}

void __59__NTKBundleComplicationManager_allComplicationAppBundleIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 appIdentifier];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

- (id)bundleComplicationsForBundleIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NTKBundleComplicationManager *)self _dataSourceClassForBundleIdentifier:identifierCopy];
  if (v5)
  {
    v6 = v5;
    appIdentifier = [(objc_class *)v5 appIdentifier];
    if ([(objc_class *)v6 useComplicationDescriptorsOnCompanion])
    {
      v8 = MEMORY[0x277CBEB70];
      complicationDescriptors = [(NTKCompanionBundleComplicationSyncCoordinator *)self->_syncCoordinator descriptorsForBundleIdentifier:identifierCopy];
      v10 = [v8 orderedSetWithArray:complicationDescriptors];
    }

    else
    {
      complicationDescriptors = [(objc_class *)v6 complicationDescriptors];
      v10 = [complicationDescriptors copy];
    }

    v12 = v10;

    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    if (v12)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:identifierCopy appBundleIdentifier:appIdentifier complicationDescriptor:{*(*(&v21 + 1) + 8 * i), v21}];
            if (v19)
            {
              [orderedSet addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v14 = [MEMORY[0x277CFA700] complicationWithBundleIdentifier:identifierCopy appBundleIdentifier:appIdentifier complicationDescriptor:0];
      if (v14)
      {
        [orderedSet addObject:v14];
      }
    }

    orderedSet2 = [orderedSet copy];
  }

  else
  {
    orderedSet2 = [MEMORY[0x277CBEB70] orderedSet];
  }

  return orderedSet2;
}

- (Class)_dataSourceClassForBundleIdentifier:(id)identifier
{
  v3 = [(NTKBundleComplicationManager *)self _infoForBundleIdentifier:identifier];
  dataSourceClass = [v3 dataSourceClass];

  return dataSourceClass;
}

- (id)_infoForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _infoByBundleIdentifierLookup = [(NTKBundleComplicationManager *)self _infoByBundleIdentifierLookup];
  v6 = [_infoByBundleIdentifierLookup objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)_enumerateBundleInfo:(id)info
{
  infoCopy = info;
  _infoByBundleIdentifierLookup = [(NTKBundleComplicationManager *)self _infoByBundleIdentifierLookup];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__NTKBundleComplicationManager__enumerateBundleInfo___block_invoke;
  v7[3] = &unk_278785040;
  v8 = infoCopy;
  v6 = infoCopy;
  [_infoByBundleIdentifierLookup enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)_buildDataSourceInfoLookup
{
  v3 = objc_opt_new();
  loader = [(NTKBundleComplicationManager *)self loader];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__NTKBundleComplicationManager__buildDataSourceInfoLookup__block_invoke;
  v8[3] = &unk_278785068;
  v9 = v3;
  v5 = v3;
  [loader enumerateComplicationClassesWithBlock:v8];

  v6 = [v5 copy];

  return v6;
}

void __58__NTKBundleComplicationManager__buildDataSourceInfoLookup__block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 bundleIdentifier];
  v4 = [[NTKBundleComplicationDataSourceInfo alloc] initWithDataSourceClass:a2];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

- (id)_infoByBundleIdentifierLookup
{
  os_unfair_lock_lock(&self->_lock);
  lock_infoByBundleIdentifierLookup = self->_lock_infoByBundleIdentifierLookup;
  if (!lock_infoByBundleIdentifierLookup)
  {
    _buildDataSourceInfoLookup = [(NTKBundleComplicationManager *)self _buildDataSourceInfoLookup];
    v5 = self->_lock_infoByBundleIdentifierLookup;
    self->_lock_infoByBundleIdentifierLookup = _buildDataSourceInfoLookup;

    lock_infoByBundleIdentifierLookup = self->_lock_infoByBundleIdentifierLookup;
  }

  v6 = [(NSDictionary *)lock_infoByBundleIdentifierLookup copy];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

@end