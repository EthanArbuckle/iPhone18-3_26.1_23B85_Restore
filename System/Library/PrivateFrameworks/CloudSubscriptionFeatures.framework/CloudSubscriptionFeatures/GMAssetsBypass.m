@interface GMAssetsBypass
+ (BOOL)gmAssetsBypass;
- (_TtC25CloudSubscriptionFeatures14GMAssetsBypass)init;
@end

@implementation GMAssetsBypass

+ (BOOL)gmAssetsBypass
{
  if ((sub_1DF548FD8() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED954EE0 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED954EE8;
  v3 = sub_1DF564914();
  LOBYTE(v2) = [v2 BOOLForKey_];

  return v2;
}

- (_TtC25CloudSubscriptionFeatures14GMAssetsBypass)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GMAssetsBypass();
  return [(GMAssetsBypass *)&v3 init];
}

@end