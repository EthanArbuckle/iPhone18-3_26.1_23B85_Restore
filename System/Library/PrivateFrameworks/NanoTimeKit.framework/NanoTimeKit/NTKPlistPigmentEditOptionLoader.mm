@interface NTKPlistPigmentEditOptionLoader
+ (BOOL)containsReservedKey:(id)key inDictionary:(id)dictionary;
+ (BOOL)containsSeasonNamePrefix:(id)prefix;
+ (id)extractNameFromFullFileName:(id)name fileExtension:(id)extension;
+ (id)indexForSeasonName:(id)name;
+ (id)modifyContentRootForImplicitCollectionsIfNeeded:(id)needed;
+ (id)seasonNames;
+ (id)sortedCollectionNamesFromCollections:(id)collections;
+ (id)sortedColorFileNames:(id)names;
+ (id)sortedUniqueOptionNamesFromCollections:(id)collections;
+ (int64_t)compareColorFileNames:(id)names otherFileName:(id)name fileExtension:(id)extension;
+ (int64_t)compareSeasonName:(id)name otherSeasonName:(id)seasonName;
+ (int64_t)compareSeasonWithoutYear:(id)year otherSeasonNameWithoutYear:(id)withoutYear;
+ (int64_t)extractYearFromSeasonName:(id)name;
- (BOOL)hasFileLevelSensitiveUIConfig:(id)config;
- (BOOL)isValidPigment:(id)pigment;
- (NSDictionary)sharedConfigs;
- (NTKPlistPigmentEditOptionLoader)init;
- (NTKPlistPigmentEditOptionLoader)initWithBundle:(id)bundle;
- (NTKPlistPigmentEditOptionLoader)initWithPlistFiles:(id)files;
- (id)alternativePropertyNamesForProperty:(id)property inNode:(id)node includesAllDeviceSpecificColors:(BOOL)colors;
- (id)colorOptionsFromItemsDictionary:(id)dictionary collectionName:(id)name applyConfig:(id)config plistSuffix:(id)suffix bundle:(id)bundle;
- (id)colorOptionsFromPListItems:(id)items collectionName:(id)name applyConfig:(id)config plistSuffix:(id)suffix bundle:(id)bundle;
- (id)configurationFromNode:(id)node;
- (id)configurationFromNode:(id)node collectionName:(id)name;
- (id)configurationWithName:(id)name fromNode:(id)node collectionName:(id)collectionName;
- (id)copyItemsApplyingConfiguration:(id)configuration configuration:(id)a4;
- (id)discoverCollectionWithName:(id)name contentRoot:(id)root collectionsRoot:(id)collectionsRoot discoveredCollections:(id)collections privateDiscoveredCollections:(id)discoveredCollections discoveredInvalidCollections:(id)invalidCollections invalidDependecies:(id)dependecies hasCycle:(BOOL *)self0 plistSuffix:(id)self1 bundle:(id)self2;
- (id)extractSuffixFromFileName:(id)name;
- (id)importedCollectionsFromImports:(id)imports propertyName:(id)name sharedCollectionsRoot:(id)root parent:(id)parent discoveredCollections:(id)collections privateDiscoveredCollections:(id)discoveredCollections discoveredInvalidCollections:(id)invalidCollections invalidDependencies:(id)self0 hasCycle:(BOOL *)self1 plistSuffix:(id)self2 bundle:(id)self3;
- (id)importedCollectionsWithNode:(id)node sharedCollectionsRoot:(id)root parent:(id)parent discoveredCollections:(id)collections privateDiscoveredCollections:(id)discoveredCollections discoveredInvalidCollections:(id)invalidCollections invalidDependencies:(id)dependencies hasCycle:(BOOL *)self0 plistSuffix:(id)self1 bundle:(id)self2;
- (id)itemsFromNode:(id)node collectionName:(id)name applyingConfig:(id)config plistSuffix:(id)suffix bundle:(id)bundle;
- (id)loadFaceCollectionForAllSlotsForDomain:(id)domain propertyList:(id)list bundle:(id)bundle sharedCollections:(id)collections;
- (id)loadFaceCollectionForDomain:(id)domain contentRoot:(id)root faceCollectionsRoot:(id)collectionsRoot sharedCollections:(id)collections plistSuffix:(id)suffix bundle:(id)bundle;
- (id)loadFaceCollectionForDomain:(id)domain mainBundle:(id)bundle faceBundle:(id)faceBundle additionalBundles:(id)bundles sharedCollections:(id)collections;
- (id)loadNestedCollectionsFromNode:(id)node parent:(id)parent config:(id)config plistSuffix:(id)suffix bundle:(id)bundle;
- (id)loadPropertyListFromFile:(id)file;
- (id)loadSharedCollections;
- (id)loadSharedCollectionsInMainBundle:(id)bundle additionalBundles:(id)bundles;
- (id)loadSharedCollectionsWithPropertyList:(id)list bundle:(id)bundle;
- (id)loadSharedConfigWithPropertyList:(id)list bundle:(id)bundle;
- (id)parseColorOptionsForDomain:(id)domain bundle:(id)bundle;
- (id)parseColorOptionsForDomain:(id)domain bundle:(id)bundle sharedCollections:(id)collections;
- (id)plistFacesWithoutFaceBundle;
- (id)skuFileLevel:(id)level;
- (id)sortedColorPListBundles:(id)bundles;
- (id)sortedPlistFilesWithMainBundle:(id)bundle faceBundle:(id)faceBundle additionalBundles:(id)bundles;
- (void)applyConfigurationOnEditOption:(id)option configuration:(id)configuration;
- (void)enumerateColorEditOptionFilesInBundle:(id)bundle sorted:(BOOL)sorted block:(id)block;
- (void)mergeCollections:(id)collections withCollections:(id)withCollections;
- (void)mergeConfigs:(id)configs withConfigs:(id)withConfigs;
@end

@implementation NTKPlistPigmentEditOptionLoader

- (NTKPlistPigmentEditOptionLoader)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(NTKPlistPigmentEditOptionLoader *)self initWithBundle:v3];

  return v4;
}

- (NTKPlistPigmentEditOptionLoader)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = NTKPlistPigmentEditOptionLoader;
  v6 = [(NTKPlistPigmentEditOptionLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_frameworkBundle, bundle);
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (NTKPlistPigmentEditOptionLoader)initWithPlistFiles:(id)files
{
  filesCopy = files;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [(NTKPlistPigmentEditOptionLoader *)self initWithBundle:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_plistFiles, files);
  }

  return v7;
}

- (NSDictionary)sharedConfigs
{
  sharedConfigs = self->_sharedConfigs;
  if (!sharedConfigs)
  {
    loadSharedCollections = [(NTKPlistPigmentEditOptionLoader *)self loadSharedCollections];
    sharedConfigs = self->_sharedConfigs;
  }

  return sharedConfigs;
}

- (id)loadSharedCollections
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "#plist-loader Loading #shared pigment collections#", &v10, 2u);
  }

  frameworkBundle = self->_frameworkBundle;
  additionalBundles = [(NTKPlistPigmentEditOptionLoader *)self additionalBundles];
  v6 = [(NTKPlistPigmentEditOptionLoader *)self loadSharedCollectionsInMainBundle:frameworkBundle additionalBundles:additionalBundles];

  v7 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    v10 = 134217984;
    v11 = v8;
    _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "#plist-loader Finished loading shared collections. Number of shared collections %lu", &v10, 0xCu);
  }

  return v6;
}

- (id)parseColorOptionsForDomain:(id)domain bundle:(id)bundle
{
  bundleCopy = bundle;
  domainCopy = domain;
  loadSharedCollections = [(NTKPlistPigmentEditOptionLoader *)self loadSharedCollections];
  v9 = [(NTKPlistPigmentEditOptionLoader *)self parseColorOptionsForDomain:domainCopy bundle:bundleCopy sharedCollections:loadSharedCollections];

  return v9;
}

- (id)parseColorOptionsForDomain:(id)domain bundle:(id)bundle sharedCollections:(id)collections
{
  domainCopy = domain;
  bundleCopy = bundle;
  collectionsCopy = collections;
  v11 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [NTKPlistPigmentEditOptionLoader parseColorOptionsForDomain:bundle:sharedCollections:];
  }

  if ([collectionsCopy count])
  {
    if (!bundleCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader parseColorOptionsForDomain:bundle:sharedCollections:];
    }

    if (!bundleCopy)
    {
      goto LABEL_10;
    }
  }

  if ([bundleCopy isEqual:self->_frameworkBundle])
  {
LABEL_10:
    v13 = 0;
    goto LABEL_12;
  }

  v13 = bundleCopy;
LABEL_12:
  frameworkBundle = self->_frameworkBundle;
  additionalBundles = [(NTKPlistPigmentEditOptionLoader *)self additionalBundles];
  v16 = [(NTKPlistPigmentEditOptionLoader *)self loadFaceCollectionForDomain:domainCopy mainBundle:frameworkBundle faceBundle:v13 additionalBundles:additionalBundles sharedCollections:collectionsCopy];

  if ([v16 count])
  {
    v17 = objc_alloc_init(NTKFacePigmentSet);
    [(NTKFacePigmentSet *)v17 setCollectionBySlots:v16];
  }

  else
  {
    v17 = 0;
  }

  [(NTKFacePigmentSet *)v17 setDomain:domainCopy];

  return v17;
}

- (id)loadSharedCollectionsInMainBundle:(id)bundle additionalBundles:(id)bundles
{
  v40 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  bundlesCopy = bundles;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v26 = bundlesCopy;
  v27 = bundleCopy;
  [(NTKPlistPigmentEditOptionLoader *)self sortedPlistFilesWithMainBundle:bundleCopy faceBundle:0 additionalBundles:bundlesCopy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        plistFileName = [v12 plistFileName];
        bundle = [v12 bundle];
        v15 = [(NTKPlistPigmentEditOptionLoader *)self loadSharedConfigWithPropertyList:plistFileName bundle:bundle];

        if ([v15 count])
        {
          [(NTKPlistPigmentEditOptionLoader *)self mergeConfigs:dictionary2 withConfigs:v15];
        }

        plistFileName2 = [v12 plistFileName];
        bundle2 = [v12 bundle];
        v18 = [(NTKPlistPigmentEditOptionLoader *)self loadSharedCollectionsWithPropertyList:plistFileName2 bundle:bundle2];

        if ([v18 count])
        {
          v19 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            plistFileName3 = [v12 plistFileName];
            *buf = 138543618;
            v36 = v18;
            v37 = 2114;
            v38 = plistFileName3;
            _os_log_debug_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_DEBUG, "Merging collections %{public}@ from plist %{public}@", buf, 0x16u);
          }

          [(NTKPlistPigmentEditOptionLoader *)self mergeCollections:dictionary withCollections:v18];
          v20 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v36 = dictionary;
            _os_log_debug_impl(&dword_22D9C5000, v20, OS_LOG_TYPE_DEBUG, "Collections after merge %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v9);
  }

  v22 = [dictionary2 copy];
  sharedConfigs = self->_sharedConfigs;
  self->_sharedConfigs = v22;

  v24 = [dictionary copy];

  return v24;
}

