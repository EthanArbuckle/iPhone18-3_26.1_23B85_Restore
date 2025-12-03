@interface CPActivitySessionEvent
- (BOOL)isEqual:(id)equal;
- (CPActivitySessionEvent)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPActivitySessionEvent

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

  v6 = ActivitySessionEvent.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = ActivitySessionEvent.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ActivitySessionEvent.encode(with:)(coderCopy);
}

- (CPActivitySessionEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end