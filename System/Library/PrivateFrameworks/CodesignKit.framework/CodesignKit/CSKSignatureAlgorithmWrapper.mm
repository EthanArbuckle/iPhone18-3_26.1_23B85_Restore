@interface CSKSignatureAlgorithmWrapper
- (_TtC11CodesignKit28CSKSignatureAlgorithmWrapper)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSKSignatureAlgorithmWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v3 = sub_243B8EAE8();
  [coderCopy encodeInteger:0 forKey:v3];
}

- (_TtC11CodesignKit28CSKSignatureAlgorithmWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end