- (id)loadFaceCollectionForDomain:(id)domain mainBundle:(id)bundle faceBundle:(id)faceBundle additionalBundles:(id)bundles sharedCollections:(id)collections
{
  v49 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  bundleCopy = bundle;
  faceBundleCopy = faceBundle;
  bundlesCopy = bundles;
  collectionsCopy = collections;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v31 = faceBundleCopy;
  v32 = bundleCopy;
  v30 = bundlesCopy;
  [(NTKPlistPigmentEditOptionLoader *)self sortedPlistFilesWithMainBundle:bundleCopy faceBundle:faceBundleCopy additionalBundles:bundlesCopy];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v15 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v45;
    do
    {
      v18 = 0;
      do
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v44 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        plistFileName = [v19 plistFileName];
        bundle = [v19 bundle];
        v23 = [(NTKPlistPigmentEditOptionLoader *)self loadFaceCollectionForAllSlotsForDomain:domainCopy propertyList:plistFileName bundle:bundle sharedCollections:collectionsCopy];

        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __121__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForDomain_mainBundle_faceBundle_additionalBundles_sharedCollections___block_invoke;
        v40[3] = &unk_2787848A0;
        v41 = dictionary;
        v42 = v19;
        selfCopy = self;
        [v23 enumerateKeysAndObjectsUsingBlock:v40];

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v16 != v18);
      v16 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v16);
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __121__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForDomain_mainBundle_faceBundle_additionalBundles_sharedCollections___block_invoke_115;
  v37[3] = &unk_2787848C8;
  v38 = domainCopy;
  v25 = v24;
  v39 = v25;
  v26 = domainCopy;
  [dictionary enumerateKeysAndObjectsUsingBlock:v37];
  v27 = v39;
  v28 = v25;

  return v25;
}

void __121__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForDomain_mainBundle_faceBundle_additionalBundles_sharedCollections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v7)
  {
    v8 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __121__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForDomain_mainBundle_faceBundle_additionalBundles_sharedCollections___block_invoke_cold_1(v6, a1, v8);
    }

    [*(a1 + 48) mergeCollections:v7 withCollections:v6];
    v9 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __121__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForDomain_mainBundle_faceBundle_additionalBundles_sharedCollections___block_invoke_cold_2();
    }
  }

  else
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

void __121__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForDomain_mainBundle_faceBundle_additionalBundles_sharedCollections___block_invoke_115(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKeyedSubscript:*(a1 + 32)];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)extractSuffixFromFileName:(id)name
{
  nameCopy = name;
  v4 = [@".color.plist" length];
  if ([nameCopy length] >= v4)
  {
    lastPathComponent = [nameCopy lastPathComponent];
    v7 = [lastPathComponent substringToIndex:{objc_msgSend(lastPathComponent, "length") - objc_msgSend(@".color.plist", "length")}];

    if ([v7 containsString:@"-"])
    {
      v8 = [v7 componentsSeparatedByString:@"-"];
      lastObject = [v8 lastObject];

      v7 = v8;
    }

    else
    {
      lastObject = 0;
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (void)mergeConfigs:(id)configs withConfigs:(id)withConfigs
{
  configsCopy = configs;
  withConfigsCopy = withConfigs;
  if ([withConfigsCopy count])
  {
    v7 = MEMORY[0x277CBEB58];
    allKeys = [withConfigsCopy allKeys];
    v9 = [v7 setWithArray:allKeys];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__NTKPlistPigmentEditOptionLoader_mergeConfigs_withConfigs___block_invoke;
    v15[3] = &unk_2787848F0;
    v10 = withConfigsCopy;
    v16 = v10;
    v17 = v9;
    v11 = v9;
    [configsCopy enumerateKeysAndObjectsUsingBlock:v15];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__NTKPlistPigmentEditOptionLoader_mergeConfigs_withConfigs___block_invoke_2;
    v12[3] = &unk_27877F498;
    v13 = configsCopy;
    v14 = v10;
    [v11 enumerateObjectsUsingBlock:v12];
  }
}

void __60__NTKPlistPigmentEditOptionLoader_mergeConfigs_withConfigs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (v6)
  {
    [*(a1 + 40) removeObject:v7];
    [v5 overridePropertiesFromConfig:v6];
  }
}

void __60__NTKPlistPigmentEditOptionLoader_mergeConfigs_withConfigs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

- (void)mergeCollections:(id)collections withCollections:(id)withCollections
{
  collectionsCopy = collections;
  withCollectionsCopy = withCollections;
  if ([withCollectionsCopy count])
  {
    v7 = MEMORY[0x277CBEB58];
    allKeys = [withCollectionsCopy allKeys];
    v9 = [v7 setWithArray:allKeys];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __68__NTKPlistPigmentEditOptionLoader_mergeCollections_withCollections___block_invoke;
    v15[3] = &unk_278784918;
    v10 = withCollectionsCopy;
    v16 = v10;
    v17 = v9;
    v11 = v9;
    [collectionsCopy enumerateKeysAndObjectsUsingBlock:v15];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__NTKPlistPigmentEditOptionLoader_mergeCollections_withCollections___block_invoke_2;
    v12[3] = &unk_27877F498;
    v13 = collectionsCopy;
    v14 = v10;
    [v11 enumerateObjectsUsingBlock:v12];
  }
}

void __68__NTKPlistPigmentEditOptionLoader_mergeCollections_withCollections___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (v6)
  {
    [*(a1 + 40) removeObject:v7];
    [v5 mergeWithCollection:v6];
  }
}

void __68__NTKPlistPigmentEditOptionLoader_mergeCollections_withCollections___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

- (id)loadFaceCollectionForAllSlotsForDomain:(id)domain propertyList:(id)list bundle:(id)bundle sharedCollections:(id)collections
{
  v39 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  listCopy = list;
  bundleCopy = bundle;
  collectionsCopy = collections;
  v14 = [(NTKPlistPigmentEditOptionLoader *)self loadPropertyListFromFile:listCopy];
  v15 = [(NTKPlistPigmentEditOptionLoader *)self extractSuffixFromFileName:listCopy];
  v16 = v14;
  v17 = [v16 objectForKeyedSubscript:@"faces"];
  if (!v17)
  {
    v18 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [NTKPlistPigmentEditOptionLoader loadFaceCollectionForAllSlotsForDomain:propertyList:bundle:sharedCollections:];
    }

    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader loadFaceCollectionForAllSlotsForDomain:propertyList:bundle:sharedCollections:];
    }

    goto LABEL_20;
  }

  v18 = [v17 objectForKeyedSubscript:domainCopy];
  if (!v18)
  {
    v21 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [NTKPlistPigmentEditOptionLoader loadFaceCollectionForAllSlotsForDomain:propertyList:bundle:sharedCollections:];
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader loadFaceCollectionForAllSlotsForDomain:propertyList:bundle:sharedCollections:];
    }

LABEL_19:

LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __112__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForAllSlotsForDomain_propertyList_bundle_sharedCollections___block_invoke;
  v32[3] = &unk_278784940;
  v32[4] = &v33;
  [v18 enumerateKeysAndObjectsUsingBlock:v32];
  if ([(NTKPlistPigmentEditOptionLoader *)self hasFileLevelSensitiveUIConfig:v16]&& self->_ignoreSensitiveUIItems)
  {
    v19 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v38 = listCopy;
      _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_DEFAULT, "#plist-loader Ignoring plist because sensitive UI is disabled %{public}@", buf, 0xCu);
    }

    v20 = 0;
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (*(v34 + 24) == 1)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __112__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForAllSlotsForDomain_propertyList_bundle_sharedCollections___block_invoke_122;
      v23[3] = &unk_278784968;
      v24 = v18;
      selfCopy = self;
      v26 = domainCopy;
      v27 = v17;
      v28 = collectionsCopy;
      v29 = v15;
      v30 = bundleCopy;
      v20 = v20;
      v31 = v20;
      [v24 enumerateKeysAndObjectsUsingBlock:v23];

      v19 = v24;
    }

    else
    {
      v19 = [(NTKPlistPigmentEditOptionLoader *)self loadFaceCollectionForDomain:domainCopy contentRoot:v18 faceCollectionsRoot:v17 sharedCollections:collectionsCopy plistSuffix:v15 bundle:bundleCopy];
      [v20 setObject:v19 forKeyedSubscript:@"slot-"];
    }
  }

  _Block_object_dispose(&v33, 8);
LABEL_21:

  return v20;
}

uint64_t __112__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForAllSlotsForDomain_propertyList_bundle_sharedCollections___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasPrefix:@"slot-"];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __112__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForAllSlotsForDomain_propertyList_bundle_sharedCollections___block_invoke_122(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasPrefix:@"slot-"])
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v5 = [*(a1 + 40) loadFaceCollectionForDomain:*(a1 + 48) contentRoot:v4 faceCollectionsRoot:*(a1 + 56) sharedCollections:*(a1 + 64) plistSuffix:*(a1 + 72) bundle:*(a1 + 80)];
    v6 = [v3 substringFromIndex:{objc_msgSend(@"slot-", "length")}];
    [*(a1 + 88) setObject:v5 forKeyedSubscript:v6];
  }

  else
  {
    v7 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __112__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForAllSlotsForDomain_propertyList_bundle_sharedCollections___block_invoke_122_cold_1(v7);
    }
  }
}

- (id)loadFaceCollectionForDomain:(id)domain contentRoot:(id)root faceCollectionsRoot:(id)collectionsRoot sharedCollections:(id)collections plistSuffix:(id)suffix bundle:(id)bundle
{
  domainCopy = domain;
  collectionsCopy = collections;
  bundleCopy = bundle;
  suffixCopy = suffix;
  collectionsRootCopy = collectionsRoot;
  rootCopy = root;
  v20 = [objc_opt_class() modifyContentRootForImplicitCollectionsIfNeeded:rootCopy];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = [collectionsCopy mutableCopy];
  v28 = 0;
  v23 = [MEMORY[0x277CBEB58] setWithObject:domainCopy];
  v24 = [(NTKPlistPigmentEditOptionLoader *)self discoverCollectionWithName:domainCopy contentRoot:v20 collectionsRoot:collectionsRootCopy discoveredCollections:v22 privateDiscoveredCollections:0 discoveredInvalidCollections:0 invalidDependecies:v23 hasCycle:&v28 plistSuffix:suffixCopy bundle:bundleCopy];

  if (v28)
  {
    collectionName = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(collectionName, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader loadFaceCollectionForDomain:contentRoot:faceCollectionsRoot:sharedCollections:plistSuffix:bundle:];
    }
  }

  else if (v24)
  {
    collectionName = [v24 collectionName];
    [dictionary setObject:v24 forKey:collectionName];
  }

  else
  {
    collectionName = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(collectionName, OS_LOG_TYPE_DEBUG))
    {
      [NTKPlistPigmentEditOptionLoader loadFaceCollectionForDomain:contentRoot:faceCollectionsRoot:sharedCollections:plistSuffix:bundle:];
    }
  }

  allKeys = [collectionsCopy allKeys];
  [v22 removeObjectsForKeys:allKeys];

  [dictionary addEntriesFromDictionary:v22];

  return dictionary;
}

