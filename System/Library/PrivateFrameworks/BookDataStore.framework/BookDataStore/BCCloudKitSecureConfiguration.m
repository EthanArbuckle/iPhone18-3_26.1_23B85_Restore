@interface BCCloudKitSecureConfiguration
+ (id)configuration;
@end

@implementation BCCloudKitSecureConfiguration

+ (id)configuration
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(BCCloudKitSecureConfiguration);
  [(BCCloudKitSecureConfiguration *)v2 setQueueIdentifier:@"com.apple.iBooks.SecureCloudKitController"];
  [(BCCloudKitSecureConfiguration *)v2 setContainerIdentifier:@"com.apple.iBooks.secureData"];
  v8[0] = @"SecureUserDataZone";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(BCCloudKitSecureConfiguration *)v2 setAppZones:v3];

  v7 = @"SecureUserDataZone";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  [(BCCloudKitSecureConfiguration *)v2 setServiceZones:v4];

  [(BCCloudKitSecureConfiguration *)v2 setDbArchiveFolderName:@"BCCloudKit-iBooksSecure"];
  [(BCCloudKitSecureConfiguration *)v2 setDbArchiveExtension:@"bcck"];
  [(BCCloudKitSecureConfiguration *)v2 setDbArchiveFilename:@"BCPrivateDatabaseSecure"];
  [(BCCloudKitSecureConfiguration *)v2 setDbSubscriptionID:@"com.apple.iBooks.BCCloudKitSecure"];
  [(BCCloudKitSecureConfiguration *)v2 setAppBundleIdentifier:@"com.apple.iBooks"];
  [(BCCloudKitSecureConfiguration *)v2 setRequiresDeviceToDeviceEncryption:1];
  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

@end