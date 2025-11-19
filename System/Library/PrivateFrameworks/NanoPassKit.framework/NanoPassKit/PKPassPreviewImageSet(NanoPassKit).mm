@interface PKPassPreviewImageSet(NanoPassKit)
- (void)memoryMapImageData;
@end

@implementation PKPassPreviewImageSet(NanoPassKit)

- (void)memoryMapImageData
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 iconImage];
  v4 = [v3 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkPreviewImage-iconImage"];
  [a1 setIconImage:v4];

  v5 = [a1 notificationIconImage];
  v6 = [v5 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkPreviewImage-notificationIconImage"];
  [a1 setNotificationIconImage:v6];

  v7 = [a1 rawIcon];
  v8 = [v7 npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkPreviewImage-rawIcon"];
  [a1 setRawIcon:v8];

  objc_autoreleasePoolPop(v2);
}

@end