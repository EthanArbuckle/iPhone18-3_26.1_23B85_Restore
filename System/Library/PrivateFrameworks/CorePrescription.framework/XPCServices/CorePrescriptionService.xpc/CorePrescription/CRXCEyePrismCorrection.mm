@interface CRXCEyePrismCorrection
- (CRXCEyePrismCorrection)init;
- (CRXCEyePrismCorrection)initWithHorizontalBaseDirection:(int64_t)direction horizontalAmount:(double)amount verticalBaseDirection:(int64_t)baseDirection verticalAmount:(double)verticalAmount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRXCEyePrismCorrection

- (CRXCEyePrismCorrection)initWithHorizontalBaseDirection:(int64_t)direction horizontalAmount:(double)amount verticalBaseDirection:(int64_t)baseDirection verticalAmount:(double)verticalAmount
{
  *(&self->super.isa + OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection) = direction;
  *(&self->super.isa + OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount) = amount;
  *(&self->super.isa + OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection) = baseDirection;
  *(&self->super.isa + OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount) = verticalAmount;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRXCEyePrismCorrection();
  return [(CRXCEyePrismCorrection *)&v7 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CRXCEyePrismCorrection.encode(with:)(coderCopy);
}

- (CRXCEyePrismCorrection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end