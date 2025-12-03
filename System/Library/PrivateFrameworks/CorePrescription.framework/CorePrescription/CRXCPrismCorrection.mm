@interface CRXCPrismCorrection
- (CRXCPrismCorrection)init;
- (CRXCPrismCorrection)initWithPrismOD:(id)d prismOS:(id)s type:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCPrismCorrection

- (CRXCPrismCorrection)initWithPrismOD:(id)d prismOS:(id)s type:(int64_t)type
{
  *(&self->super.isa + OBJC_IVAR___CRXCPrismCorrection_prismOD) = d;
  *(&self->super.isa + OBJC_IVAR___CRXCPrismCorrection_prismOS) = s;
  *(&self->super.isa + OBJC_IVAR___CRXCPrismCorrection_type) = type;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CRXCPrismCorrection();
  dCopy = d;
  sCopy = s;
  return [(CRXCPrismCorrection *)&v10 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24735B0BC(coderCopy);
}

- (CRXCPrismCorrection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end