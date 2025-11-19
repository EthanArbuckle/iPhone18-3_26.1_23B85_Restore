@interface IFImageBag
@end

@implementation IFImageBag

void __60__IFImageBag_IconServicesAdditions__defaultAppIconAssetsBag__block_invoke()
{
  v2 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v0 = [MEMORY[0x1E69A8990] imageBagWithResourcesNamed:@"DefaultIcon" fromBundle:v2];
  v1 = defaultAppIconAssetsBag_bag;
  defaultAppIconAssetsBag_bag = v0;
}

void __60__IFImageBag_IconServicesAdditions__defaultAppClipAssetsBag__block_invoke()
{
  v2 = [MEMORY[0x1E69A8960] iconsetResourceBundle];
  v0 = [MEMORY[0x1E69A8990] imageBagWithResourcesNamed:@"AppClipDefaultIcon" fromBundle:v2];
  v1 = defaultAppClipAssetsBag_bag;
  defaultAppClipAssetsBag_bag = v0;
}

@end