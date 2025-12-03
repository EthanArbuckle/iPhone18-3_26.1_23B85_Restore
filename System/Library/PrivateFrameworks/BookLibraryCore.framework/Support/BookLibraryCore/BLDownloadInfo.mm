@interface BLDownloadInfo
+ (BOOL)_shouldBeDiscretionary:(id)discretionary;
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
  managedObjectContext = [(BLDownloadInfo *)self managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009CE6C;
  v8[3] = &unk_10011D1A8;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v8];

  v6 = v5;
  return v5;
}

- (unint64_t)fileSize
{
  v2 = [(BLDownloadInfo *)self size];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)forceNonDiscretionary
{
  isAutomaticDownload = [(BLDownloadInfo *)self isAutomaticDownload];

  if (isAutomaticDownload)
  {
    [(BLDownloadInfo *)self setIsAutomaticDownload:&__kCFBooleanFalse];
    v5 = +[BLDownloadInfo forcedNonDiscretionaryAssetIDs];
    storeIdentifier = [(BLDownloadInfo *)self storeIdentifier];
    [v5 addObject:storeIdentifier];
  }
}

+ (BOOL)_shouldBeDiscretionary:(id)discretionary
{
  discretionaryCopy = discretionary;
  isAutomaticDownload = [discretionaryCopy isAutomaticDownload];
  bOOLValue = [isAutomaticDownload BOOLValue];

  isRestore = [discretionaryCopy isRestore];
  bOOLValue2 = [isRestore BOOLValue];

  LOBYTE(isRestore) = 0;
  if (bOOLValue && (bOOLValue2 & 1) == 0)
  {
    forcedNonDiscretionaryAssetIDs = [self forcedNonDiscretionaryAssetIDs];
    storeIdentifier = [discretionaryCopy storeIdentifier];
    LODWORD(isRestore) = [forcedNonDiscretionaryAssetIDs containsObject:storeIdentifier] ^ 1;
  }

  return isRestore;
}

@end