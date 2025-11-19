@interface CLBAppIcons
+ (BOOL)shouldDownloadForBundleIdentifier:(id)a3;
+ (CGSize)size;
+ (id)urlForBundleIdentifier:(id)a3;
- (CLBAppIcons)init;
@end

@implementation CLBAppIcons

+ (id)urlForBundleIdentifier:(id)a3
{
  v3 = sub_243517B0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243517C7C();
  static CLBAppIcons.url(for:)(v8, v9, v7);

  v10 = sub_243517ABC();
  (*(v4 + 8))(v7, v3);

  return v10;
}

+ (CGSize)size
{
  v2 = 1024.0;
  v3 = 1024.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (BOOL)shouldDownloadForBundleIdentifier:(id)a3
{
  v3 = sub_243517C7C();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = static CLBAppIcons.shouldDownload(for:)(v3, v5);

  return v6 & 1;
}

- (CLBAppIcons)init
{
  v3.receiver = self;
  v3.super_class = CLBAppIcons;
  return [(CLBAppIcons *)&v3 init];
}

@end