+ (id)modifyContentRootForImplicitCollectionsIfNeeded:(id)needed
{
  v32 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = neededCopy;
  v7 = v6;
  v8 = v6;
  if (isKindOfClass)
  {
    v8 = v6;
    if ([v6 count])
    {
      v9 = [self containsReservedKey:@"imports" inDictionary:v7];
      v10 = [self containsReservedKey:@"collections" inDictionary:v7];
      v11 = [self containsReservedKey:@"items" inDictionary:v7];
      v8 = v7;
      if ((v9 & 1) == 0)
      {
        v8 = v7;
        if ((v10 & 1) == 0)
        {
          v8 = v7;
          if ((v11 & 1) == 0)
          {
            v12 = [v7 mutableCopy];
            v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v22 = MEMORY[0x277D85DD0];
            v23 = 3221225472;
            v24 = __83__NTKPlistPigmentEditOptionLoader_modifyContentRootForImplicitCollectionsIfNeeded___block_invoke;
            v25 = &unk_278784990;
            v15 = v13;
            v26 = v15;
            v16 = v14;
            v27 = v16;
            [v7 enumerateKeysAndObjectsUsingBlock:&v22];
            v8 = v7;
            if ([v15 count])
            {
              [v12 removeObjectsForKeys:v15];
              v17 = [self sortedColorFileNames:v15];
              v18 = [v17 copy];
              [v12 setObject:v18 forKeyedSubscript:@"imports"];

              v19 = [v16 copy];
              [v12 setObject:v19 forKeyedSubscript:@"collections"];

              v8 = [v12 copy];
              v20 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 138543618;
                v29 = v7;
                v30 = 2114;
                v31 = v8;
                _os_log_impl(&dword_22D9C5000, v20, OS_LOG_TYPE_INFO, "#plist-loader collection root content is being modified from %{public}@, to %{public}@", buf, 0x16u);
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

void __83__NTKPlistPigmentEditOptionLoader_modifyContentRootForImplicitCollectionsIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v6 isEqual:@"config"] & 1) == 0)
  {
    [*(a1 + 32) addObject:v6];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

+ (BOOL)containsReservedKey:(id)key inDictionary:(id)dictionary
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v7 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  v8 = v7 != 0;

  v20 = v8;
  if (v18[3])
  {
    v9 = 1;
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", keyCopy, @"-"];
    allKeys = [dictionaryCopy allKeys];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__NTKPlistPigmentEditOptionLoader_containsReservedKey_inDictionary___block_invoke;
    v14[3] = &unk_2787849B8;
    v16 = &v17;
    v12 = v10;
    v15 = v12;
    [allKeys enumerateObjectsUsingBlock:v14];

    v9 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);

  return v9 & 1;
}

void __68__NTKPlistPigmentEditOptionLoader_containsReservedKey_inDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v6 hasPrefix:*(a1 + 32)];
    *a4 = *(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)loadSharedConfigWithPropertyList:(id)list bundle:(id)bundle
{
  bundle = [(NTKPlistPigmentEditOptionLoader *)self loadPropertyListFromFile:list, bundle];
  v6 = [bundle objectForKeyedSubscript:@"shared-config"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __75__NTKPlistPigmentEditOptionLoader_loadSharedConfigWithPropertyList_bundle___block_invoke;
      v20[3] = &unk_2787849E0;
      v20[4] = self;
      v8 = v7;
      v21 = v8;
      [v6 enumerateKeysAndObjectsUsingBlock:v20];
      v9 = v21;
      v10 = v8;

      v11 = v10;
      goto LABEL_9;
    }

    v10 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader loadSharedConfigWithPropertyList:bundle:];
    }
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(NTKPlistPigmentEditOptionLoader *)v10 loadSharedConfigWithPropertyList:v12 bundle:v13, v14, v15, v16, v17, v18];
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

void __75__NTKPlistPigmentEditOptionLoader_loadSharedConfigWithPropertyList_bundle___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) configurationFromNode:a3];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)loadSharedCollectionsWithPropertyList:(id)list bundle:(id)bundle
{
  v41 = *MEMORY[0x277D85DE8];
  listCopy = list;
  bundleCopy = bundle;
  v8 = [(NTKPlistPigmentEditOptionLoader *)self loadPropertyListFromFile:listCopy];
  v9 = [(NTKPlistPigmentEditOptionLoader *)self extractSuffixFromFileName:listCopy];
  v10 = v8;
  v11 = [v10 objectForKeyedSubscript:@"shared-collections"];
  if (!v11)
  {
    v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(NTKPlistPigmentEditOptionLoader *)v12 loadSharedCollectionsWithPropertyList:v13 bundle:v14, v15, v16, v17, v18, v19];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader loadSharedCollectionsWithPropertyList:bundle:];
    }

    goto LABEL_11;
  }

  if ([(NTKPlistPigmentEditOptionLoader *)self hasFileLevelSensitiveUIConfig:v10]&& self->_ignoreSensitiveUIItems)
  {
    v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v40 = listCopy;
      _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "#plist-loader Ignoring plist because sensitive UI is disabled %{public}@", buf, 0xCu);
    }

LABEL_11:
    v20 = 0;
    goto LABEL_23;
  }

  v21 = [(NTKPlistPigmentEditOptionLoader *)self skuFileLevel:v10];
  v12 = v21;
  if (!self->_ignoreSensitiveUIItems && v21 && self->_sku && [v21 isEqualToNumber:?])
  {
    v22 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v40 = v12;
      _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "#plist-loader Ignoring plist file because it is sku specific %{public}@", buf, 0xCu);
    }

    v20 = 0;
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v25 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v40 = listCopy;
      _os_log_impl(&dword_22D9C5000, v25, OS_LOG_TYPE_INFO, "#plist-loader Loading shared collections from plist %{public}@", buf, 0xCu);
    }

    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __80__NTKPlistPigmentEditOptionLoader_loadSharedCollectionsWithPropertyList_bundle___block_invoke;
    v32 = &unk_278784A08;
    v26 = v23;
    v33 = v26;
    v34 = v24;
    selfCopy = self;
    v36 = v11;
    v37 = v9;
    v38 = bundleCopy;
    v22 = v24;
    [v36 enumerateKeysAndObjectsUsingBlock:&v29];
    [v26 enumerateKeysAndObjectsUsingBlock:{&__block_literal_global_123, v29, v30, v31, v32}];
    v27 = v38;
    v20 = v26;
  }

LABEL_23:

  return v20;
}

void __80__NTKPlistPigmentEditOptionLoader_loadSharedCollectionsWithPropertyList_bundle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7 && ([*(a1 + 40) containsObject:v5] & 1) == 0)
  {
    v8 = [objc_opt_class() modifyContentRootForImplicitCollectionsIfNeeded:v6];
    v15 = 0;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x277CBEB58] setWithObject:v5];
    v14 = [v9 discoverCollectionWithName:v5 contentRoot:v8 collectionsRoot:v10 discoveredCollections:v11 privateDiscoveredCollections:0 discoveredInvalidCollections:v12 invalidDependecies:v13 hasCycle:&v15 plistSuffix:*(a1 + 64) bundle:*(a1 + 72)];

    if (v14)
    {
      [*(a1 + 32) setObject:v14 forKeyedSubscript:v5];
    }
  }
}

- (id)discoverCollectionWithName:(id)name contentRoot:(id)root collectionsRoot:(id)collectionsRoot discoveredCollections:(id)collections privateDiscoveredCollections:(id)discoveredCollections discoveredInvalidCollections:(id)invalidCollections invalidDependecies:(id)dependecies hasCycle:(BOOL *)self0 plistSuffix:(id)self1 bundle:(id)self2
{
  v80 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  rootCopy = root;
  collectionsRootCopy = collectionsRoot;
  collectionsCopy = collections;
  invalidCollectionsCopy = invalidCollections;
  dependeciesCopy = dependecies;
  suffixCopy = suffix;
  bundleCopy = bundle;
  v25 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [NTKPlistPigmentEditOptionLoader discoverCollectionWithName:contentRoot:collectionsRoot:discoveredCollections:privateDiscoveredCollections:discoveredInvalidCollections:invalidDependecies:hasCycle:plistSuffix:bundle:];
  }

  if (!rootCopy)
  {
    v26 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader discoverCollectionWithName:contentRoot:collectionsRoot:discoveredCollections:privateDiscoveredCollections:discoveredInvalidCollections:invalidDependecies:hasCycle:plistSuffix:bundle:];
    }

    goto LABEL_25;
  }

  v71 = collectionsRootCopy;
  v72 = collectionsCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(&v26->super, OS_LOG_TYPE_ERROR))
      {
        [NTKPlistPigmentEditOptionLoader discoverCollectionWithName:contentRoot:collectionsRoot:discoveredCollections:privateDiscoveredCollections:discoveredInvalidCollections:invalidDependecies:hasCycle:plistSuffix:bundle:];
      }

      goto LABEL_25;
    }
  }

  v70 = invalidCollectionsCopy;
  v26 = [[NTKPigmentCollection alloc] initWithName:nameCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = MEMORY[0x277CBEB40];
    v28 = [(NTKPlistPigmentEditOptionLoader *)self colorOptionsFromPListItems:rootCopy collectionName:nameCopy applyConfig:0 plistSuffix:suffixCopy bundle:bundleCopy];
    v29 = [v27 orderedSetWithArray:v28];
    [(NTKPigmentCollection *)v26 setItems:v29];

LABEL_37:
    v62 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v77 = v26;
      _os_log_impl(&dword_22D9C5000, v62, OS_LOG_TYPE_INFO, "#plist-loader Collection discovered: %{public}@", buf, 0xCu);
    }

    v26 = v26;
    v46 = v26;
    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_37;
  }

  v30 = rootCopy;
  [dependeciesCopy addObject:nameCopy];
  v69 = v30;
  v31 = [(NTKPlistPigmentEditOptionLoader *)self configurationFromNode:v30 collectionName:nameCopy];
  [(NTKPigmentCollection *)v26 setConfig:v31];

  config = [(NTKPigmentCollection *)v26 config];
  featureFlag = [config featureFlag];

  if (featureFlag)
  {
    config2 = [(NTKPigmentCollection *)v26 config];
    featureFlag2 = [config2 featureFlag];
    [featureFlag2 cStringUsingEncoding:1];
    v36 = _os_feature_enabled_impl();

    if ((v36 & 1) == 0)
    {
      v42 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        config3 = [(NTKPigmentCollection *)v26 config];
        featureFlag3 = [config3 featureFlag];
        *buf = 138543618;
        v77 = featureFlag3;
        v78 = 2114;
        v79 = nameCopy;
        v45 = "#plist-loader Feature flag %{public}@ is disabled. Ignoring collection %{public}@";
        goto LABEL_23;
      }

LABEL_24:
      collectionsRootCopy = v71;
      collectionsCopy = v72;
      invalidCollectionsCopy = v70;

LABEL_25:
      v46 = 0;
      goto LABEL_41;
    }
  }

  if (!self->_includesAllDeviceSpecificColors)
  {
    config4 = [(NTKPigmentCollection *)v26 config];
    v38 = [config4 sku];
    if (v38 && self->_sku)
    {
      v65 = v38;
      [(NTKPigmentCollection *)v26 config];
      v39 = v67 = config4;
      v40 = [v39 sku];
      v41 = [v40 isEqualToNumber:self->_sku];

      if ((v41 & 1) == 0)
      {
        v42 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          config3 = [(NTKPigmentCollection *)v26 config];
          featureFlag3 = [config3 sku];
          *buf = 138543618;
          v77 = featureFlag3;
          v78 = 2114;
          v79 = nameCopy;
          v45 = "#plist-loader Collection is sku only %{public}@. Ignoring %{public}@";
LABEL_23:
          _os_log_impl(&dword_22D9C5000, v42, OS_LOG_TYPE_DEFAULT, v45, buf, 0x16u);

          goto LABEL_24;
        }

        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  v68 = dependeciesCopy;
  collectionName = [(NTKPigmentCollection *)v26 collectionName];
  config5 = [(NTKPigmentCollection *)v26 config];
  v49 = [(NTKPlistPigmentEditOptionLoader *)self loadNestedCollectionsFromNode:v69 parent:collectionName config:config5 plistSuffix:suffixCopy bundle:bundleCopy];

  v66 = v49;
  if (v49)
  {
    v50 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v72];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __217__NTKPlistPigmentEditOptionLoader_discoverCollectionWithName_contentRoot_collectionsRoot_discoveredCollections_privateDiscoveredCollections_discoveredInvalidCollections_invalidDependecies_hasCycle_plistSuffix_bundle___block_invoke;
    v73[3] = &unk_278784A50;
    v74 = v72;
    v51 = v50;
    v75 = v51;
    [v49 enumerateObjectsUsingBlock:v73];
  }

  else
  {
    v51 = 0;
  }

  config6 = [(NTKPigmentCollection *)v26 config];
  v64 = [(NTKPlistPigmentEditOptionLoader *)self itemsFromNode:v69 collectionName:nameCopy applyingConfig:config6 plistSuffix:suffixCopy bundle:bundleCopy];

  v53 = [v68 mutableCopy];
  v54 = [(NTKPlistPigmentEditOptionLoader *)self importedCollectionsWithNode:v69 sharedCollectionsRoot:v71 parent:nameCopy discoveredCollections:v72 privateDiscoveredCollections:v51 discoveredInvalidCollections:v70 invalidDependencies:v53 hasCycle:cycle plistSuffix:suffixCopy bundle:bundleCopy];
  [(NTKPigmentCollection *)v26 setCollections:v54];

  v55 = *cycle;
  if (v55)
  {
    v56 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader discoverCollectionWithName:contentRoot:collectionsRoot:discoveredCollections:privateDiscoveredCollections:discoveredInvalidCollections:invalidDependecies:hasCycle:plistSuffix:bundle:];
    }

    [v70 addObject:nameCopy];
    collectionsCopy = v72;
    v57 = v64;
  }

  else
  {
    config7 = [(NTKPigmentCollection *)v26 config];
    v57 = v64;
    [config7 removeExcludedItemsFromList:v64];

    config8 = [(NTKPigmentCollection *)v26 config];
    [config8 applyCollectionOverrideNameOnItems:v64];

    [(NTKPigmentCollection *)v26 setItems:v64];
    config9 = [(NTKPigmentCollection *)v26 config];
    defaultGalleryColorNames = [config9 defaultGalleryColorNames];
    [(NTKPigmentCollection *)v26 setDefaultGalleryColorWithNames:defaultGalleryColorNames];

    collectionsCopy = v72;
  }

  dependeciesCopy = v68;
  if (!v55)
  {
    goto LABEL_37;
  }

  v46 = 0;
