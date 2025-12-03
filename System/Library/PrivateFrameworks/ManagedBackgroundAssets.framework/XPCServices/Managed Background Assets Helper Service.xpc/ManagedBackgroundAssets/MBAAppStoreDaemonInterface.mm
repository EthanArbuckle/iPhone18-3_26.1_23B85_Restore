@interface MBAAppStoreDaemonInterface
+ (id)testFlightDownloadManifestRequestForStoreItemIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error;
@end

@implementation MBAAppStoreDaemonInterface

+ (id)testFlightDownloadManifestRequestForStoreItemIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v9 = [sub_1000015C4() testFlightDownloadManifestRequestForStoreItemIdentifier:identifierCopy bundleIdentifier:bundleIdentifierCopy error:error];

  return v9;
}

@end