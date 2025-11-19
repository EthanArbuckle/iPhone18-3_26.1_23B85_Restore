@interface _DPPINEParameter
- (_DPPINEParameter)init;
- (_DPPINEParameter)initWithFractionalBitCount:(int64_t)a3 l2NormBound:(float)a4 numOfProofs:(int64_t)a5 wraparoundCheckCount:(int64_t)a6 pineType:(unsigned int)a7;
@end

@implementation _DPPINEParameter

- (_DPPINEParameter)initWithFractionalBitCount:(int64_t)a3 l2NormBound:(float)a4 numOfProofs:(int64_t)a5 wraparoundCheckCount:(int64_t)a6 pineType:(unsigned int)a7
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____DPPINEParameter_fractionalBitCount) = a3;
  *(&self->super.isa + OBJC_IVAR____DPPINEParameter_l2NormBound) = a4;
  *(&self->super.isa + OBJC_IVAR____DPPINEParameter_numOfProofs) = a5;
  *(&self->super.isa + OBJC_IVAR____DPPINEParameter_wraparoundCheckCount) = a6;
  *(&self->super.isa + OBJC_IVAR____DPPINEParameter_pineType) = a7;
  v15.receiver = self;
  v15.super_class = ObjectType;
  return [(_DPPINEParameter *)&v15 init];
}

- (_DPPINEParameter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end