LABEL_40:
  collectionsRootCopy = v71;
  invalidCollectionsCopy = v70;
LABEL_41:

  return v46;
}

void __217__NTKPlistPigmentEditOptionLoader_discoverCollectionWithName_contentRoot_collectionsRoot_discoveredCollections_privateDiscoveredCollections_discoveredInvalidCollections_invalidDependecies_hasCycle_plistSuffix_bundle___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 collectionName];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v11 collectionName];
    [v4 setObject:v11 forKeyedSubscript:v5];

    v6 = *(a1 + 40);
    v7 = [v11 collectionName];
    [v6 setObject:v11 forKeyedSubscript:v7];

    v8 = [v11 collectionName];
    v9 = [v8 componentsSeparatedByString:@"."];
    v10 = [v9 lastObject];

    [*(a1 + 40) setObject:v11 forKeyedSubscript:v10];
  }
}

- (id)loadNestedCollectionsFromNode:(id)node parent:(id)parent config:(id)config plistSuffix:(id)suffix bundle:(id)bundle
{
  nodeCopy = node;
  parentCopy = parent;
  configCopy = config;
  suffixCopy = suffix;
  bundleCopy = bundle;
  v17 = [nodeCopy objectForKeyedSubscript:@"collections"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      array = [MEMORY[0x277CBEB18] array];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __98__NTKPlistPigmentEditOptionLoader_loadNestedCollectionsFromNode_parent_config_plistSuffix_bundle___block_invoke;
      v24[3] = &unk_278784A78;
      v25 = nodeCopy;
      v26 = parentCopy;
      selfCopy = self;
      v28 = suffixCopy;
      v29 = bundleCopy;
      v30 = configCopy;
      v19 = array;
      v31 = v19;
      [v17 enumerateKeysAndObjectsUsingBlock:v24];
      v20 = v31;
      v21 = v19;

      v22 = v21;
      goto LABEL_9;
    }

    v21 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader loadNestedCollectionsFromNode:parent:config:plistSuffix:bundle:];
    }
  }

  else
  {
    v21 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [NTKPlistPigmentEditOptionLoader loadNestedCollectionsFromNode:v21 parent:? config:? plistSuffix:? bundle:?];
    }
  }

  v22 = 0;
LABEL_9:

  return v22;
}

void __98__NTKPlistPigmentEditOptionLoader_loadNestedCollectionsFromNode_parent_config_plistSuffix_bundle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", *(a1 + 40), @".", v5];
    v13 = 0;
    v8 = [*(a1 + 48) discoverCollectionWithName:v7 contentRoot:v6 collectionsRoot:0 discoveredCollections:0 privateDiscoveredCollections:0 discoveredInvalidCollections:0 invalidDependecies:0 hasCycle:&v13 plistSuffix:*(a1 + 56) bundle:*(a1 + 64)];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 items];
      v11 = [v10 mutableCopy];

      if (v11)
      {
        v12 = [*(a1 + 48) copyItemsApplyingConfiguration:v11 configuration:*(a1 + 72)];

        [*(a1 + 72) applyCollectionOverrideNameOnItems:v12];
        [v9 setItems:v12];
      }

      [*(a1 + 80) addObject:v9];
    }
  }

  else
  {
    v7 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __98__NTKPlistPigmentEditOptionLoader_loadNestedCollectionsFromNode_parent_config_plistSuffix_bundle___block_invoke_cold_1();
    }
  }
}

- (id)importedCollectionsWithNode:(id)node sharedCollectionsRoot:(id)root parent:(id)parent discoveredCollections:(id)collections privateDiscoveredCollections:(id)discoveredCollections discoveredInvalidCollections:(id)invalidCollections invalidDependencies:(id)dependencies hasCycle:(BOOL *)self0 plistSuffix:(id)self1 bundle:(id)self2
{
  v47 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  rootCopy = root;
  parentCopy = parent;
  collectionsCopy = collections;
  discoveredCollectionsCopy = discoveredCollections;
  invalidCollectionsCopy = invalidCollections;
  dependenciesCopy = dependencies;
  suffixCopy = suffix;
  bundleCopy = bundle;
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = nodeCopy;
  v20 = [(NTKPlistPigmentEditOptionLoader *)self alternativePropertyNamesForProperty:@"imports" inNode:nodeCopy];
  [v20 addObject:@"imports"];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v43;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v42 + 1) + 8 * i);
        v27 = [v35 objectForKeyedSubscript:v26];
        v28 = [(NTKPlistPigmentEditOptionLoader *)self importedCollectionsFromImports:v27 propertyName:v26 sharedCollectionsRoot:rootCopy parent:parentCopy discoveredCollections:collectionsCopy privateDiscoveredCollections:discoveredCollectionsCopy discoveredInvalidCollections:invalidCollectionsCopy invalidDependencies:dependenciesCopy hasCycle:cycle plistSuffix:suffixCopy bundle:bundleCopy];

        if (v28)
        {
          [v34 addObjectsFromArray:v28];
        }

        v29 = *cycle;

        if (v29)
        {

          v31 = 0;
          v30 = v34;
          goto LABEL_13;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v30 = v34;
  v31 = v34;
LABEL_13:

  return v31;
}

- (id)importedCollectionsFromImports:(id)imports propertyName:(id)name sharedCollectionsRoot:(id)root parent:(id)parent discoveredCollections:(id)collections privateDiscoveredCollections:(id)discoveredCollections discoveredInvalidCollections:(id)invalidCollections invalidDependencies:(id)self0 hasCycle:(BOOL *)self1 plistSuffix:(id)self2 bundle:(id)self3
{
  v72 = *MEMORY[0x277D85DE8];
  importsCopy = imports;
  nameCopy = name;
  rootCopy = root;
  parentCopy = parent;
  collectionsCopy = collections;
  discoveredCollectionsCopy = discoveredCollections;
  invalidCollectionsCopy = invalidCollections;
  dependenciesCopy = dependencies;
  suffixCopy = suffix;
  bundleCopy = bundle;
  v24 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [NTKPlistPigmentEditOptionLoader importedCollectionsFromImports:propertyName:sharedCollectionsRoot:parent:discoveredCollections:privateDiscoveredCollections:discoveredInvalidCollections:invalidDependencies:hasCycle:plistSuffix:bundle:];
  }

  v55 = bundleCopy;

  if (discoveredCollectionsCopy)
  {
    v25 = discoveredCollectionsCopy;

    collectionsCopy = v25;
  }

  v26 = importsCopy;
  if (!importsCopy)
  {
    log = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [NTKPlistPigmentEditOptionLoader importedCollectionsFromImports:propertyName:sharedCollectionsRoot:parent:discoveredCollections:privateDiscoveredCollections:discoveredInvalidCollections:invalidDependencies:hasCycle:plistSuffix:bundle:];
    }

    goto LABEL_38;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    log = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v67 = nameCopy;
      v68 = 2048;
      v69 = parentCopy;
      v70 = 2114;
      v71 = objc_opt_class();
      _os_log_error_impl(&dword_22D9C5000, log, OS_LOG_TYPE_ERROR, "#plist-loader '%{public}@' for %public}@ found with incorrect type - It should be an array but it was %{public}@. Returning empty items for dependencies", buf, 0x20u);
    }

