@interface BCCloudKitSecureConfiguration
+ (id)configuration;
@end

@implementation BCCloudKitSecureConfiguration

+ (id)configuration
{
  v2 = objc_alloc_init(BCCloudKitSecureConfiguration);
  [(BCCloudKitSecureConfiguration *)v2 setQueueIdentifier:@"com.apple.iBooks.SecureCloudKitController"];
  [(BCCloudKitSecureConfiguration *)v2 setContainerIdentifier:@"com.apple.iBooks.secureData"];
  v7 = @"SecureUserDataZone";
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  [(BCCloudKitSecureConfiguration *)v2 setAppZones:v3];

  v6 = @"SecureUserDataZone";
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [(BCCloudKitSecureConfiguration *)v2 setServiceZones:v4];

  [(BCCloudKitSecureConfiguration *)v2 setDbArchiveFolderName:@"BCCloudKit-BookDataStoreServiceSecure"];
  [(BCCloudKitSecureConfiguration *)v2 setDbArchiveExtension:@"bcck"];
  [(BCCloudKitSecureConfiguration *)v2 setDbArchiveFilename:@"BCPrivateDatabaseSecure"];
  [(BCCloudKitSecureConfiguration *)v2 setDbSubscriptionID:@"com.apple.iBooks.BCCloudKitSecure"];
  [(BCCloudKitSecureConfiguration *)v2 setAppBundleIdentifier:@"com.apple.iBooks"];
  [(BCCloudKitSecureConfiguration *)v2 setRequiresDeviceToDeviceEncryption:1];

  return v2;
}

@end