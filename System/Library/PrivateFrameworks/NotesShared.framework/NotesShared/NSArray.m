@interface NSArray
@end

@implementation NSArray

void __82__NSArray_PreviewDeviceInfoAppearanceAdditions__ic_deviceInfosByAddingAppearances__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [ICAppearanceInfo appearanceInfoWithType:a2];
  v5 = [v3 deviceInfoFromAddingAppearanceInfo:v4];

  [*(a1 + 40) addObject:v5];
}

@end