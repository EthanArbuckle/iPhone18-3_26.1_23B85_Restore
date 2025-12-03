@interface SQLDatabaseError
- (_TtC26DeepThoughtBiomeFoundation16SQLDatabaseError)initWithCoder:(id)coder;
- (_TtC26DeepThoughtBiomeFoundation16SQLDatabaseError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
@end

@implementation SQLDatabaseError

- (_TtC26DeepThoughtBiomeFoundation16SQLDatabaseError)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SQLDatabaseError();
  coderCopy = coder;
  v5 = [(SQLDatabaseError *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC26DeepThoughtBiomeFoundation16SQLDatabaseError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end