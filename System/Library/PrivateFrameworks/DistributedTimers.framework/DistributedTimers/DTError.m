@interface DTError
- (_TtC17DistributedTimers7DTError)initWithCoder:(id)a3;
- (_TtC17DistributedTimers7DTError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
@end

@implementation DTError

- (_TtC17DistributedTimers7DTError)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(DTError *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC17DistributedTimers7DTError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end