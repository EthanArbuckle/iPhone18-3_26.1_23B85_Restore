@interface BCCloudKitConfiguration
+ (id)configuration;
@end

@implementation BCCloudKitConfiguration

+ (id)configuration
{
  v2 = objc_alloc_init(BCCloudKitConfiguration);
  [(BCCloudKitConfiguration *)v2 setQueueIdentifier:@"com.apple.iBooks.CloudKitController"];
  [(BCCloudKitConfiguration *)v2 setContainerIdentifier:@"com.apple.iBooks.cloudData"];
  v8[0] = @"AssetZone";
  v8[1] = @"ReadingStatistics";
  v8[2] = @"GlobalMetadata";
  v3 = [NSArray arrayWithObjects:v8 count:3];
  [(BCCloudKitConfiguration *)v2 setAppZones:v3];

  v7[0] = @"AssetZone";
  v7[1] = @"ReadingHistoryModel";
  v4 = [NSArray arrayWithObjects:v7 count:2];
  [(BCCloudKitConfiguration *)v2 setServiceZones:v4];

  [(BCCloudKitConfiguration *)v2 setDbArchiveFolderName:@"BCCloudKit-BookDataStoreService"];
  [(BCCloudKitConfiguration *)v2 setDbArchiveExtension:@"bcck"];
  [(BCCloudKitConfiguration *)v2 setDbArchiveFilename:@"BCPrivateDatabase"];
  [(BCCloudKitConfiguration *)v2 setDbSubscriptionID:@"com.apple.iBooks.BCCloudKitPrivate"];
  v5 = +[BDSAppBundleIdentifier bdsAppBundleIdentifier];
  [(BCCloudKitConfiguration *)v2 setAppBundleIdentifier:v5];

  [(BCCloudKitConfiguration *)v2 setRequiresDeviceToDeviceEncryption:0];

  return v2;
}

@end