@interface CRXCEyePrismCorrection
- (CRXCEyePrismCorrection)init;
- (CRXCEyePrismCorrection)initWithHorizontalBaseDirection:(int64_t)a3 horizontalAmount:(double)a4 verticalBaseDirection:(int64_t)a5 verticalAmount:(double)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRXCEyePrismCorrection

- (CRXCEyePrismCorrection)initWithHorizontalBaseDirection:(int64_t)a3 horizontalAmount:(double)a4 verticalBaseDirection:(int64_t)a5 verticalAmount:(double)a6
{
  *(&self->super.isa + OBJC_IVAR___CRXCEyePrismCorrection_horizontalBaseDirection) = a3;
  *(&self->super.isa + OBJC_IVAR___CRXCEyePrismCorrection_horizontalAmount) = a4;
  *(&self->super.isa + OBJC_IVAR___CRXCEyePrismCorrection_verticalBaseDirection) = a5;
  *(&self->super.isa + OBJC_IVAR___CRXCEyePrismCorrection_verticalAmount) = a6;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRXCEyePrismCorrection();
  return [(CRXCEyePrismCorrection *)&v7 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CRXCEyePrismCorrection.encode(with:)(v4);
}

- (CRXCEyePrismCorrection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end