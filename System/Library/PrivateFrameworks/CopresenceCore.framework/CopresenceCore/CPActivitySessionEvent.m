@interface CPActivitySessionEvent
- (BOOL)isEqual:(id)a3;
- (CPActivitySessionEvent)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPActivitySessionEvent

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

  v6 = ActivitySessionEvent.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = ActivitySessionEvent.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ActivitySessionEvent.encode(with:)(v4);
}

- (CPActivitySessionEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end