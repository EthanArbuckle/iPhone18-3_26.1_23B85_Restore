@interface CRXCPrismCorrection
- (CRXCPrismCorrection)init;
- (CRXCPrismCorrection)initWithPrismOD:(id)a3 prismOS:(id)a4 type:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRXCPrismCorrection

- (CRXCPrismCorrection)initWithPrismOD:(id)a3 prismOS:(id)a4 type:(int64_t)a5
{
  *(&self->super.isa + OBJC_IVAR___CRXCPrismCorrection_prismOD) = a3;
  *(&self->super.isa + OBJC_IVAR___CRXCPrismCorrection_prismOS) = a4;
  *(&self->super.isa + OBJC_IVAR___CRXCPrismCorrection_type) = a5;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CRXCPrismCorrection();
  v7 = a3;
  v8 = a4;
  return [(CRXCPrismCorrection *)&v10 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRXCPrismCorrection.encode(with:)(v4);
}

- (CRXCPrismCorrection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end