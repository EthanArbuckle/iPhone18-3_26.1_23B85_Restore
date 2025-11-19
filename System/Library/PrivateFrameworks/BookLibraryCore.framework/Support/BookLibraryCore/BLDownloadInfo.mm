@interface BLDownloadInfo
+ (BOOL)_shouldBeDiscretionary:(id)a3;
+ (NSMutableSet)forcedNonDiscretionaryAssetIDs;
- (id)createDownload;
- (unint64_t)fileSize;
- (void)forceNonDiscretionary;
@end

@implementation BLDownloadInfo

+ (NSMutableSet)forcedNonDiscretionaryAssetIDs
{
  if (qword_10013EC18 != -1)
  {
    sub_1000CB3D8();
  }

  v3 = qword_10013EC10;

  return v3;
}

- (id)createDownload
{
  v3 = objc_opt_new();
  v4 = [(BLDownloadInfo *)self managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009CE6C;
  v8[3] = &unk_10011D1A8;
  v5 = v3;
  v9 = v5;
  v10 = self;
  [v4 performBlockAndWait:v8];

  v6 = v5;
  return v5;
}

- (unint64_t)fileSize
{
  v2 = [(BLDownloadInfo *)self size];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)forceNonDiscretionary
{
  v3 = [(BLDownloadInfo *)self isAutomaticDownload];

  if (v3)
  {
    [(BLDownloadInfo *)self setIsAutomaticDownload:&__kCFBooleanFalse];
    v5 = +[BLDownloadInfo forcedNonDiscretionaryAssetIDs];
    v4 = [(BLDownloadInfo *)self storeIdentifier];
    [v5 addObject:v4];
  }
}

+ (BOOL)_shouldBeDiscretionary:(id)a3
{
  v4 = a3;
  v5 = [v4 isAutomaticDownload];
  v6 = [v5 BOOLValue];

  v8 = [v4 isRestore];
  v7 = [v8 BOOLValue];

  LOBYTE(v8) = 0;
  if (v6 && (v7 & 1) == 0)
  {
    v9 = [a1 forcedNonDiscretionaryAssetIDs];
    v10 = [v4 storeIdentifier];
    LODWORD(v8) = [v9 containsObject:v10] ^ 1;
  }

  return v8;
}

@end