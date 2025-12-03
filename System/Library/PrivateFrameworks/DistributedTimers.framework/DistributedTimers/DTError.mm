@interface DTError
- (_TtC17DistributedTimers7DTError)initWithCoder:(id)coder;
- (_TtC17DistributedTimers7DTError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
@end

@implementation DTError

- (_TtC17DistributedTimers7DTError)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(DTError *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC17DistributedTimers7DTError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end