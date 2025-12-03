@interface CPAuthorizationRequestOverrides
- (BOOL)isEqual:(id)equal;
- (CPAuthorizationRequestOverrides)init;
- (CPAuthorizationRequestOverrides)initWithCoder:(id)coder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPAuthorizationRequestOverrides

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

  v6 = AuthorizationRequestOverrides.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = AuthorizationRequestOverrides.hash.getter();

  return v3;
}

- (CPAuthorizationRequestOverrides)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized AuthorizationRequestOverrides.init(coder:)(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  AuthorizationRequestOverrides.encode(with:)(coderCopy);
}

- (CPAuthorizationRequestOverrides)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end