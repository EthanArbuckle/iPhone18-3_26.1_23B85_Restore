@interface GeoClassificationInfo
- (BOOL)expired;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)featureKey;
- (_TtC25CloudSubscriptionFeatures21GeoClassificationInfo)init;
- (unint64_t)status;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GeoClassificationInfo

- (NSString)featureKey
{
  v2 = *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey);
  v3 = *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_featureKey + 8);

  v4 = sub_1DF564914();

  return v4;
}

- (BOOL)expired
{
  v3 = sub_1DF564494();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1DF564484();
  v9 = sub_1DF5643F4();

  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

- (unint64_t)status
{
  v2 = *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification);
  v3 = *(self + OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_geoClassification + 8);

  return sub_1DF508CAC(v2, v3);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1DF508124(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_1DF50837C();

  v3 = sub_1DF564914();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1DF564D24();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1DF50856C(v8);

  sub_1DF4A7D80(v8);
  return v6 & 1;
}

- (_TtC25CloudSubscriptionFeatures21GeoClassificationInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end