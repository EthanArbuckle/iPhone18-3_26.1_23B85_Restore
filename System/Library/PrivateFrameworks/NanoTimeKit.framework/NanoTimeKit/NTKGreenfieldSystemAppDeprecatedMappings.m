@interface NTKGreenfieldSystemAppDeprecatedMappings
+ (BOOL)isSystemAppDeprecatedBundleId:(id)a3 itemId:(id)a4;
@end

@implementation NTKGreenfieldSystemAppDeprecatedMappings

+ (BOOL)isSystemAppDeprecatedBundleId:(id)a3 itemId:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (isSystemAppDeprecatedBundleId_itemId__onceToken != -1)
  {
    +[NTKGreenfieldSystemAppDeprecatedMappings isSystemAppDeprecatedBundleId:itemId:];
  }

  v7 = [isSystemAppDeprecatedBundleId_itemId___deperecatedSysytemAppsBundleIdsToItemIdsMapping objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 longValue];
    v10 = v9 == [v6 longValue];
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