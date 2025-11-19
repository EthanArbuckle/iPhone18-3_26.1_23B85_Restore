@interface CSKSignatureAlgorithmWrapper
- (_TtC11CodesignKit28CSKSignatureAlgorithmWrapper)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSKSignatureAlgorithmWrapper

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v3 = sub_243B8EAE8();
  [v4 encodeInteger:0 forKey:v3];
}

- (_TtC11CodesignKit28CSKSignatureAlgorithmWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end