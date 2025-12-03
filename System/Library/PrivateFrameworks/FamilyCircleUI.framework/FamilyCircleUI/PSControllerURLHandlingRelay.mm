@interface PSControllerURLHandlingRelay
+ (NSString)specifierKey;
- (NSDictionary)resourceDictionary;
- (_TtC14FamilyCircleUI28PSControllerURLHandlingRelay)init;
- (void)setResourceDictionary:(id)dictionary;
@end

@implementation PSControllerURLHandlingRelay

+ (NSString)specifierKey
{
  v2 = sub_21BE289CC();

  return v2;
}

- (NSDictionary)resourceDictionary
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_21BE288EC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setResourceDictionary:(id)dictionary
{
  if (dictionary)
  {
    v4 = sub_21BE2890C();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC14FamilyCircleUI28PSControllerURLHandlingRelay)init
{
  *(self + OBJC_IVAR____TtC14FamilyCircleUI28PSControllerURLHandlingRelay_resourceDictionary) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PSControllerURLHandlingRelay();
  return [(PSControllerURLHandlingRelay *)&v3 init];
}

@end