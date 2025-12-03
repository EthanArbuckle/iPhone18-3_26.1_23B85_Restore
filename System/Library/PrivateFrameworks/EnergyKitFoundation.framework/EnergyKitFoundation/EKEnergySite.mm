@interface EKEnergySite
+ (BOOL)supportsSecureCoding;
+ (void)setSupportsSecureCoding:(BOOL)coding;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EKEnergySite

+ (BOOL)supportsSecureCoding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static EKEnergySite.supportsSecureCoding.getter();
  return sub_1D208C18C() & 1;
}

+ (void)setSupportsSecureCoding:(BOOL)coding
{
  swift_getObjCClassMetadata();
  v3 = sub_1D208C19C();
  swift_getObjCClassMetadata();
  static EKEnergySite.supportsSecureCoding.setter(v3 & 1);
}

- (void)encodeWithCoder:(id)coder
{
  MEMORY[0x1E69E5928](coder);
  MEMORY[0x1E69E5928](self);
  sub_1D2069AD4(coder);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](coder);
}

@end