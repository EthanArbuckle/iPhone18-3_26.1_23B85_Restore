@interface JSCloudLibraryStatusProvider
- (JSValue)isCloudLibraryEnabled;
- (JSValue)isCloudLibraryLoaded;
- (void)setIsCloudLibraryEnabled:(void *)enabled;
@end

@implementation JSCloudLibraryStatusProvider

- (void)setIsCloudLibraryEnabled:(void *)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
}

- (JSValue)isCloudLibraryEnabled
{
  selfCopy = self;
  v3 = sub_216ECD918();

  return v3;
}

- (JSValue)isCloudLibraryLoaded
{
  selfCopy = self;
  v3 = sub_216ECD970();

  return v3;
}

@end