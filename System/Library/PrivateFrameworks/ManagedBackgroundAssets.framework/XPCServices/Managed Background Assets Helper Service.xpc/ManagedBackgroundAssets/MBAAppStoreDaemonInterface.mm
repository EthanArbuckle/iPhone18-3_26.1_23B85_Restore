@interface MBAAppStoreDaemonInterface
+ (id)testFlightDownloadManifestRequestForStoreItemIdentifier:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
@end

@implementation MBAAppStoreDaemonInterface

+ (id)testFlightDownloadManifestRequestForStoreItemIdentifier:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [sub_1000015C4() testFlightDownloadManifestRequestForStoreItemIdentifier:v8 bundleIdentifier:v7 error:a5];

  return v9;
}

@end