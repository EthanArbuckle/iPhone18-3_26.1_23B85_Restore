@interface JSCloudLibraryStatusProvider
- (JSValue)isCloudLibraryEnabled;
- (JSValue)isCloudLibraryLoaded;
- (void)setIsCloudLibraryEnabled:(void *)a3;
@end

@implementation JSCloudLibraryStatusProvider

- (void)setIsCloudLibraryEnabled:(void *)a3
{
  v4 = a3;
  v5 = a1;
}

- (JSValue)isCloudLibraryEnabled
{
  v2 = self;
  v3 = sub_216ECD918();

  return v3;
}

- (JSValue)isCloudLibraryLoaded
{
  v2 = self;
  v3 = sub_216ECD970();

  return v3;
}

@end