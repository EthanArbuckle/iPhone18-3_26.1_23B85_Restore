@interface GKImageRestrictions
+ (BOOL)isAuthorizedForGamesWithImageData:(id)a3;
+ (CGImage)cgImageForGamesWithData:(id)a3;
@end

@implementation GKImageRestrictions

+ (BOOL)isAuthorizedForGamesWithImageData:(id)a3
{
  v3 = a3;
  v4 = sub_227A71B9C();
  v6 = v5;

  swift_getObjCClassMetadata();
  v7 = sub_227A12B80(v4, v6);
  sub_2279E3FA4(v4, v6);
  return v7;
}

+ (CGImage)cgImageForGamesWithData:(id)a3
{
  v3 = a3;
  v4 = sub_227A71B9C();
  v6 = v5;

  swift_getObjCClassMetadata();
  v7 = sub_227A12E18(v4, v6);
  sub_2279E3FA4(v4, v6);

  return v7;
}

@end