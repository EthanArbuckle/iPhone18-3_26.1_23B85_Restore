@interface PKPassPreviewImageSet(NanoPassKit)
- (void)memoryMapImageData;
@end

@implementation PKPassPreviewImageSet(NanoPassKit)

- (void)memoryMapImageData
{
  v2 = objc_autoreleasePoolPush();
  iconImage = [self iconImage];
  v4 = [iconImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkPreviewImage-iconImage"];
  [self setIconImage:v4];

  notificationIconImage = [self notificationIconImage];
  v6 = [notificationIconImage npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkPreviewImage-notificationIconImage"];
  [self setNotificationIconImage:v6];

  rawIcon = [self rawIcon];
  v8 = [rawIcon npkImageByMemoryMappingDataWithTemporaryFilePrefix:@"npkPreviewImage-rawIcon"];
  [self setRawIcon:v8];

  objc_autoreleasePoolPop(v2);
}

@end