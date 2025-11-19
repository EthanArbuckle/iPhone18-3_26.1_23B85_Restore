@interface CUError
- (_TtC14CoreUtilsSwift7CUError)initWithCoder:(id)a3;
- (_TtC14CoreUtilsSwift7CUError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5;
@end

@implementation CUError

- (_TtC14CoreUtilsSwift7CUError)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(CUError *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC14CoreUtilsSwift7CUError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end