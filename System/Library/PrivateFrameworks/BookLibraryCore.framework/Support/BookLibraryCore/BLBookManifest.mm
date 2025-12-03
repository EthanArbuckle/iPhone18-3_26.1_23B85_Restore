@interface BLBookManifest
+ (id)purchasedBookManifest;
+ (id)sharedPurchasedBookManifest;
+ (id)syncedBookManifest;
+ (void)unloadPurchaseManifest;
- (BLBookManifest)initWithManifestPath:(id)path;
- (BOOL)removeManifestEntryWithDownloadPermalink:(id)permalink;
- (BOOL)removeManifestEntryWithPackageHash:(id)hash;
- (BOOL)removeManifestEntryWithStoreItemID:(id)d;
- (id)_entries;
- (id)_manifest;
- (id)_stringFromObject:(id)object;
- (id)bookPathForAdamID:(id)d withPublicationVersion:(id)version;
- (id)bookPathPermalink:(id)permalink;
- (id)manifestEntriesWithProperty:(id)property equalToNumber:(id)number limitCount:(int64_t)count;
- (id)manifestEntriesWithProperty:(id)property equalToValue:(id)value limitCount:(int64_t)count;
- (id)manifestEntryForAdamID:(id)d withPublicationVersion:(id)version;
- (void)_invalidateAfterExternalChange;
- (void)addManifestEntries:(id)entries;
- (void)addManifestEntry:(id)entry;
- (void)dealloc;
- (void)synchronizeData;
@end

@implementation BLBookManifest

- (BLBookManifest)initWithManifestPath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = BLBookManifest;
  v5 = [(BLBookManifest *)&v13 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ibooks.BLService.BLBookManifest", v6);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v7;

    v9 = [pathCopy copy];
    manifestPath = v5->_manifestPath;
    v5->_manifestPath = v9;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_1000AB120, @"com.apple.books.plist.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v5;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.books.plist.changed", 0);
  v4.receiver = self;
  v4.super_class = BLBookManifest;
  [(BLBookManifest *)&v4 dealloc];
}

+ (void)unloadPurchaseManifest
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BLManifestTestEnv"];

  if (v3)
  {
    v4 = qword_10013EC48;
    qword_10013EC48 = 0;
  }
}

+ (id)purchasedBookManifest
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"BLManifestTestEnv"];

  if (v3)
  {
    v4 = [IMLibraryPlist libraryPlistWithKind:1];
    v5 = [BLBookManifest alloc];
    path = [v4 path];
    v7 = [(BLBookManifest *)v5 initWithManifestPath:path];
    v8 = qword_10013EC48;
    qword_10013EC48 = v7;
  }

  else if (qword_10013EC60 != -1)
  {
    sub_1000CB400();
  }

  v9 = qword_10013EC48;

  return v9;
}

+ (id)sharedPurchasedBookManifest
{
  if (qword_10013EC68 != -1)
  {
    sub_1000CB414();
  }

  v2 = qword_10013EC50;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 valueForKey:@"BLLibrarySimulateMultiUser"];

  if (v4)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [v5 BOOLForKey:@"BLLibrarySimulateMultiUser"];

    if (v6)
    {
      v7 = [IMLibraryPlist libraryPlistWithKind:3];
      path = [v7 path];
      if (path)
      {
        v9 = [BLBookManifest alloc];
        path2 = [v7 path];
        v11 = [(BLBookManifest *)v9 initWithManifestPath:path2];

        v2 = path2;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v7 = v2;
    }

    v2 = v11;
  }

  return v2;
}

+ (id)syncedBookManifest
{
  if (qword_10013EC70 != -1)
  {
    sub_1000CB428();
  }

  v3 = qword_10013EC58;

  return v3;
}

- (void)addManifestEntry:(id)entry
{
  if (entry)
  {
    entryCopy = entry;
    entryCopy2 = entry;
    v5 = [NSArray arrayWithObjects:&entryCopy count:1];

    [(BLBookManifest *)self addManifestEntries:v5, entryCopy];
  }
}

