@interface CPPresenceSessionCreationRequest
- (BOOL)isEqual:(id)a3;
- (CPPresenceSessionCreationRequest)init;
- (NSString)description;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPPresenceSessionCreationRequest

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = PresenceSessionCreationRequest.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  Hasher.init()();
  v3 = self;
  v4 = UUID.hashValue.getter();
  MEMORY[0x1B27111E0](v4);
  Hasher._combine(_:)(*(&v3->super.isa + OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount));
  v5 = Hasher.finalize()();

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = MEMORY[0x1B270FF70](25705, 0xE200000000000000);
  [v4 encodeObject:isa forKey:v7];

  v8 = *(&v5->super.isa + OBJC_IVAR___CPPresenceSessionCreationRequest_isCrossAccount);
  v9 = MEMORY[0x1B270FF70](0x4173736F72437369, 0xEE00746E756F6363);
  [v4 encodeBool:v8 forKey:v9];
}

- (NSString)description
{
  v2 = self;
  v3 = PresenceSessionCreationRequest.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B270FF70](v3, v5);

  return v6;
}

- (CPPresenceSessionCreationRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end