LABEL_38:
    v46 = MEMORY[0x277CBEBF8];
    goto LABEL_46;
  }

  v48 = discoveredCollectionsCopy;
  v49 = nameCopy;
  log = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = importsCopy;
  v27 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
  v28 = v55;
  v29 = suffixCopy;
  if (v27)
  {
    v30 = v27;
    v60 = *v62;
    v50 = dependenciesCopy;
    v51 = parentCopy;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v62 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v61 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [(NTKPlistPigmentEditOptionLoader *)self colorOptionsFromPListItems:v32 collectionName:parentCopy applyConfig:0 plistSuffix:v29 bundle:v28];
          if (v33)
          {
            v34 = [[NTKPigmentCollection alloc] initWithName:parentCopy];
            v35 = [MEMORY[0x277CBEB40] orderedSetWithArray:v33];
            [(NTKPigmentCollection *)v34 setItems:v35];

            [log addObject:v34];
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
            v36 = [collectionsCopy objectForKeyedSubscript:v33];
            if ([dependenciesCopy containsObject:v33])
            {
              v37 = v36 == 0;
            }

            else
            {
              v37 = 0;
            }

            if (v37)
            {
              *cycle = 1;
LABEL_41:

              goto LABEL_42;
            }

            if (v36)
            {
              [log addObject:v36];
            }

            else
            {
              v39 = [rootCopy objectForKeyedSubscript:v33];
              v40 = [dependenciesCopy mutableCopy];
              v41 = collectionsCopy;
              v42 = v40;
              v43 = v41;
              v44 = [NTKPlistPigmentEditOptionLoader discoverCollectionWithName:"discoverCollectionWithName:contentRoot:collectionsRoot:discoveredCollections:privateDiscoveredCollections:discoveredInvalidCollections:invalidDependecies:hasCycle:plistSuffix:bundle:" contentRoot:v33 collectionsRoot:v39 discoveredCollections:rootCopy privateDiscoveredCollections:v40 discoveredInvalidCollections:cycle invalidDependecies:v29 hasCycle:v28 plistSuffix:? bundle:?];

              if (*cycle)
              {

                collectionsCopy = v43;
                dependenciesCopy = v50;
                parentCopy = v51;
                goto LABEL_41;
              }

              if (v44)
              {
                [log addObject:v44];
                collectionName = [v44 collectionName];
                [v43 setObject:v44 forKeyedSubscript:collectionName];
              }

              else
              {
                collectionName = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
                if (os_log_type_enabled(collectionName, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v67 = v33;
                  _os_log_error_impl(&dword_22D9C5000, collectionName, OS_LOG_TYPE_ERROR, "#plist-loader %{public}@ collection does not exist.", buf, 0xCu);
                }
              }

              collectionsCopy = v43;
              dependenciesCopy = v50;
              parentCopy = v51;
              v28 = v55;
              v29 = suffixCopy;
            }
          }

          else
          {
            v33 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v38 = objc_opt_class();
              *buf = 138543618;
              v67 = v38;
              v68 = 2114;
              v69 = parentCopy;
              _os_log_error_impl(&dword_22D9C5000, v33, OS_LOG_TYPE_ERROR, "#plist-loader dependency entry should be either String or Array - %{public}@ - Parent: %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v30 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

LABEL_42:

  if (*cycle)
  {
    v46 = 0;
  }

  else
  {
    v46 = log;
    log = v46;
  }

  v26 = importsCopy;
  discoveredCollectionsCopy = v48;
  nameCopy = v49;
LABEL_46:

  return v46;
}

- (id)configurationFromNode:(id)node collectionName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  nameCopy = name;
  v8 = [(NTKPlistPigmentEditOptionLoader *)self configurationWithName:@"config" fromNode:nodeCopy collectionName:nameCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(NTKPlistPigmentEditOptionLoader *)self alternativePropertyNamesForProperty:@"config" inNode:nodeCopy, 0];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NTKPlistPigmentEditOptionLoader *)self configurationWithName:*(*(&v16 + 1) + 8 * i) fromNode:nodeCopy collectionName:nameCopy];
        [v8 overridePropertiesFromConfig:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)configurationWithName:(id)name fromNode:(id)node collectionName:(id)collectionName
{
  nameCopy = name;
  collectionNameCopy = collectionName;
  v10 = [node objectForKeyedSubscript:nameCopy];
  if (v10)
  {
    v11 = [(NTKPlistPigmentEditOptionLoader *)self configurationFromNode:v10];
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [NTKPlistPigmentEditOptionLoader configurationWithName:fromNode:collectionName:];
    }

    v11 = 0;
  }

  return v11;
}

- (id)configurationFromNode:(id)node
{
  v133 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [nodeCopy objectForKeyedSubscript:@"shared-config"];
    if (![v5 length] || (-[NTKPlistPigmentEditOptionLoader sharedConfigs](self, "sharedConfigs"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", v5), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7) || (v8 = objc_msgSend(v7, "copy"), v7, !v8))
    {
      v8 = objc_alloc_init(NTKPigmentCollectionConfig);
    }

    v9 = [nodeCopy objectForKeyedSubscript:@"sensitivity"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NTKPigmentCollectionConfig *)v8 setSensitivity:v9];
      }

      else
      {
        v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(NTKPlistPigmentEditOptionLoader *)v12 configurationFromNode:v13, v14, v15, v16, v17, v18, v19];
        }
      }
    }

    v20 = [nodeCopy objectForKeyedSubscript:@"isAddable"];
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NTKPigmentCollectionConfig *)v8 setIsAddable:v20];
      }

      else
      {
        v21 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(NTKPlistPigmentEditOptionLoader *)v21 configurationFromNode:v22, v23, v24, v25, v26, v27, v28];
        }
      }
    }

    v29 = [nodeCopy objectForKeyedSubscript:@"supports-slider"];
    if (v29)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NTKPigmentCollectionConfig *)v8 setSupportsSlider:v29];
      }

      else
      {
        v30 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(NTKPlistPigmentEditOptionLoader *)v30 configurationFromNode:v31, v32, v33, v34, v35, v36, v37];
        }
      }
    }

    v119 = v5;
    v38 = [nodeCopy objectForKeyedSubscript:@"default"];
    selfCopy = self;
    v39 = [(NTKPlistPigmentEditOptionLoader *)self alternativePropertyNamesForProperty:@"default" inNode:nodeCopy includesAllDeviceSpecificColors:0];
    v118 = v39;
    if ([v39 count])
    {
      lastObject = [v39 lastObject];
      v40 = [nodeCopy objectForKeyedSubscript:?];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
        v43 = v38;
        v38 = v42;
      }

      v44 = selfCopy;
      v121 = v38;
    }

    else
    {
      v121 = v38;
      lastObject = @"default";
      v44 = selfCopy;
    }

    v116 = v29;
    defaultConfigAttributeName = [(NTKPigmentCollectionConfig *)v8 defaultConfigAttributeName];
    v117 = v20;
    if (defaultConfigAttributeName)
    {
      defaultConfigAttributeName2 = [(NTKPigmentCollectionConfig *)v8 defaultConfigAttributeName];
      v47 = lastObject;
      v48 = [(__CFString *)lastObject isEqual:defaultConfigAttributeName2];
    }

    else
    {
      v48 = 1;
      v47 = lastObject;
    }

    [(NTKPigmentCollectionConfig *)v8 setDefaultConfigAttributeName:v47];
    v49 = v121;
    if (v121)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v48)
        {
          [(NTKPigmentCollectionConfig *)v8 setDefaultColorOptionName:v121];
        }

        else
        {
          [(NTKPigmentCollectionConfig *)v8 setFallbackDefaultColorOptionName:v121];
        }
      }

      else
      {
        v50 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [(NTKPlistPigmentEditOptionLoader *)v50 configurationFromNode:v51, v52, v53, v54, v55, v56, v57];
        }
      }
    }

    v58 = [nodeCopy objectForKeyedSubscript:@"migration"];
    if (v58)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NTKPigmentCollectionConfig *)v8 setMigration:v58];
      }

      else
      {
        v59 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [NTKPlistPigmentEditOptionLoader configurationFromNode:];
        }
      }
    }

    v60 = [nodeCopy objectForKeyedSubscript:@"feature-flag"];
    if (v60)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NTKPigmentCollectionConfig *)v8 setFeatureFlag:v60];
      }

      else
      {
        v61 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          [NTKPlistPigmentEditOptionLoader configurationFromNode:];
        }
      }
    }

    v62 = [nodeCopy objectForKeyedSubscript:@"sku"];
    v114 = v62;
    if (v62)
    {
      v63 = v62;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NTKPigmentCollectionConfig *)v8 setSku:v63];
      }

      else
      {
        v64 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          [NTKPlistPigmentEditOptionLoader configurationFromNode:];
        }
      }
    }

    v65 = [nodeCopy objectForKeyedSubscript:@"sortedByHue"];
    v113 = v65;
    if (v65)
    {
      v66 = v65;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NTKPigmentCollectionConfig *)v8 setSortedByHue:v66];
      }

      else
      {
        v67 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          [NTKPlistPigmentEditOptionLoader configurationFromNode:];
        }
      }
    }

    firstObject = @"exclusions";
    v69 = [(NTKPlistPigmentEditOptionLoader *)v44 alternativePropertyNamesForProperty:@"exclusions" inNode:nodeCopy includesAllDeviceSpecificColors:0];
    if ([v69 count] == 1)
    {
      v70 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v130 = @"exclusions";
        v131 = 2114;
        v132 = nodeCopy;
        _os_log_impl(&dword_22D9C5000, v70, OS_LOG_TYPE_DEFAULT, "#plist-loader Retrieving alternative property for %{public}@ - %{public}@", buf, 0x16u);
      }

      firstObject = [v69 firstObject];
    }

    v111 = firstObject;
    v115 = v58;
    v71 = [nodeCopy objectForKeyedSubscript:firstObject];
    if (v71)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NTKPigmentCollectionConfig *)v8 setExclusions:v71];
      }

      else
      {
        v72 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          [NTKPlistPigmentEditOptionLoader configurationFromNode:];
        }
      }
    }

    v73 = [nodeCopy objectForKeyedSubscript:@"excludes-duotone"];
    v109 = v73;
    if (v73)
    {
      v74 = v73;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NTKPigmentCollectionConfig *)v8 setExcludesDuotone:v74];
      }

      else
      {
        v75 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          [(NTKPlistPigmentEditOptionLoader *)v75 configurationFromNode:v76, v77, v78, v79, v80, v81, v82];
        }
      }
    }

    v120 = v8;
    v83 = v60;
    v84 = v9;
    v112 = v69;
    v85 = [nodeCopy objectForKeyedSubscript:@"collectionOverride"];
    v86 = v118;
    if (v85)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NTKPigmentCollectionConfig *)v120 setCollectionOverride:v85];
      }

      else
      {
        v87 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
        {
          [NTKPlistPigmentEditOptionLoader configurationFromNode:];
        }
      }
    }

    v108 = v85;
    v110 = v71;
    v88 = [nodeCopy objectForKeyedSubscript:@"gallery-default"];
    v89 = [(NTKPlistPigmentEditOptionLoader *)selfCopy alternativePropertyNamesForProperty:@"gallery-default" inNode:nodeCopy];
    v107 = v89;
    if ([v89 count] == 1)
    {
      firstObject2 = [v89 firstObject];
      v91 = [nodeCopy objectForKeyedSubscript:firstObject2];

      v88 = v91;
      v49 = v121;
    }

    v92 = v119;
    v93 = v84;
    if (v88)
    {
      v106 = v83;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v104 = v84;
        v105 = nodeCopy;
        v94 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v88, "count")}];
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v103 = v88;
        v95 = v88;
        v96 = [v95 countByEnumeratingWithState:&v124 objects:v128 count:16];
        if (v96)
        {
          v97 = v96;
          v98 = *v125;
          do
          {
            for (i = 0; i != v97; ++i)
            {
              if (*v125 != v98)
              {
                objc_enumerationMutation(v95);
              }

              v100 = *(*(&v124 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v101 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
                if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v130 = v100;
                  _os_log_error_impl(&dword_22D9C5000, v101, OS_LOG_TYPE_ERROR, "config.gallery-default Ignoring one gallery option because is it not a string type. %{public}@", buf, 0xCu);
                }
              }

              [v94 addObject:v100, v103];
            }

            v97 = [v95 countByEnumeratingWithState:&v124 objects:v128 count:16];
          }

          while (v97);
        }

        [(NTKPigmentCollectionConfig *)v120 setDefaultGalleryColorNames:v94];
        v93 = v104;
        nodeCopy = v105;
        v86 = v118;
        v92 = v119;
        v49 = v121;
        v88 = v103;
      }

      else
      {
        v94 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          [NTKPlistPigmentEditOptionLoader configurationFromNode:];
        }
      }

      v83 = v106;
    }

    v10 = v120;

    v11 = v10;
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader configurationFromNode:];
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)hasFileLevelSensitiveUIConfig:(id)config
{
  v3 = [config objectForKeyedSubscript:@"sensitivity"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    integerValue = [v3 integerValue];
    mEMORY[0x277CBBB70] = [MEMORY[0x277CBBB70] sharedMonitor];
    v6 = [mEMORY[0x277CBBB70] considersUISensitivitySensitive:integerValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)skuFileLevel:(id)level
{
  v3 = [level objectForKeyedSubscript:@"sku"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)itemsFromNode:(id)node collectionName:(id)name applyingConfig:(id)config plistSuffix:(id)suffix bundle:(id)bundle
{
  v42 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  nameCopy = name;
  configCopy = config;
  suffixCopy = suffix;
  bundleCopy = bundle;
  v15 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  obj = [(NTKPlistPigmentEditOptionLoader *)self alternativePropertyNamesForProperty:@"items" inNode:nodeCopy];
  v17 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        v22 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v36 = v21;
          v37 = 2114;
          v38 = nameCopy;
          v39 = 2114;
          v40 = nodeCopy;
          _os_log_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_DEFAULT, "#plist-loader Retrieving alternative property for %{public}@ - collection name: %{public}@, node: %{public}@", buf, 0x20u);
        }

        v23 = [nodeCopy objectForKeyedSubscript:v21];
        v24 = [(NTKPlistPigmentEditOptionLoader *)selfCopy colorOptionsFromPListItems:v23 collectionName:nameCopy applyConfig:configCopy plistSuffix:suffixCopy bundle:bundleCopy];
        [v15 addObjectsFromArray:v24];
      }

      v18 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v18);
  }

  v25 = [nodeCopy objectForKeyedSubscript:@"items"];
  v26 = [(NTKPlistPigmentEditOptionLoader *)selfCopy colorOptionsFromPListItems:v25 collectionName:nameCopy applyConfig:configCopy plistSuffix:suffixCopy bundle:bundleCopy];
  [v15 addObjectsFromArray:v26];

  return v15;
}

