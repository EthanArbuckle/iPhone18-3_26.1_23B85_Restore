@interface CacheKey
- (BOOL)isEqual:(id)equal;
- (_TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey)init;
- (int64_t)hash;
@end

@implementation CacheKey

- (int64_t)hash
{
  sub_1BAD9DB48();
  selfCopy = self;
  FontUseCase.hash(into:)();
  v4 = sub_1BAD9DB88();
  v5 = [*(&selfCopy->super.isa + OBJC_IVAR____TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey_traitCollection) hash];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BAD9D628();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1BAD10D34(v8);

  sub_1BAD05470(v8);
  return v6 & 1;
}

- (_TtC5JetUIP33_925E47A64C9969C34ACE8A7AFC4CB7868CacheKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end