- (void)addManifestEntries:(id)entries
{
  entriesCopy = entries;
  dispatchQueue = [(BLBookManifest *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AB78C;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = entriesCopy;
  v6 = entriesCopy;
  dispatch_sync(dispatchQueue, v7);
}

- (id)bookPathPermalink:(id)permalink
{
  permalinkCopy = permalink;
  if (!permalinkCopy)
  {
    goto LABEL_5;
  }

  v5 = [(BLBookManifest *)self manifestEntriesWithProperty:@"iTunesU Permlink" equalToValue:permalinkCopy limitCount:1];
  if ([v5 count] != 1)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v6 = [v5 objectAtIndex:0];

  if (!v6)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [v6 objectForKey:@"Path"];
  v8 = [(BLBookManifest *)self _stringFromObject:v7];

  v5 = v6;
LABEL_7:

LABEL_8:

  return v8;
}

- (id)bookPathForAdamID:(id)d withPublicationVersion:(id)version
{
  v5 = [(BLBookManifest *)self manifestEntryForAdamID:d withPublicationVersion:version];
  v6 = [v5 objectForKey:@"Path"];
  v7 = [(BLBookManifest *)self _stringFromObject:v6];

  return v7;
}

- (id)manifestEntryForAdamID:(id)d withPublicationVersion:(id)version
{
  dCopy = d;
  versionCopy = version;
  if (!dCopy)
  {
    goto LABEL_8;
  }

  v8 = [(BLBookManifest *)self manifestEntriesWithProperty:@"s" equalToValue:dCopy limitCount:1];
  if ([v8 count] == 1)
  {
    v9 = [v8 objectAtIndex:0];

    if (v9)
    {
      objc_opt_class();
      v10 = [v9 objectForKey:@"Publication Version"];
      v11 = BUDynamicCast();

      v12 = 0;
      if (versionCopy && v11)
      {
        if ([v11 isEqualToNumber:versionCopy])
        {
          v9 = v9;
          v12 = v9;
        }

        else
        {
          v12 = 0;
        }
      }

      v8 = v9;
      goto LABEL_12;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_12:

LABEL_13:

  return v12;
}

- (id)manifestEntriesWithProperty:(id)property equalToValue:(id)value limitCount:(int64_t)count
{
  propertyCopy = property;
  valueCopy = value;
  v10 = +[NSMutableArray array];
  dispatchQueue = [(BLBookManifest *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ABD34;
  block[3] = &unk_10011E708;
  block[4] = self;
  v19 = propertyCopy;
  v20 = valueCopy;
  v12 = v10;
  v21 = v12;
  countCopy = count;
  v13 = valueCopy;
  v14 = propertyCopy;
  dispatch_sync(dispatchQueue, block);

  v15 = v21;
  v16 = v12;

  return v12;
}

- (id)manifestEntriesWithProperty:(id)property equalToNumber:(id)number limitCount:(int64_t)count
{
  propertyCopy = property;
  numberCopy = number;
  v10 = +[NSMutableArray array];
  dispatchQueue = [(BLBookManifest *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ABFFC;
  block[3] = &unk_10011E708;
  block[4] = self;
  v19 = propertyCopy;
  v20 = numberCopy;
  v12 = v10;
  v21 = v12;
  countCopy = count;
  v13 = numberCopy;
  v14 = propertyCopy;
  dispatch_sync(dispatchQueue, block);

  v15 = v21;
  v16 = v12;

  return v12;
}

- (BOOL)removeManifestEntryWithStoreItemID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatchQueue = [(BLBookManifest *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC35C;
  block[3] = &unk_10011E228;
  block[4] = self;
  v9 = dCopy;
  v10 = &v11;
  v6 = dCopy;
  dispatch_sync(dispatchQueue, block);

  LOBYTE(dCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

- (BOOL)removeManifestEntryWithDownloadPermalink:(id)permalink
{
  permalinkCopy = permalink;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatchQueue = [(BLBookManifest *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC654;
  block[3] = &unk_10011E228;
  block[4] = self;
  v9 = permalinkCopy;
  v10 = &v11;
  v6 = permalinkCopy;
  dispatch_sync(dispatchQueue, block);

  LOBYTE(permalinkCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return permalinkCopy;
}

- (BOOL)removeManifestEntryWithPackageHash:(id)hash
{
  hashCopy = hash;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatchQueue = [(BLBookManifest *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC930;
  block[3] = &unk_10011E228;
  block[4] = self;
  v9 = hashCopy;
  v10 = &v11;
  v6 = hashCopy;
  dispatch_sync(dispatchQueue, block);

  LOBYTE(hashCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return hashCopy;
}

- (void)synchronizeData
{
  dispatchQueue = [(BLBookManifest *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACBA4;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

- (id)_entries
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  _manifest = [(BLBookManifest *)self _manifest];
  objc_opt_class();
  v4 = [_manifest objectForKey:@"Books"];
  v5 = BUDynamicCast();

  if (!v5)
  {
    objc_opt_class();
    v6 = [_manifest objectForKey:@"Purchases"];
    v5 = BUDynamicCast();
  }

  return v5;
}

- (void)_invalidateAfterExternalChange
{
  v3 = BLBookInstallLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    manifestPath = self->_manifestPath;
    *buf = 138412290;
    v8 = manifestPath;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[BookManifest]: Invalidating after external change: %@", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACDD4;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)_manifest
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  manifest = self->_manifest;
  if (!manifest)
  {
    v4 = objc_alloc_init(NSFileManager);
    if (([v4 fileExistsAtPath:self->_manifestPath] & 1) == 0)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      v14 = self->_manifest;
      self->_manifest = v13;

LABEL_13:
      manifest = self->_manifest;
      goto LABEL_14;
    }

    v5 = [NSData alloc];
    manifestPath = self->_manifestPath;
    v19 = 0;
    v7 = [v5 initWithContentsOfFile:manifestPath options:0 error:&v19];
    v8 = v19;
    if (v7)
    {
      v18 = 0;
      v9 = [NSPropertyListSerialization propertyListWithData:v7 options:2 format:0 error:&v18];
      v10 = v18;

      v11 = self->_manifest;
      self->_manifest = v9;

      if (self->_manifest)
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = BLBookInstallLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[BookManifest]: Could not unserialize data: %{public}@", buf, 0xCu);
      }

      v8 = v10;
    }

    else
    {
      v12 = BLBookInstallLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v21 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[BookManifest]: Could not read data: %{public}@", buf, 0xCu);
      }
    }

    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = self->_manifest;
    self->_manifest = v15;

    v10 = v8;
    goto LABEL_12;
  }

LABEL_14:

  return manifest;
}

- (id)_stringFromObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      stringValue = BUDynamicCast();
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v5 = BUDynamicCast();
      stringValue = [v5 stringValue];

      goto LABEL_10;
    }

    v6 = BLDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = objectCopy;
      v11 = 2114;
      v12 = objc_opt_class();
      v7 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "The object [%@] of class: [%{public}@] could not be converted to neither an NSString nor an NSNumber", &v9, 0x16u);
    }
  }

  stringValue = 0;
LABEL_10:

  return stringValue;
}

@end