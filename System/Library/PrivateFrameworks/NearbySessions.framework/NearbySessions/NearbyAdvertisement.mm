@interface NearbyAdvertisement
- (BOOL)isEqual:(id)equal;
- (NSString)identifier;
- (NSUUID)scannerID;
- (_TtC14NearbySessions19NearbyAdvertisement)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NearbyAdvertisement

- (NSUUID)scannerID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_scannerID, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier);
  v3 = *(self + OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier + 8);

  v4 = MEMORY[0x25F86F000](v2, v3);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NearbyAdvertisement.encode(with:)(coderCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = NearbyAdvertisement.hash.getter();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = NearbyAdvertisement.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (_TtC14NearbySessions19NearbyAdvertisement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end