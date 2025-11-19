@interface SQLDatabaseError
- (_TtC26DeepThoughtBiomeFoundation16SQLDatabaseError)initWithCoder:(id)a3;
- (_TtC26DeepThoughtBiomeFoundation16SQLDatabaseError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
@end

@implementation SQLDatabaseError

- (_TtC26DeepThoughtBiomeFoundation16SQLDatabaseError)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SQLDatabaseError();
  v4 = a3;
  v5 = [(SQLDatabaseError *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC26DeepThoughtBiomeFoundation16SQLDatabaseError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end