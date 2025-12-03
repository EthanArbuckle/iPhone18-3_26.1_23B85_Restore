@interface TCBundleResourcePackage
- (TCBundleResourcePackage)initWithZipArchive:(id)archive;
- (id)entryWithName:(id)name cacheResult:(BOOL)result;
@end

@implementation TCBundleResourcePackage

- (TCBundleResourcePackage)initWithZipArchive:(id)archive
{
  archiveCopy = archive;
  v11.receiver = self;
  v11.super_class = TCBundleResourcePackage;
  v6 = [(TCBundleResourcePackage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mZipArchive, archive);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mEntryMap = v7->mEntryMap;
    v7->mEntryMap = v8;
  }

  return v7;
}

- (id)entryWithName:(id)name cacheResult:(BOOL)result
{
  resultCopy = result;
  nameCopy = name;
  v7 = [(NSMutableDictionary *)self->mEntryMap objectForKey:nameCopy];
  if (!v7)
  {
    v8 = [(OISFUZipArchive *)self->mZipArchive entryWithName:nameCopy];
    if (v8)
    {
      v7 = [[TCBundleResourcePackageEntry alloc] initWithZipEntry:v8];
      if (resultCopy)
      {
        v9 = self->mEntryMap;
        objc_sync_enter(v9);
        [(NSMutableDictionary *)self->mEntryMap setObject:v7 forKey:nameCopy];
        objc_sync_exit(v9);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end