- (BOOL)isValidPigment:(id)pigment
{
  pigmentCopy = pigment;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__NTKPlistPigmentEditOptionLoader_isValidPigment___block_invoke;
  v9[3] = &unk_27877DDA0;
  v10 = pigmentCopy;
  v4 = MEMORY[0x277CBBAE8];
  v5 = pigmentCopy;
  currentDevice = [v4 currentDevice];
  v7 = __50__NTKPlistPigmentEditOptionLoader_isValidPigment___block_invoke(v9, currentDevice);

  return v7;
}

uint64_t __50__NTKPlistPigmentEditOptionLoader_isValidPigment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&kCollectionPropertyConfigSku_block_invoke_lock);
  if (kCollectionPropertyConfigSku_block_invoke___cachedDevice)
  {
    v4 = kCollectionPropertyConfigSku_block_invoke___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != kCollectionPropertyConfigSku_block_invoke___previousCLKDeviceVersion))
  {
    kCollectionPropertyConfigSku_block_invoke___cachedDevice = v3;
    kCollectionPropertyConfigSku_block_invoke___previousCLKDeviceVersion = [v3 version];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__NTKPlistPigmentEditOptionLoader_isValidPigment___block_invoke_2;
    v8[3] = &unk_278784AA0;
    v9 = *(a1 + 32);
    kCollectionPropertyConfigSku_block_invoke_value = __50__NTKPlistPigmentEditOptionLoader_isValidPigment___block_invoke_2(v8, v3) != 0;
  }

  v6 = kCollectionPropertyConfigSku_block_invoke_value;
  os_unfair_lock_unlock(&kCollectionPropertyConfigSku_block_invoke_lock);

  return v6;
}

uint64_t __50__NTKPlistPigmentEditOptionLoader_isValidPigment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    if (NTKGizmoOrCompanionAreRussian(v3))
    {
      v5 = [*(a1 + 32) isPrideOption] ^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)colorOptionsFromPListItems:(id)items collectionName:(id)name applyConfig:(id)config plistSuffix:(id)suffix bundle:(id)bundle
{
  v71 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  nameCopy = name;
  configCopy = config;
  suffixCopy = suffix;
  bundleCopy = bundle;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (itemsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v50 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [(NTKPlistPigmentEditOptionLoader *)v50 colorOptionsFromPListItems:v39 collectionName:v40 applyConfig:v41 plistSuffix:v42 bundle:v43, v44, v45];
        }

        goto LABEL_56;
      }
    }

    objc_opt_class();
    v49 = suffixCopy;
    if (objc_opt_isKindOfClass())
    {
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v47 = itemsCopy;
      obj = itemsCopy;
      v17 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      v18 = configCopy;
      if (!v17)
      {
        goto LABEL_41;
      }

      v19 = v17;
      v53 = *v63;
      v52 = bundleCopy;
      while (1)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v63 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v62 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [[NTKPigmentEditOption alloc] initWithOptionName:v21 collectionName:nameCopy];
            if (![(NTKPlistPigmentEditOptionLoader *)self isValidPigment:v22])
            {
              v33 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v69 = v21;
                _os_log_impl(&dword_22D9C5000, v33, OS_LOG_TYPE_DEFAULT, "#plist-loader Edit option item found but failed to create NTKPigmentEditOption. Could be locale related. Ignoring it. %{public}@", buf, 0xCu);
              }

LABEL_36:
              bundleCopy = v52;
              goto LABEL_39;
            }

            [(NTKPigmentEditOption *)v22 setFromStore:1];
            if (suffixCopy)
            {
              [(NTKPigmentEditOption *)v22 setAlternativeLocalizedStringTableName:suffixCopy];
            }

            bundlePath = [bundleCopy bundlePath];
            bundlePath2 = [v50 bundlePath];
            v25 = [bundlePath isEqualToString:bundlePath2];

            bundleCopy = v52;
            if ((v25 & 1) == 0 && [v52 principalClass])
            {
              v26 = NSStringFromClass([v52 principalClass]);
              [(NTKPigmentEditOption *)v22 setBundlePrincipalClassName:v26];
            }

            [(NTKPlistPigmentEditOptionLoader *)self applyConfigurationOnEditOption:v22 configuration:v18];
            if (![(NTKPigmentEditOption *)v22 isSensitiveUI]|| !self->_ignoreSensitiveUIItems)
            {
              [v16 addObject:v22];
            }

            suffixCopy = v49;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [(NTKPlistPigmentEditOptionLoader *)self colorOptionsFromItemsDictionary:v21 collectionName:nameCopy applyConfig:v18 plistSuffix:suffixCopy bundle:bundleCopy];
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v27 = [(NTKPigmentEditOption *)v22 countByEnumeratingWithState:&v58 objects:v67 count:16];
              if (!v27)
              {
                goto LABEL_39;
              }

              v28 = v27;
              v29 = nameCopy;
              v30 = *v59;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v59 != v30)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v32 = *(*(&v58 + 1) + 8 * j);
                  if (![v32 isSensitiveUI] || !self->_ignoreSensitiveUIItems)
                  {
                    [v16 addObject:v32];
                  }
                }

                v28 = [(NTKPigmentEditOption *)v22 countByEnumeratingWithState:&v58 objects:v67 count:16];
              }

              while (v28);
              nameCopy = v29;
              v18 = configCopy;
              suffixCopy = v49;
              goto LABEL_36;
            }

            v22 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
            if (os_log_type_enabled(&v22->super.super, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v69 = v21;
              _os_log_error_impl(&dword_22D9C5000, &v22->super.super, OS_LOG_TYPE_ERROR, "#plist-loader Edit option item found with incorrect type -  It should be a string or a dictionary. Ignoring it. %{public}@", buf, 0xCu);
            }
          }

LABEL_39:
        }

        v19 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (!v19)
        {
LABEL_41:

          itemsCopy = v47;
          goto LABEL_56;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NTKPlistPigmentEditOptionLoader *)self colorOptionsFromItemsDictionary:itemsCopy collectionName:nameCopy applyConfig:configCopy plistSuffix:suffixCopy bundle:bundleCopy];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v50 = v57 = 0u;
      v34 = [v50 countByEnumeratingWithState:&v54 objects:v66 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v55;
        do
        {
          for (k = 0; k != v35; ++k)
          {
            if (*v55 != v36)
            {
              objc_enumerationMutation(v50);
            }

            v38 = *(*(&v54 + 1) + 8 * k);
            if (![v38 isSensitiveUI] || !self->_ignoreSensitiveUIItems)
            {
              [v16 addObject:v38];
            }
          }

          v35 = [v50 countByEnumeratingWithState:&v54 objects:v66 count:16];
        }

        while (v35);
        suffixCopy = v49;
      }

LABEL_56:
    }
  }

  return v16;
}

- (id)colorOptionsFromItemsDictionary:(id)dictionary collectionName:(id)name applyConfig:(id)config plistSuffix:(id)suffix bundle:(id)bundle
{
  nameCopy = name;
  configCopy = config;
  suffixCopy = suffix;
  bundleCopy = bundle;
  v16 = MEMORY[0x277CBEB18];
  dictionaryCopy = dictionary;
  v18 = objc_alloc_init(v16);
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __113__NTKPlistPigmentEditOptionLoader_colorOptionsFromItemsDictionary_collectionName_applyConfig_plistSuffix_bundle___block_invoke;
  v29[3] = &unk_278784AC8;
  v30 = nameCopy;
  selfCopy = self;
  v32 = suffixCopy;
  v33 = bundleCopy;
  v34 = v19;
  v35 = configCopy;
  v20 = v18;
  v36 = v20;
  v21 = configCopy;
  v22 = v19;
  v23 = bundleCopy;
  v24 = suffixCopy;
  v25 = nameCopy;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v29];

  [v20 sortUsingComparator:&__block_literal_global_153];
  v26 = v36;
  v27 = v20;

  return v20;
}

void __113__NTKPlistPigmentEditOptionLoader_colorOptionsFromItemsDictionary_collectionName_applyConfig_plistSuffix_bundle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[NTKPigmentEditOption alloc] initWithOptionName:v5 collectionName:*(a1 + 32)];
    if ([*(a1 + 40) isValidPigment:v6])
    {
      [(NTKPigmentEditOption *)v6 setFromStore:1];
      if (*(a1 + 48))
      {
        [(NTKPigmentEditOption *)v6 setAlternativeLocalizedStringTableName:?];
      }

      v7 = [*(a1 + 56) bundlePath];
      v8 = [*(a1 + 64) bundlePath];
      v9 = [v7 isEqualToString:v8];

      if ((v9 & 1) == 0 && [*(a1 + 56) principalClass])
      {
        v10 = NSStringFromClass([*(a1 + 56) principalClass]);
        [(NTKPigmentEditOption *)v6 setBundlePrincipalClassName:v10];
      }

      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
      [(NTKPigmentEditOption *)v6 setDesiredPosition:v11];

      [*(a1 + 40) applyConfigurationOnEditOption:v6 configuration:*(a1 + 72)];
      [*(a1 + 80) addObject:v6];
    }
  }
}

