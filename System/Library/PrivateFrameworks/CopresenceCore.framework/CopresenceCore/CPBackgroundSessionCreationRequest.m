@interface CPBackgroundSessionCreationRequest
- (BOOL)isEqual:(id)a3;
- (CPBackgroundSessionCreationRequest)init;
- (NSString)description;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPBackgroundSessionCreationRequest

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

  v6 = BackgroundSessionCreationRequest.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = BackgroundSessionCreationRequest.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  BackgroundSessionCreationRequest.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  v3 = BackgroundSessionCreationRequest.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B270FF70](v3, v5);

  return v6;
}

- (CPBackgroundSessionCreationRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end