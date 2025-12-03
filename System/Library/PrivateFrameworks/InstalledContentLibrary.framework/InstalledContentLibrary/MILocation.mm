@interface MILocation
+ (id)URLForLocation:(id)location isAppBundle:(BOOL *)bundle error:(id *)error;
+ (id)locationFromPlistDictionary:(id)dictionary error:(id *)error;
+ (id)plistDictionaryFromLocation:(id)location;
+ (id)volumeUUIDForLocation:(id)location error:(id *)error;
- (MILocation)init;
@end

@implementation MILocation

+ (id)locationFromPlistDictionary:(id)dictionary error:(id *)error
{
  v4 = sub_1B1756F38();
  v5 = sub_1B17522D4(v4);

  return v5;
}

+ (id)plistDictionaryFromLocation:(id)location
{
  swift_unknownObjectRetain();
  sub_1B1752630(location);
  swift_unknownObjectRelease();
  v4 = sub_1B1756F28();

  return v4;
}

+ (id)URLForLocation:(id)location isAppBundle:(BOOL *)bundle error:(id *)error
{
  v6 = sub_1B1756EE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_unknownObjectRetain();
  sub_1B175101C(v10, bundle);
  swift_unknownObjectRelease();
  v11 = sub_1B1756EA8();
  (*(v7 + 8))(v9, v6);

  return v11;
}

+ (id)volumeUUIDForLocation:(id)location error:(id *)error
{
  v4 = sub_1B1756F18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_unknownObjectRetain();
  sub_1B1751320(v8);
  swift_unknownObjectRelease();
  v9 = sub_1B1756EF8();
  (*(v5 + 8))(v7, v4);

  return v9;
}

- (MILocation)init
{
  v3.receiver = self;
  v3.super_class = MILocation;
  return [(MILocation *)&v3 init];
}

@end