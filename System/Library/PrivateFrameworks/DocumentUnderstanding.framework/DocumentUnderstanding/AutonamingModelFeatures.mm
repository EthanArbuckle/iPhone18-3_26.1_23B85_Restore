@interface AutonamingModelFeatures
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AutonamingModelFeatures

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232B1EBC8(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232B1ECC0(coderCopy);
}

@end