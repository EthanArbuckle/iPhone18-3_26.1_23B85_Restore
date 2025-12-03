@interface MILocationSystemDefinedCommon
+ (NSString)plistTypeName;
- (BOOL)isEqual:(id)equal;
- (MILocationSystemDefinedCommon)init;
- (NSDictionary)plistDictionary;
- (NSString)description;
- (id)initInternal;
@end

@implementation MILocationSystemDefinedCommon

- (MILocationSystemDefinedCommon)init
{
  v3.receiver = self;
  v3.super_class = MILocationSystemDefinedCommon;
  return [(MILocationSystemDefinedBase *)&v3 initInternal];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B1756FC8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = MILocationSystemDefinedCommon.isEqual(_:)(v8);

  sub_1B16A3F74(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = sub_1B1756F58();

  return v2;
}

- (id)initInternal
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSDictionary)plistDictionary
{
  sub_1B174EB18(MEMORY[0x1E69E7CC0]);
  v2 = sub_1B1756F28();

  return v2;
}

+ (NSString)plistTypeName
{
  v2 = sub_1B1756F58();

  return v2;
}

@end