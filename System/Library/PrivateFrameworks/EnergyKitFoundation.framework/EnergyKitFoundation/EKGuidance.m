@interface EKGuidance
+ (BOOL)supportsSecureCoding;
+ (void)setSupportsSecureCoding:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EKGuidance

+ (BOOL)supportsSecureCoding
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static EKGuidance.supportsSecureCoding.getter();
  return sub_1D208C18C() & 1;
}

+ (void)setSupportsSecureCoding:(BOOL)a3
{
  swift_getObjCClassMetadata();
  v3 = sub_1D208C19C();
  swift_getObjCClassMetadata();
  static EKGuidance.supportsSecureCoding.setter(v3 & 1);
}

- (void)encodeWithCoder:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1D2053F24(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

@end