uint64_t __113__NTKPlistPigmentEditOptionLoader_colorOptionsFromItemsDictionary_collectionName_applyConfig_plistSuffix_bundle___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 desiredPosition];
  v6 = [v4 desiredPosition];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)copyItemsApplyingConfiguration:(id)configuration configuration:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(configurationCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = configurationCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) copy];
        [(NTKPlistPigmentEditOptionLoader *)self applyConfigurationOnEditOption:v14 configuration:v7];
        if (![v14 isSensitiveUI] || !self->_ignoreSensitiveUIItems)
        {
          [v8 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)applyConfigurationOnEditOption:(id)option configuration:(id)configuration
{
  optionCopy = option;
  configurationCopy = configuration;
  sensitivity = [configurationCopy sensitivity];
  integerValue = [sensitivity integerValue];

  mEMORY[0x277CBBB70] = [MEMORY[0x277CBBB70] sharedMonitor];
  LODWORD(integerValue) = [mEMORY[0x277CBBB70] considersUISensitivitySensitive:integerValue];

  if (integerValue)
  {
    [optionCopy setIsSensitiveUI:1];
  }

  sortedByHue = [configurationCopy sortedByHue];

  if (sortedByHue)
  {
    sortedByHue2 = [configurationCopy sortedByHue];
    [optionCopy setSortedByHue:{objc_msgSend(sortedByHue2, "BOOLValue")}];
  }

  isAddable = [configurationCopy isAddable];
  bOOLValue = [isAddable BOOLValue];

  if (bOOLValue)
  {
    isAddable2 = [configurationCopy isAddable];
    [optionCopy setIsAddable:{objc_msgSend(isAddable2, "BOOLValue")}];
  }

  supportsSlider = [configurationCopy supportsSlider];
  bOOLValue2 = [supportsSlider BOOLValue];

  if (bOOLValue2)
  {
    supportsSlider2 = [configurationCopy supportsSlider];
    [optionCopy setSupportsSlider:{objc_msgSend(supportsSlider2, "BOOLValue")}];
  }
}

- (id)loadPropertyListFromFile:(id)file
{
  fileCopy = file;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:fileCopy];
  if (!v4)
  {
    v5 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [NTKPlistPigmentEditOptionLoader loadPropertyListFromFile:];
    }
  }

  return v4;
}

- (id)sortedPlistFilesWithMainBundle:(id)bundle faceBundle:(id)faceBundle additionalBundles:(id)bundles
{
  v61 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  faceBundleCopy = faceBundle;
  bundlesCopy = bundles;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v37 = bundleCopy;
  if (selfCopy->_plistFiles)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    plistFiles = selfCopy->_plistFiles;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __95__NTKPlistPigmentEditOptionLoader_sortedPlistFilesWithMainBundle_faceBundle_additionalBundles___block_invoke;
    v56[3] = &unk_27877DEA8;
    v12 = v10;
    v57 = v12;
    v58 = bundleCopy;
    [(NSArray *)plistFiles enumerateObjectsUsingBlock:v56];
    v13 = [v12 copy];
    v38 = v12;

    v14 = v57;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = [bundleCopy pathForResource:@"FaceColors" ofType:@".color.plist"];
    if (v16)
    {
      v17 = [[NTKPlistBundle alloc] initWithPlist:v16 bundle:bundleCopy];
      [v15 addObject:v17];
    }

    v38 = v16;
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __95__NTKPlistPigmentEditOptionLoader_sortedPlistFilesWithMainBundle_faceBundle_additionalBundles___block_invoke_2;
    v53[3] = &unk_278784B10;
    v19 = v18;
    v54 = v19;
    v55 = faceBundleCopy;
    [(NTKPlistPigmentEditOptionLoader *)selfCopy enumerateColorEditOptionFilesInBundle:v55 sorted:1 block:v53];
    [v15 addObjectsFromArray:v19];
    v36 = v15;
    if (!selfCopy->_sortedAdditionalPlistFiles)
    {
      if (!selfCopy->_bundlePlistsFromFacesWithoutBundle)
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
        bundlePlistsFromFacesWithoutBundle = selfCopy->_bundlePlistsFromFacesWithoutBundle;
        selfCopy->_bundlePlistsFromFacesWithoutBundle = v20;
      }

      v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __95__NTKPlistPigmentEditOptionLoader_sortedPlistFilesWithMainBundle_faceBundle_additionalBundles___block_invoke_3;
      v48[3] = &unk_278784B38;
      v49 = v16;
      v50 = selfCopy;
      v51 = v37;
      v23 = v22;
      v52 = v23;
      [(NTKPlistPigmentEditOptionLoader *)selfCopy enumerateColorEditOptionFilesInBundle:v51 sorted:0 block:v48];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v24 = bundlesCopy;
      v25 = [v24 countByEnumeratingWithState:&v44 objects:v60 count:16];
      if (v25)
      {
        v26 = *v45;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v45 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v44 + 1) + 8 * i);
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __95__NTKPlistPigmentEditOptionLoader_sortedPlistFilesWithMainBundle_faceBundle_additionalBundles___block_invoke_4;
            v41[3] = &unk_278784B10;
            v42 = v23;
            v43 = v28;
            [(NTKPlistPigmentEditOptionLoader *)selfCopy enumerateColorEditOptionFilesInBundle:v28 sorted:0 block:v41];
          }

          v25 = [v24 countByEnumeratingWithState:&v44 objects:v60 count:16];
        }

        while (v25);
      }

      v29 = [(NTKPlistPigmentEditOptionLoader *)selfCopy sortedColorPListBundles:v23];
      sortedAdditionalPlistFiles = selfCopy->_sortedAdditionalPlistFiles;
      selfCopy->_sortedAdditionalPlistFiles = v29;

      v15 = v36;
    }

    [v15 addObjectsFromArray:{selfCopy->_bundlePlistsFromFacesWithoutBundle, v19}];
    [v15 addObjectsFromArray:selfCopy->_sortedAdditionalPlistFiles];
    v31 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      ntk_flatDescription = [v36 ntk_flatDescription];
      [NTKPlistPigmentEditOptionLoader sortedPlistFilesWithMainBundle:ntk_flatDescription faceBundle:buf additionalBundles:v31];
    }

    v33 = v55;
    v13 = v36;

    v14 = v35;
  }

  objc_sync_exit(selfCopy);

  return v13;
}

void __95__NTKPlistPigmentEditOptionLoader_sortedPlistFilesWithMainBundle_faceBundle_additionalBundles___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[NTKPlistBundle alloc] initWithPlist:v4 bundle:*(a1 + 40)];

  [v3 addObject:v5];
}

void __95__NTKPlistPigmentEditOptionLoader_sortedPlistFilesWithMainBundle_faceBundle_additionalBundles___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[NTKPlistBundle alloc] initWithPlist:v4 bundle:*(a1 + 40)];

  [v3 addObject:v5];
}

void __95__NTKPlistPigmentEditOptionLoader_sortedPlistFilesWithMainBundle_faceBundle_additionalBundles___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([v9 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v3 = [*(a1 + 40) plistFacesWithoutFaceBundle];
    v4 = [v9 ntk_extractFileName];
    v5 = [v3 containsObject:v4];

    if (v5)
    {
      v6 = [*(a1 + 40) bundlePlistsFromFacesWithoutBundle];
      v7 = [[NTKPlistBundle alloc] initWithPlist:v9 bundle:*(a1 + 48)];
      [(NTKPlistBundle *)v6 addObject:v7];
    }

    else
    {
      v8 = *(a1 + 56);
      v6 = [[NTKPlistBundle alloc] initWithPlist:v9 bundle:*(a1 + 48)];
      [v8 addObject:v6];
    }
  }
}

void __95__NTKPlistPigmentEditOptionLoader_sortedPlistFilesWithMainBundle_faceBundle_additionalBundles___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[NTKPlistBundle alloc] initWithPlist:v4 bundle:*(a1 + 40)];

  [v3 addObject:v5];
}

- (id)plistFacesWithoutFaceBundle
{
  if (plistFacesWithoutFaceBundle_onceToken != -1)
  {
    [NTKPlistPigmentEditOptionLoader plistFacesWithoutFaceBundle];
  }

  v3 = plistFacesWithoutFaceBundle_plists;

  return v3;
}

void __62__NTKPlistPigmentEditOptionLoader_plistFacesWithoutFaceBundle__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_28418B428];
  v1 = plistFacesWithoutFaceBundle_plists;
  plistFacesWithoutFaceBundle_plists = v0;
}

- (void)enumerateColorEditOptionFilesInBundle:(id)bundle sorted:(BOOL)sorted block:(id)block
{
  sortedCopy = sorted;
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v8 = [bundle pathsForResourcesOfType:@".color.plist" inDirectory:@"."];
  if (sortedCopy)
  {
    v9 = [objc_opt_class() sortedColorFileNames:v8];

    v8 = v9;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        blockCopy[2](blockCopy, *(*(&v15 + 1) + 8 * v14++));
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

+ (id)sortedColorFileNames:(id)names
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NTKPlistPigmentEditOptionLoader_sortedColorFileNames___block_invoke;
  v5[3] = &__block_descriptor_40_e31_q24__0__NSString_8__NSString_16l;
  v5[4] = self;
  v3 = [names sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __56__NTKPlistPigmentEditOptionLoader_sortedColorFileNames___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [objc_opt_class() compareColorFileNames:v5 otherFileName:v4 fileExtension:@".color.plist"];

  return v6;
}

- (id)sortedColorPListBundles:(id)bundles
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__NTKPlistPigmentEditOptionLoader_sortedColorPListBundles___block_invoke;
  v5[3] = &unk_278784B80;
  v5[4] = self;
  v3 = [bundles sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __59__NTKPlistPigmentEditOptionLoader_sortedColorPListBundles___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_class();
  v7 = [v5 plistFileName];

  v8 = [v4 plistFileName];

  v9 = [v6 compareColorFileNames:v7 otherFileName:v8 fileExtension:@".color.plist"];
  return v9;
}

+ (id)sortedCollectionNamesFromCollections:(id)collections
{
  allKeys = [collections allKeys];
  v4 = [allKeys sortedArrayUsingComparator:&__block_literal_global_178];

  v5 = [v4 copy];

  return v5;
}

+ (id)sortedUniqueOptionNamesFromCollections:(id)collections
{
  v33 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = collectionsCopy;
  v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v19)
  {
    v18 = *v28;
    do
    {
      v5 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v5;
        v6 = *(*(&v27 + 1) + 8 * v5);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        allItems = [v6 allItems];
        v8 = [allItems countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v24;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v24 != v10)
              {
                objc_enumerationMutation(allItems);
              }

              v12 = *(*(&v23 + 1) + 8 * i);
              fullname = [v12 fullname];
              if ([v12 isMultitoneOption])
              {
                fullname2 = [v12 fullname];
                v15 = [NTKPigmentEditOption multitoneColorNames:fullname2];
                v21[0] = MEMORY[0x277D85DD0];
                v21[1] = 3221225472;
                v21[2] = __74__NTKPlistPigmentEditOptionLoader_sortedUniqueOptionNamesFromCollections___block_invoke;
                v21[3] = &unk_27877DED0;
                v22 = orderedSet;
                [v15 enumerateObjectsUsingBlock:v21];
              }

              else
              {
                [orderedSet addObject:fullname];
              }
            }

            v9 = [allItems countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v9);
        }

        v5 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v19);
  }

  [orderedSet sortUsingComparator:&__block_literal_global_180];

  return orderedSet;
}

