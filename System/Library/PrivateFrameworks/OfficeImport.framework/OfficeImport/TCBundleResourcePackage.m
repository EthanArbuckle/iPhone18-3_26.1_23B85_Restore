@interface TCBundleResourcePackage
- (TCBundleResourcePackage)initWithZipArchive:(id)a3;
- (id)entryWithName:(id)a3 cacheResult:(BOOL)a4;
@end

@implementation TCBundleResourcePackage

- (TCBundleResourcePackage)initWithZipArchive:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TCBundleResourcePackage;
  v6 = [(TCBundleResourcePackage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mZipArchive, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mEntryMap = v7->mEntryMap;
    v7->mEntryMap = v8;
  }

  return v7;
}

- (id)entryWithName:(id)a3 cacheResult:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->mEntryMap objectForKey:v6];
  if (!v7)
  {
    v8 = [(OISFUZipArchive *)self->mZipArchive entryWithName:v6];
    if (v8)
    {
      v7 = [[TCBundleResourcePackageEntry alloc] initWithZipEntry:v8];
      if (v4)
      {
        v9 = self->mEntryMap;
        objc_sync_enter(v9);
        [(NSMutableDictionary *)self->mEntryMap setObject:v7 forKey:v6];
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