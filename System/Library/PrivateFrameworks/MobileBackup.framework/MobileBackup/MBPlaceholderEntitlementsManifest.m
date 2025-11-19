@interface MBPlaceholderEntitlementsManifest
- (BOOL)writeToFile:(id)a3 error:(id *)a4;
- (MBPlaceholderEntitlementsManifest)init;
- (MBPlaceholderEntitlementsManifest)initWithFile:(id)a3 error:(id *)a4;
- (id)propertyList;
- (void)addEntriesForApp:(id)a3;
- (void)addEntriesForApps:(id)a3;
- (void)dealloc;
@end

@implementation MBPlaceholderEntitlementsManifest

- (MBPlaceholderEntitlementsManifest)init
{
  v4.receiver = self;
  v4.super_class = MBPlaceholderEntitlementsManifest;
  v2 = [(MBPlaceholderEntitlementsManifest *)&v4 init];
  if (v2)
  {
    v2->_entries = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (MBPlaceholderEntitlementsManifest)initWithFile:(id)a3 error:(id *)a4
{
  v6 = [NSData dataWithContentsOfFile:a3 options:0 error:a4];
  if (!v6)
  {
    return 0;
  }

  v7 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:a4];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v20.receiver = self;
  v20.super_class = MBPlaceholderEntitlementsManifest;
  v9 = [(MBPlaceholderEntitlementsManifest *)&v20 init];
  if (v9)
  {
    v9->_entries = objc_alloc_init(NSMutableArray);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [[MBPlaceholderEntitlements alloc] initWithPropertyList:*(*(&v16 + 1) + 8 * i)];
          [(NSMutableArray *)v9->_entries addObject:v14];
        }

        v11 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBPlaceholderEntitlementsManifest;
  [(MBPlaceholderEntitlementsManifest *)&v3 dealloc];
}

- (void)addEntriesForApp:(id)a3
{
  if (([a3 isSystemApp] & 1) == 0)
  {
    v5 = [objc_msgSend(a3 "bundleDir")];
    v6 = [v5 stringByDeletingLastPathComponent];
    v7 = -[MBPlaceholderEntitlements initWithBundleID:relativePath:entitlements:]([MBPlaceholderEntitlements alloc], "initWithBundleID:relativePath:entitlements:", [a3 bundleID], objc_msgSend(objc_msgSend(v5, "substringFromIndex:", objc_msgSend(v6, "length") + 1), "stringByAppendingPathComponent:", @"PlaceholderEntitlements.plist"), objc_msgSend(a3, "entitlements"));
    [(NSMutableArray *)self->_entries addObject:v7];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = [a3 plugins];
    v8 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = -[MBPlaceholderEntitlements initWithBundleID:relativePath:entitlements:]([MBPlaceholderEntitlements alloc], "initWithBundleID:relativePath:entitlements:", [a3 bundleID], objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v14 + 1) + 8 * v11), "bundleDir"), "stringByStandardizingPath"), "substringFromIndex:", objc_msgSend(v6, "length") + 1), "stringByAppendingPathComponent:", @"PlaceholderEntitlements.plist"), objc_msgSend(*(*(&v14 + 1) + 8 * v11), "entitlements"));
          [(NSMutableArray *)self->_entries addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }
}

- (void)addEntriesForApps:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [(MBPlaceholderEntitlementsManifest *)self addEntriesForApp:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)propertyList
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  entries = self->_entries;
  v5 = [(NSMutableArray *)entries countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(entries);
        }

        [v3 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8), "propertyList")}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)entries countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)writeToFile:(id)a3 error:(id *)a4
{
  v6 = [NSPropertyListSerialization dataWithPropertyList:[(MBPlaceholderEntitlementsManifest *)self propertyList] format:200 options:0 error:a4];
  if (v6)
  {

    LOBYTE(v6) = [(NSData *)v6 writeToFile:a3 options:1 error:a4];
  }

  return v6;
}

@end