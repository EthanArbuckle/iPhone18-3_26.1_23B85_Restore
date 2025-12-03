@interface CUError
- (_TtC14CoreUtilsSwift7CUError)initWithCoder:(id)coder;
- (_TtC14CoreUtilsSwift7CUError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
@end

@implementation CUError

- (_TtC14CoreUtilsSwift7CUError)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(CUError *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC14CoreUtilsSwift7CUError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end