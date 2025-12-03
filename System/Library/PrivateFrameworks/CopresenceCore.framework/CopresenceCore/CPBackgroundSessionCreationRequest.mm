@interface CPBackgroundSessionCreationRequest
- (BOOL)isEqual:(id)equal;
- (CPBackgroundSessionCreationRequest)init;
- (NSString)description;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPBackgroundSessionCreationRequest

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

  v6 = BackgroundSessionCreationRequest.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = BackgroundSessionCreationRequest.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  BackgroundSessionCreationRequest.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
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