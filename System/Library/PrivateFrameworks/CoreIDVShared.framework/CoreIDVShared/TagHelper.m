@interface TagHelper
+ (NSArray)authMaterialAPDUHeader;
+ (NSArray)ldsAppId;
- (_TtC13CoreIDVShared9TagHelper)init;
@end

@implementation TagHelper

+ (NSArray)ldsAppId
{
  v2 = sub_225CCE7F4();

  return v2;
}

+ (NSArray)authMaterialAPDUHeader
{
  v2 = sub_225CCE7F4();

  return v2;
}

- (_TtC13CoreIDVShared9TagHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TagHelper();
  return [(TagHelper *)&v3 init];
}

@end