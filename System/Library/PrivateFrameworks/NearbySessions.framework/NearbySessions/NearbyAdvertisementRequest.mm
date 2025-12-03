@interface NearbyAdvertisementRequest
- (NSData)invitation;
- (NSString)description;
- (NSUUID)identifier;
- (_TtC14NearbySessions26NearbyAdvertisementRequest)init;
- (_TtC14NearbySessions26NearbyAdvertisementRequest)initWithIdentifier:(id)identifier invitation:(id)invitation route:(unsigned __int8)route activityType:(unsigned int)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NearbyAdvertisementRequest

- (NSUUID)identifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSData)invitation
{
  v2 = *(self + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation);
  v3 = *(self + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation + 8);
  outlined copy of Data._Representation(v2, v3);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v3);

  return v4.super.isa;
}

- (_TtC14NearbySessions26NearbyAdvertisementRequest)initWithIdentifier:(id)identifier invitation:(id)invitation route:(unsigned __int8)route activityType:(unsigned int)type
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  invitationCopy = invitation;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  (*(v11 + 16))(self + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier, v14, v10);
  v19 = (self + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation);
  *v19 = v16;
  v19[1] = v18;
  *(self + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route) = route;
  *(self + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType) = type;
  v20 = type metadata accessor for NearbyAdvertisementRequest();
  v23.receiver = self;
  v23.super_class = v20;
  v21 = [(NearbyAdvertisementRequest *)&v23 init];
  (*(v11 + 8))(v14, v10);
  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NearbyAdvertisementRequest.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  v3 = NearbyAdvertisementRequest.description.getter();
  v5 = v4;

  v6 = MEMORY[0x25F86F000](v3, v5);

  return v6;
}

- (_TtC14NearbySessions26NearbyAdvertisementRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end