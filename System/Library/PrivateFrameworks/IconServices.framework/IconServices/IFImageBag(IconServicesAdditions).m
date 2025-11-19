@interface IFImageBag(IconServicesAdditions)
+ (id)defaultAppClipAssetsBag;
+ (id)defaultAppIconAssetsBag;
@end

@implementation IFImageBag(IconServicesAdditions)

+ (id)defaultAppIconAssetsBag
{
  if (defaultAppIconAssetsBag_onceToken != -1)
  {
    +[IFImageBag(IconServicesAdditions) defaultAppIconAssetsBag];
  }

  v0 = defaultAppIconAssetsBag_bag;
  if (!defaultAppIconAssetsBag_bag)
  {
    v1 = _ISDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      +[(IFImageBag(IconServicesAdditions) *)v1];
    }

    v0 = defaultAppIconAssetsBag_bag;
  }

  return v0;
}

+ (id)defaultAppClipAssetsBag
{
  if (defaultAppClipAssetsBag_onceToken != -1)
  {
    +[IFImageBag(IconServicesAdditions) defaultAppClipAssetsBag];
  }

  v0 = defaultAppClipAssetsBag_bag;
  if (!defaultAppClipAssetsBag_bag)
  {
    v1 = _ISDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      [(ISStaticResources *)v1 genericAppClipIconResource];
    }

    v0 = defaultAppClipAssetsBag_bag;
  }

  return v0;
}

@end