+ (int64_t)compareColorFileNames:(id)names otherFileName:(id)name fileExtension:(id)extension
{
  namesCopy = names;
  nameCopy = name;
  extensionCopy = extension;
  v11 = namesCopy;
  v12 = nameCopy;
  v13 = v12;
  v14 = v11;
  if (extensionCopy)
  {
    v14 = [self extractNameFromFullFileName:v11 fileExtension:extensionCopy];

    v13 = [self extractNameFromFullFileName:v12 fileExtension:extensionCopy];
  }

  if (v14 && v13)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__NTKPlistPigmentEditOptionLoader_compareColorFileNames_otherFileName_fileExtension___block_invoke;
    aBlock[3] = &unk_278784BA8;
    v15 = v14;
    v32 = v15;
    v16 = v13;
    v33 = v16;
    selfCopy = self;
    v29 = _Block_copy(aBlock);
    v17 = [v15 componentsSeparatedByString:@"-"];
    v18 = [v16 componentsSeparatedByString:@"-"];
    firstObject = [v17 firstObject];
    firstObject2 = [v18 firstObject];
    if ([v17 count] == 1 && objc_msgSend(v18, "count") == 1)
    {
      v19 = v29[2](v29, v15, v16);
      v20 = firstObject;
      v21 = firstObject2;
    }

    else
    {
      v20 = firstObject;
      v21 = firstObject2;
      if ([firstObject isEqualToString:firstObject2])
      {
        if ([v17 count] < 2)
        {
          v27 = &stru_284110E98;
        }

        else
        {
          v22 = [v17 mutableCopy];
          [v22 removeObjectAtIndex:0];
          v27 = [v22 componentsJoinedByString:@"-"];
        }

        if ([v18 count] < 2)
        {
          v24 = &stru_284110E98;
        }

        else
        {
          v23 = [v18 mutableCopy];
          [v23 removeObjectAtIndex:0];
          v24 = [v23 componentsJoinedByString:@"-"];

          v20 = firstObject;
        }

        v19 = [self compareColorFileNames:v27 otherFileName:v24 fileExtension:{0, v18}];

        v21 = firstObject2;
        v18 = v26;
      }

      else
      {
        v19 = [self compareColorFileNames:firstObject otherFileName:firstObject2 fileExtension:0];
      }
    }
  }

  else if (v14)
  {
    v19 = 1;
  }

  else
  {
    v19 = -1;
  }

  return v19;
}

uint64_t __85__NTKPlistPigmentEditOptionLoader_compareColorFileNames_otherFileName_fileExtension___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([a1[4] isEqualToString:@"FaceColors"])
  {
    v7 = -1;
    goto LABEL_14;
  }

  if ([a1[5] isEqualToString:@"FaceColors"])
  {
    v7 = 1;
    goto LABEL_14;
  }

  v8 = [a1[6] containsSeasonNamePrefix:v5];
  v9 = [a1[6] containsSeasonNamePrefix:v6];
  if ((v8 & 1) == 0 && !v9)
  {
    v10 = [v5 compare:v6];
LABEL_10:
    v7 = v10;
    goto LABEL_14;
  }

  if ((v8 & v9) == 1)
  {
    v10 = [a1[6] compareSeasonName:v5 otherSeasonName:v6];
    goto LABEL_10;
  }

  if (v9)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

LABEL_14:

  return v7;
}

+ (int64_t)compareSeasonName:(id)name otherSeasonName:(id)seasonName
{
  nameCopy = name;
  seasonNameCopy = seasonName;
  v8 = [self extractYearFromSeasonName:nameCopy];
  v9 = [self extractYearFromSeasonName:seasonNameCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }
  }

  else if (v8 == v9)
  {
    v10 = [nameCopy substringToIndex:{objc_msgSend(nameCopy, "length") - 4}];
    v11 = [seasonNameCopy substringToIndex:{objc_msgSend(seasonNameCopy, "length") - 4}];
    v12 = [self compareSeasonWithoutYear:v10 otherSeasonNameWithoutYear:v11];
  }

  else if (v8 < v9)
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

+ (int64_t)extractYearFromSeasonName:(id)name
{
  nameCopy = name;
  if ([nameCopy length] < 4)
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = [nameCopy substringWithRange:{objc_msgSend(nameCopy, "length") - 4, 4}];
    integerValue = [v4 integerValue];
  }

  return integerValue;
}

+ (int64_t)compareSeasonWithoutYear:(id)year otherSeasonNameWithoutYear:(id)withoutYear
{
  withoutYearCopy = withoutYear;
  v7 = [self indexForSeasonName:year];
  v8 = [self indexForSeasonName:withoutYearCopy];

  v9 = [v7 compare:v8];
  return v9;
}

+ (id)indexForSeasonName:(id)name
{
  nameCopy = name;
  seasonNames = [self seasonNames];
  lowercaseString = [nameCopy lowercaseString];

  v7 = [seasonNames indexOfObject:lowercaseString];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = &unk_284183DD8;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  }

  return v8;
}

+ (BOOL)containsSeasonNamePrefix:(id)prefix
{
  prefixCopy = prefix;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  seasonNames = [self seasonNames];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__NTKPlistPigmentEditOptionLoader_containsSeasonNamePrefix___block_invoke;
  v8[3] = &unk_278784BD0;
  v6 = prefixCopy;
  v9 = v6;
  v10 = &v11;
  [seasonNames enumerateObjectsUsingBlock:v8];

  LOBYTE(seasonNames) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return seasonNames;
}

void __60__NTKPlistPigmentEditOptionLoader_containsSeasonNamePrefix___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 lowercaseString];
  v9 = [v8 hasPrefix:v7];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)seasonNames
{
  if (seasonNames_onceToken != -1)
  {
    +[NTKPlistPigmentEditOptionLoader seasonNames];
  }

  v3 = seasonNames_seasons;

  return v3;
}

void __46__NTKPlistPigmentEditOptionLoader_seasonNames__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB40]);
  v4[0] = @"spring";
  v4[1] = @"summer";
  v4[2] = @"ss";
  v4[3] = @"fall";
  v4[4] = @"winter";
  v4[5] = @"fw";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];
  v2 = [v0 initWithArray:v1];
  v3 = seasonNames_seasons;
  seasonNames_seasons = v2;
}

+ (id)extractNameFromFullFileName:(id)name fileExtension:(id)extension
{
  extensionCopy = extension;
  pathComponents = [name pathComponents];
  lastObject = [pathComponents lastObject];

  v8 = [extensionCopy length];
  if ([lastObject length] >= v8)
  {
    v9 = [lastObject substringToIndex:{objc_msgSend(lastObject, "length") - v8}];

    lastObject = v9;
  }

  return lastObject;
}

- (id)alternativePropertyNamesForProperty:(id)property inNode:(id)node includesAllDeviceSpecificColors:(BOOL)colors
{
  colorsCopy = colors;
  propertyCopy = property;
  nodeCopy = node;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __110__NTKPlistPigmentEditOptionLoader_alternativePropertyNamesForProperty_inNode_includesAllDeviceSpecificColors___block_invoke;
  v36[3] = &unk_278784BF8;
  v12 = propertyCopy;
  v37 = v12;
  v13 = v11;
  v38 = v13;
  v14 = v10;
  v39 = v14;
  [nodeCopy enumerateKeysAndObjectsUsingBlock:v36];
  if (colorsCopy)
  {
    v15 = v13;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    sku = self->_sku;
    if (sku)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"sku", -[NSNumber integerValue](sku, "integerValue")];
      [v16 addObject:v18];
    }

    clhs = self->_clhs;
    if (clhs)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"clhs", -[NSNumber integerValue](clhs, "integerValue")];
      [v16 addObject:v20];
    }

    family = self->_family;
    if (family)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%lu", @"family", -[NSNumber integerValue](family, "integerValue")];
      [v16 addObject:v22];
    }

    if (![v16 count])
    {
      goto LABEL_13;
    }

    v15 = &v30;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__41;
    v34 = __Block_byref_object_dispose__41;
    v35 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __110__NTKPlistPigmentEditOptionLoader_alternativePropertyNamesForProperty_inNode_includesAllDeviceSpecificColors___block_invoke_190;
    v25[3] = &unk_278784C20;
    v26 = v16;
    v27 = v29;
    v28 = &v30;
    [v14 enumerateKeysAndObjectsUsingBlock:v25];
    v23 = v31[5];
    if (v23)
    {
      v15 = [MEMORY[0x277CBEB18] arrayWithObject:v31[5]];
    }

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(&v30, 8);

    if (!v23)
    {
LABEL_13:
      v15 = [MEMORY[0x277CBEBF8] mutableCopy];
    }
  }

  return v15;
}

void __110__NTKPlistPigmentEditOptionLoader_alternativePropertyNamesForProperty_inNode_includesAllDeviceSpecificColors___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 hasPrefix:*(a1 + 32)] && (objc_msgSend(v6, "isEqualToString:", *(a1 + 32)) & 1) == 0)
  {
    [*(a1 + 40) addObject:v6];
    v3 = [v6 componentsSeparatedByString:@"-"];
    v4 = [v3 mutableCopy];

    if ([v4 count] >= 2)
    {
      [v4 removeObjectAtIndex:0];
      v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
      [*(a1 + 48) setObject:v5 forKeyedSubscript:v6];
    }
  }
}

void __110__NTKPlistPigmentEditOptionLoader_alternativePropertyNamesForProperty_inNode_includesAllDeviceSpecificColors___block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [v7 count];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v12 += [*(a1 + 32) containsObject:{*(*(&v16 + 1) + 8 * i), v16}];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (v12 == v8)
  {
    v15 = *(*(a1 + 40) + 8);
    if (v8 > *(v15 + 24))
    {
      *(v15 + 24) = v8;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    }
  }
}

void __121__NTKPlistPigmentEditOptionLoader_loadFaceCollectionForDomain_mainBundle_faceBundle_additionalBundles_sharedCollections___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(a2 + 40) plistFileName];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_DEBUG, "Merging collections %{public}@ from plist %{public}@", &v6, 0x16u);
}

- (void)loadFaceCollectionForAllSlotsForDomain:propertyList:bundle:sharedCollections:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)loadFaceCollectionForAllSlotsForDomain:propertyList:bundle:sharedCollections:.cold.2()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)loadFaceCollectionForAllSlotsForDomain:propertyList:bundle:sharedCollections:.cold.3()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)loadFaceCollectionForAllSlotsForDomain:propertyList:bundle:sharedCollections:.cold.4()
{
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)loadSharedConfigWithPropertyList:bundle:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)loadSharedCollectionsWithPropertyList:bundle:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __98__NTKPlistPigmentEditOptionLoader_loadNestedCollectionsFromNode_parent_config_plistSuffix_bundle___block_invoke_cold_1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)importedCollectionsFromImports:propertyName:sharedCollectionsRoot:parent:discoveredCollections:privateDiscoveredCollections:discoveredInvalidCollections:invalidDependencies:hasCycle:plistSuffix:bundle:.cold.2()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)configurationWithName:fromNode:collectionName:.cold.1()
{
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)configurationFromNode:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 138543618;
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(&dword_22D9C5000, v0, OS_LOG_TYPE_ERROR, "#plist-loader '%{public}@' found with incorrect type -  It should be an dictionary. %{public}@", v1, 0x16u);
}

- (void)configurationFromNode:.cold.6()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)configurationFromNode:.cold.7()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)configurationFromNode:.cold.8()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)configurationFromNode:.cold.9()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)configurationFromNode:.cold.10()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)configurationFromNode:.cold.12()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)configurationFromNode:.cold.13()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)sortedPlistFilesWithMainBundle:(void *)a1 faceBundle:(uint8_t *)buf additionalBundles:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_22D9C5000, log, OS_LOG_TYPE_DEBUG, "#plist-loader Color property list files loaded in the following order: %{public}@", buf, 0xCu);
}

@end