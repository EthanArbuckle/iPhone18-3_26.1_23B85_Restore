@interface TCBundleResourceManager
+ (id)instance;
+ (void)disposeInstance;
- (TCBundleResourceManager)init;
- (_xmlDoc)xmlDocumentForResource:(id)resource ofType:(id)type inPackage:(id)package;
- (id)dataForResource:(id)resource ofType:(id)type inPackage:(id)package cacheResult:(BOOL)result;
- (id)packageEntryForResource:(id)resource ofType:(id)type inPackage:(id)package;
- (id)packageWithName:(id)name cacheResult:(BOOL)result;
@end

@implementation TCBundleResourceManager

+ (id)instance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = sInstance;
  if (!sInstance)
  {
    v4 = objc_alloc_init(TCBundleResourceManager);
    v5 = sInstance;
    sInstance = v4;

    v3 = sInstance;
  }

  v6 = v3;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (void)disposeInstance
{
  obj = self;
  objc_sync_enter(obj);
  v2 = sInstance;
  if (sInstance)
  {
    sInstance = 0;
  }

  objc_sync_exit(obj);
}

- (TCBundleResourceManager)init
{
  v6.receiver = self;
  v6.super_class = TCBundleResourceManager;
  v2 = [(TCBundleResourceManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mPackageMap = v2->mPackageMap;
    v2->mPackageMap = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)dataForResource:(id)resource ofType:(id)type inPackage:(id)package cacheResult:(BOOL)result
{
  resultCopy = result;
  resourceCopy = resource;
  typeCopy = type;
  packageCopy = package;
  [TCBundleResourceDebugEntry addEntry:resourceCopy ofType:typeCopy inPackage:packageCopy cacheResult:resultCopy];
  v13 = [(TCBundleResourceManager *)self packageWithName:packageCopy cacheResult:resultCopy];
  if (v13)
  {
    v14 = [resourceCopy stringByAppendingPathExtension:typeCopy];
    v15 = [v13 entryWithName:v14 cacheResult:resultCopy];
    if (!v15)
    {
      [TCBundleResourceException raise:@"TCBundleResourcePackageEntryNotFoundError" format:@"Entry %@ not found in package %@", v14, packageCopy];
    }

    data = [v15 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)packageEntryForResource:(id)resource ofType:(id)type inPackage:(id)package
{
  resourceCopy = resource;
  typeCopy = type;
  packageCopy = package;
  [TCBundleResourceDebugEntry addEntry:resourceCopy ofType:typeCopy inPackage:packageCopy cacheResult:0];
  v11 = [(TCBundleResourceManager *)self packageWithName:packageCopy cacheResult:0];
  if (v11)
  {
    v12 = [resourceCopy stringByAppendingPathExtension:typeCopy];
    v13 = [v11 entryWithName:v12 cacheResult:0];
    if (!v13)
    {
      [TCBundleResourceException raise:@"TCBundleResourcePackageEntryNotFoundError" format:@"Entry %@ not found in package %@", v12, packageCopy];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_xmlDoc)xmlDocumentForResource:(id)resource ofType:(id)type inPackage:(id)package
{
  resourceCopy = resource;
  typeCopy = type;
  packageCopy = package;
  [TCBundleResourceDebugEntry addEntry:resourceCopy ofType:typeCopy inPackage:packageCopy cacheResult:1];
  v11 = [(TCBundleResourceManager *)self packageWithName:packageCopy cacheResult:1];
  if (v11)
  {
    v12 = [resourceCopy stringByAppendingPathExtension:typeCopy];
    v13 = [v11 entryWithName:v12 cacheResult:1];
    if (!v13)
    {
      [TCBundleResourceException raise:@"TCBundleResourcePackageEntryNotFoundError" format:@"Entry %@ not found in package %@", v12, packageCopy];
    }

    xmlDocument = [v13 xmlDocument];
  }

  else
  {
    xmlDocument = 0;
  }

  return xmlDocument;
}

- (id)packageWithName:(id)name cacheResult:(BOOL)result
{
  resultCopy = result;
  nameCopy = name;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->mPackageMap objectForKey:nameCopy];
  if (!v7)
  {
    v8 = TCBundle();
    v9 = [v8 pathForResource:nameCopy ofType:@"zip"];

    if (!v9)
    {
      os_unfair_lock_unlock(&self->_lock);
      [TCBundleResourceException raise:@"TCBundleResourcePackageNotFound" format:@"Couldn't find bundle resource package named %@", nameCopy];
    }

    v10 = [[OISFUZipArchive alloc] initWithPath:v9 collapseCommonRootDirectory:0];
    if (v10)
    {
      v7 = [[TCBundleResourcePackage alloc] initWithZipArchive:v10];
      if (resultCopy)
      {
        v11 = self->mPackageMap;
        objc_sync_enter(v11);
        [(NSMutableDictionary *)self->mPackageMap setObject:v7 forKey:nameCopy];
        objc_sync_exit(v11);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

@end