@interface NTKGreenfieldSystemAppDeprecatedMappings
+ (BOOL)isSystemAppDeprecatedBundleId:(id)id itemId:(id)itemId;
@end

@implementation NTKGreenfieldSystemAppDeprecatedMappings

+ (BOOL)isSystemAppDeprecatedBundleId:(id)id itemId:(id)itemId
{
  idCopy = id;
  itemIdCopy = itemId;
  if (isSystemAppDeprecatedBundleId_itemId__onceToken != -1)
  {
    +[NTKGreenfieldSystemAppDeprecatedMappings isSystemAppDeprecatedBundleId:itemId:];
  }

  v7 = [isSystemAppDeprecatedBundleId_itemId___deperecatedSysytemAppsBundleIdsToItemIdsMapping objectForKey:idCopy];
  v8 = v7;
  if (v7)
  {
    longValue = [v7 longValue];
    v10 = longValue == [itemIdCopy longValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __81__NTKGreenfieldSystemAppDeprecatedMappings_isSystemAppDeprecatedBundleId_itemId___block_invoke()
{
  v0 = isSystemAppDeprecatedBundleId_itemId___deperecatedSysytemAppsBundleIdsToItemIdsMapping;
  isSystemAppDeprecatedBundleId_itemId___deperecatedSysytemAppsBundleIdsToItemIdsMapping = &unk_284189AE8;
}

@end